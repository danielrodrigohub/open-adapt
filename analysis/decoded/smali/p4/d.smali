.class public final Lp4/d;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Lp4/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/d$a;
    }
.end annotation


# instance fields
.field public final h:Lp4/v;

.field public i:Lp4/v$a;

.field public j:[Lp4/d$a;

.field public k:J

.field public l:J

.field public m:J

.field public n:Lp4/e$b;


# direct methods
.method public constructor <init>(Lp4/v;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/d;->h:Lp4/v;

    const/4 p1, 0x0

    new-array p1, p1, [Lp4/d$a;

    .line 3
    iput-object p1, p0, Lp4/d;->j:[Lp4/d$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_0
    iput-wide p1, p0, Lp4/d;->k:J

    .line 5
    iput-wide p3, p0, Lp4/d;->l:J

    .line 6
    iput-wide p5, p0, Lp4/d;->m:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lp4/d;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()J
    .locals 7

    .line 1
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->c()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v4, p0, Lp4/d;->m:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final d(JLn3/w1;)J
    .locals 9

    .line 1
    iget-wide v0, p0, Lp4/d;->l:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-wide v3, p3, Ln3/w1;->a:J

    sub-long v7, p1, v0

    const-wide/16 v5, 0x0

    .line 3
    invoke-static/range {v3 .. v8}, Lm5/g0;->j(JJJ)J

    move-result-wide v0

    .line 4
    iget-wide v2, p3, Ln3/w1;->b:J

    .line 5
    iget-wide v4, p0, Lp4/d;->m:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    sub-long/2addr v4, p1

    :goto_0
    move-wide v6, v4

    const-wide/16 v4, 0x0

    .line 6
    invoke-static/range {v2 .. v7}, Lm5/g0;->j(JJJ)J

    move-result-wide v2

    .line 7
    iget-wide v4, p3, Ln3/w1;->a:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Ln3/w1;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p3, Ln3/w1;

    invoke-direct {p3, v0, v1, v2, v3}, Ln3/w1;-><init>(JJ)V

    .line 9
    :goto_1
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->d(JLn3/w1;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()J
    .locals 7

    .line 1
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v4, p0, Lp4/d;->m:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final f(J)Z
    .locals 1

    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1, p2}, Lp4/v;->f(J)Z

    move-result p1

    return p1
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1, p2}, Lp4/v;->g(J)V

    return-void
.end method

.method public final i(Lp4/v;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lp4/d;->n:Lp4/e$b;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lp4/d;->i:Lp4/v$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p0}, Lp4/v$a;->i(Lp4/v;)V

    return-void
.end method

.method public final j(Lp4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Lp4/v;

    .line 2
    iget-object p1, p0, Lp4/d;->i:Lp4/v$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final l()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lp4/d;->b()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 2
    iget-wide v3, p0, Lp4/d;->k:J

    .line 3
    iput-wide v1, p0, Lp4/d;->k:J

    .line 4
    invoke-virtual {p0}, Lp4/d;->l()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    .line 5
    :cond_1
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->l()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 6
    :cond_2
    iget-wide v0, p0, Lp4/d;->l:J

    cmp-long v0, v3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 7
    iget-wide v5, p0, Lp4/d;->m:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    invoke-static {v1}, Lm5/a;->e(Z)V

    return-wide v3
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 1
    array-length v1, v9

    new-array v1, v1, [Lp4/d$a;

    iput-object v1, v0, Lp4/d;->j:[Lp4/d$a;

    .line 2
    array-length v1, v9

    new-array v10, v1, [Lp4/m0;

    const/4 v11, 0x0

    move v1, v11

    .line 3
    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, v0, Lp4/d;->j:[Lp4/d$a;

    aget-object v3, v9, v1

    check-cast v3, Lp4/d$a;

    aput-object v3, v2, v1

    .line 5
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v12, v2, Lp4/d$a;->h:Lp4/m0;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lp4/d;->h:Lp4/v;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 7
    invoke-interface/range {v1 .. v7}, Lp4/v;->n([Lj5/l;[Z[Lp4/m0;[ZJ)J

    move-result-wide v1

    .line 8
    invoke-virtual {p0}, Lp4/d;->b()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-wide v5, v0, Lp4/d;->l:J

    cmp-long v3, p5, v5

    if-nez v3, :cond_4

    const-wide/16 v13, 0x0

    cmp-long v3, v5, v13

    if-eqz v3, :cond_3

    .line 9
    array-length v3, v8

    move v5, v11

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v8, v5

    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v6}, Lj5/l;->m()Ln3/s0;

    move-result-object v6

    .line 11
    iget-object v7, v6, Ln3/s0;->s:Ljava/lang/String;

    iget-object v6, v6, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v7, v6}, Lm5/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v3, v11

    :goto_2
    if-eqz v3, :cond_4

    move-wide v5, v1

    goto :goto_3

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    :goto_3
    iput-wide v5, v0, Lp4/d;->k:J

    cmp-long v3, v1, p5

    if-eqz v3, :cond_6

    .line 13
    iget-wide v5, v0, Lp4/d;->l:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_5

    iget-wide v5, v0, Lp4/d;->m:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    cmp-long v3, v1, v5

    if-gtz v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v11

    :cond_6
    :goto_4
    invoke-static {v4}, Lm5/a;->e(Z)V

    .line 14
    :goto_5
    array-length v3, v9

    if-ge v11, v3, :cond_a

    .line 15
    aget-object v3, v10, v11

    if-nez v3, :cond_7

    .line 16
    iget-object v3, v0, Lp4/d;->j:[Lp4/d$a;

    aput-object v12, v3, v11

    goto :goto_6

    .line 17
    :cond_7
    iget-object v3, v0, Lp4/d;->j:[Lp4/d$a;

    aget-object v4, v3, v11

    if-eqz v4, :cond_8

    aget-object v4, v3, v11

    iget-object v4, v4, Lp4/d$a;->h:Lp4/m0;

    aget-object v5, v10, v11

    if-eq v4, v5, :cond_9

    .line 18
    :cond_8
    new-instance v4, Lp4/d$a;

    aget-object v5, v10, v11

    invoke-direct {v4, p0, v5}, Lp4/d$a;-><init>(Lp4/d;Lp4/m0;)V

    aput-object v4, v3, v11

    .line 19
    :cond_9
    :goto_6
    iget-object v3, v0, Lp4/d;->j:[Lp4/d$a;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    return-wide v1
.end method

.method public final o()Lp4/u0;
    .locals 1

    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->o()Lp4/u0;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/d;->n:Lp4/e$b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->q()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public final s(JZ)V
    .locals 1

    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->s(JZ)V

    return-void
.end method

.method public final t(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lp4/d;->k:J

    .line 2
    iget-object v0, p0, Lp4/d;->j:[Lp4/d$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 3
    iput-boolean v2, v4, Lp4/d$a;->i:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1, p2}, Lp4/v;->t(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    .line 5
    iget-wide p1, p0, Lp4/d;->l:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    iget-wide p1, p0, Lp4/d;->m:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    cmp-long p1, v0, p1

    if-gtz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lm5/a;->e(Z)V

    return-wide v0
.end method

.method public final u(Lp4/v$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/d;->i:Lp4/v$a;

    .line 2
    iget-object p1, p0, Lp4/d;->h:Lp4/v;

    invoke-interface {p1, p0, p2, p3}, Lp4/v;->u(Lp4/v$a;J)V

    return-void
.end method
