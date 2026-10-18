.class public final Landroidx/lifecycle/y;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "PausingDispatcher.kt"


# instance fields
.field public final h:Landroidx/lifecycle/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/d;

    invoke-direct {v0}, Landroidx/lifecycle/d;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/y;->h:Landroidx/lifecycle/d;

    return-void
.end method


# virtual methods
.method public final dispatch(Ljd/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/y;->h:Landroidx/lifecycle/d;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/d;->b(Ljd/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isDispatchNeeded(Ljd/f;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Ljd/f;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/y;->h:Landroidx/lifecycle/d;

    invoke-virtual {p1}, Landroidx/lifecycle/d;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
