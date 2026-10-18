.class public final Lc4/h;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lc4/j;


# instance fields
.field public final a:Lm5/w;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ls3/w;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Ln3/s0;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    iput-object v0, p0, Lc4/h;->a:Lm5/w;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc4/h;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lc4/h;->k:J

    .line 5
    iput-object p1, p0, Lc4/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc4/h;->e:I

    .line 2
    iput v0, p0, Lc4/h;->f:I

    .line 3
    iput v0, p0, Lc4/h;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lc4/h;->k:J

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc4/h;->d:Ls3/w;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v2, v1, Lm5/w;->c:I

    iget v3, v1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_19

    .line 3
    iget v3, v0, Lc4/h;->e:I

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_15

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_2

    .line 4
    iget v3, v0, Lc4/h;->j:I

    iget v4, v0, Lc4/h;->f:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v0, Lc4/h;->d:Ls3/w;

    invoke-interface {v3, v1, v2}, Ls3/w;->f(Lm5/w;I)V

    .line 6
    iget v3, v0, Lc4/h;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lc4/h;->f:I

    .line 7
    iget v13, v0, Lc4/h;->j:I

    if-ne v3, v13, :cond_0

    .line 8
    iget-wide v10, v0, Lc4/h;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v9, v0, Lc4/h;->d:Ls3/w;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 10
    iget-wide v2, v0, Lc4/h;->k:J

    iget-wide v4, v0, Lc4/h;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lc4/h;->k:J

    .line 11
    :cond_1
    iput v8, v0, Lc4/h;->e:I

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 13
    :cond_3
    iget-object v3, v0, Lc4/h;->a:Lm5/w;

    .line 14
    iget-object v3, v3, Lm5/w;->a:[B

    .line 15
    iget v10, v0, Lc4/h;->f:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 16
    iget v10, v0, Lc4/h;->f:I

    invoke-virtual {v1, v3, v10, v2}, Lm5/w;->d([BII)V

    .line 17
    iget v3, v0, Lc4/h;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lc4/h;->f:I

    if-ne v3, v11, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v8

    :goto_1
    if-eqz v2, :cond_0

    .line 18
    iget-object v2, v0, Lc4/h;->a:Lm5/w;

    .line 19
    iget-object v2, v2, Lm5/w;->a:[B

    .line 20
    iget-object v3, v0, Lc4/h;->i:Ln3/s0;

    const/16 v10, 0xe

    const/16 v13, 0x1f

    const/4 v14, -0x2

    const/4 v11, -0x1

    if-nez v3, :cond_d

    .line 21
    iget-object v3, v0, Lc4/h;->c:Ljava/lang/String;

    iget-object v15, v0, Lc4/h;->b:Ljava/lang/String;

    .line 22
    aget-byte v9, v2, v8

    const/16 v5, 0x7f

    if-ne v9, v5, :cond_5

    .line 23
    new-instance v5, Lm5/v;

    .line 24
    array-length v9, v2

    invoke-direct {v5, v2, v9}, Lm5/v;-><init>([BI)V

    goto/16 :goto_7

    .line 25
    :cond_5
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 26
    aget-byte v9, v5, v8

    if-eq v9, v14, :cond_7

    aget-byte v9, v5, v8

    if-ne v9, v11, :cond_6

    goto :goto_2

    :cond_6
    move v9, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v9, v4

    :goto_3
    if-eqz v9, :cond_8

    move v9, v8

    .line 27
    :goto_4
    array-length v14, v5

    sub-int/2addr v14, v4

    if-ge v9, v14, :cond_8

    .line 28
    aget-byte v14, v5, v9

    add-int/lit8 v16, v9, 0x1

    .line 29
    aget-byte v17, v5, v16

    aput-byte v17, v5, v9

    .line 30
    aput-byte v14, v5, v16

    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 31
    :cond_8
    new-instance v9, Lm5/v;

    .line 32
    array-length v14, v5

    invoke-direct {v9, v5, v14}, Lm5/v;-><init>([BI)V

    .line 33
    aget-byte v14, v5, v8

    if-ne v14, v13, :cond_a

    .line 34
    new-instance v14, Lm5/v;

    .line 35
    array-length v13, v5

    invoke-direct {v14, v5, v13}, Lm5/v;-><init>([BI)V

    .line 36
    :goto_5
    invoke-virtual {v14}, Lm5/v;->b()I

    move-result v13

    const/16 v8, 0x10

    if-lt v13, v8, :cond_a

    .line 37
    invoke-virtual {v14, v7}, Lm5/v;->m(I)V

    .line 38
    invoke-virtual {v14, v10}, Lm5/v;->g(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x3fff

    .line 39
    iget v13, v9, Lm5/v;->c:I

    rsub-int/lit8 v13, v13, 0x8

    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 40
    iget v7, v9, Lm5/v;->c:I

    rsub-int/lit8 v18, v7, 0x8

    sub-int v18, v18, v13

    const v19, 0xff00

    shr-int v7, v19, v7

    shl-int v19, v4, v18

    add-int/lit8 v19, v19, -0x1

    or-int v7, v7, v19

    .line 41
    iget-object v12, v9, Lm5/v;->a:[B

    iget v11, v9, Lm5/v;->b:I

    aget-byte v21, v12, v11

    and-int v7, v7, v21

    int-to-byte v7, v7

    aput-byte v7, v12, v11

    rsub-int/lit8 v7, v13, 0xe

    ushr-int v13, v8, v7

    .line 42
    aget-byte v21, v12, v11

    shl-int v13, v13, v18

    or-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    add-int/2addr v11, v4

    :goto_6
    if-le v7, v6, :cond_9

    .line 43
    iget-object v12, v9, Lm5/v;->a:[B

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v7, v7, -0x8

    ushr-int v6, v8, v7

    int-to-byte v6, v6

    aput-byte v6, v12, v11

    move v11, v13

    const/16 v6, 0x8

    goto :goto_6

    :cond_9
    rsub-int/lit8 v6, v7, 0x8

    .line 44
    iget-object v12, v9, Lm5/v;->a:[B

    aget-byte v13, v12, v11

    shl-int v21, v4, v6

    const/16 v20, -0x1

    add-int/lit8 v21, v21, -0x1

    and-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    shl-int v7, v4, v7

    sub-int/2addr v7, v4

    and-int/2addr v7, v8

    .line 45
    aget-byte v8, v12, v11

    shl-int v6, v7, v6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v12, v11

    .line 46
    invoke-virtual {v9, v10}, Lm5/v;->m(I)V

    .line 47
    invoke-virtual {v9}, Lm5/v;->a()V

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v11, -0x1

    goto :goto_5

    .line 48
    :cond_a
    array-length v6, v5

    invoke-virtual {v9, v5, v6}, Lm5/v;->j([BI)V

    move-object v5, v9

    :goto_7
    const/16 v6, 0x3c

    .line 49
    invoke-virtual {v5, v6}, Lm5/v;->m(I)V

    const/4 v6, 0x6

    .line 50
    invoke-virtual {v5, v6}, Lm5/v;->g(I)I

    move-result v7

    .line 51
    sget-object v6, Lp3/y;->a:[I

    aget v6, v6, v7

    const/4 v7, 0x4

    .line 52
    invoke-virtual {v5, v7}, Lm5/v;->g(I)I

    move-result v8

    .line 53
    sget-object v7, Lp3/y;->b:[I

    aget v7, v7, v8

    const/4 v8, 0x5

    .line 54
    invoke-virtual {v5, v8}, Lm5/v;->g(I)I

    move-result v9

    .line 55
    sget-object v8, Lp3/y;->c:[I

    const/16 v11, 0x1d

    if-lt v9, v11, :cond_b

    const/4 v8, -0x1

    const/4 v9, 0x2

    goto :goto_8

    .line 56
    :cond_b
    aget v8, v8, v9

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    :goto_8
    const/16 v11, 0xa

    .line 57
    invoke-virtual {v5, v11}, Lm5/v;->m(I)V

    .line 58
    invoke-virtual {v5, v9}, Lm5/v;->g(I)I

    move-result v5

    if-lez v5, :cond_c

    move v5, v4

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    add-int/2addr v6, v5

    .line 59
    new-instance v5, Ln3/s0$a;

    invoke-direct {v5}, Ln3/s0$a;-><init>()V

    .line 60
    iput-object v3, v5, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v3, "audio/vnd.dts"

    .line 61
    iput-object v3, v5, Ln3/s0$a;->k:Ljava/lang/String;

    .line 62
    iput v8, v5, Ln3/s0$a;->f:I

    .line 63
    iput v6, v5, Ln3/s0$a;->x:I

    .line 64
    iput v7, v5, Ln3/s0$a;->y:I

    const/4 v3, 0x0

    .line 65
    iput-object v3, v5, Ln3/s0$a;->n:Lr3/d;

    .line 66
    iput-object v15, v5, Ln3/s0$a;->c:Ljava/lang/String;

    .line 67
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v5}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 68
    iput-object v3, v0, Lc4/h;->i:Ln3/s0;

    .line 69
    iget-object v5, v0, Lc4/h;->d:Ls3/w;

    invoke-interface {v5, v3}, Ls3/w;->b(Ln3/s0;)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    move v3, v8

    .line 70
    :goto_a
    aget-byte v5, v2, v3

    const/4 v3, 0x7

    const/4 v6, -0x2

    if-eq v5, v6, :cond_10

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_e

    const/4 v5, 0x5

    .line 71
    aget-byte v6, v2, v5

    const/4 v5, 0x3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    aget-byte v7, v2, v3

    goto :goto_c

    :cond_e
    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v8, 0x4

    .line 72
    aget-byte v7, v2, v6

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0xc

    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    goto :goto_b

    :cond_f
    const/4 v5, 0x3

    const/4 v8, 0x4

    .line 73
    aget-byte v6, v2, v3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    and-int/lit16 v6, v7, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    :goto_b
    const/16 v7, 0x3c

    and-int/2addr v6, v7

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/2addr v5, v4

    move v6, v4

    goto :goto_d

    :cond_10
    const/4 v8, 0x4

    .line 74
    aget-byte v5, v2, v8

    const/4 v6, 0x3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    :goto_c
    and-int/lit16 v6, v7, 0xf0

    shr-int/2addr v6, v8

    or-int/2addr v5, v6

    add-int/2addr v5, v4

    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_11

    mul-int/lit8 v5, v5, 0x10

    .line 75
    div-int/2addr v5, v10

    .line 76
    :cond_11
    iput v5, v0, Lc4/h;->j:I

    const-wide/32 v5, 0xf4240

    const/4 v7, 0x0

    .line 77
    aget-byte v8, v2, v7

    const/4 v7, -0x2

    if-eq v8, v7, :cond_14

    const/4 v7, -0x1

    if-eq v8, v7, :cond_13

    const/16 v7, 0x1f

    if-eq v8, v7, :cond_12

    const/4 v7, 0x4

    .line 78
    aget-byte v3, v2, v7

    and-int/2addr v3, v4

    const/4 v8, 0x6

    shl-int/2addr v3, v8

    const/4 v9, 0x5

    aget-byte v2, v2, v9

    goto :goto_f

    :cond_12
    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 79
    aget-byte v9, v2, v9

    and-int/2addr v3, v9

    shl-int/2addr v3, v7

    aget-byte v2, v2, v8

    goto :goto_e

    :cond_13
    const/4 v7, 0x4

    .line 80
    aget-byte v8, v2, v7

    and-int/2addr v8, v3

    shl-int/lit8 v7, v8, 0x4

    aget-byte v2, v2, v3

    move v3, v7

    :goto_e
    const/16 v7, 0x3c

    and-int/2addr v2, v7

    goto :goto_10

    :cond_14
    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    .line 81
    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v8

    aget-byte v2, v2, v7

    :goto_f
    and-int/lit16 v2, v2, 0xfc

    :goto_10
    const/4 v7, 0x2

    shr-int/2addr v2, v7

    or-int/2addr v2, v3

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    mul-long/2addr v2, v5

    .line 82
    iget-object v4, v0, Lc4/h;->i:Ln3/s0;

    iget v4, v4, Ln3/s0;->G:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v0, Lc4/h;->h:J

    .line 83
    iget-object v2, v0, Lc4/h;->a:Lm5/w;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lm5/w;->D(I)V

    .line 84
    iget-object v2, v0, Lc4/h;->d:Ls3/w;

    iget-object v3, v0, Lc4/h;->a:Lm5/w;

    const/16 v4, 0x12

    invoke-interface {v2, v3, v4}, Ls3/w;->f(Lm5/w;I)V

    const/4 v2, 0x2

    .line 85
    iput v2, v0, Lc4/h;->e:I

    goto/16 :goto_0

    .line 86
    :cond_15
    iget v2, v1, Lm5/w;->c:I

    iget v3, v1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_18

    .line 87
    iget v2, v0, Lc4/h;->g:I

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iput v2, v0, Lc4/h;->g:I

    .line 88
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v5

    or-int/2addr v2, v5

    iput v2, v0, Lc4/h;->g:I

    const v5, 0x7ffe8001

    if-eq v2, v5, :cond_17

    const v5, -0x180fe80

    if-eq v2, v5, :cond_17

    const v5, 0x1fffe800

    if-eq v2, v5, :cond_17

    const v5, -0xe0ff18

    if-ne v2, v5, :cond_16

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    move v5, v4

    :goto_12
    if-eqz v5, :cond_15

    .line 89
    iget-object v3, v0, Lc4/h;->a:Lm5/w;

    .line 90
    iget-object v3, v3, Lm5/w;->a:[B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    .line 91
    aput-byte v5, v3, v6

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 92
    aput-byte v5, v3, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x2

    .line 93
    aput-byte v5, v3, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x3

    .line 94
    aput-byte v2, v3, v5

    const/4 v2, 0x4

    .line 95
    iput v2, v0, Lc4/h;->f:I

    const/4 v7, 0x0

    .line 96
    iput v7, v0, Lc4/h;->g:I

    move v8, v4

    goto :goto_13

    :cond_18
    const/4 v7, 0x0

    move v8, v7

    :goto_13
    if-eqz v8, :cond_0

    .line 97
    iput v4, v0, Lc4/h;->e:I

    goto/16 :goto_0

    :cond_19
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

    iput-wide p1, p0, Lc4/h;->k:J

    :cond_0
    return-void
.end method

.method public final f(Ls3/j;Lc4/d0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/h;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lc4/h;->d:Ls3/w;

    return-void
.end method
