.class public Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "AnalyticsControllerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/AnalyticsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;
    }
.end annotation


# static fields
.field public static final MAX_ATTRIBUTES:I = 0x80

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;


# instance fields
.field private agentImpl:Lcom/newrelic/agent/android/AgentImpl;

.field private attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

.field private final eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

.field private final interactionListener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

.field private final isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->interactionListener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    return-void
.end method

.method public static synthetic access$000()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method private addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store attribute ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] to attribute store."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Refused to add invalid attribute: "

    .line 8
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Attribute limit exceeded: 128 are allowed."

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    const-string v0, "Currently defined attributes:"

    .line 12
    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 14
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "\t"

    .line 15
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->valueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private clear()V
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.clear(): system["

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] user["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] events["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 7
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 8
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->empty()V

    return-void
.end method

.method public static getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    return-object v0
.end method

.method private getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 2
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 2
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.initialize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "AnalyticsControllerImpl.initialize(): Has already been initialized. Bypassing.."

    .line 3
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->clear()V

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V

    .line 6
    iget-object p0, v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->interactionListener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 7
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Analytics Controller initialized: enabled["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    sget-object p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string p1, "AnalyticsControllerImpl.initialize(): Can\'t initialize with a null agent configuration or implementation."

    invoke-interface {p0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private isHttpError(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x190

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInitializedAndEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Analytics controller is not initialized!"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Analytics controller is not enabled!"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkFailure(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getErrorCode()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSuccessfulRequest(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result p1

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static shutdown()V
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v1, v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->interactionListener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 2
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->shutdown()V

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 5
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Analytics Controller shutdown"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;Z)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.setAttributeUnchecked("

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, " (persistent)"

    goto :goto_0

    :cond_0
    const-string v2, " (transient)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "Analytics controller is not initialized!"

    .line 7
    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return v2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Analytics controller is not enabled!"

    .line 9
    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return v2

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v3, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidKeyName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isStringAttribute()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 14
    :cond_4
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 15
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 17
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p2, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to store attribute "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to attribute store."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    .line 19
    :cond_5
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType:[I

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const-string v4, "Attribute data type ["

    .line 20
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is invalid"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getBooleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setBooleanValue(Z)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getDoubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setDoubleValue(D)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setStringValue(Ljava/lang/String;)V

    .line 25
    :goto_1
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setPersistent(Z)V

    .line 26
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to store attribute ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] to attribute store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    :cond_a
    return v3
.end method

.method public addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 6

    .line 5
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.addEvent("

    .line 6
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    invoke-interface {v2}, Lcom/newrelic/agent/android/AgentImpl;->getSessionDurationMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const-string v1, "Harvest instance is not running! Session duration will be invalid"

    .line 11
    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-string v4, "timeSinceLoad"

    invoke-direct {v0, v4, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->addAttributes(Ljava/util/Set;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    return p1
.end method

.method public addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory;->createEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    return p1
.end method

.method public addEvent(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Mobile"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    :cond_0
    return-void
.end method

.method public createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    :cond_0
    return-void
.end method

.method public createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    :cond_0
    return-void
.end method

.method public createNetworkRequestEvents(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isHttpError(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNetworkFailure(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isSuccessfulRequest(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.getAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    return-object v0
.end method

.method public getMaxEventBufferTime()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getMaxEventBufferTime()I

    move-result v0

    return v0
.end method

.method public getMaxEventPoolSize()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getMaxEventPoolSize()I

    move-result v0

    return v0
.end method

.method public getSessionAttributeCount()I
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getSessionAttributes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.getSessionAttributes(): "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributeCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSystemAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAttributes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.getSystemAttributes(): "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 6
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttributeCount()I
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getUserAttributes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.getUserAttributes(): "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 6
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incrementAttribute(Ljava/lang/String;D)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;DZ)Z

    move-result p1

    return p1
.end method

.method public incrementAttribute(Ljava/lang/String;DZ)Z
    .locals 5

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.incrementAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, " (persistent)"

    goto :goto_0

    :cond_0
    const-string v2, " (transient)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isDoubleAttribute()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getDoubleValue()D

    move-result-wide v3

    add-double/2addr v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setDoubleValue(D)V

    .line 8
    invoke-virtual {v1, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setPersistent(Z)V

    .line 9
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to store attribute "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to attribute store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    if-nez v1, :cond_5

    .line 12
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;DZ)V

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    return p1

    .line 13
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot increment attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": the attribute is already defined as a non-float value."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    return v2
.end method

.method public internalRecordEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, ", "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.internalRecordEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidatedAnalyticsAttributes(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p4

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 6
    sget-object p3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    const-string p1, "Error occurred while recording event [%s]: "

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public loadPersistentAttributes()V
    .locals 4

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.loadPersistentAttributes(): "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->fetchAll()Ljava/util/List;

    move-result-object v1

    const-string v2, "AnalyticsControllerImpl.loadPersistentAttributes(): found "

    .line 5
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " userAttributes in the attribute store"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 9
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x80

    if-gt v0, v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onHarvest()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setAnalyticsEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isTransmitRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setSessionAttributes(Ljava/util/Set;)V

    .line 9
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getQueuedEventsSnapshot()Ljava/util/Collection;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const-string v3, "EventManager: ["

    if-lez v2, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getAnalyticsEvents()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 12
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 13
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] events moved from buffer to HarvestData"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 16
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 17
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] events remain in buffer after hand-off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.recordBreadcrumb("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v2, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidatedAnalyticsAttributes(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object p2, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Breadcrumb:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v2, "MobileBreadcrumb"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 6
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Error occurred while recording Breadcrumb event [%s]: "

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.recordCustomEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isReservedEventType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidatedAnalyticsAttributes(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "name"

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p1

    .line 8
    :goto_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-virtual {p0, p2, v1, p1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception p2

    .line 9
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Error occurred while recording custom event [%s]: "

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public recordEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.recordEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {v1, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidatedAnalyticsAttributes(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p4

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 6
    sget-object p3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "Error occurred while recording event [%s]: "

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.recordEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v2, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidatedAnalyticsAttributes(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    sget-object p2, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v2, "Mobile"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 12
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Error occurred while recording event [%s]: "

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.reinitialize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticsAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    .line 6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->loadPersistentAttributes()V

    .line 7
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osVersion"

    if-eqz v1, :cond_3

    const-string v3, " "

    const-string v4, ""

    .line 9
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    const-string v4, "[.:-]"

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    array-length v5, v4

    if-lez v5, :cond_0

    const/4 v3, 0x0

    .line 13
    aget-object v3, v4, v3

    :cond_0
    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v3, v1

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v5, v2, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    const-string v6, "osMajorVersion"

    invoke-direct {v5, v6, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    const-string v4, "undefined"

    invoke-direct {v3, v2, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    invoke-interface {v1}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "osName"

    invoke-direct {v3, v5, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsBuild()Ljava/lang/String;

    move-result-object v4

    const-string v5, "osBuild"

    invoke-direct {v3, v5, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceManufacturer"

    invoke-direct {v3, v5, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceModel"

    invoke-direct {v3, v5, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uuid"

    invoke-direct {v3, v5, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object p2

    const-string v4, "carrier"

    invoke-direct {v3, v4, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newRelicVersion"

    invoke-direct {v2, v4, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->getMemoryUsage()J

    move-result-wide v3

    long-to-float v1, v3

    float-to-double v3, v1

    const-string v1, "memUsageMb"

    invoke-direct {v2, v1, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionId"

    invoke-direct {v1, v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "platform"

    invoke-direct {v1, v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "platformVersion"

    invoke-direct {v1, v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getRunTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "runTime"

    invoke-direct {v1, v3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    const-string v2, "architecture"

    invoke-direct {v1, v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object p2

    const-string v0, "appBuild"

    if-eqz p2, :cond_6

    .line 34
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_6
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getVersionCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 37
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v1, v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public removeAllAttributes()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.removeAttributes(): "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->clear()V

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.removeAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;D)Z
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;DZ)Z

    move-result p1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;DZ)Z
    .locals 3

    .line 23
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, " (persistent)"

    goto :goto_0

    :cond_0
    const-string v2, " (transient)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 25
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 26
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v1

    if-nez v1, :cond_3

    .line 27
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;DZ)V

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    return p1

    .line 28
    :cond_3
    invoke-virtual {v1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setDoubleValue(D)V

    .line 29
    invoke-virtual {v1, p4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setPersistent(Z)V

    .line 30
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 31
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to store attribute ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] to attribute store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.setAttribute("

    const-string v2, ", "

    const-string v3, ")"

    .line 3
    invoke-static {v1, p1, v2, p2, v3}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v2, "(persistent)"

    goto :goto_0

    :cond_0
    const-string v2, "(transient)"

    .line 4
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 6
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, p1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setStringValue(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setPersistent(Z)V

    .line 11
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to store attribute ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] to attribute store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v2
.end method

.method public setAttribute(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;ZZ)Z
    .locals 3

    .line 35
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v2, " (persistent)"

    goto :goto_0

    :cond_0
    const-string v2, " (transient)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 37
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    move-result-object v1

    if-nez v1, :cond_3

    .line 39
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    return p1

    .line 40
    :cond_3
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setBooleanValue(Z)V

    .line 41
    invoke-virtual {v1, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setPersistent(Z)V

    .line 42
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to store attribute ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] to attribute store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return v2

    .line 45
    :cond_4
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setMaxEventBufferTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->setMaxEventBufferTime(I)V

    return-void
.end method

.method public setMaxEventPoolSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->setMaxEventPoolSize(I)V

    return-void
.end method
