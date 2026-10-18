.class public final Lp4/s;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Lp4/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/s$a;
    }
.end annotation


# instance fields
.field public final h:Lp4/x$b;

.field public final i:J

.field public final j:Ll5/b;

.field public k:Lp4/x;

.field public l:Lp4/v;

.field public m:Lp4/v$a;

.field public n:Lp4/s$a;

.field public o:Z

.field public p:J


# direct methods
.method public constructor <init>(Lp4/x$b;Ll5/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/s;->h:Lp4/x$b;

    .line 3
    iput-object p2, p0, Lp4/s;->j:Ll5/b;

    .line 4
    iput-wide p3, p0, Lp4/s;->i:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lp4/s;->p:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Lp4/x$b;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lp4/s;->i:J

    .line 2
    iget-wide v2, p0, Lp4/s;->p:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    iget-object v2, p0, Lp4/s;->k:Lp4/x;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lp4/s;->j:Ll5/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lp4/x;->q(Lp4/x$b;Ll5/b;J)Lp4/v;

    move-result-object p1

    iput-object p1, p0, Lp4/s;->l:Lp4/v;

    .line 6
    iget-object v2, p0, Lp4/s;->m:Lp4/v$a;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1, p0, v0, v1}, Lp4/v;->u(Lp4/v$a;J)V

    :cond_1
    return-void
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0}, Lp4/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLn3/w1;)J
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->d(JLn3/w1;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0}, Lp4/v;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)Z
    .locals 1

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lp4/v;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(J)V
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2}, Lp4/v;->g(J)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/s;->k:Lp4/x;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lp4/s;->l:Lp4/v;

    invoke-interface {v0, v1}, Lp4/x;->d(Lp4/v;)V

    :cond_0
    return-void
.end method

.method public final i(Lp4/v;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lp4/s;->m:Lp4/v$a;

    sget v0, Lm5/g0;->a:I

    invoke-interface {p1, p0}, Lp4/v$a;->i(Lp4/v;)V

    .line 2
    iget-object p1, p0, Lp4/s;->n:Lp4/s$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final j(Lp4/n0;)V
    .locals 1

    .line 1
    check-cast p1, Lp4/v;

    .line 2
    iget-object p1, p0, Lp4/s;->m:Lp4/v$a;

    sget v0, Lm5/g0;->a:I

    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final k(Lp4/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/s;->k:Lp4/x;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-object p1, p0, Lp4/s;->k:Lp4/x;

    return-void
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0}, Lp4/v;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 13

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lp4/s;->p:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lp4/s;->i:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    .line 2
    iput-wide v3, v0, Lp4/s;->p:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    .line 3
    :goto_0
    iget-object v6, v0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 4
    invoke-interface/range {v6 .. v12}, Lp4/v;->n([Lj5/l;[Z[Lp4/m0;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final o()Lp4/u0;
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0}, Lp4/v;->o()Lp4/u0;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lp4/v;->q()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lp4/s;->k:Lp4/x;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lp4/x;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lp4/s;->n:Lp4/s$a;

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v0, p0, Lp4/s;->o:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp4/s;->o:Z

    .line 8
    check-cast v1, Lq4/b$a;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lq4/b;->r:Lp4/x$b;

    const/4 v0, 0x0

    .line 10
    throw v0

    .line 11
    :cond_3
    throw v0
.end method

.method public final s(JZ)V
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->s(JZ)V

    return-void
.end method

.method public final t(J)J
    .locals 2

    iget-object v0, p0, Lp4/s;->l:Lp4/v;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2}, Lp4/v;->t(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 4

    .line 1
    iput-object p1, p0, Lp4/s;->m:Lp4/v$a;

    .line 2
    iget-object p1, p0, Lp4/s;->l:Lp4/v;

    if-eqz p1, :cond_1

    .line 3
    iget-wide p2, p0, Lp4/s;->i:J

    .line 4
    iget-wide v0, p0, Lp4/s;->p:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p2, v0

    .line 5
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lp4/v;->u(Lp4/v$a;J)V

    :cond_1
    return-void
.end method
