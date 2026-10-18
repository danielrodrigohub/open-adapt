.class public abstract Ln3/f;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Ln3/s1;
.implements Ln3/t1;


# instance fields
.field public final h:I

.field public final i:Ly0/r;

.field public j:Ln3/u1;

.field public k:I

.field public l:Lo3/v0;

.field public m:I

.field public n:Lp4/m0;

.field public o:[Ln3/s0;

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/f;->h:I

    .line 3
    new-instance p1, Ly0/r;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ly0/r;-><init>(I)V

    iput-object p1, p0, Ln3/f;->i:Ly0/r;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Ln3/f;->q:J

    return-void
.end method


# virtual methods
.method public final A()Ly0/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/f;->i:Ly0/r;

    invoke-virtual {v0}, Ly0/r;->a()V

    .line 2
    iget-object v0, p0, Ln3/f;->i:Ly0/r;

    return-object v0
.end method

.method public abstract B()V
.end method

.method public C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    return-void
.end method

.method public abstract D(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public abstract H([Ln3/s0;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public final I(Ly0/r;Lq3/g;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/f;->n:Lp4/m0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lp4/m0;->j(Ly0/r;Lq3/g;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p2, p1}, Lq3/a;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 5
    iput-wide p1, p0, Ln3/f;->q:J

    .line 6
    iget-boolean p1, p0, Ln3/f;->r:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 7
    :cond_1
    iget-wide v0, p2, Lq3/g;->l:J

    iget-wide v2, p0, Ln3/f;->p:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lq3/g;->l:J

    .line 8
    iget-wide p1, p0, Ln3/f;->q:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ln3/f;->q:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 9
    iget-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    check-cast p2, Ln3/s0;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v0, p2, Ln3/s0;->w:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p2}, Ln3/s0;->b()Ln3/s0$a;

    move-result-object v0

    iget-wide v1, p2, Ln3/s0;->w:J

    iget-wide v3, p0, Ln3/f;->p:J

    add-long/2addr v1, v3

    .line 13
    iput-wide v1, v0, Ln3/s0$a;->o:J

    .line 14
    invoke-virtual {v0}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object p2

    .line 15
    iput-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    :cond_3
    :goto_1
    return p3
.end method

.method public final disable()V
    .locals 3

    .line 1
    iget v0, p0, Ln3/f;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Ln3/f;->i:Ly0/r;

    invoke-virtual {v0}, Ly0/r;->a()V

    .line 3
    iput v2, p0, Ln3/f;->m:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln3/f;->n:Lp4/m0;

    .line 5
    iput-object v0, p0, Ln3/f;->o:[Ln3/s0;

    .line 6
    iput-boolean v2, p0, Ln3/f;->r:Z

    .line 7
    invoke-virtual {p0}, Ln3/f;->B()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget v0, p0, Ln3/f;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Ln3/f;->i:Ly0/r;

    invoke-virtual {v0}, Ly0/r;->a()V

    .line 3
    invoke-virtual {p0}, Ln3/f;->E()V

    return-void
.end method

.method public final g([Ln3/s0;Lp4/m0;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ln3/f;->r:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-object p2, p0, Ln3/f;->n:Lp4/m0;

    .line 3
    iget-wide v0, p0, Ln3/f;->q:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 4
    iput-wide p3, p0, Ln3/f;->q:J

    .line 5
    :cond_0
    iput-object p1, p0, Ln3/f;->o:[Ln3/s0;

    .line 6
    iput-wide p5, p0, Ln3/f;->p:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Ln3/f;->H([Ln3/s0;JJ)V

    return-void
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Ln3/f;->m:I

    return v0
.end method

.method public final h()Z
    .locals 4

    iget-wide v0, p0, Ln3/f;->q:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(ILo3/v0;)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/f;->k:I

    .line 2
    iput-object p2, p0, Ln3/f;->l:Lo3/v0;

    return-void
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public l(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    return-void
.end method

.method public final m()Lp4/m0;
    .locals 1

    iget-object v0, p0, Ln3/f;->n:Lp4/m0;

    return-object v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln3/f;->r:Z

    return-void
.end method

.method public final o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/f;->n:Lp4/m0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lp4/m0;->b()V

    return-void
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Ln3/f;->q:J

    return-wide v0
.end method

.method public final q(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/f;->r:Z

    .line 2
    iput-wide p1, p0, Ln3/f;->q:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ln3/f;->D(JZ)V

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Ln3/f;->r:Z

    return v0
.end method

.method public s()Lm5/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/f;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lm5/a;->e(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ln3/f;->m:I

    .line 3
    invoke-virtual {p0}, Ln3/f;->F()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Ln3/f;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput v1, p0, Ln3/f;->m:I

    .line 3
    invoke-virtual {p0}, Ln3/f;->G()V

    return-void
.end method

.method public final t(Ln3/u1;[Ln3/s0;Lp4/m0;JZZJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object v7, p0

    move-wide v8, p4

    .line 1
    iget v0, v7, Ln3/f;->m:I

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    move-object v0, p1

    .line 2
    iput-object v0, v7, Ln3/f;->j:Ln3/u1;

    .line 3
    iput v1, v7, Ln3/f;->m:I

    move/from16 v0, p7

    .line 4
    invoke-virtual {p0, v0}, Ln3/f;->C(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 5
    invoke-virtual/range {v0 .. v6}, Ln3/f;->g([Ln3/s0;Lp4/m0;JJ)V

    .line 6
    iput-boolean v10, v7, Ln3/f;->r:Z

    .line 7
    iput-wide v8, v7, Ln3/f;->q:J

    move/from16 v0, p6

    .line 8
    invoke-virtual {p0, v8, v9, v0}, Ln3/f;->D(JZ)V

    return-void
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Ln3/f;->h:I

    return v0
.end method

.method public final v()Ln3/t1;
    .locals 0

    return-object p0
.end method

.method public final y(Ljava/lang/Throwable;Ln3/s0;)Ln3/q;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xfa2

    invoke-virtual {p0, p1, p2, v0, v1}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;
    .locals 12

    move-object v1, p0

    move-object v0, p2

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v3, v1, Ln3/f;->s:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 2
    iput-boolean v3, v1, Ln3/f;->s:Z

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Ln3/t1;->a(Ln3/s0;)I

    move-result v4
    :try_end_0
    .catch Ln3/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x7

    .line 4
    iput-boolean v3, v1, Ln3/f;->s:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    iput-boolean v3, v1, Ln3/f;->s:Z

    .line 5
    throw v2

    .line 6
    :catch_0
    iput-boolean v3, v1, Ln3/f;->s:Z

    :cond_0
    move v4, v2

    .line 7
    :goto_0
    invoke-interface {p0}, Ln3/s1;->getName()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget v7, v1, Ln3/f;->k:I

    .line 9
    new-instance v11, Ln3/q;

    if-nez v0, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    const/4 v3, 0x1

    move-object v2, v11

    move-object v4, p1

    move/from16 v5, p4

    move-object v8, p2

    move v10, p3

    .line 10
    invoke-direct/range {v2 .. v10}, Ln3/q;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILn3/s0;IZ)V

    return-object v11
.end method
