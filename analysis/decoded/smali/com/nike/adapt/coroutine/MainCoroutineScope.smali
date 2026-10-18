.class public final Lcom/nike/adapt/coroutine/MainCoroutineScope;
.super Ljava/lang/Object;
.source "MainCoroutineScope.kt"

# interfaces
.implements Landroidx/lifecycle/b;
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final h:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/coroutine/MainCoroutineScope;->h:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Ljd/f;
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/coroutine/MainCoroutineScope;->h:Lkotlinx/coroutines/CompletableJob;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object v0

    return-object v0
.end method

.method public final onStop(Landroidx/lifecycle/q;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;->getCoroutineContext()Ljd/f;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
