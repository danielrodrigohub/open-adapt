.class public final Lkotlinx/coroutines/JobKt;
.super Ljava/lang/Object;


# direct methods
.method public static final Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/JobKt__JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/JobKt__JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method

.method public static final cancel(Ljd/f;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt__JobKt;->cancel(Ljd/f;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic cancel$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/JobKt__JobKt;->cancel$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static final cancelChildren(Ljd/f;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt__JobKt;->cancelChildren(Ljd/f;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic cancelChildren$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/JobKt__JobKt;->cancelChildren$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static final disposeOnCompletion(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt__JobKt;->disposeOnCompletion(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final ensureActive(Ljd/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/JobKt__JobKt;->ensureActive(Ljd/f;)V

    return-void
.end method

.method public static final ensureActive(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lkotlinx/coroutines/JobKt__JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    return-void
.end method
