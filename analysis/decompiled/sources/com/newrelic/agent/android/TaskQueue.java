package com.newrelic.agent.android;

import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.AgentHealthException;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class TaskQueue extends HarvestAdapter {
    private static final long DEQUEUE_PERIOD_MS = 1000;
    private static Future dequeueFuture;
    private static final ScheduledExecutorService queueExecutor = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("TaskQueue"));
    private static final ConcurrentLinkedQueue<Object> queue = new ConcurrentLinkedQueue<>();
    private static final Runnable dequeueTask = new Runnable() { // from class: com.newrelic.agent.android.TaskQueue.1
        @Override // java.lang.Runnable
        public void run() {
            TaskQueue.dequeue();
        }
    };

    public static void backgroundDequeue() {
        queueExecutor.execute(dequeueTask);
    }

    public static void clear() {
        queue.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dequeue() {
        if (queue.size() == 0) {
            return;
        }
        Measurements.setBroadcastNewMeasurements(false);
        while (true) {
            ConcurrentLinkedQueue<Object> concurrentLinkedQueue = queue;
            if (concurrentLinkedQueue.isEmpty()) {
                Measurements.broadcast();
                Measurements.setBroadcastNewMeasurements(true);
                return;
            }
            try {
                Object objRemove = concurrentLinkedQueue.remove();
                if (objRemove instanceof ActivityTrace) {
                    Harvest.addActivityTrace((ActivityTrace) objRemove);
                } else if (objRemove instanceof Metric) {
                    Harvest.addMetric((Metric) objRemove);
                } else if (objRemove instanceof AgentHealthException) {
                    Harvest.addAgentHealthException((AgentHealthException) objRemove);
                } else if (objRemove instanceof Trace) {
                    Measurements.addTracedMethod((Trace) objRemove);
                } else if (objRemove instanceof HttpTransactionMeasurement) {
                    Measurements.addHttpTransaction((HttpTransactionMeasurement) objRemove);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                AgentHealth.noticeException(e10);
            }
        }
    }

    public static void queue(Object obj) {
        queue.add(obj);
    }

    public static int size() {
        return queue.size();
    }

    public static void start() {
        if (dequeueFuture != null) {
            return;
        }
        dequeueFuture = queueExecutor.scheduleAtFixedRate(dequeueTask, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    public static void stop() {
        Future future = dequeueFuture;
        if (future == null) {
            return;
        }
        future.cancel(true);
        dequeueFuture = null;
    }

    public static void synchronousDequeue() {
        try {
            queueExecutor.submit(dequeueTask).get();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        } catch (ExecutionException e11) {
            e11.printStackTrace();
        }
    }
}
