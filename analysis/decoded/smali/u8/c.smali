.class public final Lu8/c;
.super Lu8/g;
.source "BlurConnectingErrorDisplay.kt"


# instance fields
.field public final d:I

.field public final e:Landroidx/fragment/app/x;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/m;)V
    .locals 2

    .line 5
    sget-object v0, Lu8/b;->h:Lu8/b;

    const-string v1, "fragment"

    .line 6
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runtimeOverride"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/m;->k()Landroidx/fragment/app/x;

    move-result-object p2

    const-string v1, "fragment.childFragmentManager"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lu8/g;-><init>(Lqd/a;)V

    iput p1, p0, Lu8/c;->d:I

    iput-object p2, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    return-void
.end method

.method public constructor <init>(ILf/e;)V
    .locals 2

    .line 1
    sget-object v0, Lu8/a;->h:Lu8/a;

    const-string v1, "activity"

    .line 2
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runtimeOverride"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p2

    const-string v1, "activity.supportFragmentManager"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lu8/g;-><init>(Lqd/a;)V

    iput p1, p0, Lu8/c;->d:I

    iput-object p2, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    const-string v1, "CONNECTING_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    .line 3
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const/4 v1, 0x0

    const v3, 0x7f010024

    .line 4
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/g0;->g(II)Landroidx/fragment/app/g0;

    .line 5
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/m;)Landroidx/fragment/app/g0;

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->d()V

    .line 6
    :cond_0
    invoke-super {p0}, Lu8/g;->a()V

    return-void
.end method

.method public final b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    const-string v1, "CONNECTING_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    .line 2
    iget-boolean v2, p0, Lu8/g;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iget-boolean v4, p0, Lu8/g;->b:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    .line 5
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const v1, 0x7f010024

    .line 6
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/g0;->g(II)Landroidx/fragment/app/g0;

    .line 7
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/m;)Landroidx/fragment/app/g0;

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->d()V

    return v3

    :cond_0
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 8
    iget-boolean v2, p0, Lu8/g;->b:Z

    if-nez v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    .line 9
    :try_start_0
    iget-object v0, p0, Lu8/c;->e:Landroidx/fragment/app/x;

    .line 10
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 11
    iget v0, p0, Lu8/c;->d:I

    sget-object v5, Lu8/e;->h0:Lu8/e$a;

    .line 12
    new-instance v5, Lu8/e;

    invoke-direct {v5}, Lu8/e;-><init>()V

    .line 13
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "PARAM_CONTAINER_ID"

    invoke-virtual {v6, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {v2, v0, v5, v1}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    return v3

    :cond_2
    if-eqz v0, :cond_3

    .line 15
    instance-of v1, v0, Lu8/e;

    if-eqz v1, :cond_3

    .line 16
    check-cast v0, Lu8/e;

    invoke-virtual {v0}, Lu8/e;->q0()V

    return v4

    :cond_3
    return v3
.end method
