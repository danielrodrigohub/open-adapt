.class public final Lb4/i;
.super Lb4/h;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/i$a;
    }
.end annotation


# instance fields
.field public n:Lb4/i$a;

.field public o:I

.field public p:Z

.field public q:Ls3/z$c;

.field public r:Ls3/z$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb4/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lb4/h;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    iput-boolean p1, p0, Lb4/i;->p:Z

    .line 3
    iget-object p1, p0, Lb4/i;->q:Ls3/z$c;

    if-eqz p1, :cond_1

    iget p2, p1, Ls3/z$c;->e:I

    :cond_1
    iput p2, p0, Lb4/i;->o:I

    return-void
.end method

.method public final c(Lm5/w;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lm5/w;->a:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    aget-byte v0, v0, v1

    iget-object v2, p0, Lb4/i;->n:Lb4/i$a;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v4, v2, Lb4/i$a;->e:I

    shr-int/2addr v0, v3

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    .line 5
    iget-object v4, v2, Lb4/i$a;->d:[Ls3/z$b;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Ls3/z$b;->a:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, v2, Lb4/i$a;->a:Ls3/z$c;

    iget v0, v0, Ls3/z$c;->e:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v2, Lb4/i$a;->a:Ls3/z$c;

    iget v0, v0, Ls3/z$c;->f:I

    .line 8
    :goto_0
    iget-boolean v2, p0, Lb4/i;->p:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lb4/i;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    .line 9
    iget-object v4, p1, Lm5/w;->a:[B

    array-length v6, v4

    .line 10
    iget v7, p1, Lm5/w;->c:I

    add-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_3

    .line 11
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 12
    array-length v6, v4

    invoke-virtual {p1, v4, v6}, Lm5/w;->B([BI)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1, v7}, Lm5/w;->C(I)V

    .line 14
    :goto_1
    iget-object v4, p1, Lm5/w;->a:[B

    .line 15
    iget p1, p1, Lm5/w;->c:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 16
    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 17
    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 18
    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 19
    aput-byte v5, v4, p1

    .line 20
    iput-boolean v3, p0, Lb4/i;->p:Z

    .line 21
    iput v0, p0, Lb4/i;->o:I

    return-wide v1
.end method

.method public final d(Lm5/w;JLb4/h$a;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Lb4/i;->n:Lb4/i$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v1, v2, Lb4/h$a;->a:Ln3/s0;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 4
    :cond_0
    iget-object v6, v0, Lb4/i;->q:Ls3/z$c;

    const/4 v3, 0x1

    if-nez v6, :cond_3

    .line 5
    invoke-static {v3, v1, v4}, Ls3/z;->d(ILm5/w;Z)Z

    .line 6
    invoke-virtual/range {p1 .. p1}, Lm5/w;->k()I

    .line 7
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Lm5/w;->k()I

    move-result v9

    .line 9
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v3, -0x1

    :cond_1
    move v10, v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v3, -0x1

    :cond_2
    move v11, v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    .line 12
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v3

    and-int/lit8 v4, v3, 0xf

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v12, v4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v3, v3

    .line 14
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v13, v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    .line 16
    iget-object v3, v1, Lm5/w;->a:[B

    .line 17
    iget v1, v1, Lm5/w;->c:I

    .line 18
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 19
    new-instance v1, Ls3/z$c;

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Ls3/z$c;-><init>(IIIIII[B)V

    .line 20
    iput-object v1, v0, Lb4/i;->q:Ls3/z$c;

    goto :goto_0

    .line 21
    :cond_3
    iget-object v7, v0, Lb4/i;->r:Ls3/z$a;

    if-nez v7, :cond_4

    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v3, v3}, Ls3/z;->c(Lm5/w;ZZ)Ls3/z$a;

    move-result-object v1

    .line 23
    iput-object v1, v0, Lb4/i;->r:Ls3/z$a;

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_1d

    .line 24
    :cond_4
    iget v3, v1, Lm5/w;->c:I

    .line 25
    new-array v8, v3, [B

    .line 26
    iget-object v5, v1, Lm5/w;->a:[B

    .line 27
    invoke-static {v5, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v3, v6, Ls3/z$c;->a:I

    const/4 v5, 0x5

    .line 29
    invoke-static {v5, v1, v4}, Ls3/z;->d(ILm5/w;Z)Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    .line 31
    new-instance v10, Ls3/y;

    .line 32
    iget-object v11, v1, Lm5/w;->a:[B

    .line 33
    invoke-direct {v10, v11}, Ls3/y;-><init>([B)V

    .line 34
    iget v1, v1, Lm5/w;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 35
    invoke-virtual {v10, v1}, Ls3/y;->c(I)V

    :goto_1
    const/16 v1, 0x18

    const/16 v11, 0x10

    if-ge v4, v9, :cond_11

    .line 36
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v12

    const v13, 0x564342

    if-ne v12, v13, :cond_10

    .line 37
    invoke-virtual {v10, v11}, Ls3/y;->b(I)I

    move-result v11

    .line 38
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v1

    .line 39
    new-array v12, v1, [J

    .line 40
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v13

    if-nez v13, :cond_8

    .line 41
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v13

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_2
    if-ge v14, v1, :cond_7

    if-eqz v13, :cond_6

    .line 42
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 43
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object v15, v8

    move/from16 p3, v9

    int-to-long v8, v5

    aput-wide v8, v12, v14

    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_5
    move-object v15, v8

    move/from16 p3, v9

    const-wide/16 v8, 0x0

    .line 44
    aput-wide v8, v12, v14

    :goto_3
    const/4 v5, 0x5

    goto :goto_4

    :cond_6
    move-object v15, v8

    move/from16 p3, v9

    const-wide/16 v8, 0x0

    .line 45
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v16

    add-int/lit8 v8, v16, 0x1

    int-to-long v8, v8

    aput-wide v8, v12, v14

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p3

    move-object v8, v15

    goto :goto_2

    :cond_7
    move/from16 p3, v9

    move-object/from16 v16, v8

    goto :goto_7

    :cond_8
    move-object v15, v8

    move/from16 p3, v9

    .line 46
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v1, :cond_a

    sub-int v9, v1, v8

    .line 47
    invoke-static {v9}, Ls3/z;->a(I)I

    move-result v9

    invoke-virtual {v10, v9}, Ls3/y;->b(I)I

    move-result v9

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v9, :cond_9

    if-ge v8, v1, :cond_9

    move-object/from16 v16, v15

    int-to-long v14, v5

    .line 48
    aput-wide v14, v12, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v16

    goto :goto_6

    :cond_9
    move-object/from16 v16, v15

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v15, v16

    goto :goto_5

    :cond_a
    move-object/from16 v16, v15

    :goto_7
    const/4 v5, 0x4

    .line 49
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_f

    const/4 v12, 0x1

    if-eq v8, v12, :cond_b

    if-ne v8, v9, :cond_e

    :cond_b
    const/16 v9, 0x20

    .line 50
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 51
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 52
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v5

    add-int/2addr v5, v12

    .line 53
    invoke-virtual {v10, v12}, Ls3/y;->c(I)V

    if-ne v8, v12, :cond_d

    if-eqz v11, :cond_c

    int-to-long v8, v1

    int-to-long v11, v11

    long-to-double v8, v8

    long-to-double v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v11

    .line 54
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v14, v8

    goto :goto_8

    :cond_c
    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_d
    int-to-long v8, v1

    int-to-long v11, v11

    mul-long v14, v8, v11

    :goto_8
    int-to-long v8, v5

    mul-long/2addr v8, v14

    long-to-int v1, v8

    .line 55
    invoke-virtual {v10, v1}, Ls3/y;->c(I)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    move/from16 v9, p3

    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 56
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_10
    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 57
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    iget v2, v10, Ls3/y;->c:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, v10, Ls3/y;->d:I

    add-int/2addr v2, v3

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_11
    move-object/from16 v16, v8

    const/4 v1, 0x6

    .line 61
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_13

    .line 62
    invoke-virtual {v10, v11}, Ls3/y;->b(I)I

    move-result v8

    if-nez v8, :cond_12

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    const-string v1, "placeholder of time domain transforms not zeroed out"

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 64
    :cond_13
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v8, 0x0

    :goto_a
    const/4 v9, 0x3

    if-ge v8, v4, :cond_1d

    .line 65
    invoke-virtual {v10, v11}, Ls3/y;->b(I)I

    move-result v1

    if-eqz v1, :cond_1b

    if-ne v1, v5, :cond_1a

    const/4 v1, 0x5

    .line 66
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v1

    .line 67
    new-array v5, v1, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_b
    if-ge v11, v1, :cond_15

    const/4 v13, 0x4

    .line 68
    invoke-virtual {v10, v13}, Ls3/y;->b(I)I

    move-result v13

    aput v13, v5, v11

    .line 69
    aget v13, v5, v11

    if-le v13, v12, :cond_14

    .line 70
    aget v12, v5, v11

    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v12, v12, 0x1

    .line 71
    new-array v11, v12, [I

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_18

    .line 72
    invoke-virtual {v10, v9}, Ls3/y;->b(I)I

    move-result v9

    const/4 v14, 0x1

    add-int/lit8 v9, v9, 0x1

    aput v9, v11, v13

    const/4 v9, 0x2

    .line 73
    invoke-virtual {v10, v9}, Ls3/y;->b(I)I

    move-result v9

    const/16 v15, 0x8

    if-lez v9, :cond_16

    .line 74
    invoke-virtual {v10, v15}, Ls3/y;->c(I)V

    :cond_16
    const/16 v17, 0x0

    move/from16 p1, v4

    move/from16 v4, v17

    :goto_d
    shl-int/2addr v14, v9

    if-ge v4, v14, :cond_17

    .line 75
    invoke-virtual {v10, v15}, Ls3/y;->c(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x8

    const/4 v14, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x3

    move/from16 v4, p1

    goto :goto_c

    :cond_18
    move/from16 p1, v4

    const/4 v4, 0x2

    .line 76
    invoke-virtual {v10, v4}, Ls3/y;->c(I)V

    const/4 v4, 0x4

    .line 77
    invoke-virtual {v10, v4}, Ls3/y;->b(I)I

    move-result v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v9, v1, :cond_1c

    .line 78
    aget v14, v5, v9

    .line 79
    aget v14, v11, v14

    add-int/2addr v12, v14

    :goto_f
    if-ge v13, v12, :cond_19

    .line 80
    invoke-virtual {v10, v4}, Ls3/y;->c(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 81
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "floor type greater than 1 not decodable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_1b
    move/from16 p1, v4

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v10, v1}, Ls3/y;->c(I)V

    const/16 v4, 0x10

    .line 83
    invoke-virtual {v10, v4}, Ls3/y;->c(I)V

    .line 84
    invoke-virtual {v10, v4}, Ls3/y;->c(I)V

    const/4 v4, 0x6

    .line 85
    invoke-virtual {v10, v4}, Ls3/y;->c(I)V

    .line 86
    invoke-virtual {v10, v1}, Ls3/y;->c(I)V

    const/4 v4, 0x4

    .line 87
    invoke-virtual {v10, v4}, Ls3/y;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1c

    .line 88
    invoke-virtual {v10, v1}, Ls3/y;->c(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x8

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x6

    const/16 v11, 0x10

    const/4 v5, 0x1

    move/from16 v4, p1

    goto/16 :goto_a

    .line 89
    :cond_1d
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v4, :cond_24

    const/16 v9, 0x10

    .line 90
    invoke-virtual {v10, v9}, Ls3/y;->b(I)I

    move-result v9

    const/4 v11, 0x2

    if-gt v9, v11, :cond_23

    const/16 v9, 0x18

    .line 91
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 92
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 93
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 94
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0x8

    .line 95
    invoke-virtual {v10, v5}, Ls3/y;->c(I)V

    .line 96
    new-array v9, v1, [I

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v1, :cond_1f

    const/4 v12, 0x3

    .line 97
    invoke-virtual {v10, v12}, Ls3/y;->b(I)I

    move-result v12

    .line 98
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v13, 0x5

    .line 99
    invoke-virtual {v10, v13}, Ls3/y;->b(I)I

    move-result v13

    goto :goto_13

    :cond_1e
    const/4 v13, 0x0

    :goto_13
    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    .line 100
    aput v13, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_1f
    const/4 v11, 0x0

    :goto_14
    if-ge v11, v1, :cond_22

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v5, :cond_21

    .line 101
    aget v13, v9, v11

    const/4 v14, 0x1

    shl-int/2addr v14, v12

    and-int/2addr v13, v14

    if-eqz v13, :cond_20

    .line 102
    invoke-virtual {v10, v5}, Ls3/y;->c(I)V

    :cond_20
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x8

    goto :goto_15

    :cond_21
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0x8

    goto :goto_14

    :cond_22
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x6

    const/4 v5, 0x1

    goto :goto_11

    :cond_23
    const-string v1, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    .line 103
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 104
    :cond_24
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v1, :cond_2b

    const/16 v5, 0x10

    .line 105
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v5

    if-eqz v5, :cond_25

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mapping type other than 0 not supported: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "VorbisUtil"

    invoke-static {v8, v5}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 107
    :cond_25
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x4

    .line 108
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    move-result v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_17

    :cond_26
    const/4 v8, 0x1

    move v5, v8

    .line 109
    :goto_17
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v9

    if-eqz v9, :cond_27

    const/16 v9, 0x8

    .line 110
    invoke-virtual {v10, v9}, Ls3/y;->b(I)I

    move-result v9

    add-int/2addr v9, v8

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v9, :cond_27

    add-int/lit8 v11, v3, -0x1

    .line 111
    invoke-static {v11}, Ls3/z;->a(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ls3/y;->c(I)V

    .line 112
    invoke-static {v11}, Ls3/z;->a(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ls3/y;->c(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_27
    const/4 v8, 0x2

    .line 113
    invoke-virtual {v10, v8}, Ls3/y;->b(I)I

    move-result v8

    if-nez v8, :cond_2a

    const/4 v8, 0x1

    if-le v5, v8, :cond_28

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v3, :cond_28

    const/4 v9, 0x4

    .line 114
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_28
    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v5, :cond_29

    const/16 v9, 0x8

    .line 115
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 116
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    .line 117
    invoke-virtual {v10, v9}, Ls3/y;->c(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_29
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2a
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v2, 0x0

    .line 118
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v1, 0x6

    .line 119
    invoke-virtual {v10, v1}, Ls3/y;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 120
    new-array v9, v1, [Ls3/z$b;

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_2c

    .line 121
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v4

    const/16 v5, 0x10

    .line 122
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    .line 123
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    const/16 v5, 0x8

    .line 124
    invoke-virtual {v10, v5}, Ls3/y;->b(I)I

    .line 125
    new-instance v5, Ls3/z$b;

    invoke-direct {v5, v4}, Ls3/z$b;-><init>(Z)V

    aput-object v5, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 126
    :cond_2c
    invoke-virtual {v10}, Ls3/y;->a()Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v1, v1, -0x1

    .line 127
    invoke-static {v1}, Ls3/z;->a(I)I

    move-result v10

    .line 128
    new-instance v1, Lb4/i$a;

    move-object v5, v1

    move-object/from16 v8, v16

    invoke-direct/range {v5 .. v10}, Lb4/i$a;-><init>(Ls3/z$c;Ls3/z$a;[B[Ls3/z$b;I)V

    .line 129
    :goto_1d
    iput-object v1, v0, Lb4/i;->n:Lb4/i$a;

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    return v1

    .line 130
    :cond_2d
    iget-object v3, v1, Lb4/i$a;->a:Ls3/z$c;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v5, v3, Ls3/z$c;->g:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v5, v1, Lb4/i$a;->c:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, v1, Lb4/i$a;->b:Ls3/z$a;

    iget-object v1, v1, Ls3/z$a;->a:[Ljava/lang/String;

    .line 135
    invoke-static {v1}, Lu6/v;->t([Ljava/lang/Object;)Lu6/v;

    move-result-object v1

    invoke-static {v1}, Ls3/z;->b(Ljava/util/List;)Lf4/a;

    move-result-object v1

    .line 136
    new-instance v5, Ln3/s0$a;

    invoke-direct {v5}, Ln3/s0$a;-><init>()V

    const-string v6, "audio/vorbis"

    .line 137
    iput-object v6, v5, Ln3/s0$a;->k:Ljava/lang/String;

    .line 138
    iget v6, v3, Ls3/z$c;->d:I

    .line 139
    iput v6, v5, Ln3/s0$a;->f:I

    .line 140
    iget v6, v3, Ls3/z$c;->c:I

    .line 141
    iput v6, v5, Ln3/s0$a;->g:I

    .line 142
    iget v6, v3, Ls3/z$c;->a:I

    .line 143
    iput v6, v5, Ln3/s0$a;->x:I

    .line 144
    iget v3, v3, Ls3/z$c;->b:I

    .line 145
    iput v3, v5, Ln3/s0$a;->y:I

    .line 146
    iput-object v4, v5, Ln3/s0$a;->m:Ljava/util/List;

    .line 147
    iput-object v1, v5, Ln3/s0$a;->i:Lf4/a;

    .line 148
    new-instance v1, Ln3/s0;

    invoke-direct {v1, v5}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 149
    iput-object v1, v2, Lb4/h$a;->a:Ln3/s0;

    const/4 v1, 0x1

    return v1

    :cond_2e
    const-string v1, "framing bit after modes not set as expected"

    const/4 v2, 0x0

    .line 150
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb4/h;->e(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb4/i;->n:Lb4/i$a;

    .line 3
    iput-object p1, p0, Lb4/i;->q:Ls3/z$c;

    .line 4
    iput-object p1, p0, Lb4/i;->r:Ls3/z$a;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lb4/i;->o:I

    .line 6
    iput-boolean p1, p0, Lb4/i;->p:Z

    return-void
.end method
