.class public final Lv3/b;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Ls3/h;


# instance fields
.field public final a:[B

.field public final b:Lm5/w;

.field public final c:Z

.field public final d:Ls3/m$a;

.field public e:Ls3/j;

.field public f:Ls3/w;

.field public g:I

.field public h:Lf4/a;

.field public i:Ls3/p;

.field public j:I

.field public k:I

.field public l:Lv3/a;

.field public m:I

.field public n:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/g;->g:Ly0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lv3/b;->a:[B

    .line 3
    new-instance v0, Lm5/w;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm5/w;-><init>([BI)V

    iput-object v0, p0, Lv3/b;->b:Lm5/w;

    .line 4
    iput-boolean v2, p0, Lv3/b;->c:Z

    .line 5
    new-instance v0, Ls3/m$a;

    invoke-direct {v0}, Ls3/m$a;-><init>()V

    iput-object v0, p0, Lv3/b;->d:Ls3/m$a;

    .line 6
    iput v2, p0, Lv3/b;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1
    iput p2, p0, Lv3/b;->g:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lv3/b;->l:Lv3/a;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Ls3/a;->e(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    .line 4
    :goto_1
    iput-wide v0, p0, Lv3/b;->n:J

    .line 5
    iput p2, p0, Lv3/b;->m:I

    .line 6
    iget-object p1, p0, Lv3/b;->b:Lm5/w;

    invoke-virtual {p1, p2}, Lm5/w;->A(I)V

    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lv3/b;->n:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lv3/b;->i:Ls3/p;

    .line 2
    sget v3, Lm5/g0;->a:I

    iget v2, v2, Ls3/p;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 3
    iget-object v4, p0, Lv3/b;->f:Ls3/w;

    const/4 v7, 0x1

    iget v8, p0, Lv3/b;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V

    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lv3/b;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_24

    const/4 v5, 0x2

    if-eq v2, v3, :cond_23

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x4

    if-eq v2, v5, :cond_21

    const/4 v12, 0x6

    const/4 v13, 0x7

    if-eq v2, v10, :cond_1a

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    const/4 v8, 0x5

    if-eq v2, v11, :cond_16

    if-ne v2, v8, :cond_15

    .line 2
    iget-object v2, v0, Lv3/b;->f:Ls3/w;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lv3/b;->i:Ls3/p;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lv3/b;->l:Lv3/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ls3/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lv3/b;->l:Lv3/a;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Ls3/a;->a(Ls3/i;Ls3/t;)I

    move-result v4

    goto/16 :goto_c

    .line 8
    :cond_0
    iget-wide v10, v0, Lv3/b;->n:J

    cmp-long v2, v10, v16

    const/4 v6, -0x1

    if-nez v2, :cond_7

    .line 9
    iget-object v2, v0, Lv3/b;->i:Ls3/p;

    .line 10
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 11
    invoke-interface {v1, v3}, Ls3/i;->t(I)V

    new-array v7, v3, [B

    .line 12
    invoke-interface {v1, v7, v4, v3}, Ls3/i;->s([BII)V

    aget-byte v7, v7, v4

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v4

    .line 13
    :goto_0
    invoke-interface {v1, v5}, Ls3/i;->t(I)V

    if-eqz v7, :cond_2

    move v12, v13

    .line 14
    :cond_2
    new-instance v5, Lm5/w;

    invoke-direct {v5, v12}, Lm5/w;-><init>(I)V

    .line 15
    iget-object v8, v5, Lm5/w;->a:[B

    move v10, v4

    :goto_1
    if-ge v10, v12, :cond_4

    add-int v11, v4, v10

    sub-int v13, v12, v10

    .line 16
    invoke-interface {v1, v8, v11, v13}, Ls3/i;->g([BII)I

    move-result v11

    if-ne v11, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v10, v11

    goto :goto_1

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {v5, v10}, Lm5/w;->C(I)V

    .line 18
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 19
    :try_start_0
    invoke-virtual {v5}, Lm5/w;->z()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    iget v1, v2, Ls3/p;->b:I

    int-to-long v1, v1

    mul-long/2addr v5, v1

    :goto_3
    move-wide v14, v5

    goto :goto_4

    :catch_0
    move v3, v4

    :goto_4
    if-eqz v3, :cond_6

    .line 21
    iput-wide v14, v0, Lv3/b;->n:J

    goto/16 :goto_c

    .line 22
    :cond_6
    invoke-static {v9, v9}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 23
    :cond_7
    iget-object v2, v0, Lv3/b;->b:Lm5/w;

    .line 24
    iget v5, v2, Lm5/w;->c:I

    const v8, 0x8000

    if-ge v5, v8, :cond_a

    .line 25
    iget-object v2, v2, Lm5/w;->a:[B

    sub-int/2addr v8, v5

    .line 26
    invoke-interface {v1, v2, v5, v8}, Ls3/i;->b([BII)I

    move-result v1

    if-ne v1, v6, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    if-nez v3, :cond_9

    .line 27
    iget-object v2, v0, Lv3/b;->b:Lm5/w;

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lm5/w;->C(I)V

    goto :goto_6

    .line 28
    :cond_9
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    .line 29
    iget v2, v1, Lm5/w;->c:I

    iget v1, v1, Lm5/w;->b:I

    sub-int/2addr v2, v1

    if-nez v2, :cond_b

    .line 30
    invoke-virtual/range {p0 .. p0}, Lv3/b;->c()V

    move v4, v6

    goto/16 :goto_c

    :cond_a
    move v3, v4

    .line 31
    :cond_b
    :goto_6
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    .line 32
    iget v2, v1, Lm5/w;->b:I

    .line 33
    iget v5, v0, Lv3/b;->m:I

    iget v6, v0, Lv3/b;->j:I

    if-ge v5, v6, :cond_c

    sub-int/2addr v6, v5

    .line 34
    iget v5, v1, Lm5/w;->c:I

    sub-int/2addr v5, v2

    .line 35
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lm5/w;->E(I)V

    .line 36
    :cond_c
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    .line 37
    iget-object v5, v0, Lv3/b;->i:Ls3/p;

    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget v5, v1, Lm5/w;->b:I

    .line 40
    :goto_7
    iget v6, v1, Lm5/w;->c:I

    add-int/lit8 v6, v6, -0x10

    if-gt v5, v6, :cond_e

    .line 41
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    .line 42
    iget-object v6, v0, Lv3/b;->i:Ls3/p;

    iget v8, v0, Lv3/b;->k:I

    iget-object v9, v0, Lv3/b;->d:Ls3/m$a;

    invoke-static {v1, v6, v8, v9}, Ls3/m;->a(Lm5/w;Ls3/p;ILs3/m$a;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 43
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    .line 44
    iget-object v1, v0, Lv3/b;->d:Ls3/m$a;

    iget-wide v5, v1, Ls3/m$a;->a:J

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_12

    .line 45
    :goto_8
    iget v3, v1, Lm5/w;->c:I

    .line 46
    iget v6, v0, Lv3/b;->j:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_11

    .line 47
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    .line 48
    :try_start_1
    iget-object v3, v0, Lv3/b;->i:Ls3/p;

    iget v6, v0, Lv3/b;->k:I

    iget-object v8, v0, Lv3/b;->d:Ls3/m$a;

    .line 49
    invoke-static {v1, v3, v6, v8}, Ls3/m;->a(Lm5/w;Ls3/p;ILs3/m$a;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move v3, v4

    .line 50
    :goto_9
    iget v6, v1, Lm5/w;->b:I

    .line 51
    iget v8, v1, Lm5/w;->c:I

    if-le v6, v8, :cond_f

    move v3, v4

    :cond_f
    if-eqz v3, :cond_10

    .line 52
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    .line 53
    iget-object v1, v0, Lv3/b;->d:Ls3/m$a;

    iget-wide v5, v1, Ls3/m$a;->a:J

    goto :goto_b

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 54
    :cond_11
    invoke-virtual {v1, v3}, Lm5/w;->D(I)V

    goto :goto_a

    .line 55
    :cond_12
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    :goto_a
    move-wide/from16 v5, v16

    .line 56
    :goto_b
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    .line 57
    iget v3, v1, Lm5/w;->b:I

    sub-int/2addr v3, v2

    .line 58
    invoke-virtual {v1, v2}, Lm5/w;->D(I)V

    .line 59
    iget-object v1, v0, Lv3/b;->f:Ls3/w;

    iget-object v2, v0, Lv3/b;->b:Lm5/w;

    invoke-interface {v1, v2, v3}, Ls3/w;->f(Lm5/w;I)V

    .line 60
    iget v1, v0, Lv3/b;->m:I

    add-int/2addr v1, v3

    iput v1, v0, Lv3/b;->m:I

    cmp-long v1, v5, v16

    if-eqz v1, :cond_13

    .line 61
    invoke-virtual/range {p0 .. p0}, Lv3/b;->c()V

    .line 62
    iput v4, v0, Lv3/b;->m:I

    .line 63
    iput-wide v5, v0, Lv3/b;->n:J

    .line 64
    :cond_13
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    .line 65
    iget v2, v1, Lm5/w;->c:I

    iget v3, v1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    if-ge v2, v7, :cond_14

    .line 66
    iget-object v1, v1, Lm5/w;->a:[B

    .line 67
    invoke-static {v1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    invoke-virtual {v1, v4}, Lm5/w;->D(I)V

    .line 69
    iget-object v1, v0, Lv3/b;->b:Lm5/w;

    invoke-virtual {v1, v2}, Lm5/w;->C(I)V

    :cond_14
    :goto_c
    return v4

    .line 70
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 71
    :cond_16
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    new-array v2, v5, [B

    .line 72
    invoke-interface {v1, v2, v4, v5}, Ls3/i;->s([BII)V

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v5

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_19

    .line 73
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 74
    iput v2, v0, Lv3/b;->k:I

    .line 75
    iget-object v2, v0, Lv3/b;->e:Ls3/j;

    sget v3, Lm5/g0;->a:I

    .line 76
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v5

    .line 77
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v23

    .line 78
    iget-object v1, v0, Lv3/b;->i:Ls3/p;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, v0, Lv3/b;->i:Ls3/p;

    iget-object v3, v1, Ls3/p;->k:Ls3/p$a;

    if-eqz v3, :cond_17

    .line 81
    new-instance v3, Ls3/o;

    invoke-direct {v3, v1, v5, v6}, Ls3/o;-><init>(Ls3/p;J)V

    goto :goto_d

    :cond_17
    cmp-long v3, v23, v16

    if-eqz v3, :cond_18

    .line 82
    iget-wide v9, v1, Ls3/p;->j:J

    cmp-long v3, v9, v14

    if-lez v3, :cond_18

    .line 83
    new-instance v3, Lv3/a;

    iget v7, v0, Lv3/b;->k:I

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move/from16 v20, v7

    move-wide/from16 v21, v5

    invoke-direct/range {v18 .. v24}, Lv3/a;-><init>(Ls3/p;IJJ)V

    iput-object v3, v0, Lv3/b;->l:Lv3/a;

    .line 84
    iget-object v3, v3, Ls3/a;->a:Ls3/a$a;

    goto :goto_d

    .line 85
    :cond_18
    new-instance v3, Ls3/u$b;

    invoke-virtual {v1}, Ls3/p;->c()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ls3/u$b;-><init>(J)V

    .line 86
    :goto_d
    invoke-interface {v2, v3}, Ls3/j;->j(Ls3/u;)V

    .line 87
    iput v8, v0, Lv3/b;->g:I

    return v4

    .line 88
    :cond_19
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    const-string v1, "First frame does not start with sync code."

    .line 89
    invoke-static {v1, v9}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 90
    :cond_1a
    iget-object v2, v0, Lv3/b;->i:Ls3/p;

    move v3, v4

    :goto_e
    if-nez v3, :cond_20

    .line 91
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 92
    new-instance v3, Lm5/v;

    new-array v5, v11, [B

    .line 93
    invoke-direct {v3, v5, v11}, Lm5/v;-><init>([BI)V

    .line 94
    iget-object v5, v3, Lm5/v;->a:[B

    invoke-interface {v1, v5, v4, v11}, Ls3/i;->s([BII)V

    .line 95
    invoke-virtual {v3}, Lm5/v;->f()Z

    move-result v5

    .line 96
    invoke-virtual {v3, v13}, Lm5/v;->g(I)I

    move-result v6

    .line 97
    invoke-virtual {v3, v8}, Lm5/v;->g(I)I

    move-result v3

    add-int/2addr v3, v11

    if-nez v6, :cond_1b

    const/16 v2, 0x26

    new-array v3, v2, [B

    .line 98
    invoke-interface {v1, v3, v4, v2}, Ls3/i;->readFully([BII)V

    .line 99
    new-instance v2, Ls3/p;

    invoke-direct {v2, v3, v11}, Ls3/p;-><init>([BI)V

    goto :goto_f

    :cond_1b
    if-eqz v2, :cond_1f

    if-ne v6, v10, :cond_1c

    .line 100
    new-instance v6, Lm5/w;

    invoke-direct {v6, v3}, Lm5/w;-><init>(I)V

    .line 101
    iget-object v7, v6, Lm5/w;->a:[B

    .line 102
    invoke-interface {v1, v7, v4, v3}, Ls3/i;->readFully([BII)V

    .line 103
    invoke-static {v6}, Ls3/n;->b(Lm5/w;)Ls3/p$a;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ls3/p;->a(Ls3/p$a;)Ls3/p;

    move-result-object v2

    :goto_f
    move/from16 p2, v5

    goto/16 :goto_11

    :cond_1c
    if-ne v6, v11, :cond_1d

    .line 105
    new-instance v6, Lm5/w;

    invoke-direct {v6, v3}, Lm5/w;-><init>(I)V

    .line 106
    iget-object v7, v6, Lm5/w;->a:[B

    .line 107
    invoke-interface {v1, v7, v4, v3}, Ls3/i;->readFully([BII)V

    .line 108
    invoke-virtual {v6, v11}, Lm5/w;->E(I)V

    .line 109
    invoke-static {v6, v4, v4}, Ls3/z;->c(Lm5/w;ZZ)Ls3/z$a;

    move-result-object v3

    .line 110
    iget-object v3, v3, Ls3/z$a;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 111
    invoke-static {v3}, Ls3/z;->b(Ljava/util/List;)Lf4/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls3/p;->e(Lf4/a;)Lf4/a;

    move-result-object v25

    .line 112
    new-instance v3, Ls3/p;

    iget v15, v2, Ls3/p;->a:I

    iget v6, v2, Ls3/p;->b:I

    iget v7, v2, Ls3/p;->c:I

    iget v9, v2, Ls3/p;->d:I

    iget v14, v2, Ls3/p;->e:I

    iget v13, v2, Ls3/p;->g:I

    iget v10, v2, Ls3/p;->h:I

    move/from16 p2, v5

    iget-wide v4, v2, Ls3/p;->j:J

    iget-object v2, v2, Ls3/p;->k:Ls3/p$a;

    move/from16 v19, v14

    move-object v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v20, v13

    move/from16 v21, v10

    move-wide/from16 v22, v4

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v25}, Ls3/p;-><init>(IIIIIIIJLs3/p$a;Lf4/a;)V

    goto :goto_10

    :cond_1d
    move/from16 p2, v5

    if-ne v6, v12, :cond_1e

    .line 113
    new-instance v4, Lm5/w;

    invoke-direct {v4, v3}, Lm5/w;-><init>(I)V

    .line 114
    iget-object v5, v4, Lm5/w;->a:[B

    const/4 v6, 0x0

    .line 115
    invoke-interface {v1, v5, v6, v3}, Ls3/i;->readFully([BII)V

    .line 116
    invoke-virtual {v4, v11}, Lm5/w;->E(I)V

    .line 117
    invoke-static {v4}, Li4/a;->a(Lm5/w;)Li4/a;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v3

    .line 119
    new-instance v4, Lf4/a;

    invoke-direct {v4, v3}, Lf4/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Ls3/p;->e(Lf4/a;)Lf4/a;

    move-result-object v24

    .line 120
    new-instance v3, Ls3/p;

    iget v14, v2, Ls3/p;->a:I

    iget v15, v2, Ls3/p;->b:I

    iget v4, v2, Ls3/p;->c:I

    iget v5, v2, Ls3/p;->d:I

    iget v6, v2, Ls3/p;->e:I

    iget v7, v2, Ls3/p;->g:I

    iget v9, v2, Ls3/p;->h:I

    iget-wide v11, v2, Ls3/p;->j:J

    iget-object v2, v2, Ls3/p;->k:Ls3/p$a;

    move-object v13, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move-wide/from16 v21, v11

    move-object/from16 v23, v2

    invoke-direct/range {v13 .. v24}, Ls3/p;-><init>(IIIIIIIJLs3/p$a;Lf4/a;)V

    :goto_10
    move-object v2, v3

    goto :goto_11

    .line 121
    :cond_1e
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    .line 122
    :goto_11
    sget v3, Lm5/g0;->a:I

    iput-object v2, v0, Lv3/b;->i:Ls3/p;

    move/from16 v3, p2

    const/4 v4, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x7

    goto/16 :goto_e

    .line 123
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 124
    :cond_20
    iget-object v1, v0, Lv3/b;->i:Ls3/p;

    .line 125
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, v0, Lv3/b;->i:Ls3/p;

    iget v1, v1, Ls3/p;->c:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lv3/b;->j:I

    .line 127
    iget-object v1, v0, Lv3/b;->f:Ls3/w;

    sget v2, Lm5/g0;->a:I

    iget-object v2, v0, Lv3/b;->i:Ls3/p;

    iget-object v3, v0, Lv3/b;->a:[B

    iget-object v4, v0, Lv3/b;->h:Lf4/a;

    .line 128
    invoke-virtual {v2, v3, v4}, Ls3/p;->d([BLf4/a;)Ln3/s0;

    move-result-object v2

    invoke-interface {v1, v2}, Ls3/w;->b(Ln3/s0;)V

    const/4 v2, 0x4

    .line 129
    iput v2, v0, Lv3/b;->g:I

    const/4 v4, 0x0

    return v4

    :cond_21
    move v2, v11

    new-array v10, v2, [B

    .line 130
    invoke-interface {v1, v10, v4, v2}, Ls3/i;->readFully([BII)V

    aget-byte v1, v10, v4

    int-to-long v1, v1

    const-wide/16 v11, 0xff

    and-long/2addr v1, v11

    shl-long/2addr v1, v8

    aget-byte v3, v10, v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    aget-byte v3, v10, v5

    int-to-long v3, v3

    and-long/2addr v3, v11

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v4, v10, v3

    int-to-long v4, v4

    and-long/2addr v4, v11

    or-long/2addr v1, v4

    const-wide/32 v4, 0x664c6143

    cmp-long v1, v1, v4

    if-nez v1, :cond_22

    .line 131
    iput v3, v0, Lv3/b;->g:I

    const/4 v2, 0x0

    return v2

    :cond_22
    const-string v1, "Failed to read FLAC stream marker."

    .line 132
    invoke-static {v1, v9}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_23
    move v2, v4

    .line 133
    iget-object v3, v0, Lv3/b;->a:[B

    array-length v4, v3

    invoke-interface {v1, v3, v2, v4}, Ls3/i;->s([BII)V

    .line 134
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 135
    iput v5, v0, Lv3/b;->g:I

    return v2

    .line 136
    :cond_24
    iget-boolean v2, v0, Lv3/b;->c:Z

    xor-int/2addr v2, v3

    .line 137
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 138
    invoke-interface/range {p1 .. p1}, Ls3/i;->q()J

    move-result-wide v4

    .line 139
    invoke-static {v1, v2}, Ls3/n;->a(Ls3/i;Z)Lf4/a;

    move-result-object v2

    .line 140
    invoke-interface/range {p1 .. p1}, Ls3/i;->q()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    .line 141
    invoke-interface {v1, v4}, Ls3/i;->k(I)V

    .line 142
    iput-object v2, v0, Lv3/b;->h:Lf4/a;

    .line 143
    iput v3, v0, Lv3/b;->g:I

    const/4 v1, 0x0

    return v1
.end method

.method public final g(Ls3/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lv3/b;->e:Ls3/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object v0

    iput-object v0, p0, Lv3/b;->f:Ls3/w;

    .line 3
    invoke-interface {p1}, Ls3/j;->b()V

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ls3/n;->a(Ls3/i;Z)Lf4/a;

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2
    check-cast p1, Ls3/e;

    .line 3
    invoke-virtual {p1, v2, v0, v1, v0}, Ls3/e;->p([BIIZ)Z

    aget-byte p1, v2, v0

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    const/4 p1, 0x2

    const/4 v1, 0x1

    aget-byte v7, v2, v1

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x3

    aget-byte p1, v2, p1

    int-to-long v8, p1

    and-long/2addr v8, v5

    const/16 p1, 0x8

    shl-long/2addr v8, p1

    or-long/2addr v3, v8

    aget-byte p1, v2, v7

    int-to-long v7, p1

    and-long/2addr v5, v7

    or-long v2, v3, v5

    const-wide/32 v4, 0x664c6143

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method
