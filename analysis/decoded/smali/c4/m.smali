.class public final Lc4/m;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lc4/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/m$a;
    }
.end annotation


# instance fields
.field public final a:Lc4/z;

.field public final b:Z

.field public final c:Z

.field public final d:Lc4/r;

.field public final e:Lc4/r;

.field public final f:Lc4/r;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Ls3/w;

.field public k:Lc4/m$a;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lm5/w;


# direct methods
.method public constructor <init>(Lc4/z;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/m;->a:Lc4/z;

    .line 3
    iput-boolean p2, p0, Lc4/m;->b:Z

    .line 4
    iput-boolean p3, p0, Lc4/m;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lc4/m;->h:[Z

    .line 6
    new-instance p1, Lc4/r;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/m;->d:Lc4/r;

    .line 7
    new-instance p1, Lc4/r;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/m;->e:Lc4/r;

    .line 8
    new-instance p1, Lc4/r;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/m;->f:Lc4/r;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lc4/m;->m:J

    .line 10
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Lc4/m;->o:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc4/m;->g:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc4/m;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v1, p0, Lc4/m;->m:J

    .line 4
    iget-object v1, p0, Lc4/m;->h:[Z

    invoke-static {v1}, Lm5/t;->a([Z)V

    .line 5
    iget-object v1, p0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v1}, Lc4/r;->c()V

    .line 6
    iget-object v1, p0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v1}, Lc4/r;->c()V

    .line 7
    iget-object v1, p0, Lc4/m;->f:Lc4/r;

    invoke-virtual {v1}, Lc4/r;->c()V

    .line 8
    iget-object v1, p0, Lc4/m;->k:Lc4/m$a;

    if-eqz v1, :cond_0

    .line 9
    iput-boolean v0, v1, Lc4/m$a;->k:Z

    .line 10
    iput-boolean v0, v1, Lc4/m$a;->o:Z

    .line 11
    iget-object v1, v1, Lc4/m$a;->n:Lc4/m$a$a;

    .line 12
    iput-boolean v0, v1, Lc4/m$a$a;->b:Z

    .line 13
    iput-boolean v0, v1, Lc4/m$a$a;->a:Z

    :cond_0
    return-void
.end method

.method public final b([BII)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lc4/m;->l:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lc4/m;->k:Lc4/m$a;

    .line 2
    iget-boolean v4, v4, Lc4/m$a;->c:Z

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v4, v0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v4, v1, v2, v3}, Lc4/r;->a([BII)V

    .line 4
    iget-object v4, v0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v4, v1, v2, v3}, Lc4/r;->a([BII)V

    .line 5
    :cond_1
    iget-object v4, v0, Lc4/m;->f:Lc4/r;

    invoke-virtual {v4, v1, v2, v3}, Lc4/r;->a([BII)V

    .line 6
    iget-object v4, v0, Lc4/m;->k:Lc4/m$a;

    .line 7
    iget-boolean v5, v4, Lc4/m$a;->k:Z

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    sub-int/2addr v3, v2

    .line 8
    iget-object v5, v4, Lc4/m$a;->g:[B

    array-length v6, v5

    iget v7, v4, Lc4/m$a;->h:I

    add-int/2addr v7, v3

    const/4 v8, 0x2

    if-ge v6, v7, :cond_3

    mul-int/2addr v7, v8

    .line 9
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lc4/m$a;->g:[B

    .line 10
    :cond_3
    iget-object v5, v4, Lc4/m$a;->g:[B

    iget v6, v4, Lc4/m$a;->h:I

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v1, v4, Lc4/m$a;->h:I

    add-int/2addr v1, v3

    iput v1, v4, Lc4/m$a;->h:I

    .line 12
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    iget-object v3, v4, Lc4/m$a;->g:[B

    .line 13
    iput-object v3, v2, Lm5/x;->a:[B

    const/4 v3, 0x0

    .line 14
    iput v3, v2, Lm5/x;->c:I

    .line 15
    iput v1, v2, Lm5/x;->b:I

    .line 16
    iput v3, v2, Lm5/x;->d:I

    .line 17
    invoke-virtual {v2}, Lm5/x;->a()V

    .line 18
    iget-object v1, v4, Lc4/m$a;->f:Lm5/x;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lm5/x;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 19
    :cond_4
    iget-object v1, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v1}, Lm5/x;->i()V

    .line 20
    iget-object v1, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v1, v8}, Lm5/x;->e(I)I

    move-result v1

    .line 21
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lm5/x;->j(I)V

    .line 22
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v2}, Lm5/x;->c()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_5

    .line 23
    :cond_5
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    .line 24
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 25
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v2}, Lm5/x;->c()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 26
    :cond_6
    iget-object v2, v4, Lc4/m$a;->f:Lm5/x;

    .line 27
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v2

    .line 28
    iget-boolean v6, v4, Lc4/m$a;->c:Z

    const/4 v7, 0x1

    if-nez v6, :cond_7

    .line 29
    iput-boolean v3, v4, Lc4/m$a;->k:Z

    .line 30
    iget-object v1, v4, Lc4/m$a;->n:Lc4/m$a$a;

    .line 31
    iput v2, v1, Lc4/m$a$a;->e:I

    .line 32
    iput-boolean v7, v1, Lc4/m$a$a;->b:Z

    goto/16 :goto_5

    .line 33
    :cond_7
    iget-object v6, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v6}, Lm5/x;->c()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_5

    .line 34
    :cond_8
    iget-object v6, v4, Lc4/m$a;->f:Lm5/x;

    .line 35
    invoke-virtual {v6}, Lm5/x;->f()I

    move-result v6

    .line 36
    iget-object v9, v4, Lc4/m$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_9

    .line 37
    iput-boolean v3, v4, Lc4/m$a;->k:Z

    goto/16 :goto_5

    .line 38
    :cond_9
    iget-object v9, v4, Lc4/m$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm5/t$b;

    .line 39
    iget-object v10, v4, Lc4/m$a;->d:Landroid/util/SparseArray;

    iget v11, v9, Lm5/t$b;->b:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm5/t$c;

    .line 40
    iget-boolean v11, v10, Lm5/t$c;->h:Z

    if-eqz v11, :cond_b

    .line 41
    iget-object v11, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v11, v8}, Lm5/x;->b(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 42
    :cond_a
    iget-object v11, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v11, v8}, Lm5/x;->j(I)V

    .line 43
    :cond_b
    iget-object v8, v4, Lc4/m$a;->f:Lm5/x;

    iget v11, v10, Lm5/t$c;->j:I

    invoke-virtual {v8, v11}, Lm5/x;->b(I)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_5

    .line 44
    :cond_c
    iget-object v8, v4, Lc4/m$a;->f:Lm5/x;

    iget v11, v10, Lm5/t$c;->j:I

    invoke-virtual {v8, v11}, Lm5/x;->e(I)I

    move-result v8

    .line 45
    iget-boolean v11, v10, Lm5/t$c;->i:Z

    if-nez v11, :cond_f

    .line 46
    iget-object v11, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v11, v7}, Lm5/x;->b(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_5

    .line 47
    :cond_d
    iget-object v11, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v11}, Lm5/x;->d()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 48
    iget-object v12, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v12, v7}, Lm5/x;->b(I)Z

    move-result v12

    if-nez v12, :cond_e

    goto/16 :goto_5

    .line 49
    :cond_e
    iget-object v12, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v12}, Lm5/x;->d()Z

    move-result v12

    move v13, v7

    goto :goto_0

    :cond_f
    move v11, v3

    :cond_10
    move v12, v3

    move v13, v12

    .line 50
    :goto_0
    iget v14, v4, Lc4/m$a;->i:I

    if-ne v14, v5, :cond_11

    move v5, v7

    goto :goto_1

    :cond_11
    move v5, v3

    :goto_1
    if-eqz v5, :cond_13

    .line 51
    iget-object v14, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v14}, Lm5/x;->c()Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_5

    .line 52
    :cond_12
    iget-object v14, v4, Lc4/m$a;->f:Lm5/x;

    .line 53
    invoke-virtual {v14}, Lm5/x;->f()I

    move-result v14

    goto :goto_2

    :cond_13
    move v14, v3

    .line 54
    :goto_2
    iget v15, v10, Lm5/t$c;->k:I

    if-nez v15, :cond_16

    .line 55
    iget-object v15, v4, Lc4/m$a;->f:Lm5/x;

    iget v3, v10, Lm5/t$c;->l:I

    invoke-virtual {v15, v3}, Lm5/x;->b(I)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_5

    .line 56
    :cond_14
    iget-object v3, v4, Lc4/m$a;->f:Lm5/x;

    iget v15, v10, Lm5/t$c;->l:I

    invoke-virtual {v3, v15}, Lm5/x;->e(I)I

    move-result v3

    .line 57
    iget-boolean v9, v9, Lm5/t$b;->c:Z

    if-eqz v9, :cond_1b

    if-nez v11, :cond_1b

    .line 58
    iget-object v9, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v9}, Lm5/x;->c()Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_5

    .line 59
    :cond_15
    iget-object v9, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v9}, Lm5/x;->g()I

    move-result v9

    move v15, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_16
    if-ne v15, v7, :cond_1a

    .line 60
    iget-boolean v3, v10, Lm5/t$c;->m:Z

    if-nez v3, :cond_1a

    .line 61
    iget-object v3, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v3}, Lm5/x;->c()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_5

    .line 62
    :cond_17
    iget-object v3, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v3}, Lm5/x;->g()I

    move-result v3

    .line 63
    iget-boolean v9, v9, Lm5/t$b;->c:Z

    if-eqz v9, :cond_19

    if-nez v11, :cond_19

    .line 64
    iget-object v9, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v9}, Lm5/x;->c()Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_5

    .line 65
    :cond_18
    iget-object v9, v4, Lc4/m$a;->f:Lm5/x;

    invoke-virtual {v9}, Lm5/x;->g()I

    move-result v9

    move v7, v9

    const/4 v15, 0x0

    move v9, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_19
    move v9, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 66
    :goto_4
    iget-object v0, v4, Lc4/m$a;->n:Lc4/m$a$a;

    .line 67
    iput-object v10, v0, Lc4/m$a$a;->c:Lm5/t$c;

    .line 68
    iput v1, v0, Lc4/m$a$a;->d:I

    .line 69
    iput v2, v0, Lc4/m$a$a;->e:I

    .line 70
    iput v8, v0, Lc4/m$a$a;->f:I

    .line 71
    iput v6, v0, Lc4/m$a$a;->g:I

    .line 72
    iput-boolean v11, v0, Lc4/m$a$a;->h:Z

    .line 73
    iput-boolean v13, v0, Lc4/m$a$a;->i:Z

    .line 74
    iput-boolean v12, v0, Lc4/m$a$a;->j:Z

    .line 75
    iput-boolean v5, v0, Lc4/m$a$a;->k:Z

    .line 76
    iput v14, v0, Lc4/m$a$a;->l:I

    .line 77
    iput v3, v0, Lc4/m$a$a;->m:I

    .line 78
    iput v15, v0, Lc4/m$a$a;->n:I

    .line 79
    iput v9, v0, Lc4/m$a$a;->o:I

    .line 80
    iput v7, v0, Lc4/m$a$a;->p:I

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, v0, Lc4/m$a$a;->a:Z

    .line 82
    iput-boolean v1, v0, Lc4/m$a$a;->b:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, v4, Lc4/m$a;->k:Z

    :goto_5
    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc4/m;->j:Ls3/w;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lm5/g0;->a:I

    .line 3
    iget v2, v1, Lm5/w;->b:I

    .line 4
    iget v3, v1, Lm5/w;->c:I

    .line 5
    iget-object v4, v1, Lm5/w;->a:[B

    .line 6
    iget-wide v5, v0, Lc4/m;->g:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Lc4/m;->g:J

    .line 7
    iget-object v5, v0, Lc4/m;->j:Ls3/w;

    invoke-interface {v5, v1, v7}, Ls3/w;->f(Lm5/w;I)V

    .line 8
    :goto_0
    iget-object v1, v0, Lc4/m;->h:[Z

    invoke-static {v4, v2, v3, v1}, Lm5/t;->b([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 9
    invoke-virtual {v0, v4, v2, v3}, Lc4/m;->b([BII)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 10
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    .line 11
    invoke-virtual {v0, v4, v2, v1}, Lc4/m;->b([BII)V

    :cond_1
    sub-int v1, v3, v1

    .line 12
    iget-wide v8, v0, Lc4/m;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 13
    :goto_1
    iget-wide v10, v0, Lc4/m;->m:J

    .line 14
    iget-boolean v12, v0, Lc4/m;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lc4/m;->k:Lc4/m$a;

    .line 15
    iget-boolean v12, v12, Lc4/m$a;->c:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_3

    .line 16
    :cond_4
    :goto_2
    iget-object v12, v0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v12, v7}, Lc4/r;->b(I)Z

    .line 17
    iget-object v12, v0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v12, v7}, Lc4/r;->b(I)Z

    .line 18
    iget-boolean v12, v0, Lc4/m;->l:Z

    const/4 v14, 0x3

    if-nez v12, :cond_5

    .line 19
    iget-object v12, v0, Lc4/m;->d:Lc4/r;

    .line 20
    iget-boolean v12, v12, Lc4/r;->c:Z

    if-eqz v12, :cond_3

    .line 21
    iget-object v12, v0, Lc4/m;->e:Lc4/r;

    .line 22
    iget-boolean v12, v12, Lc4/r;->c:Z

    if-eqz v12, :cond_3

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v15, v0, Lc4/m;->d:Lc4/r;

    iget-object v2, v15, Lc4/r;->d:[B

    iget v15, v15, Lc4/r;->e:I

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, v0, Lc4/m;->e:Lc4/r;

    iget-object v15, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, v0, Lc4/m;->d:Lc4/r;

    iget-object v15, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v15, v14, v2}, Lm5/t;->e([BII)Lm5/t$c;

    move-result-object v2

    .line 27
    iget-object v14, v0, Lc4/m;->e:Lc4/r;

    iget-object v15, v14, Lc4/r;->d:[B

    iget v14, v14, Lc4/r;->e:I

    invoke-static {v15, v14}, Lm5/t;->d([BI)Lm5/t$b;

    move-result-object v14

    .line 28
    iget v15, v2, Lm5/t$c;->a:I

    iget v13, v2, Lm5/t$c;->b:I

    move/from16 v16, v3

    iget v3, v2, Lm5/t$c;->c:I

    .line 29
    invoke-static {v15, v13, v3}, Lde/n0;->c(III)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v13, v0, Lc4/m;->j:Ls3/w;

    new-instance v15, Ln3/s0$a;

    invoke-direct {v15}, Ln3/s0$a;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lc4/m;->i:Ljava/lang/String;

    .line 31
    iput-object v4, v15, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v4, "video/avc"

    .line 32
    iput-object v4, v15, Ln3/s0$a;->k:Ljava/lang/String;

    .line 33
    iput-object v3, v15, Ln3/s0$a;->h:Ljava/lang/String;

    .line 34
    iget v3, v2, Lm5/t$c;->e:I

    .line 35
    iput v3, v15, Ln3/s0$a;->p:I

    .line 36
    iget v3, v2, Lm5/t$c;->f:I

    .line 37
    iput v3, v15, Ln3/s0$a;->q:I

    .line 38
    iget v3, v2, Lm5/t$c;->g:F

    .line 39
    iput v3, v15, Ln3/s0$a;->t:F

    .line 40
    iput-object v12, v15, Ln3/s0$a;->m:Ljava/util/List;

    .line 41
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v15}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 42
    invoke-interface {v13, v3}, Ls3/w;->b(Ln3/s0;)V

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v0, Lc4/m;->l:Z

    .line 44
    iget-object v3, v0, Lc4/m;->k:Lc4/m$a;

    .line 45
    iget-object v3, v3, Lc4/m$a;->d:Landroid/util/SparseArray;

    iget v4, v2, Lm5/t$c;->d:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object v2, v0, Lc4/m;->k:Lc4/m$a;

    .line 47
    iget-object v2, v2, Lc4/m$a;->e:Landroid/util/SparseArray;

    iget v3, v14, Lm5/t$b;->a:I

    invoke-virtual {v2, v3, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    iget-object v2, v0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v2}, Lc4/r;->c()V

    .line 49
    iget-object v2, v0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v2}, Lc4/r;->c()V

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 50
    iget-object v2, v0, Lc4/m;->d:Lc4/r;

    .line 51
    iget-boolean v3, v2, Lc4/r;->c:Z

    if-eqz v3, :cond_6

    .line 52
    iget-object v3, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v3, v14, v2}, Lm5/t;->e([BII)Lm5/t$c;

    move-result-object v2

    .line 53
    iget-object v3, v0, Lc4/m;->k:Lc4/m$a;

    .line 54
    iget-object v3, v3, Lc4/m$a;->d:Landroid/util/SparseArray;

    iget v4, v2, Lm5/t$c;->d:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    iget-object v2, v0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v2}, Lc4/r;->c()V

    goto :goto_3

    .line 56
    :cond_6
    iget-object v2, v0, Lc4/m;->e:Lc4/r;

    .line 57
    iget-boolean v3, v2, Lc4/r;->c:Z

    if-eqz v3, :cond_7

    .line 58
    iget-object v3, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v3, v2}, Lm5/t;->d([BI)Lm5/t$b;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lc4/m;->k:Lc4/m$a;

    .line 60
    iget-object v3, v3, Lc4/m$a;->e:Landroid/util/SparseArray;

    iget v4, v2, Lm5/t$b;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    iget-object v2, v0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v2}, Lc4/r;->c()V

    .line 62
    :cond_7
    :goto_3
    iget-object v2, v0, Lc4/m;->f:Lc4/r;

    invoke-virtual {v2, v7}, Lc4/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    iget-object v2, v0, Lc4/m;->f:Lc4/r;

    iget-object v3, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v3, v2}, Lm5/t;->f([BI)I

    move-result v2

    .line 64
    iget-object v3, v0, Lc4/m;->o:Lm5/w;

    iget-object v4, v0, Lc4/m;->f:Lc4/r;

    iget-object v4, v4, Lc4/r;->d:[B

    invoke-virtual {v3, v4, v2}, Lm5/w;->B([BI)V

    .line 65
    iget-object v2, v0, Lc4/m;->o:Lm5/w;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lm5/w;->D(I)V

    .line 66
    iget-object v2, v0, Lc4/m;->a:Lc4/z;

    iget-object v3, v0, Lc4/m;->o:Lm5/w;

    invoke-virtual {v2, v10, v11, v3}, Lc4/z;->a(JLm5/w;)V

    .line 67
    :cond_8
    iget-object v2, v0, Lc4/m;->k:Lc4/m$a;

    iget-boolean v3, v0, Lc4/m;->l:Z

    iget-boolean v4, v0, Lc4/m;->n:Z

    .line 68
    iget v7, v2, Lc4/m$a;->i:I

    const/16 v10, 0x9

    if-eq v7, v10, :cond_11

    iget-boolean v7, v2, Lc4/m$a;->c:Z

    if-eqz v7, :cond_14

    iget-object v7, v2, Lc4/m$a;->n:Lc4/m$a$a;

    iget-object v10, v2, Lc4/m$a;->m:Lc4/m$a$a;

    .line 69
    iget-boolean v11, v7, Lc4/m$a$a;->a:Z

    if-nez v11, :cond_9

    goto/16 :goto_4

    .line 70
    :cond_9
    iget-boolean v11, v10, Lc4/m$a$a;->a:Z

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 71
    :cond_a
    iget-object v11, v7, Lc4/m$a$a;->c:Lm5/t$c;

    invoke-static {v11}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v12, v10, Lc4/m$a$a;->c:Lm5/t$c;

    invoke-static {v12}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v13, v7, Lc4/m$a$a;->f:I

    iget v14, v10, Lc4/m$a$a;->f:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lc4/m$a$a;->g:I

    iget v14, v10, Lc4/m$a$a;->g:I

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lc4/m$a$a;->h:Z

    iget-boolean v14, v10, Lc4/m$a$a;->h:Z

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lc4/m$a$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v10, Lc4/m$a$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v7, Lc4/m$a$a;->j:Z

    iget-boolean v14, v10, Lc4/m$a$a;->j:Z

    if-ne v13, v14, :cond_10

    :cond_b
    iget v13, v7, Lc4/m$a$a;->d:I

    iget v14, v10, Lc4/m$a$a;->d:I

    if-eq v13, v14, :cond_c

    if-eqz v13, :cond_10

    if-eqz v14, :cond_10

    :cond_c
    iget v11, v11, Lm5/t$c;->k:I

    if-nez v11, :cond_d

    iget v13, v12, Lm5/t$c;->k:I

    if-nez v13, :cond_d

    iget v13, v7, Lc4/m$a$a;->m:I

    iget v14, v10, Lc4/m$a$a;->m:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lc4/m$a$a;->n:I

    iget v14, v10, Lc4/m$a$a;->n:I

    if-ne v13, v14, :cond_10

    :cond_d
    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    iget v11, v12, Lm5/t$c;->k:I

    if-ne v11, v13, :cond_e

    iget v11, v7, Lc4/m$a$a;->o:I

    iget v12, v10, Lc4/m$a$a;->o:I

    if-ne v11, v12, :cond_10

    iget v11, v7, Lc4/m$a$a;->p:I

    iget v12, v10, Lc4/m$a$a;->p:I

    if-ne v11, v12, :cond_10

    :cond_e
    iget-boolean v11, v7, Lc4/m$a$a;->k:Z

    iget-boolean v12, v10, Lc4/m$a$a;->k:Z

    if-ne v11, v12, :cond_10

    if-eqz v11, :cond_f

    iget v7, v7, Lc4/m$a$a;->l:I

    iget v10, v10, Lc4/m$a$a;->l:I

    if-eq v7, v10, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_14

    :cond_11
    if-eqz v3, :cond_13

    .line 74
    iget-boolean v3, v2, Lc4/m$a;->o:Z

    if-eqz v3, :cond_13

    .line 75
    iget-wide v10, v2, Lc4/m$a;->j:J

    sub-long v12, v8, v10

    long-to-int v3, v12

    add-int v23, v1, v3

    .line 76
    iget-wide v12, v2, Lc4/m$a;->q:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v14

    if-nez v1, :cond_12

    goto :goto_7

    .line 77
    :cond_12
    iget-boolean v1, v2, Lc4/m$a;->r:Z

    .line 78
    iget-wide v14, v2, Lc4/m$a;->p:J

    sub-long/2addr v10, v14

    long-to-int v3, v10

    .line 79
    iget-object v7, v2, Lc4/m$a;->a:Ls3/w;

    const/16 v24, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v12

    move/from16 v21, v1

    move/from16 v22, v3

    invoke-interface/range {v18 .. v24}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 80
    :cond_13
    :goto_7
    iget-wide v10, v2, Lc4/m$a;->j:J

    iput-wide v10, v2, Lc4/m$a;->p:J

    .line 81
    iget-wide v10, v2, Lc4/m$a;->l:J

    iput-wide v10, v2, Lc4/m$a;->q:J

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, v2, Lc4/m$a;->r:Z

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v2, Lc4/m$a;->o:Z

    .line 84
    :cond_14
    iget-boolean v1, v2, Lc4/m$a;->b:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_17

    iget-object v1, v2, Lc4/m$a;->n:Lc4/m$a$a;

    .line 85
    iget-boolean v4, v1, Lc4/m$a$a;->b:Z

    if-eqz v4, :cond_16

    iget v1, v1, Lc4/m$a$a;->e:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_15

    if-ne v1, v3, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    .line 86
    :cond_17
    :goto_8
    iget-boolean v1, v2, Lc4/m$a;->r:Z

    iget v7, v2, Lc4/m$a;->i:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_19

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    if-ne v7, v4, :cond_18

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x1

    :goto_a
    or-int/2addr v1, v4

    iput-boolean v1, v2, Lc4/m$a;->r:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, v0, Lc4/m;->n:Z

    .line 88
    :cond_1a
    iget-wide v1, v0, Lc4/m;->m:J

    .line 89
    iget-boolean v4, v0, Lc4/m;->l:Z

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lc4/m;->k:Lc4/m$a;

    .line 90
    iget-boolean v4, v4, Lc4/m$a;->c:Z

    if-eqz v4, :cond_1c

    .line 91
    :cond_1b
    iget-object v4, v0, Lc4/m;->d:Lc4/r;

    invoke-virtual {v4, v6}, Lc4/r;->d(I)V

    .line 92
    iget-object v4, v0, Lc4/m;->e:Lc4/r;

    invoke-virtual {v4, v6}, Lc4/r;->d(I)V

    .line 93
    :cond_1c
    iget-object v4, v0, Lc4/m;->f:Lc4/r;

    invoke-virtual {v4, v6}, Lc4/r;->d(I)V

    .line 94
    iget-object v4, v0, Lc4/m;->k:Lc4/m$a;

    .line 95
    iput v6, v4, Lc4/m$a;->i:I

    .line 96
    iput-wide v1, v4, Lc4/m$a;->l:J

    .line 97
    iput-wide v8, v4, Lc4/m$a;->j:J

    .line 98
    iget-boolean v1, v4, Lc4/m$a;->b:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    if-eq v6, v1, :cond_1e

    goto :goto_b

    :cond_1d
    const/4 v1, 0x1

    :goto_b
    iget-boolean v2, v4, Lc4/m$a;->c:Z

    if-eqz v2, :cond_1f

    if-eq v6, v10, :cond_1e

    if-eq v6, v1, :cond_1e

    if-ne v6, v3, :cond_1f

    .line 99
    :cond_1e
    iget-object v1, v4, Lc4/m$a;->m:Lc4/m$a$a;

    .line 100
    iget-object v2, v4, Lc4/m$a;->n:Lc4/m$a$a;

    iput-object v2, v4, Lc4/m$a;->m:Lc4/m$a$a;

    .line 101
    iput-object v1, v4, Lc4/m$a;->n:Lc4/m$a$a;

    const/4 v2, 0x0

    .line 102
    iput-boolean v2, v1, Lc4/m$a$a;->b:Z

    .line 103
    iput-boolean v2, v1, Lc4/m$a$a;->a:Z

    .line 104
    iput v2, v4, Lc4/m$a;->h:I

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v4, Lc4/m$a;->k:Z

    :cond_1f
    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1
    iput-wide p1, p0, Lc4/m;->m:J

    .line 2
    :cond_0
    iget-boolean p1, p0, Lc4/m;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lc4/m;->n:Z

    return-void
.end method

.method public final f(Ls3/j;Lc4/d0$d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/m;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object v0

    iput-object v0, p0, Lc4/m;->j:Ls3/w;

    .line 4
    new-instance v1, Lc4/m$a;

    iget-boolean v2, p0, Lc4/m;->b:Z

    iget-boolean v3, p0, Lc4/m;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lc4/m$a;-><init>(Ls3/w;ZZ)V

    iput-object v1, p0, Lc4/m;->k:Lc4/m$a;

    .line 5
    iget-object v0, p0, Lc4/m;->a:Lc4/z;

    invoke-virtual {v0, p1, p2}, Lc4/z;->b(Ls3/j;Lc4/d0$d;)V

    return-void
.end method
