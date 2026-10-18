.class public abstract Ln3/e;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Ln3/o1;


# instance fields
.field public final a:Ln3/b2$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/b2$d;

    invoke-direct {v0}, Ln3/b2$d;-><init>()V

    iput-object v0, p0, Ln3/e;->a:Ln3/b2$d;

    return-void
.end method


# virtual methods
.method public final D(I)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ln3/o1;->o()Ln3/o1$a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/o1$a;->h:Lm5/j;

    invoke-virtual {v0, p1}, Lm5/j;->a(I)Z

    move-result p1

    return p1
.end method

.method public final F()Z
    .locals 2

    invoke-virtual {p0}, Ln3/e;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final K()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    iget-boolean v0, v0, Ln3/b2$d;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final R(J)V
    .locals 1

    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Ln3/o1;->n(IJ)V

    return-void
.end method

.method public final T()V
    .locals 2

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ln3/o1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/e;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Ln3/e;->a()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Ln3/e;->f(I)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Ln3/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ln3/e;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v0

    invoke-virtual {p0, v0}, Ln3/e;->f(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final U()V
    .locals 2

    invoke-interface {p0}, Ln3/o1;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln3/e;->e0(J)V

    return-void
.end method

.method public final W()V
    .locals 2

    invoke-interface {p0}, Ln3/o1;->c0()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ln3/e;->e0(J)V

    return-void
.end method

.method public final Z()V
    .locals 6

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ln3/o1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/e;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ln3/e;->d0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ln3/e;->q()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Ln3/e;->e()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Ln3/e;->f(I)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p0}, Ln3/o1;->b0()J

    move-result-wide v2

    invoke-interface {p0}, Ln3/o1;->u()V

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Ln3/e;->e()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Ln3/e;->f(I)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Ln3/e;->R(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a()I
    .locals 4

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v1

    .line 4
    invoke-interface {p0}, Ln3/o1;->M()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Ln3/o1;->Q()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Ln3/b2;->g(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ln3/o1;->i(Z)V

    return-void
.end method

.method public final d0()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b2$d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 4

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v1

    .line 4
    invoke-interface {p0}, Ln3/o1;->M()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Ln3/o1;->Q()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Ln3/b2;->n(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e0(J)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ln3/o1;->b0()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    invoke-interface {p0}, Ln3/o1;->N()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Ln3/e;->R(J)V

    return-void
.end method

.method public final f(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, p1, v0, v1}, Ln3/o1;->n(IJ)V

    return-void
.end method

.method public final f0(Ln3/y0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ln3/o1;->Y(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ln3/o1;->i(Z)V

    return-void
.end method

.method public final q()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ln3/o1;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    iget-boolean v0, v0, Ln3/b2$d;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 2

    invoke-virtual {p0}, Ln3/e;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ln3/o1;->s()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ln3/o1;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Ln3/o1;->L()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
