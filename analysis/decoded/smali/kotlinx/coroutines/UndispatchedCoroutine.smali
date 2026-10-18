.class public final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private threadStateToRecover:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lfd/e<",
            "Ljd/f;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/f;Ljd/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f;",
            "Ljd/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    invoke-interface {p1, v0}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Ljd/f;Ljd/d;)V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    .line 3
    invoke-interface {p2}, Ljd/d;->getContext()Ljd/f;

    move-result-object p2

    sget v0, Ljd/e;->d:I

    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {p2, v0}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Ljd/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Ljd/f;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->saveThreadContext(Ljd/f;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public afterResume(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfd/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    check-cast v2, Ljd/f;

    .line 4
    iget-object v0, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Ljd/f;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    .line 9
    invoke-interface {v0}, Ljd/d;->getContext()Ljd/f;

    move-result-object v2

    .line 10
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Ljd/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v4, :cond_1

    .line 12
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Ljd/d;Ljd/f;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v1

    .line 13
    :cond_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Ljd/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Ljd/f;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final clearThreadContext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final saveThreadContext(Ljd/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v1, Lfd/e;

    invoke-direct {v1, p1, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
