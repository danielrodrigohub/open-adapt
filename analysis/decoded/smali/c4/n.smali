.class public final Lc4/n;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lc4/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/n$a;
    }
.end annotation


# instance fields
.field public final a:Lc4/z;

.field public b:Ljava/lang/String;

.field public c:Ls3/w;

.field public d:Lc4/n$a;

.field public e:Z

.field public final f:[Z

.field public final g:Lc4/r;

.field public final h:Lc4/r;

.field public final i:Lc4/r;

.field public final j:Lc4/r;

.field public final k:Lc4/r;

.field public l:J

.field public m:J

.field public final n:Lm5/w;


# direct methods
.method public constructor <init>(Lc4/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/n;->a:Lc4/z;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lc4/n;->f:[Z

    .line 4
    new-instance p1, Lc4/r;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/n;->g:Lc4/r;

    .line 5
    new-instance p1, Lc4/r;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/n;->h:Lc4/r;

    .line 6
    new-instance p1, Lc4/r;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/n;->i:Lc4/r;

    .line 7
    new-instance p1, Lc4/r;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/n;->j:Lc4/r;

    .line 8
    new-instance p1, Lc4/r;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/n;->k:Lc4/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lc4/n;->m:J

    .line 10
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Lc4/n;->n:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc4/n;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lc4/n;->m:J

    .line 3
    iget-object v0, p0, Lc4/n;->f:[Z

    invoke-static {v0}, Lm5/t;->a([Z)V

    .line 4
    iget-object v0, p0, Lc4/n;->g:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->c()V

    .line 5
    iget-object v0, p0, Lc4/n;->h:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->c()V

    .line 6
    iget-object v0, p0, Lc4/n;->i:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->c()V

    .line 7
    iget-object v0, p0, Lc4/n;->j:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->c()V

    .line 8
    iget-object v0, p0, Lc4/n;->k:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->c()V

    .line 9
    iget-object v0, p0, Lc4/n;->d:Lc4/n$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lc4/n$a;->f:Z

    .line 11
    iput-boolean v1, v0, Lc4/n$a;->g:Z

    .line 12
    iput-boolean v1, v0, Lc4/n$a;->h:Z

    .line 13
    iput-boolean v1, v0, Lc4/n$a;->i:Z

    .line 14
    iput-boolean v1, v0, Lc4/n$a;->j:Z

    :cond_0
    return-void
.end method

.method public final b([BII)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc4/n;->d:Lc4/n$a;

    .line 2
    iget-boolean v1, v0, Lc4/n$a;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    .line 3
    iget v2, v0, Lc4/n$a;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    .line 4
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lc4/n$a;->g:Z

    .line 5
    iput-boolean v2, v0, Lc4/n$a;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    .line 6
    iput v1, v0, Lc4/n$a;->d:I

    .line 7
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lc4/n;->e:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lc4/n;->g:Lc4/r;

    invoke-virtual {v0, p1, p2, p3}, Lc4/r;->a([BII)V

    .line 9
    iget-object v0, p0, Lc4/n;->h:Lc4/r;

    invoke-virtual {v0, p1, p2, p3}, Lc4/r;->a([BII)V

    .line 10
    iget-object v0, p0, Lc4/n;->i:Lc4/r;

    invoke-virtual {v0, p1, p2, p3}, Lc4/r;->a([BII)V

    .line 11
    :cond_3
    iget-object v0, p0, Lc4/n;->j:Lc4/r;

    invoke-virtual {v0, p1, p2, p3}, Lc4/r;->a([BII)V

    .line 12
    iget-object v0, p0, Lc4/n;->k:Lc4/r;

    invoke-virtual {v0, p1, p2, p3}, Lc4/r;->a([BII)V

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc4/n;->c:Ls3/w;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lm5/g0;->a:I

    .line 3
    :goto_0
    iget v2, v1, Lm5/w;->c:I

    iget v3, v1, Lm5/w;->b:I

    sub-int v4, v2, v3

    if-lez v4, :cond_3d

    .line 4
    iget-object v5, v1, Lm5/w;->a:[B

    .line 5
    iget-wide v6, v0, Lc4/n;->l:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Lc4/n;->l:J

    .line 6
    iget-object v6, v0, Lc4/n;->c:Ls3/w;

    invoke-interface {v6, v1, v4}, Ls3/w;->f(Lm5/w;I)V

    :goto_1
    if-ge v3, v2, :cond_3c

    .line 7
    iget-object v4, v0, Lc4/n;->f:[Z

    invoke-static {v5, v3, v2, v4}, Lm5/t;->b([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 8
    invoke-virtual {v0, v5, v3, v2}, Lc4/n;->b([BII)V

    return-void

    :cond_0
    add-int/lit8 v6, v4, 0x3

    .line 9
    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7e

    shr-int/lit8 v7, v7, 0x1

    sub-int v8, v4, v3

    if-lez v8, :cond_1

    .line 10
    invoke-virtual {v0, v5, v3, v4}, Lc4/n;->b([BII)V

    :cond_1
    sub-int v3, v2, v4

    .line 11
    iget-wide v9, v0, Lc4/n;->l:J

    int-to-long v11, v3

    sub-long/2addr v9, v11

    const/4 v4, 0x0

    if-gez v8, :cond_2

    neg-int v8, v8

    goto :goto_2

    :cond_2
    move v8, v4

    .line 12
    :goto_2
    iget-wide v11, v0, Lc4/n;->m:J

    .line 13
    iget-object v13, v0, Lc4/n;->d:Lc4/n$a;

    iget-boolean v14, v0, Lc4/n;->e:Z

    .line 14
    iget-boolean v15, v13, Lc4/n$a;->j:Z

    if-eqz v15, :cond_3

    iget-boolean v15, v13, Lc4/n$a;->g:Z

    if-eqz v15, :cond_3

    .line 15
    iget-boolean v14, v13, Lc4/n$a;->c:Z

    iput-boolean v14, v13, Lc4/n$a;->m:Z

    .line 16
    iput-boolean v4, v13, Lc4/n$a;->j:Z

    goto :goto_3

    .line 17
    :cond_3
    iget-boolean v4, v13, Lc4/n$a;->h:Z

    if-nez v4, :cond_4

    iget-boolean v4, v13, Lc4/n$a;->g:Z

    if-eqz v4, :cond_6

    :cond_4
    if-eqz v14, :cond_5

    .line 18
    iget-boolean v4, v13, Lc4/n$a;->i:Z

    if-eqz v4, :cond_5

    .line 19
    iget-wide v14, v13, Lc4/n$a;->b:J

    sub-long v14, v9, v14

    long-to-int v4, v14

    add-int/2addr v4, v3

    .line 20
    invoke-virtual {v13, v4}, Lc4/n$a;->a(I)V

    .line 21
    :cond_5
    iget-wide v14, v13, Lc4/n$a;->b:J

    iput-wide v14, v13, Lc4/n$a;->k:J

    .line 22
    iget-wide v14, v13, Lc4/n$a;->e:J

    iput-wide v14, v13, Lc4/n$a;->l:J

    .line 23
    iget-boolean v4, v13, Lc4/n$a;->c:Z

    iput-boolean v4, v13, Lc4/n$a;->m:Z

    const/4 v4, 0x1

    .line 24
    iput-boolean v4, v13, Lc4/n$a;->i:Z

    .line 25
    :cond_6
    :goto_3
    iget-boolean v4, v0, Lc4/n;->e:Z

    if-nez v4, :cond_2c

    .line 26
    iget-object v4, v0, Lc4/n;->g:Lc4/r;

    invoke-virtual {v4, v8}, Lc4/r;->b(I)Z

    .line 27
    iget-object v4, v0, Lc4/n;->h:Lc4/r;

    invoke-virtual {v4, v8}, Lc4/r;->b(I)Z

    .line 28
    iget-object v4, v0, Lc4/n;->i:Lc4/r;

    invoke-virtual {v4, v8}, Lc4/r;->b(I)Z

    .line 29
    iget-object v4, v0, Lc4/n;->g:Lc4/r;

    .line 30
    iget-boolean v13, v4, Lc4/r;->c:Z

    if-eqz v13, :cond_2c

    .line 31
    iget-object v13, v0, Lc4/n;->h:Lc4/r;

    .line 32
    iget-boolean v14, v13, Lc4/r;->c:Z

    if-eqz v14, :cond_2c

    .line 33
    iget-object v14, v0, Lc4/n;->i:Lc4/r;

    .line 34
    iget-boolean v15, v14, Lc4/r;->c:Z

    if-eqz v15, :cond_2c

    .line 35
    iget-object v15, v0, Lc4/n;->c:Ls3/w;

    iget-object v1, v0, Lc4/n;->b:Ljava/lang/String;

    move/from16 v16, v2

    .line 36
    iget v2, v4, Lc4/r;->e:I

    move-object/from16 v17, v5

    iget v5, v13, Lc4/r;->e:I

    add-int/2addr v5, v2

    move/from16 v18, v6

    iget v6, v14, Lc4/r;->e:I

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 37
    iget-object v6, v4, Lc4/r;->d:[B

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-static {v6, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v2, v13, Lc4/r;->d:[B

    iget v6, v4, Lc4/r;->e:I

    move/from16 v20, v7

    iget v7, v13, Lc4/r;->e:I

    invoke-static {v2, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v2, v14, Lc4/r;->d:[B

    iget v4, v4, Lc4/r;->e:I

    iget v6, v13, Lc4/r;->e:I

    add-int/2addr v4, v6

    iget v6, v14, Lc4/r;->e:I

    invoke-static {v2, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance v2, Lm5/x;

    iget-object v4, v13, Lc4/r;->d:[B

    iget v6, v13, Lc4/r;->e:I

    invoke-direct {v2, v4, v3, v6}, Lm5/x;-><init>([BII)V

    const/16 v3, 0x2c

    .line 41
    invoke-virtual {v2, v3}, Lm5/x;->j(I)V

    const/4 v3, 0x3

    .line 42
    invoke-virtual {v2, v3}, Lm5/x;->e(I)I

    move-result v3

    .line 43
    invoke-virtual {v2}, Lm5/x;->i()V

    const/4 v4, 0x2

    .line 44
    invoke-virtual {v2, v4}, Lm5/x;->e(I)I

    move-result v21

    .line 45
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v22

    const/4 v6, 0x5

    .line 46
    invoke-virtual {v2, v6}, Lm5/x;->e(I)I

    move-result v23

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v13, 0x0

    move/from16 v24, v13

    :goto_4
    if-ge v6, v7, :cond_8

    .line 47
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    or-int v24, v24, v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x20

    goto :goto_4

    :cond_8
    const/4 v6, 0x6

    new-array v7, v6, [I

    const/4 v13, 0x0

    :goto_5
    const/16 v14, 0x8

    if-ge v13, v6, :cond_9

    .line 48
    invoke-virtual {v2, v14}, Lm5/x;->e(I)I

    move-result v14

    aput v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 49
    :cond_9
    invoke-virtual {v2, v14}, Lm5/x;->e(I)I

    move-result v26

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v6, v3, :cond_c

    .line 50
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v14

    if-eqz v14, :cond_a

    add-int/lit8 v13, v13, 0x59

    .line 51
    :cond_a
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v14

    if-eqz v14, :cond_b

    add-int/lit8 v13, v13, 0x8

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 52
    :cond_c
    invoke-virtual {v2, v13}, Lm5/x;->j(I)V

    if-lez v3, :cond_d

    rsub-int/lit8 v6, v3, 0x8

    mul-int/2addr v6, v4

    .line 53
    invoke-virtual {v2, v6}, Lm5/x;->j(I)V

    .line 54
    :cond_d
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 55
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v6

    const/4 v13, 0x3

    if-ne v6, v13, :cond_e

    .line 56
    invoke-virtual {v2}, Lm5/x;->i()V

    .line 57
    :cond_e
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v13

    .line 58
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v14

    .line 59
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 60
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v25

    .line 61
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v27

    .line 62
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v28

    .line 63
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v29

    move-wide/from16 v30, v9

    const/4 v9, 0x1

    if-eq v6, v9, :cond_10

    if-ne v6, v4, :cond_f

    goto :goto_7

    :cond_f
    move v10, v9

    goto :goto_8

    :cond_10
    :goto_7
    move v10, v4

    :goto_8
    if-ne v6, v9, :cond_11

    move v6, v4

    goto :goto_9

    :cond_11
    const/4 v6, 0x1

    :goto_9
    add-int v25, v25, v27

    mul-int v25, v25, v10

    sub-int v13, v13, v25

    add-int v28, v28, v29

    mul-int v28, v28, v6

    sub-int v14, v14, v28

    goto :goto_a

    :cond_12
    move-wide/from16 v30, v9

    .line 64
    :goto_a
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 65
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 66
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v6

    .line 67
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    goto :goto_b

    :cond_13
    move v9, v3

    :goto_b
    if-gt v9, v3, :cond_14

    .line 68
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 69
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 70
    invoke-virtual {v2}, Lm5/x;->f()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 71
    :cond_14
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 72
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 73
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 74
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 75
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 76
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 77
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v3

    const/4 v9, 0x4

    if-eqz v3, :cond_1b

    .line 78
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v9, :cond_1a

    const/4 v4, 0x0

    :goto_d
    const/4 v9, 0x6

    if-ge v4, v9, :cond_19

    .line 79
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v9

    if-nez v9, :cond_15

    .line 80
    invoke-virtual {v2}, Lm5/x;->f()I

    move-wide/from16 v27, v11

    goto :goto_f

    :cond_15
    const/16 v9, 0x40

    shl-int/lit8 v10, v3, 0x1

    add-int/lit8 v10, v10, 0x4

    move-wide/from16 v27, v11

    const/4 v11, 0x1

    shl-int v10, v11, v10

    .line 81
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-le v3, v11, :cond_16

    .line 82
    invoke-virtual {v2}, Lm5/x;->g()I

    :cond_16
    const/4 v10, 0x0

    :goto_e
    if-ge v10, v9, :cond_17

    .line 83
    invoke-virtual {v2}, Lm5/x;->g()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_17
    :goto_f
    const/4 v9, 0x3

    if-ne v3, v9, :cond_18

    goto :goto_10

    :cond_18
    const/4 v9, 0x1

    :goto_10
    add-int/2addr v4, v9

    move-wide/from16 v11, v27

    goto :goto_d

    :cond_19
    move-wide/from16 v27, v11

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x4

    goto :goto_c

    :cond_1a
    move-wide/from16 v27, v11

    goto :goto_11

    :cond_1b
    move-wide/from16 v27, v11

    const/4 v4, 0x2

    .line 84
    :goto_11
    invoke-virtual {v2, v4}, Lm5/x;->j(I)V

    .line 85
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x8

    .line 86
    invoke-virtual {v2, v3}, Lm5/x;->j(I)V

    .line 87
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 88
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 89
    invoke-virtual {v2}, Lm5/x;->i()V

    .line 90
    :cond_1c
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_12
    if-ge v4, v3, :cond_23

    if-eqz v4, :cond_1d

    .line 91
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v9

    :cond_1d
    if-eqz v9, :cond_20

    .line 92
    invoke-virtual {v2}, Lm5/x;->i()V

    .line 93
    invoke-virtual {v2}, Lm5/x;->f()I

    const/4 v11, 0x0

    :goto_13
    if-gt v11, v10, :cond_1f

    .line 94
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 95
    invoke-virtual {v2}, Lm5/x;->i()V

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_1f
    move/from16 v29, v3

    goto :goto_16

    .line 96
    :cond_20
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v10

    .line 97
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v11

    add-int v12, v10, v11

    const/16 v25, 0x0

    move/from16 v29, v3

    move/from16 v3, v25

    :goto_14
    if-ge v3, v10, :cond_21

    .line 98
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 99
    invoke-virtual {v2}, Lm5/x;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    :goto_15
    if-ge v3, v11, :cond_22

    .line 100
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 101
    invoke-virtual {v2}, Lm5/x;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_22
    move v10, v12

    :goto_16
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v29

    goto :goto_12

    .line 102
    :cond_23
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    .line 103
    :goto_17
    invoke-virtual {v2}, Lm5/x;->f()I

    move-result v4

    if-ge v3, v4, :cond_24

    add-int/lit8 v4, v6, 0x4

    add-int/lit8 v4, v4, 0x1

    .line 104
    invoke-virtual {v2, v4}, Lm5/x;->j(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_24
    const/4 v3, 0x2

    .line 105
    invoke-virtual {v2, v3}, Lm5/x;->j(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 107
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_27

    const/16 v4, 0x8

    .line 108
    invoke-virtual {v2, v4}, Lm5/x;->e(I)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_25

    const/16 v4, 0x10

    .line 109
    invoke-virtual {v2, v4}, Lm5/x;->e(I)I

    move-result v6

    .line 110
    invoke-virtual {v2, v4}, Lm5/x;->e(I)I

    move-result v4

    if-eqz v6, :cond_27

    if-eqz v4, :cond_27

    int-to-float v3, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_18

    .line 111
    :cond_25
    sget-object v6, Lm5/t;->b:[F

    const/16 v9, 0x11

    if-ge v4, v9, :cond_26

    .line 112
    aget v3, v6, v4

    goto :goto_18

    :cond_26
    const-string v6, "Unexpected aspect_ratio_idc value: "

    const-string v9, "H265Reader"

    .line 113
    invoke-static {v6, v4, v9}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    :cond_27
    :goto_18
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 115
    invoke-virtual {v2}, Lm5/x;->i()V

    .line 116
    :cond_28
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x4

    .line 117
    invoke-virtual {v2, v4}, Lm5/x;->j(I)V

    .line 118
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_29

    const/16 v4, 0x18

    .line 119
    invoke-virtual {v2, v4}, Lm5/x;->j(I)V

    .line 120
    :cond_29
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 121
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 122
    invoke-virtual {v2}, Lm5/x;->f()I

    .line 123
    :cond_2a
    invoke-virtual {v2}, Lm5/x;->i()V

    .line 124
    invoke-virtual {v2}, Lm5/x;->d()Z

    move-result v2

    if-eqz v2, :cond_2b

    mul-int/lit8 v14, v14, 0x2

    :cond_2b
    move-object/from16 v25, v7

    .line 125
    invoke-static/range {v21 .. v26}, Lde/n0;->d(IZII[II)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    .line 127
    iput-object v1, v4, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v1, "video/hevc"

    .line 128
    iput-object v1, v4, Ln3/s0$a;->k:Ljava/lang/String;

    .line 129
    iput-object v2, v4, Ln3/s0$a;->h:Ljava/lang/String;

    .line 130
    iput v13, v4, Ln3/s0$a;->p:I

    .line 131
    iput v14, v4, Ln3/s0$a;->q:I

    .line 132
    iput v3, v4, Ln3/s0$a;->t:F

    .line 133
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 134
    iput-object v1, v4, Ln3/s0$a;->m:Ljava/util/List;

    .line 135
    new-instance v1, Ln3/s0;

    invoke-direct {v1, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 136
    invoke-interface {v15, v1}, Ls3/w;->b(Ln3/s0;)V

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, v0, Lc4/n;->e:Z

    goto :goto_19

    :cond_2c
    move/from16 v16, v2

    move/from16 v19, v3

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move-wide/from16 v30, v9

    move-wide/from16 v27, v11

    .line 138
    :goto_19
    iget-object v1, v0, Lc4/n;->j:Lc4/r;

    invoke-virtual {v1, v8}, Lc4/r;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 139
    iget-object v1, v0, Lc4/n;->j:Lc4/r;

    iget-object v2, v1, Lc4/r;->d:[B

    iget v1, v1, Lc4/r;->e:I

    invoke-static {v2, v1}, Lm5/t;->f([BI)I

    move-result v1

    .line 140
    iget-object v2, v0, Lc4/n;->n:Lm5/w;

    iget-object v3, v0, Lc4/n;->j:Lc4/r;

    iget-object v3, v3, Lc4/r;->d:[B

    invoke-virtual {v2, v3, v1}, Lm5/w;->B([BI)V

    .line 141
    iget-object v1, v0, Lc4/n;->n:Lm5/w;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lm5/w;->E(I)V

    .line 142
    iget-object v1, v0, Lc4/n;->a:Lc4/z;

    iget-object v2, v0, Lc4/n;->n:Lm5/w;

    move-wide/from16 v3, v27

    invoke-virtual {v1, v3, v4, v2}, Lc4/z;->a(JLm5/w;)V

    goto :goto_1a

    :cond_2d
    move-wide/from16 v3, v27

    .line 143
    :goto_1a
    iget-object v1, v0, Lc4/n;->k:Lc4/r;

    invoke-virtual {v1, v8}, Lc4/r;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 144
    iget-object v1, v0, Lc4/n;->k:Lc4/r;

    iget-object v2, v1, Lc4/r;->d:[B

    iget v1, v1, Lc4/r;->e:I

    invoke-static {v2, v1}, Lm5/t;->f([BI)I

    move-result v1

    .line 145
    iget-object v2, v0, Lc4/n;->n:Lm5/w;

    iget-object v5, v0, Lc4/n;->k:Lc4/r;

    iget-object v5, v5, Lc4/r;->d:[B

    invoke-virtual {v2, v5, v1}, Lm5/w;->B([BI)V

    .line 146
    iget-object v1, v0, Lc4/n;->n:Lm5/w;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lm5/w;->E(I)V

    .line 147
    iget-object v1, v0, Lc4/n;->a:Lc4/z;

    iget-object v2, v0, Lc4/n;->n:Lm5/w;

    invoke-virtual {v1, v3, v4, v2}, Lc4/z;->a(JLm5/w;)V

    .line 148
    :cond_2e
    iget-wide v1, v0, Lc4/n;->m:J

    .line 149
    iget-object v3, v0, Lc4/n;->d:Lc4/n$a;

    iget-boolean v4, v0, Lc4/n;->e:Z

    const/4 v5, 0x0

    .line 150
    iput-boolean v5, v3, Lc4/n$a;->g:Z

    .line 151
    iput-boolean v5, v3, Lc4/n$a;->h:Z

    .line 152
    iput-wide v1, v3, Lc4/n$a;->e:J

    .line 153
    iput v5, v3, Lc4/n$a;->d:I

    move-wide/from16 v9, v30

    .line 154
    iput-wide v9, v3, Lc4/n$a;->b:J

    const/16 v1, 0x20

    move/from16 v2, v20

    if-lt v2, v1, :cond_30

    const/16 v1, 0x28

    if-ne v2, v1, :cond_2f

    goto :goto_1b

    :cond_2f
    const/4 v1, 0x0

    goto :goto_1c

    :cond_30
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    if-nez v1, :cond_36

    .line 155
    iget-boolean v1, v3, Lc4/n$a;->i:Z

    if-eqz v1, :cond_32

    iget-boolean v1, v3, Lc4/n$a;->j:Z

    if-nez v1, :cond_32

    if-eqz v4, :cond_31

    move/from16 v1, v19

    .line 156
    invoke-virtual {v3, v1}, Lc4/n$a;->a(I)V

    :cond_31
    const/4 v1, 0x0

    .line 157
    iput-boolean v1, v3, Lc4/n$a;->i:Z

    goto :goto_1d

    :cond_32
    const/4 v1, 0x0

    :goto_1d
    const/16 v4, 0x20

    if-gt v4, v2, :cond_33

    const/16 v4, 0x23

    if-le v2, v4, :cond_34

    :cond_33
    const/16 v4, 0x27

    if-ne v2, v4, :cond_35

    :cond_34
    const/4 v4, 0x1

    goto :goto_1e

    :cond_35
    move v4, v1

    :goto_1e
    if-eqz v4, :cond_37

    .line 158
    iget-boolean v4, v3, Lc4/n$a;->j:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iput-boolean v4, v3, Lc4/n$a;->h:Z

    .line 159
    iput-boolean v5, v3, Lc4/n$a;->j:Z

    goto :goto_1f

    :cond_36
    const/4 v1, 0x0

    :cond_37
    const/4 v5, 0x1

    :goto_1f
    const/16 v4, 0x10

    if-lt v2, v4, :cond_38

    const/16 v4, 0x15

    if-gt v2, v4, :cond_38

    move v4, v5

    goto :goto_20

    :cond_38
    move v4, v1

    .line 160
    :goto_20
    iput-boolean v4, v3, Lc4/n$a;->c:Z

    if-nez v4, :cond_39

    const/16 v4, 0x9

    if-gt v2, v4, :cond_3a

    :cond_39
    move v1, v5

    .line 161
    :cond_3a
    iput-boolean v1, v3, Lc4/n$a;->f:Z

    .line 162
    iget-boolean v1, v0, Lc4/n;->e:Z

    if-nez v1, :cond_3b

    .line 163
    iget-object v1, v0, Lc4/n;->g:Lc4/r;

    invoke-virtual {v1, v2}, Lc4/r;->d(I)V

    .line 164
    iget-object v1, v0, Lc4/n;->h:Lc4/r;

    invoke-virtual {v1, v2}, Lc4/r;->d(I)V

    .line 165
    iget-object v1, v0, Lc4/n;->i:Lc4/r;

    invoke-virtual {v1, v2}, Lc4/r;->d(I)V

    .line 166
    :cond_3b
    iget-object v1, v0, Lc4/n;->j:Lc4/r;

    invoke-virtual {v1, v2}, Lc4/r;->d(I)V

    .line 167
    iget-object v1, v0, Lc4/n;->k:Lc4/r;

    invoke-virtual {v1, v2}, Lc4/r;->d(I)V

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v5, v17

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_3c
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_3d
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lc4/n;->m:J

    :cond_0
    return-void
.end method

.method public final f(Ls3/j;Lc4/d0$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/n;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object v0

    iput-object v0, p0, Lc4/n;->c:Ls3/w;

    .line 4
    new-instance v1, Lc4/n$a;

    invoke-direct {v1, v0}, Lc4/n$a;-><init>(Ls3/w;)V

    iput-object v1, p0, Lc4/n;->d:Lc4/n$a;

    .line 5
    iget-object v0, p0, Lc4/n;->a:Lc4/z;

    invoke-virtual {v0, p1, p2}, Lc4/z;->b(Ls3/j;Lc4/d0$d;)V

    return-void
.end method
