.class public final Lkotlinx/coroutines/intrinsics/CancellableKt;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method private static final dispatcherFailure(Ljd/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    .line 2
    throw p1
.end method

.method public static final startCoroutineCancellable(Ljd/d;Ljd/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;",
            "Ljd/d<",
            "*>;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object p0

    sget-object v0, Lfd/o;->a:Lfd/o;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith$default(Ljd/d;Ljava/lang/Object;Lqd/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p1, p0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->dispatcherFailure(Ljd/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final startCoroutineCancellable(Lqd/p;Ljava/lang/Object;Ljd/d;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/p<",
            "-TR;-",
            "Ljd/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ljd/d<",
            "-TT;>;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/o;->j(Lqd/p;Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object p0

    sget-object p1, Lfd/o;->a:Lfd/o;

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Ljd/d;Ljava/lang/Object;Lqd/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p2, p0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->dispatcherFailure(Ljd/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic startCoroutineCancellable$default(Lqd/p;Ljava/lang/Object;Ljd/d;Lqd/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lqd/p;Ljava/lang/Object;Ljd/d;Lqd/l;)V

    return-void
.end method
