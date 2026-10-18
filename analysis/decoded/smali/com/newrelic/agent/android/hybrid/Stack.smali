.class public Lcom/newrelic/agent/android/hybrid/Stack;
.super Ljava/lang/Object;
.source "Stack.java"

# interfaces
.implements Lcom/newrelic/agent/android/hybrid/rninterface/IStack;


# instance fields
.field private final id:Ljava/lang/String;

.field private stackFrames:[Lcom/newrelic/agent/android/hybrid/StackFrame;


# direct methods
.method public constructor <init>([Lcom/newrelic/agent/android/hybrid/StackFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/hybrid/Stack;->stackFrames:[Lcom/newrelic/agent/android/hybrid/StackFrame;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/hybrid/Stack;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/Stack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStackFrames()[Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/hybrid/Stack;->stackFrames:[Lcom/newrelic/agent/android/hybrid/StackFrame;

    return-object v0
.end method

.method public isThrowingThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
