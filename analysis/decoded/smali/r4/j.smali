.class public final Lr4/j;
.super Lr4/a;
.source "ContainerMediaChunk.java"


# instance fields
.field public final o:I

.field public final p:J

.field public final q:Lr4/f;

.field public r:J

.field public volatile s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJJJIJLr4/f;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lr4/a;-><init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 2
    iput v1, v0, Lr4/j;->o:I

    move-wide/from16 v1, p17

    .line 3
    iput-wide v1, v0, Lr4/j;->p:J

    move-object/from16 v1, p19

    .line 4
    iput-object v1, v0, Lr4/j;->q:Lr4/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lr4/j;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2
    iget-object v2, p0, Lr4/a;->m:Lr4/c;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Lr4/j;->p:J

    .line 4
    iget-object v3, v2, Lr4/c;->b:[Lp4/l0;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 5
    invoke-virtual {v6, v0, v1}, Lp4/l0;->E(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lr4/j;->q:Lr4/f;

    .line 7
    iget-wide v3, p0, Lr4/a;->k:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    move-wide v3, v5

    goto :goto_1

    :cond_1
    iget-wide v7, p0, Lr4/j;->p:J

    sub-long/2addr v3, v7

    .line 8
    :goto_1
    iget-wide v7, p0, Lr4/a;->l:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v5, p0, Lr4/j;->p:J

    sub-long/2addr v7, v5

    move-wide v5, v7

    .line 9
    :goto_2
    move-object v1, v0

    check-cast v1, Lr4/d;

    invoke-virtual/range {v1 .. v6}, Lr4/d;->a(Lr4/f$b;JJ)V

    .line 10
    :cond_3
    :try_start_0
    iget-object v0, p0, Lr4/e;->b:Ll5/m;

    iget-wide v1, p0, Lr4/j;->r:J

    invoke-virtual {v0, v1, v2}, Ll5/m;->b(J)Ll5/m;

    move-result-object v0

    .line 11
    new-instance v7, Ls3/e;

    iget-object v2, p0, Lr4/e;->i:Ll5/i0;

    iget-wide v3, v0, Ll5/m;->f:J

    .line 12
    invoke-virtual {v2, v0}, Ll5/i0;->l(Ll5/m;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ls3/e;-><init>(Ll5/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :goto_3
    :try_start_1
    iget-boolean v0, p0, Lr4/j;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lr4/j;->q:Lr4/f;

    check-cast v0, Lr4/d;

    invoke-virtual {v0, v7}, Lr4/d;->c(Ls3/i;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 14
    :cond_4
    :try_start_2
    iget-wide v0, v7, Ls3/e;->d:J

    .line 15
    iget-object v2, p0, Lr4/e;->b:Ll5/m;

    iget-wide v2, v2, Ll5/m;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lr4/j;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    iget-object v0, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    .line 17
    iget-boolean v0, p0, Lr4/j;->s:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lr4/j;->t:Z

    return-void

    .line 18
    :goto_4
    :try_start_3
    iget-wide v1, v7, Ls3/e;->d:J

    .line 19
    iget-object v3, p0, Lr4/e;->b:Ll5/m;

    iget-wide v3, v3, Ll5/m;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lr4/j;->r:J

    .line 20
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 21
    iget-object v1, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v1}, Lc3/d;->i(Ll5/j;)V

    .line 22
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/j;->s:Z

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lr4/m;->j:J

    iget v2, p0, Lr4/j;->o:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lr4/j;->t:Z

    return v0
.end method
