.class public abstract Lp8/r;
.super Lp8/h;
.source "EventBasedFragment.kt"

# interfaces
.implements Ls7/a;


# instance fields
.field public final b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

.field public c0:Z

.field public final d0:Li8/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Li8/d;

    invoke-direct {v2, v0, v1}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    iput-object v2, p0, Lp8/r;->d0:Li8/d;

    return-void
.end method

.method private final q0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/r;->c0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp8/r;->c0:Z

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->b(Ls7/a;)V

    .line 4
    invoke-virtual {p0}, Lp8/r;->r0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public H(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp8/h;->H(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lp8/r;->q0()V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 4
    iget-object v0, p0, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 2
    iget-object v1, p0, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->c(Landroidx/lifecycle/p;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/r;->c0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp8/r;->c0:Z

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->c(Ls7/a;)V

    .line 4
    invoke-virtual {p0}, Lp8/r;->s0()V

    .line 5
    :cond_0
    invoke-super {p0}, Lp8/h;->O()V

    return-void
.end method

.method public Q()V
    .locals 0

    .line 1
    invoke-super {p0}, Lp8/h;->Q()V

    .line 2
    invoke-direct {p0}, Lp8/r;->q0()V

    return-void
.end method

.method public S()V
    .locals 0

    .line 1
    invoke-super {p0}, Lp8/h;->S()V

    .line 2
    invoke-direct {p0}, Lp8/r;->q0()V

    return-void
.end method

.method public r0()V
    .locals 0

    return-void
.end method

.method public s0()V
    .locals 0

    return-void
.end method
