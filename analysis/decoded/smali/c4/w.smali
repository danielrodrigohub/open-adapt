.class public final Lc4/w;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/w$a;
    }
.end annotation


# instance fields
.field public final a:Lm5/d0;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc4/w$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lm5/w;

.field public final d:Lc4/v;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lc4/u;

.field public j:Ls3/j;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/l;->i:Ly0/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lm5/d0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm5/d0;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lc4/w;->a:Lm5/d0;

    .line 4
    new-instance v0, Lm5/w;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Lc4/w;->c:Lm5/w;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc4/w;->b:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lc4/v;

    invoke-direct {v0}, Lc4/v;-><init>()V

    iput-object v0, p0, Lc4/w;->d:Lc4/v;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 5

    .line 1
    iget-object p1, p0, Lc4/w;->a:Lm5/d0;

    invoke-virtual {p1}, Lm5/d0;->d()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lc4/w;->a:Lm5/d0;

    invoke-virtual {p1}, Lm5/d0;->c()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    cmp-long p1, v3, p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    move p1, p2

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lc4/w;->a:Lm5/d0;

    invoke-virtual {p1, p3, p4}, Lm5/d0;->e(J)V

    .line 4
    :cond_3
    iget-object p1, p0, Lc4/w;->i:Lc4/u;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, p3, p4}, Ls3/a;->e(J)V

    :cond_4
    move p1, v2

    .line 6
    :goto_2
    iget-object p2, p0, Lc4/w;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 7
    iget-object p2, p0, Lc4/w;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc4/w$a;

    .line 8
    iput-boolean v2, p2, Lc4/w$a;->f:Z

    .line 9
    iget-object p2, p2, Lc4/w$a;->a:Lc4/j;

    invoke-interface {p2}, Lc4/j;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lc4/w;->j:Ls3/j;

    invoke-static {v3}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v10

    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v12

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v8, 0x1ba

    if-eqz v5, :cond_c

    .line 3
    iget-object v5, v0, Lc4/w;->d:Lc4/v;

    .line 4
    iget-boolean v9, v5, Lc4/v;->c:Z

    if-nez v9, :cond_c

    .line 5
    iget-boolean v3, v5, Lc4/v;->e:Z

    const-wide/16 v9, 0x4e20

    if-nez v3, :cond_4

    .line 6
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v13

    .line 7
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v3, v9

    int-to-long v9, v3

    sub-long/2addr v13, v9

    .line 8
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-eqz v9, :cond_1

    .line 9
    iput-wide v13, v2, Ls3/t;->a:J

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-object v2, v5, Lc4/v;->b:Lm5/w;

    invoke-virtual {v2, v3}, Lm5/w;->A(I)V

    .line 11
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 12
    iget-object v2, v5, Lc4/v;->b:Lm5/w;

    .line 13
    iget-object v2, v2, Lm5/w;->a:[B

    .line 14
    invoke-interface {v1, v2, v12, v3}, Ls3/i;->s([BII)V

    .line 15
    iget-object v1, v5, Lc4/v;->b:Lm5/w;

    .line 16
    iget v2, v1, Lm5/w;->b:I

    .line 17
    iget v3, v1, Lm5/w;->c:I

    add-int/lit8 v3, v3, -0x4

    :goto_1
    if-lt v3, v2, :cond_3

    .line 18
    iget-object v9, v1, Lm5/w;->a:[B

    .line 19
    invoke-virtual {v5, v9, v3}, Lc4/v;->b([BI)I

    move-result v9

    if-ne v9, v8, :cond_2

    add-int/lit8 v9, v3, 0x4

    .line 20
    invoke-virtual {v1, v9}, Lm5/w;->D(I)V

    .line 21
    invoke-static {v1}, Lc4/v;->c(Lm5/w;)J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-eqz v11, :cond_2

    move-wide v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 22
    :cond_3
    :goto_2
    iput-wide v6, v5, Lc4/v;->g:J

    .line 23
    iput-boolean v4, v5, Lc4/v;->e:Z

    goto :goto_5

    .line 24
    :cond_4
    iget-wide v13, v5, Lc4/v;->g:J

    cmp-long v3, v13, v6

    if-nez v3, :cond_5

    .line 25
    invoke-virtual {v5, v1}, Lc4/v;->a(Ls3/i;)V

    goto/16 :goto_7

    .line 26
    :cond_5
    iget-boolean v3, v5, Lc4/v;->d:Z

    if-nez v3, :cond_9

    .line 27
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v3, v9

    .line 28
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v9

    int-to-long v13, v12

    cmp-long v9, v9, v13

    if-eqz v9, :cond_6

    .line 29
    iput-wide v13, v2, Ls3/t;->a:J

    goto :goto_6

    .line 30
    :cond_6
    iget-object v2, v5, Lc4/v;->b:Lm5/w;

    invoke-virtual {v2, v3}, Lm5/w;->A(I)V

    .line 31
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 32
    iget-object v2, v5, Lc4/v;->b:Lm5/w;

    .line 33
    iget-object v2, v2, Lm5/w;->a:[B

    .line 34
    invoke-interface {v1, v2, v12, v3}, Ls3/i;->s([BII)V

    .line 35
    iget-object v1, v5, Lc4/v;->b:Lm5/w;

    .line 36
    iget v2, v1, Lm5/w;->b:I

    .line 37
    iget v3, v1, Lm5/w;->c:I

    :goto_3
    add-int/lit8 v9, v3, -0x3

    if-ge v2, v9, :cond_8

    .line 38
    iget-object v9, v1, Lm5/w;->a:[B

    .line 39
    invoke-virtual {v5, v9, v2}, Lc4/v;->b([BI)I

    move-result v9

    if-ne v9, v8, :cond_7

    add-int/lit8 v9, v2, 0x4

    .line 40
    invoke-virtual {v1, v9}, Lm5/w;->D(I)V

    .line 41
    invoke-static {v1}, Lc4/v;->c(Lm5/w;)J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-eqz v11, :cond_7

    move-wide v6, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 42
    :cond_8
    :goto_4
    iput-wide v6, v5, Lc4/v;->f:J

    .line 43
    iput-boolean v4, v5, Lc4/v;->d:Z

    :goto_5
    move v4, v12

    :goto_6
    move v12, v4

    goto :goto_7

    .line 44
    :cond_9
    iget-wide v2, v5, Lc4/v;->f:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_a

    .line 45
    invoke-virtual {v5, v1}, Lc4/v;->a(Ls3/i;)V

    goto :goto_7

    .line 46
    :cond_a
    iget-object v4, v5, Lc4/v;->a:Lm5/d0;

    invoke-virtual {v4, v2, v3}, Lm5/d0;->b(J)J

    move-result-wide v2

    .line 47
    iget-object v4, v5, Lc4/v;->a:Lm5/d0;

    iget-wide v8, v5, Lc4/v;->g:J

    invoke-virtual {v4, v8, v9}, Lm5/d0;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 48
    iput-wide v8, v5, Lc4/v;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    const-string v2, "Invalid duration: "

    .line 49
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    iget-wide v3, v5, Lc4/v;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ". Using TIME_UNSET instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PsDurationReader"

    invoke-static {v3, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-wide v6, v5, Lc4/v;->h:J

    .line 52
    :cond_b
    invoke-virtual {v5, v1}, Lc4/v;->a(Ls3/i;)V

    :goto_7
    return v12

    .line 53
    :cond_c
    iget-boolean v5, v0, Lc4/w;->k:Z

    if-nez v5, :cond_e

    .line 54
    iput-boolean v4, v0, Lc4/w;->k:Z

    .line 55
    iget-object v4, v0, Lc4/w;->d:Lc4/v;

    .line 56
    iget-wide v8, v4, Lc4/v;->h:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_d

    .line 57
    new-instance v13, Lc4/u;

    .line 58
    iget-object v5, v4, Lc4/v;->a:Lm5/d0;

    move-object v4, v13

    move-wide v6, v8

    move-wide v8, v10

    .line 59
    invoke-direct/range {v4 .. v9}, Lc4/u;-><init>(Lm5/d0;JJ)V

    iput-object v13, v0, Lc4/w;->i:Lc4/u;

    .line 60
    iget-object v4, v0, Lc4/w;->j:Ls3/j;

    .line 61
    iget-object v5, v13, Ls3/a;->a:Ls3/a$a;

    .line 62
    invoke-interface {v4, v5}, Ls3/j;->j(Ls3/u;)V

    goto :goto_8

    .line 63
    :cond_d
    iget-object v4, v0, Lc4/w;->j:Ls3/j;

    new-instance v5, Ls3/u$b;

    invoke-direct {v5, v8, v9}, Ls3/u$b;-><init>(J)V

    invoke-interface {v4, v5}, Ls3/j;->j(Ls3/u;)V

    .line 64
    :cond_e
    :goto_8
    iget-object v4, v0, Lc4/w;->i:Lc4/u;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ls3/a;->b()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 65
    iget-object v3, v0, Lc4/w;->i:Lc4/u;

    invoke-virtual {v3, v1, v2}, Ls3/a;->a(Ls3/i;Ls3/t;)I

    move-result v1

    return v1

    .line 66
    :cond_f
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    if-eqz v3, :cond_10

    .line 67
    invoke-interface/range {p1 .. p1}, Ls3/i;->q()J

    move-result-wide v2

    sub-long/2addr v10, v2

    const-wide/16 v2, -0x1

    goto :goto_9

    :cond_10
    const-wide/16 v2, -0x1

    const-wide/16 v10, -0x1

    :goto_9
    cmp-long v2, v10, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_11

    const-wide/16 v4, 0x4

    cmp-long v2, v10, v4

    if-gez v2, :cond_11

    return v3

    .line 68
    :cond_11
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    .line 69
    iget-object v2, v2, Lm5/w;->a:[B

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 70
    invoke-interface {v1, v2, v12, v4, v5}, Ls3/i;->p([BIIZ)Z

    move-result v2

    if-nez v2, :cond_12

    return v3

    .line 71
    :cond_12
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2, v12}, Lm5/w;->D(I)V

    .line 72
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v2

    const/16 v5, 0x1b9

    if-ne v2, v5, :cond_13

    return v3

    :cond_13
    const/16 v3, 0x1ba

    if-ne v2, v3, :cond_14

    .line 73
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    .line 74
    iget-object v2, v2, Lm5/w;->a:[B

    const/16 v3, 0xa

    .line 75
    invoke-interface {v1, v2, v12, v3}, Ls3/i;->s([BII)V

    .line 76
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lm5/w;->D(I)V

    .line 77
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 78
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    return v12

    :cond_14
    const/16 v3, 0x1bb

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-ne v2, v3, :cond_15

    .line 79
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    .line 80
    iget-object v2, v2, Lm5/w;->a:[B

    .line 81
    invoke-interface {v1, v2, v12, v5}, Ls3/i;->s([BII)V

    .line 82
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2, v12}, Lm5/w;->D(I)V

    .line 83
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v2

    add-int/2addr v2, v6

    .line 84
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    return v12

    :cond_15
    and-int/lit16 v3, v2, -0x100

    const/16 v7, 0x8

    shr-int/2addr v3, v7

    const/4 v8, 0x1

    if-eq v3, v8, :cond_16

    .line 85
    invoke-interface {v1, v8}, Ls3/i;->k(I)V

    return v12

    :cond_16
    and-int/lit16 v2, v2, 0xff

    .line 86
    iget-object v3, v0, Lc4/w;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/w$a;

    .line 87
    iget-boolean v8, v0, Lc4/w;->e:Z

    if-nez v8, :cond_1c

    if-nez v3, :cond_1a

    const/16 v8, 0xbd

    const/4 v9, 0x0

    if-ne v2, v8, :cond_17

    .line 88
    new-instance v8, Lc4/b;

    .line 89
    invoke-direct {v8, v9}, Lc4/b;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 90
    iput-boolean v9, v0, Lc4/w;->f:Z

    .line 91
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v9

    iput-wide v9, v0, Lc4/w;->h:J

    move-object v9, v8

    goto :goto_b

    :cond_17
    const/4 v8, 0x1

    and-int/lit16 v10, v2, 0xe0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_18

    .line 92
    new-instance v10, Lc4/q;

    .line 93
    invoke-direct {v10, v9}, Lc4/q;-><init>(Ljava/lang/String;)V

    .line 94
    iput-boolean v8, v0, Lc4/w;->f:Z

    .line 95
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v8

    iput-wide v8, v0, Lc4/w;->h:J

    :goto_a
    move-object v9, v10

    goto :goto_b

    :cond_18
    and-int/lit16 v10, v2, 0xf0

    const/16 v11, 0xe0

    if-ne v10, v11, :cond_19

    .line 96
    new-instance v10, Lc4/k;

    .line 97
    invoke-direct {v10, v9}, Lc4/k;-><init>(Lc4/e0;)V

    .line 98
    iput-boolean v8, v0, Lc4/w;->g:Z

    .line 99
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v8

    iput-wide v8, v0, Lc4/w;->h:J

    goto :goto_a

    :cond_19
    :goto_b
    if-eqz v9, :cond_1a

    .line 100
    new-instance v3, Lc4/d0$d;

    const/16 v8, 0x100

    invoke-direct {v3, v2, v8}, Lc4/d0$d;-><init>(II)V

    .line 101
    iget-object v8, v0, Lc4/w;->j:Ls3/j;

    invoke-interface {v9, v8, v3}, Lc4/j;->f(Ls3/j;Lc4/d0$d;)V

    .line 102
    new-instance v3, Lc4/w$a;

    iget-object v8, v0, Lc4/w;->a:Lm5/d0;

    invoke-direct {v3, v9, v8}, Lc4/w$a;-><init>(Lc4/j;Lm5/d0;)V

    .line 103
    iget-object v8, v0, Lc4/w;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    :cond_1a
    iget-boolean v2, v0, Lc4/w;->f:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lc4/w;->g:Z

    if-eqz v2, :cond_1b

    .line 105
    iget-wide v8, v0, Lc4/w;->h:J

    const-wide/16 v10, 0x2000

    add-long/2addr v8, v10

    goto :goto_c

    :cond_1b
    const-wide/32 v8, 0x100000

    .line 106
    :goto_c
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    .line 107
    iput-boolean v2, v0, Lc4/w;->e:Z

    .line 108
    iget-object v2, v0, Lc4/w;->j:Ls3/j;

    invoke-interface {v2}, Ls3/j;->b()V

    .line 109
    :cond_1c
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    .line 110
    iget-object v2, v2, Lm5/w;->a:[B

    .line 111
    invoke-interface {v1, v2, v12, v5}, Ls3/i;->s([BII)V

    .line 112
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2, v12}, Lm5/w;->D(I)V

    .line 113
    iget-object v2, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v2

    add-int/2addr v2, v6

    if-nez v3, :cond_1d

    .line 114
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    goto/16 :goto_d

    .line 115
    :cond_1d
    iget-object v5, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v5, v2}, Lm5/w;->A(I)V

    .line 116
    iget-object v5, v0, Lc4/w;->c:Lm5/w;

    .line 117
    iget-object v5, v5, Lm5/w;->a:[B

    .line 118
    invoke-interface {v1, v5, v12, v2}, Ls3/i;->readFully([BII)V

    .line 119
    iget-object v1, v0, Lc4/w;->c:Lm5/w;

    invoke-virtual {v1, v6}, Lm5/w;->D(I)V

    .line 120
    iget-object v1, v0, Lc4/w;->c:Lm5/w;

    .line 121
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    iget-object v2, v2, Lm5/v;->a:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v12, v5}, Lm5/w;->d([BII)V

    .line 122
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v12}, Lm5/v;->k(I)V

    .line 123
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v7}, Lm5/v;->m(I)V

    .line 124
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v2

    iput-boolean v2, v3, Lc4/w$a;->d:Z

    .line 125
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v2

    iput-boolean v2, v3, Lc4/w$a;->e:Z

    .line 126
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 127
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v7}, Lm5/v;->g(I)I

    move-result v2

    .line 128
    iget-object v6, v3, Lc4/w$a;->c:Lm5/v;

    iget-object v6, v6, Lm5/v;->a:[B

    invoke-virtual {v1, v6, v12, v2}, Lm5/w;->d([BII)V

    .line 129
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v12}, Lm5/v;->k(I)V

    const-wide/16 v6, 0x0

    .line 130
    iput-wide v6, v3, Lc4/w$a;->g:J

    .line 131
    iget-boolean v2, v3, Lc4/w$a;->d:Z

    if-eqz v2, :cond_1f

    .line 132
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v4}, Lm5/v;->m(I)V

    .line 133
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v5}, Lm5/v;->g(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    .line 134
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lm5/v;->m(I)V

    .line 135
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Lm5/v;->g(I)I

    move-result v8

    shl-int/2addr v8, v10

    int-to-long v13, v8

    or-long/2addr v6, v13

    .line 136
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v8, v9}, Lm5/v;->m(I)V

    .line 137
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v8, v10}, Lm5/v;->g(I)I

    move-result v8

    int-to-long v13, v8

    or-long/2addr v6, v13

    .line 138
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v8, v9}, Lm5/v;->m(I)V

    .line 139
    iget-boolean v8, v3, Lc4/w$a;->f:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v3, Lc4/w$a;->e:Z

    if-eqz v8, :cond_1e

    .line 140
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v8, v4}, Lm5/v;->m(I)V

    .line 141
    iget-object v8, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v8, v5}, Lm5/v;->g(I)I

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v2

    .line 142
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lm5/v;->m(I)V

    .line 143
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v10}, Lm5/v;->g(I)I

    move-result v2

    shl-int/2addr v2, v10

    int-to-long v13, v2

    or-long/2addr v8, v13

    .line 144
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v5}, Lm5/v;->m(I)V

    .line 145
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v10}, Lm5/v;->g(I)I

    move-result v2

    int-to-long v10, v2

    or-long/2addr v8, v10

    .line 146
    iget-object v2, v3, Lc4/w$a;->c:Lm5/v;

    invoke-virtual {v2, v5}, Lm5/v;->m(I)V

    .line 147
    iget-object v2, v3, Lc4/w$a;->b:Lm5/d0;

    invoke-virtual {v2, v8, v9}, Lm5/d0;->b(J)J

    .line 148
    iput-boolean v5, v3, Lc4/w$a;->f:Z

    .line 149
    :cond_1e
    iget-object v2, v3, Lc4/w$a;->b:Lm5/d0;

    invoke-virtual {v2, v6, v7}, Lm5/d0;->b(J)J

    move-result-wide v5

    iput-wide v5, v3, Lc4/w$a;->g:J

    .line 150
    :cond_1f
    iget-object v2, v3, Lc4/w$a;->a:Lc4/j;

    iget-wide v5, v3, Lc4/w$a;->g:J

    invoke-interface {v2, v5, v6, v4}, Lc4/j;->e(JI)V

    .line 151
    iget-object v2, v3, Lc4/w$a;->a:Lc4/j;

    invoke-interface {v2, v1}, Lc4/j;->c(Lm5/w;)V

    .line 152
    iget-object v1, v3, Lc4/w$a;->a:Lc4/j;

    invoke-interface {v1}, Lc4/j;->d()V

    .line 153
    iget-object v1, v0, Lc4/w;->c:Lm5/w;

    .line 154
    iget-object v2, v1, Lm5/w;->a:[B

    array-length v2, v2

    .line 155
    invoke-virtual {v1, v2}, Lm5/w;->C(I)V

    :goto_d
    return v12
.end method

.method public final g(Ls3/j;)V
    .locals 0

    iput-object p1, p0, Lc4/w;->j:Ls3/j;

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 1
    check-cast p1, Ls3/e;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0, v2}, Ls3/e;->p([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 3
    invoke-virtual {p1, v0, v2}, Ls3/e;->n(IZ)Z

    .line 4
    invoke-virtual {p1, v1, v2, v5, v2}, Ls3/e;->p([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method
