.class public abstract Lp8/m;
.super Lp8/h;
.source "CoroutineFragment.kt"


# instance fields
.field public final b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lp8/m;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    return-void
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp8/h;->H(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 3
    iget-object v0, p0, Lp8/m;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 2
    iget-object v1, p0, Lp8/m;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->c(Landroidx/lifecycle/p;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method
