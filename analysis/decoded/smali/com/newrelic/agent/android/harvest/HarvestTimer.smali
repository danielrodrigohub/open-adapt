.class public Lcom/newrelic/agent/android/harvest/HarvestTimer;
.super Ljava/lang/Object;
.source "HarvestTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_HARVEST_PERIOD:J = 0xea60L

.field private static final HARVEST_PERIOD_LEEWAY:J = 0x3e8L

.field private static final NEVER_TICKED:J = -0x1L


# instance fields
.field public final harvester:Lcom/newrelic/agent/android/harvest/Harvester;

.field public lastTickTime:J

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field public period:J

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private startTimeMs:J

.field private tickFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/harvest/Harvester;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "Harvester"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    const-wide/32 v0, 0xea60

    .line 5
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 7
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    return-void
.end method

.method private now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private tickIfReady()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceLastTick()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    .line 2
    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HarvestTimer: Tick is too soon ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " delta) Last tick time: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " . Skipping."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HarvestTimer: time since last tick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "HarvestTimer: Exception in timer tick: "

    .line 8
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 12
    :goto_0
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    .line 13
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Set last tick time to: "

    .line 14
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickIfReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HarvestTimer: Exception in timer tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 7
    :goto_2
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v0
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->cancelPendingTasks()V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->isAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Attempting to start while app is in background"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Attempting to start while already running"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Refusing to start with a period of 0 ms"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Starting with a period of "

    .line 8
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    .line 11
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Attempting to stop when not running"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->cancelPendingTasks()V

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Stopped."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stop()V

    return-void
.end method

.method public tick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: tick"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->isAppInBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "HarvestTimer: Attempting to harvest while app is in background"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    .line 7
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Harvest: executed"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "HarvestTimer: Exception in harvest execute: "

    .line 9
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvester;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->stop()V

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HarvestTimer tick took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public tickNow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/newrelic/agent/android/harvest/HarvestTimer$1;

    invoke-direct {v1, p0, p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer$1;-><init>(Lcom/newrelic/agent/android/harvest/HarvestTimer;Lcom/newrelic/agent/android/harvest/HarvestTimer;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Exception waiting for tickNow to finish: "

    .line 4
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public timeSinceLastTick()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public timeSinceStart()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
