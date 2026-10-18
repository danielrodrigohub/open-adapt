.class public final Lr4/l;
.super Lr4/e;
.source "InitializationChunk.java"


# instance fields
.field public final j:Lr4/f;

.field public k:Lr4/f$b;

.field public l:J

.field public volatile m:Z


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;Lr4/f;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lr4/e;-><init>(Ll5/j;Ll5/m;ILn3/s0;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lr4/l;->j:Lr4/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lr4/l;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr4/l;->j:Lr4/f;

    iget-object v2, p0, Lr4/l;->k:Lr4/f$b;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v0

    check-cast v1, Lr4/d;

    invoke-virtual/range {v1 .. v6}, Lr4/d;->a(Lr4/f$b;JJ)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lr4/e;->b:Ll5/m;

    iget-wide v1, p0, Lr4/l;->l:J

    invoke-virtual {v0, v1, v2}, Ll5/m;->b(J)Ll5/m;

    move-result-object v0

    .line 4
    new-instance v7, Ls3/e;

    iget-object v2, p0, Lr4/e;->i:Ll5/i0;

    iget-wide v3, v0, Ll5/m;->f:J

    .line 5
    invoke-virtual {v2, v0}, Ll5/i0;->l(Ll5/m;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ls3/e;-><init>(Ll5/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lr4/l;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/l;->j:Lr4/f;

    check-cast v0, Lr4/d;

    invoke-virtual {v0, v7}, Lr4/d;->c(Ls3/i;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    :try_start_2
    iget-wide v0, v7, Ls3/e;->d:J

    .line 8
    iget-object v2, p0, Lr4/e;->b:Ll5/m;

    iget-wide v2, v2, Ll5/m;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lr4/l;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    iget-object v0, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    return-void

    .line 10
    :goto_1
    :try_start_3
    iget-wide v1, v7, Ls3/e;->d:J

    .line 11
    iget-object v3, p0, Lr4/e;->b:Ll5/m;

    iget-wide v3, v3, Ll5/m;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lr4/l;->l:J

    .line 12
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    iget-object v1, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v1}, Lc3/d;->i(Ll5/j;)V

    .line 14
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/l;->m:Z

    return-void
.end method
