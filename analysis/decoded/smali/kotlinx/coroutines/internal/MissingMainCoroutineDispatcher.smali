.class final Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;
.super Lkotlinx/coroutines/MainCoroutineDispatcher;
.source "MainDispatchers.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final errorHint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->cause:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->errorHint:Ljava/lang/String;

    return-void
.end method

.method private final missing()Ljava/lang/Void;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    const-string v0, "Module with the Main dispatcher had failed to initialize"

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->errorHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ". "

    .line 4
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->cause:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/internal/MainDispatchersKt;->throwMissingMainDispatcherException()Ljava/lang/Void;

    new-instance v0, Lfd/b;

    invoke-direct {v0}, Lfd/b;-><init>()V

    throw v0
.end method


# virtual methods
.method public dispatch(Ljd/f;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->missing()Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public bridge synthetic dispatch(Ljd/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->dispatch(Ljd/f;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 0

    return-object p0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Ljd/f;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->missing()Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public isDispatchNeeded(Ljd/f;)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->missing()Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->missing()Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public bridge synthetic scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Void;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Dispatchers.Main[missing"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, ", cause="

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/16 v2, 0x5d

    .line 5
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
