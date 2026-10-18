.class public final Lcom/google/android/exoplayer2/source/dash/c$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lr4/f;

.field public final b:Lt4/j;

.field public final c:Lt4/b;

.field public final d:Ls4/d;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(JLt4/j;Lt4/b;Lr4/f;JLs4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lt4/j;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lt4/b;

    .line 5
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lr4/f;

    .line 7
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    return-void
.end method


# virtual methods
.method public final a(JLt4/j;)Lcom/google/android/exoplayer2/source/dash/c$b;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp4/b;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lt4/j;

    invoke-virtual {v1}, Lt4/j;->b()Ls4/d;

    move-result-object v9

    .line 2
    invoke-virtual/range {p3 .. p3}, Lt4/j;->b()Ls4/d;

    move-result-object v10

    if-nez v9, :cond_0

    .line 3
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lt4/b;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lr4/f;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLt4/j;Lt4/b;Lr4/f;JLs4/d;)V

    return-object v10

    .line 4
    :cond_0
    invoke-interface {v9}, Ls4/d;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lt4/b;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lr4/f;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLt4/j;Lt4/b;Lr4/f;JLs4/d;)V

    return-object v11

    .line 6
    :cond_1
    invoke-interface {v9, v2, v3}, Ls4/d;->k(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 7
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lt4/b;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lr4/f;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLt4/j;Lt4/b;Lr4/f;JLs4/d;)V

    return-object v11

    .line 8
    :cond_2
    invoke-interface {v9}, Ls4/d;->j()J

    move-result-wide v6

    .line 9
    invoke-interface {v9, v6, v7}, Ls4/d;->c(J)J

    move-result-wide v11

    add-long/2addr v4, v6

    const-wide/16 v13, 0x1

    sub-long/2addr v4, v13

    .line 10
    invoke-interface {v9, v4, v5}, Ls4/d;->c(J)J

    move-result-wide v15

    .line 11
    invoke-interface {v9, v4, v5, v2, v3}, Ls4/d;->e(JJ)J

    move-result-wide v17

    add-long v17, v17, v15

    .line 12
    invoke-interface {v10}, Ls4/d;->j()J

    move-result-wide v13

    move-object v1, v9

    .line 13
    invoke-interface {v10, v13, v14}, Ls4/d;->c(J)J

    move-result-wide v8

    move-wide/from16 v19, v6

    .line 14
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    cmp-long v17, v17, v8

    if-nez v17, :cond_3

    const-wide/16 v15, 0x1

    add-long/2addr v4, v15

    :goto_0
    sub-long/2addr v4, v13

    add-long/2addr v4, v6

    move-wide v7, v4

    goto :goto_1

    :cond_3
    if-ltz v17, :cond_5

    cmp-long v4, v8, v11

    if-gez v4, :cond_4

    .line 15
    invoke-interface {v10, v11, v12, v2, v3}, Ls4/d;->d(JJ)J

    move-result-wide v4

    sub-long v4, v4, v19

    sub-long/2addr v6, v4

    move-wide v7, v6

    goto :goto_1

    .line 16
    :cond_4
    invoke-interface {v1, v8, v9, v2, v3}, Ls4/d;->d(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 17
    :goto_1
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lt4/b;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lr4/f;

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLt4/j;Lt4/b;Lr4/f;JLs4/d;)V

    return-object v11

    .line 18
    :cond_5
    new-instance v1, Lp4/b;

    invoke-direct {v1}, Lp4/b;-><init>()V

    throw v1
.end method

.method public final b(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    invoke-interface {v0, v1, v2, p1, p2}, Ls4/d;->f(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final c(J)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/c$b;->b(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    .line 2
    invoke-interface {v2, v3, v4, p1, p2}, Ls4/d;->l(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final d()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    invoke-interface {v0, v1, v2}, Ls4/d;->k(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    .line 2
    invoke-interface {v2, p1, p2, v3, v4}, Ls4/d;->e(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final f(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ls4/d;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g(JJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Ls4/d;

    invoke-interface {v0}, Ls4/d;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
