package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class HarvestTimer implements Runnable {
    public static final long DEFAULT_HARVEST_PERIOD = 60000;
    private static final long HARVEST_PERIOD_LEEWAY = 1000;
    private static final long NEVER_TICKED = -1;
    public final Harvester harvester;
    public long lastTickTime;
    private final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("Harvester"));
    private final AgentLog log = AgentLogManager.getAgentLog();
    private ScheduledFuture tickFuture = null;
    public long period = DEFAULT_HARVEST_PERIOD;
    private Lock lock = new ReentrantLock();
    private long startTimeMs = 0;

    public HarvestTimer(Harvester harvester) {
        this.harvester = harvester;
    }

    private long now() {
        return System.currentTimeMillis();
    }

    private void tickIfReady() {
        long jTimeSinceLastTick = timeSinceLastTick();
        if (1000 + jTimeSinceLastTick < this.period && jTimeSinceLastTick != -1) {
            this.log.debug("HarvestTimer: Tick is too soon (" + jTimeSinceLastTick + " delta) Last tick time: " + this.lastTickTime + " . Skipping.");
            return;
        }
        this.log.debug("HarvestTimer: time since last tick: " + jTimeSinceLastTick);
        long jNow = now();
        try {
            tick();
        } catch (Exception e10) {
            AgentLog agentLog = this.log;
            StringBuilder sbC = b.c("HarvestTimer: Exception in timer tick: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
            e10.printStackTrace();
            AgentHealth.noticeException(e10);
        }
        this.lastTickTime = jNow;
        AgentLog agentLog2 = this.log;
        StringBuilder sbC2 = b.c("Set last tick time to: ");
        sbC2.append(this.lastTickTime);
        agentLog2.debug(sbC2.toString());
    }

    public void cancelPendingTasks() {
        try {
            this.lock.lock();
            ScheduledFuture scheduledFuture = this.tickFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
                this.tickFuture = null;
            }
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isRunning() {
        return this.tickFuture != null;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                this.lock.lock();
                tickIfReady();
            } catch (Exception e10) {
                this.log.error("HarvestTimer: Exception in timer tick: " + e10.getMessage());
                e10.printStackTrace();
                AgentHealth.noticeException(e10);
            }
        } finally {
            this.lock.unlock();
        }
    }

    public void setPeriod(long j10) {
        this.period = j10;
    }

    public void shutdown() {
        cancelPendingTasks();
        this.scheduler.shutdownNow();
    }

    public void start() {
        if (ApplicationStateMonitor.isAppInBackground()) {
            this.log.warning("HarvestTimer: Attempting to start while app is in background");
            return;
        }
        if (isRunning()) {
            this.log.warning("HarvestTimer: Attempting to start while already running");
            return;
        }
        if (this.period <= 0) {
            this.log.error("HarvestTimer: Refusing to start with a period of 0 ms");
            return;
        }
        AgentLog agentLog = this.log;
        StringBuilder sbC = b.c("HarvestTimer: Starting with a period of ");
        sbC.append(this.period);
        sbC.append("ms");
        agentLog.debug(sbC.toString());
        this.startTimeMs = System.currentTimeMillis();
        this.tickFuture = this.scheduler.scheduleAtFixedRate(this, 0L, this.period, TimeUnit.MILLISECONDS);
        this.harvester.start();
    }

    public void stop() {
        if (!isRunning()) {
            this.log.warning("HarvestTimer: Attempting to stop when not running");
            return;
        }
        cancelPendingTasks();
        this.log.debug("HarvestTimer: Stopped.");
        this.startTimeMs = 0L;
        this.harvester.stop();
    }

    public void tick() {
        this.log.debug("Harvest: tick");
        TicToc ticToc = new TicToc();
        ticToc.tic();
        try {
            if (ApplicationStateMonitor.isAppInBackground()) {
                this.log.error("HarvestTimer: Attempting to harvest while app is in background");
            } else {
                this.harvester.execute();
                this.log.debug("Harvest: executed");
            }
        } catch (Exception e10) {
            AgentLog agentLog = this.log;
            StringBuilder sbC = b.c("HarvestTimer: Exception in harvest execute: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
            e10.printStackTrace();
            AgentHealth.noticeException(e10);
        }
        if (this.harvester.isDisabled()) {
            stop();
        }
        long cVar = ticToc.toc();
        this.log.debug("HarvestTimer tick took " + cVar + "ms");
    }

    public void tickNow() {
        try {
            this.scheduler.schedule(new Runnable() { // from class: com.newrelic.agent.android.harvest.HarvestTimer.1
                @Override // java.lang.Runnable
                public void run() {
                    this.tick();
                }
            }, 0L, TimeUnit.SECONDS).get();
        } catch (Exception e10) {
            AgentLog agentLog = this.log;
            StringBuilder sbC = b.c("Exception waiting for tickNow to finish: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
            e10.printStackTrace();
            AgentHealth.noticeException(e10);
        }
    }

    public long timeSinceLastTick() {
        if (this.lastTickTime == 0) {
            return -1L;
        }
        return now() - this.lastTickTime;
    }

    public long timeSinceStart() {
        if (this.startTimeMs == 0) {
            return 0L;
        }
        return now() - this.startTimeMs;
    }
}
