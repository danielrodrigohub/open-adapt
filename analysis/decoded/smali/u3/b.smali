.class public final Lu3/b;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/b$b;,
        Lu3/b$a;
    }
.end annotation


# instance fields
.field public final a:Lm5/w;

.field public final b:Lu3/b$b;

.field public c:I

.field public d:Ls3/j;

.field public e:Lu3/c;

.field public f:J

.field public g:[Lu3/e;

.field public h:J

.field public i:Lu3/e;

.field public j:I

.field public k:J

.field public l:J

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Lu3/b;->a:Lm5/w;

    .line 3
    new-instance v0, Lu3/b$b;

    invoke-direct {v0}, Lu3/b$b;-><init>()V

    iput-object v0, p0, Lu3/b;->b:Lu3/b$b;

    .line 4
    new-instance v0, Lc3/d;

    invoke-direct {v0}, Lc3/d;-><init>()V

    iput-object v0, p0, Lu3/b;->d:Ls3/j;

    const/4 v0, 0x0

    new-array v0, v0, [Lu3/e;

    .line 5
    iput-object v0, p0, Lu3/b;->g:[Lu3/e;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lu3/b;->k:J

    .line 7
    iput-wide v0, p0, Lu3/b;->l:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lu3/b;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lu3/b;->f:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    .line 1
    iput-wide p3, p0, Lu3/b;->h:J

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Lu3/b;->i:Lu3/e;

    .line 3
    iget-object p3, p0, Lu3/b;->g:[Lu3/e;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    .line 4
    iget v3, v2, Lu3/e;->j:I

    if-nez v3, :cond_0

    .line 5
    iput v0, v2, Lu3/e;->h:I

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, v2, Lu3/e;->k:[J

    const/4 v4, 0x1

    .line 7
    invoke-static {v3, p1, p2, v4}, Lm5/g0;->f([JJZ)I

    move-result v3

    .line 8
    iget-object v4, v2, Lu3/e;->l:[I

    aget v3, v4, v3

    iput v3, v2, Lu3/e;->h:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lu3/b;->g:[Lu3/e;

    array-length p1, p1

    if-nez p1, :cond_2

    .line 10
    iput v0, p0, Lu3/b;->c:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lu3/b;->c:I

    :goto_2
    return-void

    :cond_3
    const/4 p1, 0x6

    .line 12
    iput p1, p0, Lu3/b;->c:I

    return-void
.end method

.method public final c(I)Lu3/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lu3/b;->g:[Lu3/e;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lu3/e;->b:I

    if-eq v5, p1, :cond_1

    iget v5, v4, Lu3/e;->c:I

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lu3/b;->h:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 2
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    .line 3
    iget-wide v9, v0, Lu3/b;->h:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_1

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v7

    long-to-int v2, v9

    .line 4
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, p2

    .line 5
    iput-wide v9, v2, Ls3/t;->a:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    .line 6
    :goto_2
    iput-wide v4, v0, Lu3/b;->h:J

    if-eqz v2, :cond_3

    return v3

    .line 7
    :cond_3
    iget v2, v0, Lu3/b;->c:I

    const/4 v5, 0x6

    const/16 v7, 0x10

    const v8, 0x5453494c

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x3

    const/16 v13, 0x8

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 9
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v14

    iget-wide v4, v0, Lu3/b;->l:J

    cmp-long v2, v14, v4

    if-ltz v2, :cond_4

    const/4 v6, -0x1

    goto/16 :goto_6

    .line 10
    :cond_4
    iget-object v2, v0, Lu3/b;->i:Lu3/e;

    if-eqz v2, :cond_9

    .line 11
    iget v4, v2, Lu3/e;->g:I

    iget-object v5, v2, Lu3/e;->a:Ls3/w;

    .line 12
    invoke-interface {v5, v1, v4, v6}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, v2, Lu3/e;->g:I

    if-nez v4, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_8

    .line 13
    iget v4, v2, Lu3/e;->f:I

    if-lez v4, :cond_7

    .line 14
    iget-object v11, v2, Lu3/e;->a:Ls3/w;

    .line 15
    iget v4, v2, Lu3/e;->h:I

    .line 16
    iget-wide v7, v2, Lu3/e;->d:J

    int-to-long v12, v4

    mul-long/2addr v7, v12

    iget v5, v2, Lu3/e;->e:I

    int-to-long v12, v5

    div-long v12, v7, v12

    .line 17
    iget-object v5, v2, Lu3/e;->l:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_6

    move v14, v3

    goto :goto_4

    :cond_6
    move v14, v6

    .line 18
    :goto_4
    iget v15, v2, Lu3/e;->f:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 19
    invoke-interface/range {v11 .. v17}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 20
    :cond_7
    iget v4, v2, Lu3/e;->h:I

    add-int/2addr v4, v3

    iput v4, v2, Lu3/e;->h:I

    :cond_8
    if-eqz v1, :cond_f

    .line 21
    iput-object v10, v0, Lu3/b;->i:Lu3/e;

    goto :goto_6

    .line 22
    :cond_9
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    and-long/2addr v4, v9

    cmp-long v2, v4, v9

    if-nez v2, :cond_a

    .line 23
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    .line 24
    :cond_a
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    .line 25
    iget-object v2, v2, Lm5/w;->a:[B

    .line 26
    invoke-interface {v1, v2, v6, v11}, Ls3/i;->s([BII)V

    .line 27
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2, v6}, Lm5/w;->D(I)V

    .line 28
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v2

    if-ne v2, v8, :cond_c

    .line 29
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2, v13}, Lm5/w;->D(I)V

    .line 30
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v2

    const v3, 0x69766f6d

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    move v11, v13

    .line 31
    :goto_5
    invoke-interface {v1, v11}, Ls3/i;->k(I)V

    .line 32
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    goto :goto_6

    .line 33
    :cond_c
    iget-object v3, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->g()I

    move-result v3

    const v4, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v4, :cond_d

    .line 34
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu3/b;->h:J

    goto :goto_6

    .line 35
    :cond_d
    invoke-interface {v1, v13}, Ls3/i;->k(I)V

    .line 36
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 37
    invoke-virtual {v0, v2}, Lu3/b;->c(I)Lu3/e;

    move-result-object v2

    if-nez v2, :cond_e

    .line 38
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu3/b;->h:J

    goto :goto_6

    .line 39
    :cond_e
    iput v3, v2, Lu3/e;->f:I

    .line 40
    iput v3, v2, Lu3/e;->g:I

    .line 41
    iput-object v2, v0, Lu3/b;->i:Lu3/e;

    :cond_f
    :goto_6
    return v6

    .line 42
    :pswitch_1
    new-instance v2, Lm5/w;

    iget v4, v0, Lu3/b;->m:I

    invoke-direct {v2, v4}, Lm5/w;-><init>(I)V

    .line 43
    iget-object v4, v2, Lm5/w;->a:[B

    .line 44
    iget v8, v0, Lu3/b;->m:I

    invoke-interface {v1, v4, v6, v8}, Ls3/i;->readFully([BII)V

    .line 45
    iget v1, v2, Lm5/w;->c:I

    iget v4, v2, Lm5/w;->b:I

    sub-int/2addr v1, v4

    if-ge v1, v7, :cond_10

    const-wide/16 v10, 0x0

    goto :goto_8

    .line 46
    :cond_10
    invoke-virtual {v2, v13}, Lm5/w;->E(I)V

    .line 47
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v1

    int-to-long v10, v1

    .line 48
    iget-wide v13, v0, Lu3/b;->k:J

    cmp-long v1, v10, v13

    if-lez v1, :cond_11

    const-wide/16 v10, 0x0

    goto :goto_7

    :cond_11
    const-wide/16 v10, 0x8

    add-long/2addr v13, v10

    move-wide v10, v13

    .line 49
    :goto_7
    invoke-virtual {v2, v4}, Lm5/w;->D(I)V

    .line 50
    :goto_8
    iget v1, v2, Lm5/w;->c:I

    iget v4, v2, Lm5/w;->b:I

    sub-int/2addr v1, v4

    if-lt v1, v7, :cond_15

    .line 51
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v1

    .line 52
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v4

    .line 53
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v8

    int-to-long v13, v8

    add-long/2addr v13, v10

    .line 54
    invoke-virtual {v2}, Lm5/w;->g()I

    .line 55
    invoke-virtual {v0, v1}, Lu3/b;->c(I)Lu3/e;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    and-int/2addr v4, v7

    if-ne v4, v7, :cond_14

    .line 56
    iget v4, v1, Lu3/e;->j:I

    iget-object v8, v1, Lu3/e;->l:[I

    array-length v8, v8

    if-ne v4, v8, :cond_13

    .line 57
    iget-object v4, v1, Lu3/e;->k:[J

    array-length v8, v4

    mul-int/2addr v8, v12

    div-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v1, Lu3/e;->k:[J

    .line 58
    iget-object v4, v1, Lu3/e;->l:[I

    array-length v8, v4

    mul-int/2addr v8, v12

    div-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v1, Lu3/e;->l:[I

    .line 59
    :cond_13
    iget-object v4, v1, Lu3/e;->k:[J

    iget v8, v1, Lu3/e;->j:I

    aput-wide v13, v4, v8

    .line 60
    iget-object v4, v1, Lu3/e;->l:[I

    iget v13, v1, Lu3/e;->i:I

    aput v13, v4, v8

    add-int/2addr v8, v3

    .line 61
    iput v8, v1, Lu3/e;->j:I

    .line 62
    :cond_14
    iget v4, v1, Lu3/e;->i:I

    add-int/2addr v4, v3

    iput v4, v1, Lu3/e;->i:I

    goto :goto_8

    .line 63
    :cond_15
    iget-object v1, v0, Lu3/b;->g:[Lu3/e;

    array-length v2, v1

    move v4, v6

    :goto_9
    if-ge v4, v2, :cond_16

    aget-object v7, v1, v4

    .line 64
    iget-object v8, v7, Lu3/e;->k:[J

    iget v9, v7, Lu3/e;->j:I

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    iput-object v8, v7, Lu3/e;->k:[J

    .line 65
    iget-object v8, v7, Lu3/e;->l:[I

    iget v9, v7, Lu3/e;->j:I

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v7, Lu3/e;->l:[I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 66
    :cond_16
    iput-boolean v3, v0, Lu3/b;->n:Z

    .line 67
    iget-object v1, v0, Lu3/b;->d:Ls3/j;

    new-instance v2, Lu3/b$a;

    iget-wide v3, v0, Lu3/b;->f:J

    invoke-direct {v2, v0, v3, v4}, Lu3/b$a;-><init>(Lu3/b;J)V

    invoke-interface {v1, v2}, Ls3/j;->j(Ls3/u;)V

    .line 68
    iput v5, v0, Lu3/b;->c:I

    .line 69
    iget-wide v1, v0, Lu3/b;->k:J

    iput-wide v1, v0, Lu3/b;->h:J

    return v6

    .line 70
    :pswitch_2
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    .line 71
    iget-object v2, v2, Lm5/w;->a:[B

    .line 72
    invoke-interface {v1, v2, v6, v13}, Ls3/i;->readFully([BII)V

    .line 73
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2, v6}, Lm5/w;->D(I)V

    .line 74
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v2

    .line 75
    iget-object v3, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->g()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_17

    const/4 v1, 0x5

    .line 76
    iput v1, v0, Lu3/b;->c:I

    .line 77
    iput v3, v0, Lu3/b;->m:I

    goto :goto_a

    .line 78
    :cond_17
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu3/b;->h:J

    :goto_a
    return v6

    .line 79
    :pswitch_3
    iget-wide v9, v0, Lu3/b;->k:J

    const-wide/16 v12, -0x1

    cmp-long v2, v9, v12

    if-eqz v2, :cond_18

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v9

    iget-wide v12, v0, Lu3/b;->k:J

    cmp-long v2, v9, v12

    if-eqz v2, :cond_18

    .line 80
    iput-wide v12, v0, Lu3/b;->h:J

    return v6

    .line 81
    :cond_18
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    .line 82
    iget-object v2, v2, Lm5/w;->a:[B

    .line 83
    invoke-interface {v1, v2, v6, v11}, Ls3/i;->s([BII)V

    .line 84
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 85
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2, v6}, Lm5/w;->D(I)V

    .line 86
    iget-object v2, v0, Lu3/b;->b:Lu3/b$b;

    iget-object v4, v0, Lu3/b;->a:Lm5/w;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v4}, Lm5/w;->g()I

    move-result v9

    iput v9, v2, Lu3/b$b;->a:I

    .line 88
    invoke-virtual {v4}, Lm5/w;->g()I

    move-result v4

    iput v4, v2, Lu3/b$b;->b:I

    .line 89
    iput v6, v2, Lu3/b$b;->c:I

    .line 90
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v2

    .line 91
    iget-object v4, v0, Lu3/b;->b:Lu3/b$b;

    iget v4, v4, Lu3/b$b;->a:I

    const v9, 0x46464952

    if-ne v4, v9, :cond_19

    .line 92
    invoke-interface {v1, v11}, Ls3/i;->k(I)V

    return v6

    :cond_19
    if-ne v4, v8, :cond_1e

    const v4, 0x69766f6d

    if-eq v2, v4, :cond_1a

    goto :goto_c

    .line 93
    :cond_1a
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v8

    iput-wide v8, v0, Lu3/b;->k:J

    .line 94
    iget-object v2, v0, Lu3/b;->b:Lu3/b$b;

    iget v2, v2, Lu3/b$b;->b:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lu3/b;->l:J

    .line 95
    iget-boolean v2, v0, Lu3/b;->n:Z

    if-nez v2, :cond_1d

    .line 96
    iget-object v2, v0, Lu3/b;->e:Lu3/c;

    .line 97
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget v2, v2, Lu3/c;->b:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_1b

    move v2, v3

    goto :goto_b

    :cond_1b
    move v2, v6

    :goto_b
    if-eqz v2, :cond_1c

    const/4 v1, 0x4

    .line 99
    iput v1, v0, Lu3/b;->c:I

    .line 100
    iget-wide v1, v0, Lu3/b;->l:J

    iput-wide v1, v0, Lu3/b;->h:J

    goto/16 :goto_11

    .line 101
    :cond_1c
    iget-object v2, v0, Lu3/b;->d:Ls3/j;

    new-instance v4, Ls3/u$b;

    iget-wide v7, v0, Lu3/b;->f:J

    invoke-direct {v4, v7, v8}, Ls3/u$b;-><init>(J)V

    invoke-interface {v2, v4}, Ls3/j;->j(Ls3/u;)V

    .line 102
    iput-boolean v3, v0, Lu3/b;->n:Z

    .line 103
    :cond_1d
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu3/b;->h:J

    .line 104
    iput v5, v0, Lu3/b;->c:I

    return v6

    .line 105
    :cond_1e
    :goto_c
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    iget-object v3, v0, Lu3/b;->b:Lu3/b$b;

    iget v3, v3, Lu3/b$b;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu3/b;->h:J

    return v6

    .line 106
    :pswitch_4
    iget v2, v0, Lu3/b;->j:I

    add-int/lit8 v2, v2, -0x4

    .line 107
    new-instance v4, Lm5/w;

    invoke-direct {v4, v2}, Lm5/w;-><init>(I)V

    .line 108
    iget-object v5, v4, Lm5/w;->a:[B

    .line 109
    invoke-interface {v1, v5, v6, v2}, Ls3/i;->readFully([BII)V

    const v1, 0x6c726468

    .line 110
    invoke-static {v1, v4}, Lu3/f;->b(ILm5/w;)Lu3/f;

    move-result-object v2

    .line 111
    iget v4, v2, Lu3/f;->b:I

    if-ne v4, v1, :cond_29

    .line 112
    const-class v1, Lu3/c;

    invoke-virtual {v2, v1}, Lu3/f;->a(Ljava/lang/Class;)Lu3/a;

    move-result-object v1

    check-cast v1, Lu3/c;

    if-eqz v1, :cond_28

    .line 113
    iput-object v1, v0, Lu3/b;->e:Lu3/c;

    .line 114
    iget v4, v1, Lu3/c;->c:I

    int-to-long v4, v4

    iget v1, v1, Lu3/c;->a:I

    int-to-long v7, v1

    mul-long/2addr v4, v7

    iput-wide v4, v0, Lu3/b;->f:J

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v2, v2, Lu3/f;->a:Lu6/v;

    .line 117
    invoke-virtual {v2, v6}, Lu6/v;->u(I)Lu6/a;

    move-result-object v2

    move v14, v6

    .line 118
    :cond_1f
    :goto_d
    invoke-virtual {v2}, Lu6/a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Lu6/a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/a;

    .line 119
    invoke-interface {v4}, Lu3/a;->getType()I

    move-result v5

    const v7, 0x6c727473

    if-ne v5, v7, :cond_1f

    .line 120
    check-cast v4, Lu3/f;

    add-int/lit8 v5, v14, 0x1

    .line 121
    const-class v7, Lu3/d;

    invoke-virtual {v4, v7}, Lu3/f;->a(Ljava/lang/Class;)Lu3/a;

    move-result-object v7

    check-cast v7, Lu3/d;

    .line 122
    const-class v8, Lu3/g;

    invoke-virtual {v4, v8}, Lu3/f;->a(Ljava/lang/Class;)Lu3/a;

    move-result-object v8

    check-cast v8, Lu3/g;

    const-string v10, "AviExtractor"

    if-nez v7, :cond_20

    const-string v4, "Missing Stream Header"

    .line 123
    invoke-static {v10, v4}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_20
    if-nez v8, :cond_21

    const-string v4, "Missing Stream Format"

    .line 124
    invoke-static {v10, v4}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 125
    :cond_21
    iget v10, v7, Lu3/d;->d:I

    int-to-long v10, v10

    iget v13, v7, Lu3/d;->b:I

    int-to-long v12, v13

    const-wide/32 v15, 0xf4240

    mul-long v17, v12, v15

    iget v12, v7, Lu3/d;->c:I

    int-to-long v12, v12

    move-wide v15, v10

    move-wide/from16 v19, v12

    invoke-static/range {v15 .. v20}, Lm5/g0;->R(JJJ)J

    move-result-wide v10

    .line 126
    iget-object v8, v8, Lu3/g;->a:Ln3/s0;

    .line 127
    new-instance v12, Ln3/s0$a;

    invoke-direct {v12, v8}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 128
    invoke-virtual {v12, v14}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 129
    iget v13, v7, Lu3/d;->e:I

    if-eqz v13, :cond_22

    .line 130
    iput v13, v12, Ln3/s0$a;->l:I

    .line 131
    :cond_22
    const-class v13, Lu3/h;

    invoke-virtual {v4, v13}, Lu3/f;->a(Ljava/lang/Class;)Lu3/a;

    move-result-object v4

    check-cast v4, Lu3/h;

    if-eqz v4, :cond_23

    .line 132
    iget-object v4, v4, Lu3/h;->a:Ljava/lang/String;

    .line 133
    iput-object v4, v12, Ln3/s0$a;->b:Ljava/lang/String;

    .line 134
    :cond_23
    iget-object v4, v8, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v4}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v3, :cond_25

    if-ne v15, v9, :cond_24

    goto :goto_f

    :cond_24
    :goto_e
    const/4 v4, 0x0

    goto :goto_10

    .line 135
    :cond_25
    :goto_f
    iget-object v4, v0, Lu3/b;->d:Ls3/j;

    invoke-interface {v4, v14, v15}, Ls3/j;->p(II)Ls3/w;

    move-result-object v4

    .line 136
    new-instance v8, Ln3/s0;

    invoke-direct {v8, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 137
    invoke-interface {v4, v8}, Ls3/w;->b(Ln3/s0;)V

    .line 138
    new-instance v8, Lu3/e;

    iget v7, v7, Lu3/d;->d:I

    move-object v13, v8

    move-wide/from16 v16, v10

    move/from16 v18, v7

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lu3/e;-><init>(IIJILs3/w;)V

    .line 139
    iput-wide v10, v0, Lu3/b;->f:J

    move-object v4, v8

    :goto_10
    if-eqz v4, :cond_26

    .line 140
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    move v14, v5

    const/4 v12, 0x3

    goto/16 :goto_d

    :cond_27
    new-array v2, v6, [Lu3/e;

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lu3/e;

    iput-object v1, v0, Lu3/b;->g:[Lu3/e;

    .line 142
    iget-object v1, v0, Lu3/b;->d:Ls3/j;

    invoke-interface {v1}, Ls3/j;->b()V

    const/4 v1, 0x3

    .line 143
    iput v1, v0, Lu3/b;->c:I

    return v6

    :cond_28
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    .line 144
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_29
    const-string v1, "Unexpected header list type "

    .line 145
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    iget v2, v2, Lu3/f;->b:I

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1, v10}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 149
    :pswitch_5
    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    .line 150
    iget-object v2, v2, Lm5/w;->a:[B

    .line 151
    invoke-interface {v1, v2, v6, v11}, Ls3/i;->readFully([BII)V

    .line 152
    iget-object v1, v0, Lu3/b;->a:Lm5/w;

    invoke-virtual {v1, v6}, Lm5/w;->D(I)V

    .line 153
    iget-object v1, v0, Lu3/b;->b:Lu3/b$b;

    iget-object v2, v0, Lu3/b;->a:Lm5/w;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v3

    iput v3, v1, Lu3/b$b;->a:I

    .line 155
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v3

    iput v3, v1, Lu3/b$b;->b:I

    .line 156
    iput v6, v1, Lu3/b$b;->c:I

    .line 157
    iget v3, v1, Lu3/b$b;->a:I

    if-ne v3, v8, :cond_2b

    .line 158
    invoke-virtual {v2}, Lm5/w;->g()I

    move-result v2

    iput v2, v1, Lu3/b$b;->c:I

    .line 159
    iget-object v1, v0, Lu3/b;->b:Lu3/b$b;

    iget v2, v1, Lu3/b$b;->c:I

    const v3, 0x6c726468

    if-ne v2, v3, :cond_2a

    .line 160
    iget v1, v1, Lu3/b$b;->b:I

    iput v1, v0, Lu3/b;->j:I

    .line 161
    iput v9, v0, Lu3/b;->c:I

    goto :goto_11

    :cond_2a
    const-string v1, "hdrl expected, found: "

    .line 162
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-object v2, v0, Lu3/b;->b:Lu3/b$b;

    iget v2, v2, Lu3/b$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v2, 0x0

    const-string v3, "LIST expected, found: "

    .line 164
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    iget v1, v1, Lu3/b$b;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 166
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lu3/b;->j(Ls3/i;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 167
    invoke-interface {v1, v11}, Ls3/i;->k(I)V

    .line 168
    iput v3, v0, Lu3/b;->c:I

    :goto_11
    return v6

    :cond_2c
    const-string v1, "AVI Header List not found"

    .line 169
    invoke-static {v1, v10}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ls3/j;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lu3/b;->c:I

    .line 2
    iput-object p1, p0, Lu3/b;->d:Ls3/j;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lu3/b;->h:J

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/b;->a:Lm5/w;

    .line 2
    iget-object v0, v0, Lm5/w;->a:[B

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2, v1}, Ls3/i;->s([BII)V

    .line 4
    iget-object p1, p0, Lu3/b;->a:Lm5/w;

    invoke-virtual {p1, v2}, Lm5/w;->D(I)V

    .line 5
    iget-object p1, p0, Lu3/b;->a:Lm5/w;

    invoke-virtual {p1}, Lm5/w;->g()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object p1, p0, Lu3/b;->a:Lm5/w;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lm5/w;->E(I)V

    .line 7
    iget-object p1, p0, Lu3/b;->a:Lm5/w;

    invoke-virtual {p1}, Lm5/w;->g()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
