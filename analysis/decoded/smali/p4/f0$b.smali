.class public final Lp4/f0$b;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Lp4/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Lp4/v;

.field public final i:J

.field public j:Lp4/v$a;


# direct methods
.method public constructor <init>(Lp4/v;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/f0$b;->h:Lp4/v;

    .line 3
    iput-wide p2, p0, Lp4/f0$b;->i:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->a()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->c()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lp4/f0$b;->i:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final d(JLn3/w1;)J
    .locals 3

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v1, p0, Lp4/f0$b;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->d(JLn3/w1;)J

    move-result-wide p1

    iget-wide v0, p0, Lp4/f0$b;->i:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final e()J
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lp4/f0$b;->i:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final f(J)Z
    .locals 3

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v1, p0, Lp4/f0$b;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lp4/v;->f(J)Z

    move-result p1

    return p1
.end method

.method public final g(J)V
    .locals 3

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v1, p0, Lp4/f0$b;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lp4/v;->g(J)V

    return-void
.end method

.method public final i(Lp4/v;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lp4/f0$b;->j:Lp4/v$a;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Lp4/v$a;->i(Lp4/v;)V

    return-void
.end method

.method public final j(Lp4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Lp4/v;

    .line 2
    iget-object p1, p0, Lp4/f0$b;->j:Lp4/v$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final l()J
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->l()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lp4/f0$b;->i:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 1
    array-length v2, v1

    new-array v2, v2, [Lp4/m0;

    const/4 v10, 0x0

    move v3, v10

    .line 2
    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    .line 3
    aget-object v4, v1, v3

    check-cast v4, Lp4/f0$c;

    if-eqz v4, :cond_0

    .line 4
    iget-object v11, v4, Lp4/f0$c;->h:Lp4/m0;

    .line 5
    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v4, v0, Lp4/f0$b;->i:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 7
    invoke-interface/range {v3 .. v9}, Lp4/v;->n([Lj5/l;[Z[Lp4/m0;[ZJ)J

    move-result-wide v3

    .line 8
    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    .line 9
    aget-object v5, v2, v10

    if-nez v5, :cond_2

    .line 10
    aput-object v11, v1, v10

    goto :goto_2

    .line 11
    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    aget-object v6, v1, v10

    check-cast v6, Lp4/f0$c;

    .line 12
    iget-object v6, v6, Lp4/f0$c;->h:Lp4/m0;

    if-eq v6, v5, :cond_4

    .line 13
    :cond_3
    new-instance v6, Lp4/f0$c;

    iget-wide v7, v0, Lp4/f0$b;->i:J

    invoke-direct {v6, v5, v7, v8}, Lp4/f0$c;-><init>(Lp4/m0;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 14
    :cond_5
    iget-wide v1, v0, Lp4/f0$b;->i:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final o()Lp4/u0;
    .locals 1

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

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

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    invoke-interface {v0}, Lp4/v;->q()V

    return-void
.end method

.method public final s(JZ)V
    .locals 3

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v1, p0, Lp4/f0$b;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lp4/v;->s(JZ)V

    return-void
.end method

.method public final t(J)J
    .locals 3

    iget-object v0, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v1, p0, Lp4/f0$b;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lp4/v;->t(J)J

    move-result-wide p1

    iget-wide v0, p0, Lp4/f0$b;->i:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp4/f0$b;->j:Lp4/v$a;

    .line 2
    iget-object p1, p0, Lp4/f0$b;->h:Lp4/v;

    iget-wide v0, p0, Lp4/f0$b;->i:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lp4/v;->u(Lp4/v$a;J)V

    return-void
.end method
