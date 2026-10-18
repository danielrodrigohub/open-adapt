package com.newrelic.agent.android.sample;

import a0.b;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Sample;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class Sampler implements TraceLifecycleAware, Runnable {
    private static final int KB_IN_MB = 1024;
    public static final long SAMPLE_FREQ_MS = 100;
    public static final long SAMPLE_FREQ_MS_MAX = 250;
    public static Sampler sampler;
    private final ActivityManager activityManager;
    private RandomAccessFile appStatFile;
    public final AtomicBoolean isRunning;
    private Long lastAppCpuTime;
    private Long lastCpuTime;
    private RandomAccessFile procStatFile;
    public long sampleFreqMs;
    public ScheduledFuture sampleFuture;
    private Metric samplerServiceMetric;
    private final EnumMap<Sample.SampleType, Collection<Sample>> samples;
    private static final int[] PID = {Process.myPid()};
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final ReentrantLock samplerLock = new ReentrantLock();
    public static final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("Sampler"));
    public static boolean cpuSamplingDisabled = false;

    public Sampler(Context context) {
        EnumMap<Sample.SampleType, Collection<Sample>> enumMap = new EnumMap<>(Sample.SampleType.class);
        this.samples = enumMap;
        this.isRunning = new AtomicBoolean(false);
        this.sampleFreqMs = 100L;
        this.activityManager = (ActivityManager) context.getSystemService("activity");
        enumMap.put(Sample.SampleType.MEMORY, new ArrayList());
        enumMap.put(Sample.SampleType.CPU, new ArrayList());
    }

    public static Map<Sample.SampleType, Collection<Sample>> copySamples() {
        ReentrantLock reentrantLock = samplerLock;
        reentrantLock.lock();
        try {
            if (sampler == null) {
                reentrantLock.unlock();
                HashMap map = new HashMap();
                reentrantLock.unlock();
                return map;
            }
            EnumMap enumMap = new EnumMap((EnumMap) sampler.samples);
            for (K k10 : sampler.samples.keySet()) {
                enumMap.put(k10, new ArrayList(sampler.samples.get(k10)));
            }
            samplerLock.unlock();
            return Collections.unmodifiableMap(enumMap);
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }

    private Collection<Sample> getSampleCollection(Sample.SampleType sampleType) {
        return this.samples.get(sampleType);
    }

    public static void init(Context context) {
        ReentrantLock reentrantLock = samplerLock;
        reentrantLock.lock();
        try {
            try {
                if (sampler == null) {
                    Sampler samplerProvideSampler = provideSampler(context);
                    sampler = samplerProvideSampler;
                    samplerProvideSampler.sampleFreqMs = 100L;
                    samplerProvideSampler.samplerServiceMetric = new Metric("samplerServiceTime");
                    TraceMachine.addTraceListener(sampler);
                    cpuSamplingDisabled = true;
                    AgentLog agentLog = log;
                    agentLog.debug("CPU sampling not supported in Android 8 and above.");
                    agentLog.debug("Sampler initialized");
                }
                reentrantLock.unlock();
            } catch (Exception e10) {
                log.error("Sampler init failed: " + e10.getMessage());
                shutdown();
                samplerLock.unlock();
            }
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }

    public static boolean isRunning() {
        ScheduledFuture scheduledFuture;
        Sampler sampler2 = sampler;
        if (sampler2 == null || (scheduledFuture = sampler2.sampleFuture) == null) {
            return false;
        }
        return !scheduledFuture.isDone();
    }

    public static Sampler provideSampler(Context context) {
        return new Sampler(context);
    }

    private void resetCpuSampler() {
        this.lastCpuTime = null;
        this.lastAppCpuTime = null;
        RandomAccessFile randomAccessFile = this.appStatFile;
        if (randomAccessFile == null || this.procStatFile == null) {
            return;
        }
        try {
            randomAccessFile.close();
            this.procStatFile.close();
            this.appStatFile = null;
            this.procStatFile = null;
        } catch (IOException e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Exception hit while resetting CPU sampler: ");
            sbC.append(e10.getMessage());
            agentLog.debug(sbC.toString());
            AgentHealth.noticeException(e10);
        }
    }

    public static Sample sampleCpuInstance() {
        Sampler sampler2 = sampler;
        if (sampler2 == null) {
            return null;
        }
        return sampler2.sampleCpu();
    }

    public static Sample sampleMemory() {
        Sampler sampler2 = sampler;
        if (sampler2 == null) {
            return null;
        }
        return sampleMemory(sampler2.activityManager);
    }

    public static void shutdown() {
        samplerLock.lock();
        try {
            Sampler sampler2 = sampler;
            if (sampler2 != null) {
                TraceMachine.removeTraceListener(sampler2);
                stopNow();
                sampler = null;
                log.debug("Sampler shutdown");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void start() {
        samplerLock.lock();
        try {
            Sampler sampler2 = sampler;
            if (sampler2 != null) {
                sampler2.schedule();
                log.debug("Sampler started");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void stop() {
        samplerLock.lock();
        try {
            Sampler sampler2 = sampler;
            if (sampler2 != null) {
                sampler2.stop(false);
                log.debug("Sampler stopped");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void stopNow() {
        samplerLock.lock();
        try {
            Sampler sampler2 = sampler;
            if (sampler2 != null) {
                sampler2.stop(true);
                log.debug("Sampler hard stopped");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public void clear() {
        Iterator<Collection<Sample>> it = this.samples.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    public void monitorSamplerServiceTime(double d10) {
        this.samplerServiceMetric.sample(d10);
        if (Double.valueOf(this.samplerServiceMetric.getTotal() / this.samplerServiceMetric.getCount()).doubleValue() > this.sampleFreqMs) {
            AgentLog agentLog = log;
            agentLog.debug("Sampler: sample service time has been exceeded. Increase by 10%");
            this.sampleFreqMs = Math.min((long) (this.sampleFreqMs * 1.1f), 250L);
            ScheduledFuture scheduledFuture = this.sampleFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.sampleFuture = scheduler.scheduleWithFixedDelay(this, 0L, this.sampleFreqMs, TimeUnit.MILLISECONDS);
            agentLog.debug(String.format("Sampler scheduler restarted; sampling will now occur every %d ms.", Long.valueOf(this.sampleFreqMs)));
            this.samplerServiceMetric.clear();
        }
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onEnterMethod() {
        if (this.isRunning.get()) {
            return;
        }
        start();
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onExitMethod() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceComplete(final ActivityTrace activityTrace) {
        scheduler.execute(new Runnable() { // from class: com.newrelic.agent.android.sample.Sampler.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Sampler.this.stop(true);
                    activityTrace.setVitals(Sampler.copySamples());
                    Sampler.this.clear();
                } catch (RuntimeException e10) {
                    Sampler.log.error(e10.toString());
                }
            }
        });
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceRename(ActivityTrace activityTrace) {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceStart(ActivityTrace activityTrace) {
        start();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.isRunning.get()) {
                sample();
            }
        } catch (Exception e10) {
            log.error("Caught exception while running the sampler", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public void sample() {
        TicToc ticToc = new TicToc();
        ReentrantLock reentrantLock = samplerLock;
        reentrantLock.lock();
        try {
            try {
                ticToc.tic();
                Sample sampleSampleMemory = sampleMemory();
                if (sampleSampleMemory != null) {
                    getSampleCollection(Sample.SampleType.MEMORY).add(sampleSampleMemory);
                }
                Sample sampleSampleCpu = sampleCpu();
                if (sampleSampleCpu != null) {
                    getSampleCollection(Sample.SampleType.CPU).add(sampleSampleCpu);
                }
            } catch (Exception e10) {
                log.error("Sampling failed: " + e10.getMessage());
                AgentHealth.noticeException(e10);
                reentrantLock = samplerLock;
            }
            reentrantLock.unlock();
            monitorSamplerServiceTime(ticToc.toc());
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }

    public Sample sampleCpu() {
        if (cpuSamplingDisabled) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = this.procStatFile;
            if (randomAccessFile == null || this.appStatFile == null) {
                this.appStatFile = new RandomAccessFile("/proc/" + PID[0] + "/stat", "r");
                this.procStatFile = new RandomAccessFile("/proc/stat", "r");
            } else {
                randomAccessFile.seek(0L);
                this.appStatFile.seek(0L);
            }
            String line = this.procStatFile.readLine();
            String line2 = this.appStatFile.readLine();
            String[] strArrSplit = line.split(" ");
            String[] strArrSplit2 = line2.split(" ");
            long j10 = Long.parseLong(strArrSplit[2]) + Long.parseLong(strArrSplit[3]) + Long.parseLong(strArrSplit[4]) + Long.parseLong(strArrSplit[5]) + Long.parseLong(strArrSplit[6]) + Long.parseLong(strArrSplit[7]) + Long.parseLong(strArrSplit[8]);
            long j11 = Long.parseLong(strArrSplit2[13]) + Long.parseLong(strArrSplit2[14]);
            if (this.lastCpuTime == null && this.lastAppCpuTime == null) {
                this.lastCpuTime = Long.valueOf(j10);
                this.lastAppCpuTime = Long.valueOf(j11);
                return null;
            }
            Sample sample = new Sample(Sample.SampleType.CPU);
            sample.setSampleValue(((j11 - this.lastAppCpuTime.longValue()) / (j10 - this.lastCpuTime.longValue())) * 100.0d);
            this.lastCpuTime = Long.valueOf(j10);
            this.lastAppCpuTime = Long.valueOf(j11);
            return sample;
        } catch (Exception e10) {
            cpuSamplingDisabled = true;
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Exception hit while CPU sampling: ");
            sbC.append(e10.getMessage());
            agentLog.debug(sbC.toString());
            AgentHealth.noticeException(e10);
            return null;
        }
    }

    public void schedule() {
        ReentrantLock reentrantLock = samplerLock;
        reentrantLock.lock();
        try {
            try {
                if (!this.isRunning.get()) {
                    clear();
                    this.sampleFuture = scheduler.scheduleWithFixedDelay(this, 0L, this.sampleFreqMs, TimeUnit.MILLISECONDS);
                    this.isRunning.set(true);
                    log.debug(String.format("Sampler scheduler started; sampling will occur every %d ms.", Long.valueOf(this.sampleFreqMs)));
                }
            } catch (Exception e10) {
                log.error("Sampler scheduling failed: " + e10.getMessage());
                AgentHealth.noticeException(e10);
                reentrantLock = samplerLock;
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }

    public static Sample sampleMemory(ActivityManager activityManager) {
        int totalPss;
        try {
            Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(PID);
            if (processMemoryInfo.length <= 0 || (totalPss = processMemoryInfo[0].getTotalPss()) < 0) {
                return null;
            }
            Sample sample = new Sample(Sample.SampleType.MEMORY);
            sample.setSampleValue(((double) totalPss) / 1024.0d);
            return sample;
        } catch (Exception e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Sample memory failed: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
            AgentHealth.noticeException(e10);
            return null;
        }
    }

    public void stop(boolean z10) {
        ReentrantLock reentrantLock = samplerLock;
        reentrantLock.lock();
        try {
            try {
                if (this.isRunning.get()) {
                    this.isRunning.set(false);
                    ScheduledFuture scheduledFuture = this.sampleFuture;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(z10);
                    }
                    resetCpuSampler();
                    log.debug("Sampler canceled");
                }
                reentrantLock.unlock();
            } catch (Exception e10) {
                log.error("Sampler stop failed: " + e10.getMessage());
                AgentHealth.noticeException(e10);
                samplerLock.unlock();
            }
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }
}
