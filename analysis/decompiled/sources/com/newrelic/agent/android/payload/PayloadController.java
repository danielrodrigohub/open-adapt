package com.newrelic.agent.android.payload;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.agentdata.AgentDataReporter;
import com.newrelic.agent.android.crash.CrashReporter;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestLifecycleAware;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class PayloadController implements HarvestLifecycleAware {
    public static final long PAYLOAD_COLLECTOR_TIMEOUT = 5000;
    public static final long PAYLOAD_REQUEUE_PERIOD_MS = 120000;
    private final AgentConfiguration agentConfiguration;
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static Lock payloadQueueLock = new ReentrantLock(false);
    public static AtomicReference<PayloadController> instance = new AtomicReference<>(null);
    public static ThrottledScheduledThreadPoolExecutor queueExecutor = null;
    public static ScheduledFuture<?> requeueFuture = null;
    public static ConcurrentLinkedQueue<PayloadReaper> payloadReaperQueue = null;
    public static ConcurrentLinkedQueue<PayloadReaper> payloadReaperRetryQueue = null;
    public static Map<String, Future> reapersInFlight = null;
    public static boolean opportunisticUploads = false;
    public static final Runnable dequeueRunnable = new Runnable() { // from class: com.newrelic.agent.android.payload.PayloadController.1
        @Override // java.lang.Runnable
        public void run() {
            if (PayloadController.isInitialized()) {
                PayloadController.instance.get().dequeuePayloadSenders();
            }
        }
    };
    public static final Runnable requeueRunnable = new Runnable() { // from class: com.newrelic.agent.android.payload.PayloadController.2
        @Override // java.lang.Runnable
        public void run() {
            if (PayloadController.isInitialized()) {
                PayloadController.instance.get().requeuePayloadSenders();
            }
        }
    };

    public static class ThrottledScheduledThreadPoolExecutor extends ScheduledThreadPoolExecutor {
        public static final int THROTTLE_LIMIT = 16;
        public static final int THROTTLE_SLEEP = 50;

        public ThrottledScheduledThreadPoolExecutor(int i10, ThreadFactory threadFactory) {
            super(i10, threadFactory);
        }

        @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            if (getQueue().size() >= 16) {
                StatsEngine.get().inc(MetricNames.SUPPORTABILITY_HEX_UPLOAD_THROTTLED);
            }
            return super.submit(callable);
        }
    }

    public PayloadController(AgentConfiguration agentConfiguration) {
        this.agentConfiguration = agentConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dequeuePayloadSenders() {
        if (payloadQueueLock.tryLock()) {
            while (!payloadReaperQueue.isEmpty()) {
                try {
                    PayloadReaper payloadReaperPoll = payloadReaperQueue.poll();
                    if (payloadReaperPoll != null) {
                        try {
                            submitPayload(payloadReaperPoll);
                        } catch (Exception e10) {
                            log.error("PayloadController.dequeuePayloadSenders(): " + e10);
                        }
                    }
                } catch (Throwable th) {
                    payloadQueueLock.unlock();
                    throw th;
                }
            }
            payloadQueueLock.unlock();
        }
    }

    public static PayloadController initialize(AgentConfiguration agentConfiguration) {
        if (instance.compareAndSet(null, new PayloadController(agentConfiguration))) {
            payloadReaperQueue = new ConcurrentLinkedQueue<>();
            payloadReaperRetryQueue = new ConcurrentLinkedQueue<>();
            ThrottledScheduledThreadPoolExecutor throttledScheduledThreadPoolExecutor = new ThrottledScheduledThreadPoolExecutor(agentConfiguration.getIOThreadSize(), new NamedThreadFactory("PayloadWorker"));
            queueExecutor = throttledScheduledThreadPoolExecutor;
            requeueFuture = throttledScheduledThreadPoolExecutor.scheduleAtFixedRate(requeueRunnable, PAYLOAD_REQUEUE_PERIOD_MS, PAYLOAD_REQUEUE_PERIOD_MS, TimeUnit.MILLISECONDS);
            reapersInFlight = new ConcurrentHashMap();
            opportunisticUploads = false;
            CrashReporter crashReporterInitialize = CrashReporter.initialize(agentConfiguration);
            if (crashReporterInitialize != null) {
                crashReporterInitialize.start();
            } else {
                log.warning("PayloadController: No crash reporter - crash reporting will be disabled");
            }
            AgentDataReporter agentDataReporterInitialize = AgentDataReporter.initialize(agentConfiguration);
            if (agentDataReporterInitialize != null) {
                agentDataReporterInitialize.start();
            } else {
                log.warning("PayloadController: No payload reporter - payload reporting will be disabled");
            }
            Harvest.addHarvestListener(instance.get());
        }
        return instance.get();
    }

    public static boolean isInitialized() {
        return instance.get() != null;
    }

    public static boolean payloadInFlight(Payload payload) {
        return reapersInFlight.containsKey(payload.getUuid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requeuePayloadSenders() {
        if (payloadQueueLock.tryLock()) {
            while (!payloadReaperRetryQueue.isEmpty()) {
                try {
                    PayloadReaper payloadReaperPoll = payloadReaperRetryQueue.poll();
                    if (payloadReaperPoll != null) {
                        if (payloadReaperPoll.sender.getPayload().isStale(this.agentConfiguration.getPayloadTTL())) {
                            log.warning("PayloadController: Will not re-queue stale payload.");
                        } else {
                            submitPayload(payloadReaperPoll);
                        }
                    }
                } catch (Throwable th) {
                    payloadQueueLock.unlock();
                    throw th;
                }
            }
            payloadQueueLock.unlock();
        }
    }

    public static boolean shouldUploadOpportunistically() {
        return opportunisticUploads && Agent.hasReachableNetworkConnection(null);
    }

    public static void shutdown() {
        if (isInitialized()) {
            try {
                Harvest.removeHarvestListener(instance.get());
                ScheduledFuture<?> scheduledFuture = requeueFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                    requeueFuture = null;
                }
                queueExecutor.shutdown();
                try {
                    if (!queueExecutor.awaitTermination(PAYLOAD_COLLECTOR_TIMEOUT, TimeUnit.MILLISECONDS)) {
                        log.warning("PayloadController: upload thread(s) timed-out before handler");
                        queueExecutor.shutdownNow();
                    }
                    AgentDataReporter.shutdown();
                    CrashReporter.shutdown();
                } catch (InterruptedException unused) {
                }
            } finally {
                instance.set(null);
            }
        }
    }

    public static Future submitCallable(Callable<?> callable) {
        return queueExecutor.submit(callable);
    }

    public static Future submitPayload(PayloadSender payloadSender) {
        return submitPayload(payloadSender, null);
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        queueExecutor.submit(dequeueRunnable);
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestBefore() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestConnected() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisabled() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisconnected() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestFinalize() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestStart() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestStop() {
    }

    public boolean uploadOpportunistically() {
        return opportunisticUploads;
    }

    public static Future submitPayload(PayloadSender payloadSender, PayloadSender.CompletionHandler completionHandler) {
        TicToc ticToc = new TicToc();
        if (!isInitialized()) {
            return null;
        }
        ticToc.tic();
        PayloadReaper payloadReaper = new PayloadReaper(payloadSender, completionHandler) { // from class: com.newrelic.agent.android.payload.PayloadController.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.agent.android.payload.PayloadReaper, java.util.concurrent.Callable
            public PayloadSender call() throws Exception {
                PayloadSender payloadSenderCall = super.call();
                if (payloadSenderCall != null && !payloadSenderCall.isSuccessfulResponse() && payloadSenderCall.shouldRetry()) {
                    PayloadController.payloadReaperRetryQueue.offer(this);
                }
                PayloadController.reapersInFlight.remove(getUuid());
                return payloadSenderCall;
            }
        };
        payloadReaperQueue.remove(payloadReaper);
        payloadReaperRetryQueue.remove(payloadReaper);
        Future futureSubmit = reapersInFlight.get(payloadReaper.getUuid());
        if (futureSubmit != null) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("PayloadController: Upload of payload [");
            sbC.append(payloadReaper.getUuid());
            sbC.append("] is already in progress.");
            agentLog.warning(sbC.toString());
            return futureSubmit;
        }
        if (payloadSender.shouldUploadOpportunistically()) {
            futureSubmit = queueExecutor.submit(payloadReaper);
            reapersInFlight.put(payloadReaper.getUuid(), futureSubmit);
        } else {
            payloadReaperQueue.offer(payloadReaper);
        }
        AgentLog agentLog2 = log;
        StringBuilder sbC2 = b.c("PayloadController: ");
        sbC2.append(String.valueOf(ticToc.toc()));
        sbC2.append("ms. waiting to submit payload [");
        sbC2.append(payloadReaper.getUuid());
        sbC2.append("].");
        agentLog2.debug(sbC2.toString());
        return futureSubmit;
    }

    public static Future submitPayload(PayloadReaper payloadReaper) {
        if (!isInitialized()) {
            return null;
        }
        payloadReaperQueue.remove(payloadReaper);
        payloadReaperRetryQueue.remove(payloadReaper);
        Future future = reapersInFlight.get(payloadReaper.getUuid());
        if (future != null) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("PayloadController: Upload of payload [");
            sbC.append(payloadReaper.getUuid());
            sbC.append("] is already in progress.");
            agentLog.warning(sbC.toString());
            return future;
        }
        Future futureSubmit = queueExecutor.submit(payloadReaper);
        reapersInFlight.put(payloadReaper.getUuid(), futureSubmit);
        return futureSubmit;
    }
}
