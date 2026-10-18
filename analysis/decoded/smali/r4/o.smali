.class public final Lr4/o;
.super Lr4/a;
.source "SingleSampleMediaChunk.java"


# instance fields
.field public final o:I

.field public final p:Ln3/s0;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJILn3/s0;)V
    .locals 16

    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 1
    invoke-direct/range {v0 .. v15}, Lr4/a;-><init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    .line 2
    iput v1, v0, Lr4/o;->o:I

    move-object/from16 v1, p13

    .line 3
    iput-object v1, v0, Lr4/o;->p:Ln3/s0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/a;->m:Lr4/c;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, v0, Lr4/c;->b:[Lp4/l0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-wide/16 v6, 0x0

    .line 3
    invoke-virtual {v5, v6, v7}, Lp4/l0;->E(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lr4/o;->o:I

    invoke-virtual {v0, v1}, Lr4/c;->a(I)Ls3/w;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lr4/o;->p:Ln3/s0;

    invoke-interface {v4, v0}, Ls3/w;->b(Ln3/s0;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lr4/e;->b:Ll5/m;

    iget-wide v1, p0, Lr4/o;->q:J

    invoke-virtual {v0, v1, v2}, Ll5/m;->b(J)Ll5/m;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lr4/e;->i:Ll5/i0;

    invoke-virtual {v1, v0}, Ll5/i0;->l(Ll5/m;)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    .line 8
    iget-wide v5, p0, Lr4/o;->q:J

    add-long/2addr v0, v5

    :cond_1
    move-wide v9, v0

    .line 9
    new-instance v0, Ls3/e;

    iget-object v6, p0, Lr4/e;->i:Ll5/i0;

    iget-wide v7, p0, Lr4/o;->q:J

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Ls3/e;-><init>(Ll5/h;JJ)V

    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_2

    .line 10
    iget-wide v5, p0, Lr4/o;->q:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lr4/o;->q:J

    const v1, 0x7fffffff

    .line 11
    invoke-interface {v4, v0, v1, v2}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v3

    goto :goto_1

    .line 12
    :cond_2
    iget-wide v0, p0, Lr4/o;->q:J

    long-to-int v8, v0

    .line 13
    iget-wide v5, p0, Lr4/e;->g:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    .line 15
    iput-boolean v2, p0, Lr4/o;->r:Z

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lr4/e;->i:Ll5/i0;

    invoke-static {v1}, Lc3/d;->i(Ll5/j;)V

    .line 17
    throw v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lr4/o;->r:Z

    return v0
.end method
