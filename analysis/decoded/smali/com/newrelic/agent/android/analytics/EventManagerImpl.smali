.class public Lcom/newrelic/agent/android/analytics/EventManagerImpl;
.super Ljava/lang/Object;
.source "EventManagerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/EventManager;
.implements Lcom/newrelic/agent/android/analytics/EventListener;


# static fields
.field public static final DEFAULT_MAX_EVENT_BUFFER_SIZE:I = 0xfa0

.field public static final DEFAULT_MAX_EVENT_BUFFER_TIME:I = 0x258

.field public static final DEFAULT_MIN_EVENT_BUFFER_SIZE:I = 0x40

.field public static final DEFAULT_MIN_EVENT_BUFFER_TIME:I = 0x3c

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private events:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eventsEvicted:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

.field private firstEventTimestamp:J

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/newrelic/agent/android/analytics/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/newrelic/agent/android/analytics/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public maxBufferTimeInSec:I

.field public maxEventPoolSize:I

.field private final transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xfa0

    const/16 v1, 0x258

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEvicted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    iput p2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    .line 12
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 16
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Listener dropped new event["

    .line 5
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isMaxEventBufferTimeExceeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/EventListener;

    iget v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventQueueTimeExceeded(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 13
    sget-object v3, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventManager.addEvent(): Queue is empty, setting first event timestamp to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 14
    :cond_3
    iget v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v2, v3, :cond_7

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v3, p1}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventOverflow(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    sget-object v2, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener dropped overflow event["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "Event queue is full, scheduling harvest"

    .line 18
    invoke-interface {v2, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 19
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 20
    iget v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    if-lt v3, v4, :cond_5

    .line 21
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v3, p1}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    sget-object p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Event queue is full, scheduling harvest"

    invoke-interface {p1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    .line 24
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    .line 25
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v5, v4}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEvicted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 28
    :cond_6
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v3, v2}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventQueueSizeExceeded(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 29
    :try_start_6
    sget-object v2, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Event queue is full, scheduling harvest"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Event queue is full, scheduling harvest"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x1

    .line 33
    monitor-exit v0

    return p1

    .line 34
    :cond_8
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public empty()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getQueuedEventsSnapshot()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    sget-object v1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "EventManager.empty(): dropped ["

    .line 4
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    return-void
.end method

.method public empty(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getEventsDropped()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsDropped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEventsEjected()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEvicted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEventsRecorded()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/newrelic/agent/android/analytics/EventListener;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/EventListener;

    return-object v0
.end method

.method public getMaxEventBufferTime()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    return v0
.end method

.method public getMaxEventPoolSize()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    return v0
.end method

.method public getQueuedEvents()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueuedEventsSnapshot()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventListener;->onEventFlush()V

    .line 3
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "EventManagerImpl.initialize(): Has already been initialized. Bypassing..."

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 4
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEvicted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->empty()V

    .line 7
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {p1, p0}, Lcom/newrelic/agent/android/analytics/EventListener;->onStart(Lcom/newrelic/agent/android/analytics/EventManager;)V

    return-void
.end method

.method public isMaxEventBufferTimeExceeded()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMaxEventPoolSizeExceeded()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransmitRequired()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isMaxEventPoolSizeExceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isMaxEventBufferTimeExceeded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event ["

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getCategory()Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] added to queue"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p1

    const-string v0, "Supportability/Events/Added"

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event ["

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] evicted from queue"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p1

    const-string v0, "Supportability/Events/Evicted"

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0
.end method

.method public onEventFlush()V
    .locals 0

    return-void
.end method

.method public onEventOverflow(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event queue overflow adding event ["

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p1

    const-string v0, "Supportability/Events/Overflow"

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public onEventQueueSizeExceeded(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event queue size ["

    const-string v2, "] exceeded max["

    .line 2
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p1

    const-string v0, "Supportability/Events/Queue/Size/Exceeded"

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventQueueTimeExceeded(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event queue time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] exceeded"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p1

    const-string v0, "Supportability/Events/Queue/Time/Exceeded"

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onShutdown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event manager is shutting down with ["

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] events remaining in the queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onStart(Lcom/newrelic/agent/android/analytics/EventManager;)V
    .locals 0

    return-void
.end method

.method public setEventListener(Lcom/newrelic/agent/android/analytics/EventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setMaxEventBufferTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event buffer time cannot be shorter than 60 seconds"

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move p1, v0

    :cond_0
    const/16 v0, 0x258

    if-le p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event buffer time should not be longer than 600 seconds"

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    move p1, v0

    .line 3
    :cond_1
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    return-void
.end method

.method public setMaxEventPoolSize(I)V
    .locals 2

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event queue cannot be smaller than 64"

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move p1, v0

    :cond_0
    const/16 v0, 0xfa0

    if-le p1, v0, :cond_1

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Event queue should not be larger than 4000"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 3
    :cond_1
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    return-void
.end method

.method public setTransmitRequired()V
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->transmitRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/EventListener;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventListener;->onShutdown()V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
