.class public final Lo9/s;
.super Ljava/lang/Object;
.source "ShoeControllerVideoHelper.kt"


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo9/s;->a:I

    .line 3
    iput v0, p0, Lo9/s;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ln3/r;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    check-cast p1, Ln3/x1;

    invoke-virtual {p1, v0}, Ln3/x1;->i(Z)V

    .line 2
    invoke-virtual {p1}, Ln3/x1;->j0()V

    .line 3
    invoke-virtual {p1}, Ln3/x1;->h0()V

    :cond_0
    return-void
.end method

.method public final b(Ln3/r;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Lo9/s;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo9/s;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-virtual {p0, p2, v1}, Lo9/s;->e(ZI)V

    if-nez v0, :cond_2

    .line 3
    new-instance p2, Ln3/m1;

    const v0, 0x3f4ccccd

    invoke-direct {p2, v0}, Ln3/m1;-><init>(F)V

    check-cast p1, Ln3/x1;

    invoke-virtual {p1, p2}, Ln3/x1;->i0(Ln3/m1;)V

    :cond_2
    return-void
.end method

.method public final c(Ln3/r;ZLandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lo9/s;->g(Ln3/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p2, p3}, Lo9/s;->e(ZI)V

    const/4 p2, 0x0

    .line 3
    check-cast p1, Ln3/x1;

    invoke-virtual {p1, p2}, Ln3/x1;->i(Z)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x3f266666

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ln3/r;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p2, v0}, Lo9/s;->e(ZI)V

    .line 2
    iget p2, p0, Lo9/s;->b:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lo9/s;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Ln3/m1;

    const v0, 0x3ecccccd

    invoke-direct {p2, v0}, Ln3/m1;-><init>(F)V

    check-cast p1, Ln3/x1;

    invoke-virtual {p1, p2}, Ln3/x1;->i0(Ln3/m1;)V

    :cond_0
    return-void
.end method

.method public final e(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput p2, p0, Lo9/s;->b:I

    goto :goto_0

    .line 2
    :cond_0
    iput p2, p0, Lo9/s;->a:I

    :goto_0
    return-void
.end method

.method public final f(Ln3/r;ZLandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p2, v0}, Lo9/s;->e(ZI)V

    .line 2
    invoke-virtual {p0, p1}, Lo9/s;->g(Ln3/r;)Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lo9/s;->b:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lo9/s;->a:I

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Ln3/m1;

    const v0, 0x3ecccccd

    invoke-direct {p2, v0}, Ln3/m1;-><init>(F)V

    check-cast p1, Ln3/x1;

    invoke-virtual {p1, p2}, Ln3/x1;->i0(Ln3/m1;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Ln3/x1;->i(Z)V

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f266666

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final g(Ln3/r;)Z
    .locals 1

    check-cast p1, Ln3/x1;

    invoke-virtual {p1}, Ln3/x1;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ln3/o1;->s()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
