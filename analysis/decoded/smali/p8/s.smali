.class public abstract Lp8/s;
.super Lp8/i;
.source "EventBasedPreferenceFragment.kt"

# interfaces
.implements Ls7/a;


# instance fields
.field public final i0:Li8/d;

.field public j0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp8/i;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

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

    iput-object v2, p0, Lp8/s;->i0:Li8/d;

    return-void
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp8/i;->H(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lp8/s;->j0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp8/s;->j0:Z

    .line 4
    sget-object p1, Ls7/b;->a:Ls7/b;

    invoke-virtual {p1, p0}, Ls7/b;->b(Ls7/a;)V

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/s;->j0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp8/s;->j0:Z

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->c(Ls7/a;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lp8/i;->O()V

    return-void
.end method

.method public final Q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/i;->Q()V

    .line 2
    iget-boolean v0, p0, Lp8/s;->j0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp8/s;->j0:Z

    .line 4
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->b(Ls7/a;)V

    :cond_0
    return-void
.end method
