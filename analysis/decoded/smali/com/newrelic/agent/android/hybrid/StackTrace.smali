.class public Lcom/newrelic/agent/android/hybrid/StackTrace;
.super Ljava/lang/Throwable;
.source "StackTrace.java"

# interfaces
.implements Lcom/newrelic/agent/android/hybrid/rninterface/IStackTrace;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final buildId:Ljava/lang/String;

.field private final isFatal:Z

.field private final rnStackTraceException:Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;

.field private rnStacks:[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;

.field private final stackId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/hybrid/StackTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->rnStacks:[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->attributes:Ljava/util/Map;

    if-eqz p3, :cond_7

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->stackId:Ljava/util/UUID;

    .line 7
    iput-boolean p4, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->isFatal:Z

    .line 8
    iput-object p5, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->buildId:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 9
    iput-object p6, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->attributes:Ljava/util/Map;

    :cond_0
    const-string p4, "\n"

    .line 10
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p6

    :cond_2
    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p6

    .line 15
    :cond_4
    new-instance p3, Lcom/newrelic/agent/android/hybrid/StackTraceException;

    invoke-direct {p3, p1, p2}, Lcom/newrelic/agent/android/hybrid/StackTraceException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->rnStackTraceException:Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;

    .line 16
    array-length p1, p5

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-lez p1, :cond_6

    .line 17
    new-array p3, p1, [Lcom/newrelic/agent/android/hybrid/StackFrame;

    move p4, p2

    :goto_0
    add-int/lit8 v0, p1, 0x1

    if-ge p4, v0, :cond_5

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/hybrid/StackFrame;

    aget-object v1, p5, p4

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/hybrid/StackFrame;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p4, -0x1

    .line 19
    aput-object v0, p3, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    new-array p1, p2, [Lcom/newrelic/agent/android/hybrid/Stack;

    .line 20
    iput-object p1, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->rnStacks:[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;

    .line 21
    new-instance p2, Lcom/newrelic/agent/android/hybrid/Stack;

    invoke-direct {p2, p3}, Lcom/newrelic/agent/android/hybrid/Stack;-><init>([Lcom/newrelic/agent/android/hybrid/StackFrame;)V

    aput-object p2, p1, p6

    :cond_6
    return-void

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create a RNStackTrace without a stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBuildId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getStackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->stackId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceException()Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->rnStackTraceException:Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;

    return-object v0
.end method

.method public getStackType()Ljava/lang/String;
    .locals 1

    const-string v0, "ReactNative"

    return-object v0
.end method

.method public getStacks()[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->rnStacks:[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;

    return-object v0
.end method

.method public isFatal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/newrelic/agent/android/hybrid/StackTrace;->isFatal:Z

    return v0
.end method
