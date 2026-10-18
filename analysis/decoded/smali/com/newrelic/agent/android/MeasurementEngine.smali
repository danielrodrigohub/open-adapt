.class public Lcom/newrelic/agent/android/MeasurementEngine;
.super Ljava/lang/Object;
.source "MeasurementEngine.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field public final activities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/activity/MeasuredActivity;",
            ">;"
        }
    .end annotation
.end field

.field public final rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/MeasurementEngine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/MeasurementPool;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    .line 4
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "MeasurementEngine"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    return-void
.end method

.method public addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->addMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    return-void
.end method

.method public bg(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/MeasurementEngine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeasurementEngine background worker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public broadcastMeasurements()V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->broadcastMeasurements()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public endActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/activity/MeasuredActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/MeasurementEngine;->endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string v1, "Activity \'"

    const-string v2, "\' has not been started."

    .line 4
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getMeasurementPool()Lcom/newrelic/agent/android/measurement/MeasurementPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 13
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->finish()V

    return-void
.end method

.method public removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->removeMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    return-void
.end method

.method public removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->removeMeasurementProducer(Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;)V

    return-void
.end method

.method public renameActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/newrelic/agent/android/activity/MeasuredActivity;

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lcom/newrelic/agent/android/activity/NamedActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/newrelic/agent/android/activity/NamedActivity;

    invoke-virtual {p1, p2}, Lcom/newrelic/agent/android/activity/NamedActivity;->rename(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-direct {v0}, Lcom/newrelic/agent/android/measurement/MeasurementPool;-><init>()V

    .line 3
    new-instance v1, Lcom/newrelic/agent/android/activity/NamedActivity;

    invoke-direct {v1, p1}, Lcom/newrelic/agent/android/activity/NamedActivity;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/newrelic/agent/android/MeasurementEngine$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/newrelic/agent/android/MeasurementEngine$1;-><init>(Lcom/newrelic/agent/android/MeasurementEngine;Lcom/newrelic/agent/android/activity/NamedActivity;Lcom/newrelic/agent/android/measurement/MeasurementPool;)V

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/MeasurementEngine;->bg(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 5
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine;->activities:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string v1, "An activity with the name \'"

    const-string v2, "\' has already started."

    .line 7
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
