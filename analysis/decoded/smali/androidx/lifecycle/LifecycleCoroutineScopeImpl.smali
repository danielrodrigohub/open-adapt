.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.super Landroidx/lifecycle/l;
.source "Lifecycle.kt"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field public final h:Landroidx/lifecycle/i;

.field public final i:Ljd/f;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;Ljd/f;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/l;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->h:Landroidx/lifecycle/i;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->i:Ljd/f;

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0, p1, v0}, Lkotlinx/coroutines/JobKt;->cancel$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->h:Landroidx/lifecycle/i;

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->h:Landroidx/lifecycle/i;

    .line 4
    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    .line 5
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->i:Ljd/f;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0, p2, v0}, Lkotlinx/coroutines/JobKt;->cancel$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Landroidx/lifecycle/i;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->h:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public final getCoroutineContext()Ljd/f;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->i:Ljd/f;

    return-object v0
.end method
