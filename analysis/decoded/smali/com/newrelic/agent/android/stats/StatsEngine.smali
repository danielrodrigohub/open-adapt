.class public Lcom/newrelic/agent/android/stats/StatsEngine;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "StatsEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

.field public static final SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;


# instance fields
.field public enabled:Z

.field private final statsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/newrelic/agent/android/stats/StatsEngine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/stats/StatsEngine;-><init>()V

    return-void
.end method

.method public static calculateMetricsDataUseage()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/<framework>/<destination>/Output/Bytes"

    const-string v2, "<framework>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<destination>"

    const-string v2, "Collector"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Collector/connect"

    const-string v8, "Collector/data"

    const-string v9, "Collector/f"

    const-string v10, "Collector/mobile_crash"

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newrelic/agent/android/metric/Metric;

    .line 6
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 11
    :cond_1
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getCount()J

    move-result-wide v7

    add-long/2addr v7, v4

    float-to-double v4, v2

    .line 12
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v9

    add-double/2addr v9, v4

    double-to-float v2, v9

    float-to-double v3, v3

    .line 13
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-float v3, v5

    move-wide v4, v7

    goto :goto_0

    .line 14
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newrelic/agent/android/metric/Metric;

    .line 16
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 18
    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 19
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 20
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 21
    :cond_4
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getCount()J

    move-result-wide v11

    add-long/2addr v11, v4

    float-to-double v4, v2

    .line 22
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v13

    add-double/2addr v13, v4

    double-to-float v2, v13

    float-to-double v3, v3

    .line 23
    invoke-virtual {v6}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-float v3, v5

    move-wide v4, v11

    goto :goto_1

    .line 24
    :cond_5
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;J)V

    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleMetricDataUsage(Ljava/lang/String;FF)V

    return-void
.end method

.method public static declared-synchronized disable()V
    .locals 3

    const-class v0, Lcom/newrelic/agent/android/stats/StatsEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    iput-boolean v2, v1, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enable()V
    .locals 3

    const-class v0, Lcom/newrelic/agent/android/stats/StatsEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    iput-boolean v2, v1, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/newrelic/agent/android/stats/StatsEngine;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    return-object v0
.end method

.method public static notice()Lcom/newrelic/agent/android/stats/StatsEngine;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    return-object v0
.end method

.method public static populateMetrics()V
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/metric/Metric;

    .line 3
    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/metric/Metric;

    .line 6
    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->SUPPORTABILITY:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method


# virtual methods
.method public getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public inc(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object p1

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->increment()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inc(Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object p1

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/newrelic/agent/android/metric/Metric;->increment(J)V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/metric/Metric;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public onHarvest()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->calculateMetricsDataUseage()V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->populateMetrics()V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->reset()V

    return-void
.end method

.method public sample(Ljava/lang/String;F)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object p1

    .line 2
    monitor-enter p1

    float-to-double v0, p2

    .line 3
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public sampleMetricDataUsage(Ljava/lang/String;FF)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object p1

    .line 2
    monitor-enter p1

    float-to-double v0, p2

    float-to-double p2, p3

    .line 3
    :try_start_0
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/newrelic/agent/android/metric/Metric;->sampleMetricDataUsage(DD)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public sampleTimeMs(Ljava/lang/String;J)V
    .locals 0

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    return-void
.end method
