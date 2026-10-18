.class public abstract Landroidx/fragment/app/c0;
.super Lj1/a;
.source "FragmentPagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Landroidx/fragment/app/x;

.field public final c:I

.field public d:Landroidx/fragment/app/a;

.field public e:Landroidx/fragment/app/m;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Landroidx/fragment/app/c0;->c:I

    return-void
.end method

.method public static j(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/fragment/app/m;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    .line 4
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 5
    iput-object v1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/x;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    .line 9
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/m;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Landroidx/fragment/app/g0$a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g0;->b(Landroidx/fragment/app/g0$a;)V

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Landroidx/fragment/app/c0;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->f:Z

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v2, p0, Landroidx/fragment/app/c0;->f:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/c0;->f:Z

    .line 6
    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    :cond_1
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    .line 3
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 4
    iput-object v1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    :cond_0
    int-to-long v0, p2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/c0;->j(IJ)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Landroidx/fragment/app/g0$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v2}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/g0;->b(Landroidx/fragment/app/g0$a;)V

    goto :goto_1

    .line 9
    :cond_1
    move-object v2, p0

    check-cast v2, Ly8/c;

    const-string v4, "param_position"

    if-nez p2, :cond_2

    .line 10
    sget-object v5, Ly8/d;->e0:Ly8/d$a;

    .line 11
    new-instance v5, Ly8/d;

    invoke-direct {v5}, Ly8/d;-><init>()V

    .line 12
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v6, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {v5, v6}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 15
    iput-object v5, v2, Ly8/c;->g:Ly8/d;

    goto :goto_0

    .line 16
    :cond_2
    sget-object v5, Ly8/d;->e0:Ly8/d$a;

    .line 17
    new-instance v5, Ly8/d;

    invoke-direct {v5}, Ly8/d;-><init>()V

    .line 18
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-virtual {v6, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v5, v6}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 21
    iput-object v5, v2, Ly8/c;->h:Ly8/d;

    :goto_0
    move-object v2, v5

    .line 22
    iget-object p2, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/c0;->j(IJ)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2, v4, v2, p1, v3}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/m;Ljava/lang/String;I)V

    .line 25
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    if-eq v2, p1, :cond_4

    const/4 p1, 0x0

    .line 26
    invoke-virtual {v2, p1}, Landroidx/fragment/app/m;->l0(Z)V

    .line 27
    iget p2, p0, Landroidx/fragment/app/c0;->c:I

    if-ne p2, v3, :cond_3

    .line 28
    iget-object p1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    sget-object p2, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/a;->o(Landroidx/fragment/app/m;Landroidx/lifecycle/i$c;)Landroidx/fragment/app/g0;

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v2, p1}, Landroidx/fragment/app/m;->o0(Z)V

    :cond_4
    :goto_2
    return-object v2
.end method

.method public final e(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/m;

    .line 2
    iget-object p2, p2, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/fragment/app/m;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/m;->l0(Z)V

    .line 4
    iget v0, p0, Landroidx/fragment/app/c0;->c:I

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    .line 7
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 8
    iput-object v2, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    iget-object v2, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    sget-object v3, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/a;->o(Landroidx/fragment/app/m;Landroidx/lifecycle/i$c;)Landroidx/fragment/app/g0;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/m;->o0(Z)V

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/fragment/app/m;->l0(Z)V

    .line 12
    iget v0, p0, Landroidx/fragment/app/c0;->c:I

    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Landroidx/fragment/app/x;

    .line 15
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 16
    iput-object v1, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    .line 17
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/c0;->d:Landroidx/fragment/app/a;

    sget-object v1, Landroidx/lifecycle/i$c;->l:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/a;->o(Landroidx/fragment/app/m;Landroidx/lifecycle/i$c;)Landroidx/fragment/app/g0;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/fragment/app/m;->o0(Z)V

    .line 19
    :goto_1
    iput-object p1, p0, Landroidx/fragment/app/c0;->e:Landroidx/fragment/app/m;

    :cond_5
    return-void
.end method

.method public final i(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
