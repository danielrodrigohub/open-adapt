.class public final Lc4/l;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Lc4/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/l$b;,
        Lc4/l$a;
    }
.end annotation


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lc4/e0;

.field public final b:Lm5/w;

.field public final c:[Z

.field public final d:Lc4/l$a;

.field public final e:Lc4/r;

.field public f:Lc4/l$b;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ls3/w;

.field public j:Z

.field public k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lc4/l;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lc4/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/l;->a:Lc4/e0;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lc4/l;->c:[Z

    .line 4
    new-instance p1, Lc4/l$a;

    invoke-direct {p1}, Lc4/l$a;-><init>()V

    iput-object p1, p0, Lc4/l;->d:Lc4/l$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lc4/l;->k:J

    .line 6
    new-instance p1, Lc4/r;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lc4/r;-><init>(I)V

    iput-object p1, p0, Lc4/l;->e:Lc4/r;

    .line 7
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Lc4/l;->b:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/l;->c:[Z

    invoke-static {v0}, Lm5/t;->a([Z)V

    .line 2
    iget-object v0, p0, Lc4/l;->d:Lc4/l$a;

    invoke-virtual {v0}, Lc4/l$a;->b()V

    .line 3
    iget-object v0, p0, Lc4/l;->f:Lc4/l$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lc4/l$b;->b:Z

    .line 5
    iput-boolean v1, v0, Lc4/l$b;->c:Z

    .line 6
    iput-boolean v1, v0, Lc4/l$b;->d:Z

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lc4/l$b;->e:I

    .line 8
    :cond_0
    iget-object v0, p0, Lc4/l;->e:Lc4/r;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lc4/r;->c()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lc4/l;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Lc4/l;->k:J

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc4/l;->f:Lc4/l$b;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lc4/l;->i:Ls3/w;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v2, v1, Lm5/w;->b:I

    .line 4
    iget v3, v1, Lm5/w;->c:I

    .line 5
    iget-object v4, v1, Lm5/w;->a:[B

    .line 6
    iget-wide v5, v0, Lc4/l;->g:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Lc4/l;->g:J

    .line 7
    iget-object v5, v0, Lc4/l;->i:Ls3/w;

    invoke-interface {v5, v1, v7}, Ls3/w;->f(Lm5/w;I)V

    .line 8
    :goto_0
    iget-object v5, v0, Lc4/l;->c:[Z

    invoke-static {v4, v2, v3, v5}, Lm5/t;->b([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 9
    iget-boolean v1, v0, Lc4/l;->j:Z

    if-nez v1, :cond_0

    .line 10
    iget-object v1, v0, Lc4/l;->d:Lc4/l$a;

    invoke-virtual {v1, v4, v2, v3}, Lc4/l$a;->a([BII)V

    .line 11
    :cond_0
    iget-object v1, v0, Lc4/l;->f:Lc4/l$b;

    invoke-virtual {v1, v4, v2, v3}, Lc4/l$b;->a([BII)V

    .line 12
    iget-object v1, v0, Lc4/l;->e:Lc4/r;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, v4, v2, v3}, Lc4/r;->a([BII)V

    :cond_1
    return-void

    .line 14
    :cond_2
    iget-object v6, v1, Lm5/w;->a:[B

    add-int/lit8 v7, v5, 0x3

    .line 15
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 16
    iget-boolean v9, v0, Lc4/l;->j:Z

    const/4 v11, 0x1

    if-nez v9, :cond_19

    if-lez v8, :cond_3

    .line 17
    iget-object v9, v0, Lc4/l;->d:Lc4/l$a;

    invoke-virtual {v9, v4, v2, v5}, Lc4/l$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 18
    :goto_1
    iget-object v13, v0, Lc4/l;->d:Lc4/l$a;

    .line 19
    iget v14, v13, Lc4/l$a;->b:I

    const-string v15, "H263Reader"

    const/4 v10, 0x2

    if-eqz v14, :cond_d

    const-string v12, "Unexpected start code value"

    move/from16 v17, v7

    const/16 v7, 0xb5

    if-eq v14, v11, :cond_b

    if-eq v14, v10, :cond_9

    const/4 v11, 0x3

    if-eq v14, v11, :cond_7

    const/4 v11, 0x4

    if-ne v14, v11, :cond_6

    const/16 v11, 0xb3

    if-eq v6, v11, :cond_5

    if-ne v6, v7, :cond_e

    .line 20
    :cond_5
    iget v7, v13, Lc4/l$a;->c:I

    sub-int/2addr v7, v9

    iput v7, v13, Lc4/l$a;->c:I

    const/4 v7, 0x0

    .line 21
    iput-boolean v7, v13, Lc4/l$a;->a:Z

    const/4 v7, 0x1

    goto :goto_3

    .line 22
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_7
    and-int/lit16 v7, v6, 0xf0

    const/16 v9, 0x20

    if-eq v7, v9, :cond_8

    .line 23
    invoke-static {v15, v12}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v13}, Lc4/l$a;->b()V

    goto :goto_2

    .line 25
    :cond_8
    iget v7, v13, Lc4/l$a;->c:I

    iput v7, v13, Lc4/l$a;->d:I

    const/4 v7, 0x4

    .line 26
    iput v7, v13, Lc4/l$a;->b:I

    goto :goto_2

    :cond_9
    const/16 v7, 0x1f

    if-le v6, v7, :cond_a

    .line 27
    invoke-static {v15, v12}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v13}, Lc4/l$a;->b()V

    goto :goto_2

    :cond_a
    const/4 v7, 0x3

    .line 29
    iput v7, v13, Lc4/l$a;->b:I

    goto :goto_2

    :cond_b
    if-eq v6, v7, :cond_c

    .line 30
    invoke-static {v15, v12}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v13}, Lc4/l$a;->b()V

    goto :goto_2

    .line 32
    :cond_c
    iput v10, v13, Lc4/l$a;->b:I

    goto :goto_2

    :cond_d
    move/from16 v17, v7

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_e

    const/4 v7, 0x1

    .line 33
    iput v7, v13, Lc4/l$a;->b:I

    .line 34
    iput-boolean v7, v13, Lc4/l$a;->a:Z

    .line 35
    :cond_e
    :goto_2
    sget-object v7, Lc4/l$a;->f:[B

    const/4 v9, 0x3

    const/4 v11, 0x0

    invoke-virtual {v13, v7, v11, v9}, Lc4/l$a;->a([BII)V

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_18

    .line 36
    iget-object v7, v0, Lc4/l;->i:Ls3/w;

    iget-object v9, v0, Lc4/l;->d:Lc4/l$a;

    iget v11, v9, Lc4/l$a;->d:I

    iget-object v12, v0, Lc4/l;->h:Ljava/lang/String;

    .line 37
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v13, v9, Lc4/l$a;->e:[B

    iget v9, v9, Lc4/l$a;->c:I

    invoke-static {v13, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 39
    new-instance v13, Lm5/v;

    .line 40
    array-length v14, v9

    invoke-direct {v13, v9, v14}, Lm5/v;-><init>([BI)V

    .line 41
    invoke-virtual {v13, v11}, Lm5/v;->n(I)V

    const/4 v11, 0x4

    .line 42
    invoke-virtual {v13, v11}, Lm5/v;->n(I)V

    .line 43
    invoke-virtual {v13}, Lm5/v;->l()V

    const/16 v14, 0x8

    .line 44
    invoke-virtual {v13, v14}, Lm5/v;->m(I)V

    .line 45
    invoke-virtual {v13}, Lm5/v;->f()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 46
    invoke-virtual {v13, v11}, Lm5/v;->m(I)V

    const/4 v10, 0x3

    .line 47
    invoke-virtual {v13, v10}, Lm5/v;->m(I)V

    .line 48
    :cond_f
    invoke-virtual {v13, v11}, Lm5/v;->g(I)I

    move-result v10

    const-string v11, "Invalid aspect ratio"

    move/from16 v18, v3

    const/16 v3, 0xf

    if-ne v10, v3, :cond_11

    .line 49
    invoke-virtual {v13, v14}, Lm5/v;->g(I)I

    move-result v10

    .line 50
    invoke-virtual {v13, v14}, Lm5/v;->g(I)I

    move-result v14

    if-nez v14, :cond_10

    .line 51
    invoke-static {v15, v11}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    int-to-float v10, v10

    int-to-float v11, v14

    div-float/2addr v10, v11

    goto :goto_5

    .line 52
    :cond_11
    sget-object v14, Lc4/l;->l:[F

    const/4 v3, 0x7

    if-ge v10, v3, :cond_12

    .line 53
    aget v10, v14, v10

    goto :goto_5

    .line 54
    :cond_12
    invoke-static {v15, v11}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/high16 v10, 0x3f800000    # 1.0f

    .line 55
    :goto_5
    invoke-virtual {v13}, Lm5/v;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    .line 58
    invoke-virtual {v13}, Lm5/v;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0xf

    .line 59
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    .line 60
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 61
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    .line 62
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 63
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    .line 64
    invoke-virtual {v13}, Lm5/v;->l()V

    const/4 v11, 0x3

    .line 65
    invoke-virtual {v13, v11}, Lm5/v;->m(I)V

    const/16 v11, 0xb

    .line 66
    invoke-virtual {v13, v11}, Lm5/v;->m(I)V

    .line 67
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 68
    invoke-virtual {v13, v3}, Lm5/v;->m(I)V

    .line 69
    invoke-virtual {v13}, Lm5/v;->l()V

    :cond_13
    const/4 v3, 0x2

    .line 70
    invoke-virtual {v13, v3}, Lm5/v;->g(I)I

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "Unhandled video object layer shape"

    .line 71
    invoke-static {v15, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_14
    invoke-virtual {v13}, Lm5/v;->l()V

    const/16 v3, 0x10

    .line 73
    invoke-virtual {v13, v3}, Lm5/v;->g(I)I

    move-result v3

    .line 74
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 75
    invoke-virtual {v13}, Lm5/v;->f()Z

    move-result v11

    if-eqz v11, :cond_17

    if-nez v3, :cond_15

    const-string v3, "Invalid vop_increment_time_resolution"

    .line 76
    invoke-static {v15, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x0

    :goto_6
    if-lez v3, :cond_16

    add-int/lit8 v11, v11, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 77
    :cond_16
    invoke-virtual {v13, v11}, Lm5/v;->m(I)V

    .line 78
    :cond_17
    :goto_7
    invoke-virtual {v13}, Lm5/v;->l()V

    const/16 v3, 0xd

    .line 79
    invoke-virtual {v13, v3}, Lm5/v;->g(I)I

    move-result v11

    .line 80
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 81
    invoke-virtual {v13, v3}, Lm5/v;->g(I)I

    move-result v3

    .line 82
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 83
    invoke-virtual {v13}, Lm5/v;->l()V

    .line 84
    new-instance v13, Ln3/s0$a;

    invoke-direct {v13}, Ln3/s0$a;-><init>()V

    .line 85
    iput-object v12, v13, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v12, "video/mp4v-es"

    .line 86
    iput-object v12, v13, Ln3/s0$a;->k:Ljava/lang/String;

    .line 87
    iput v11, v13, Ln3/s0$a;->p:I

    .line 88
    iput v3, v13, Ln3/s0$a;->q:I

    .line 89
    iput v10, v13, Ln3/s0$a;->t:F

    .line 90
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 91
    iput-object v3, v13, Ln3/s0$a;->m:Ljava/util/List;

    .line 92
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v13}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 93
    invoke-interface {v7, v3}, Ls3/w;->b(Ln3/s0;)V

    const/4 v3, 0x1

    .line 94
    iput-boolean v3, v0, Lc4/l;->j:Z

    goto :goto_8

    :cond_18
    move/from16 v18, v3

    goto :goto_8

    :cond_19
    move/from16 v18, v3

    move/from16 v17, v7

    .line 95
    :goto_8
    iget-object v3, v0, Lc4/l;->f:Lc4/l$b;

    invoke-virtual {v3, v4, v2, v5}, Lc4/l$b;->a([BII)V

    .line 96
    iget-object v3, v0, Lc4/l;->e:Lc4/r;

    if-eqz v3, :cond_1c

    if-lez v8, :cond_1a

    .line 97
    invoke-virtual {v3, v4, v2, v5}, Lc4/r;->a([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v8

    .line 98
    :goto_9
    iget-object v3, v0, Lc4/l;->e:Lc4/r;

    invoke-virtual {v3, v2}, Lc4/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 99
    iget-object v2, v0, Lc4/l;->e:Lc4/r;

    iget-object v3, v2, Lc4/r;->d:[B

    iget v2, v2, Lc4/r;->e:I

    invoke-static {v3, v2}, Lm5/t;->f([BI)I

    move-result v2

    .line 100
    iget-object v3, v0, Lc4/l;->b:Lm5/w;

    sget v7, Lm5/g0;->a:I

    iget-object v7, v0, Lc4/l;->e:Lc4/r;

    iget-object v7, v7, Lc4/r;->d:[B

    invoke-virtual {v3, v7, v2}, Lm5/w;->B([BI)V

    .line 101
    iget-object v2, v0, Lc4/l;->a:Lc4/e0;

    iget-wide v7, v0, Lc4/l;->k:J

    iget-object v3, v0, Lc4/l;->b:Lm5/w;

    invoke-virtual {v2, v7, v8, v3}, Lc4/e0;->a(JLm5/w;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_1c

    .line 102
    iget-object v2, v1, Lm5/w;->a:[B

    add-int/lit8 v3, v5, 0x2

    .line 103
    aget-byte v2, v2, v3

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1d

    .line 104
    iget-object v2, v0, Lc4/l;->e:Lc4/r;

    invoke-virtual {v2, v6}, Lc4/r;->d(I)V

    goto :goto_a

    :cond_1c
    const/4 v7, 0x1

    :cond_1d
    :goto_a
    sub-int v13, v18, v5

    .line 105
    iget-wide v2, v0, Lc4/l;->g:J

    int-to-long v8, v13

    sub-long/2addr v2, v8

    .line 106
    iget-object v5, v0, Lc4/l;->f:Lc4/l$b;

    iget-boolean v8, v0, Lc4/l;->j:Z

    .line 107
    iget v9, v5, Lc4/l$b;->e:I

    const/16 v15, 0xb6

    if-ne v9, v15, :cond_1e

    if-eqz v8, :cond_1e

    iget-boolean v8, v5, Lc4/l$b;->b:Z

    if-eqz v8, :cond_1e

    iget-wide v9, v5, Lc4/l$b;->h:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v9, v11

    if-eqz v8, :cond_1e

    .line 108
    iget-wide v11, v5, Lc4/l$b;->g:J

    sub-long v11, v2, v11

    long-to-int v12, v11

    .line 109
    iget-boolean v11, v5, Lc4/l$b;->d:Z

    .line 110
    iget-object v8, v5, Lc4/l$b;->a:Ls3/w;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 111
    :cond_1e
    iget v8, v5, Lc4/l$b;->e:I

    const/16 v9, 0xb3

    if-eq v8, v9, :cond_1f

    .line 112
    iput-wide v2, v5, Lc4/l$b;->g:J

    .line 113
    :cond_1f
    iget-object v2, v0, Lc4/l;->f:Lc4/l$b;

    iget-wide v10, v0, Lc4/l;->k:J

    .line 114
    iput v6, v2, Lc4/l$b;->e:I

    const/4 v3, 0x0

    .line 115
    iput-boolean v3, v2, Lc4/l$b;->d:Z

    if-eq v6, v15, :cond_21

    if-ne v6, v9, :cond_20

    goto :goto_b

    :cond_20
    const/4 v3, 0x0

    goto :goto_c

    :cond_21
    :goto_b
    move v3, v7

    .line 116
    :goto_c
    iput-boolean v3, v2, Lc4/l$b;->b:Z

    if-ne v6, v15, :cond_22

    goto :goto_d

    :cond_22
    const/4 v7, 0x0

    .line 117
    :goto_d
    iput-boolean v7, v2, Lc4/l$b;->c:Z

    const/4 v3, 0x0

    .line 118
    iput v3, v2, Lc4/l$b;->f:I

    .line 119
    iput-wide v10, v2, Lc4/l$b;->h:J

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_0
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

    iput-wide p1, p0, Lc4/l;->k:J

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

    iput-object v0, p0, Lc4/l;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object v0

    iput-object v0, p0, Lc4/l;->i:Ls3/w;

    .line 4
    new-instance v1, Lc4/l$b;

    invoke-direct {v1, v0}, Lc4/l$b;-><init>(Ls3/w;)V

    iput-object v1, p0, Lc4/l;->f:Lc4/l$b;

    .line 5
    iget-object v0, p0, Lc4/l;->a:Lc4/e0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lc4/e0;->b(Ls3/j;Lc4/d0$d;)V

    :cond_0
    return-void
.end method
