.class public final Lc4/c0;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/c0$b;,
        Lc4/c0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm5/d0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lm5/w;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Lc4/d0$c;

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc4/d0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Lc4/b0;

.field public k:Lc4/a0;

.field public l:Ls3/j;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lc4/d0;

.field public r:I

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/r0;->f:Ln3/r0;

    return-void
.end method

.method public constructor <init>(ILm5/d0;Lc4/d0$c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lc4/c0;->f:Lc4/d0$c;

    const p3, 0x1b8a0

    .line 3
    iput p3, p0, Lc4/c0;->b:I

    .line 4
    iput p1, p0, Lc4/c0;->a:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc4/c0;->c:Ljava/util/List;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc4/c0;->c:Ljava/util/List;

    .line 8
    :goto_1
    new-instance p1, Lm5/w;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lm5/w;-><init>([BI)V

    iput-object p1, p0, Lc4/c0;->d:Lm5/w;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lc4/c0;->h:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lc4/c0;->i:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lc4/c0;->g:Landroid/util/SparseArray;

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lc4/c0;->e:Landroid/util/SparseIntArray;

    .line 13
    new-instance v0, Lc4/b0;

    invoke-direct {v0}, Lc4/b0;-><init>()V

    iput-object v0, p0, Lc4/c0;->j:Lc4/b0;

    .line 14
    sget-object v0, Ls3/j;->g:Ls3/j$a;

    iput-object v0, p0, Lc4/c0;->l:Ls3/j;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lc4/c0;->s:I

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, p3

    :goto_2
    if-ge v0, p2, :cond_2

    .line 20
    iget-object v1, p0, Lc4/c0;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/d0;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_2
    iget-object p1, p0, Lc4/c0;->g:Landroid/util/SparseArray;

    new-instance p2, Lc4/y;

    new-instance v0, Lc4/c0$a;

    invoke-direct {v0, p0}, Lc4/c0$a;-><init>(Lc4/c0;)V

    invoke-direct {p2, v0}, Lc4/y;-><init>(Lc4/x;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lc4/c0;->q:Lc4/d0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 9

    .line 1
    iget p1, p0, Lc4/c0;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 2
    iget-object p1, p0, Lc4/c0;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_5

    .line 3
    iget-object v4, p0, Lc4/c0;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm5/d0;

    .line 4
    invoke-virtual {v4}, Lm5/d0;->d()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, p2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-nez v5, :cond_3

    .line 5
    invoke-virtual {v4}, Lm5/d0;->c()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_3

    :cond_2
    move v5, v0

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 6
    invoke-virtual {v4, p3, p4}, Lm5/d0;->e(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lc4/c0;->k:Lc4/a0;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1, p3, p4}, Ls3/a;->e(J)V

    .line 9
    :cond_6
    iget-object p1, p0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {p1, v0}, Lm5/w;->A(I)V

    .line 10
    iget-object p1, p0, Lc4/c0;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    .line 11
    :goto_4
    iget-object p2, p0, Lc4/c0;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 12
    iget-object p2, p0, Lc4/c0;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc4/d0;

    invoke-interface {p2}, Lc4/d0;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 13
    :cond_7
    iput v0, p0, Lc4/c0;->r:I

    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v11

    .line 2
    iget-boolean v3, v0, Lc4/c0;->n:Z

    const-wide/16 v4, -0x1

    const/16 v6, 0x47

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_17

    cmp-long v3, v11, v4

    if-eqz v3, :cond_0

    .line 3
    iget v3, v0, Lc4/c0;->a:I

    if-eq v3, v13, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v14

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_13

    .line 4
    iget-object v3, v0, Lc4/c0;->j:Lc4/b0;

    .line 5
    iget-boolean v10, v3, Lc4/b0;->d:Z

    if-nez v10, :cond_13

    .line 6
    iget v10, v0, Lc4/c0;->s:I

    if-gtz v10, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lc4/b0;->a(Ls3/i;)V

    goto/16 :goto_b

    .line 8
    :cond_1
    iget-boolean v11, v3, Lc4/b0;->f:Z

    if-nez v11, :cond_a

    .line 9
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v8

    .line 10
    iget v11, v3, Lc4/b0;->a:I

    int-to-long v11, v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-long v12, v11

    sub-long/2addr v8, v12

    .line 11
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-eqz v12, :cond_2

    .line 12
    iput-wide v8, v2, Ls3/t;->a:J

    goto/16 :goto_7

    .line 13
    :cond_2
    iget-object v2, v3, Lc4/b0;->c:Lm5/w;

    invoke-virtual {v2, v11}, Lm5/w;->A(I)V

    .line 14
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 15
    iget-object v2, v3, Lc4/b0;->c:Lm5/w;

    .line 16
    iget-object v2, v2, Lm5/w;->a:[B

    .line 17
    invoke-interface {v1, v2, v14, v11}, Ls3/i;->s([BII)V

    .line 18
    iget-object v1, v3, Lc4/b0;->c:Lm5/w;

    .line 19
    iget v2, v1, Lm5/w;->b:I

    .line 20
    iget v8, v1, Lm5/w;->c:I

    add-int/lit16 v9, v8, -0xbc

    :goto_1
    if-lt v9, v2, :cond_9

    .line 21
    iget-object v11, v1, Lm5/w;->a:[B

    const/4 v12, -0x4

    move v13, v14

    :goto_2
    const/4 v15, 0x4

    if-gt v12, v15, :cond_6

    mul-int/lit16 v15, v12, 0xbc

    add-int/2addr v15, v9

    if-lt v15, v2, :cond_4

    if-ge v15, v8, :cond_4

    .line 22
    aget-byte v15, v11, v15

    if-eq v15, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v13, v7

    const/4 v15, 0x5

    if-ne v13, v15, :cond_5

    move v11, v7

    goto :goto_4

    :cond_4
    :goto_3
    move v13, v14

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    move v11, v14

    :goto_4
    if-nez v11, :cond_7

    goto :goto_5

    .line 23
    :cond_7
    invoke-static {v1, v9, v10}, Ld3/e;->o(Lm5/w;II)J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-eqz v13, :cond_8

    move-wide v4, v11

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 24
    :cond_9
    :goto_6
    iput-wide v4, v3, Lc4/b0;->h:J

    .line 25
    iput-boolean v7, v3, Lc4/b0;->f:Z

    goto/16 :goto_b

    .line 26
    :cond_a
    iget-wide v11, v3, Lc4/b0;->h:J

    cmp-long v11, v11, v4

    if-nez v11, :cond_b

    .line 27
    invoke-virtual {v3, v1}, Lc4/b0;->a(Ls3/i;)V

    goto/16 :goto_b

    .line 28
    :cond_b
    iget-boolean v11, v3, Lc4/b0;->e:Z

    if-nez v11, :cond_10

    .line 29
    iget v8, v3, Lc4/b0;->a:I

    int-to-long v8, v8

    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 30
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v11

    int-to-long v4, v14

    cmp-long v9, v11, v4

    if-eqz v9, :cond_c

    .line 31
    iput-wide v4, v2, Ls3/t;->a:J

    :goto_7
    move v14, v7

    goto/16 :goto_b

    .line 32
    :cond_c
    iget-object v2, v3, Lc4/b0;->c:Lm5/w;

    invoke-virtual {v2, v8}, Lm5/w;->A(I)V

    .line 33
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 34
    iget-object v2, v3, Lc4/b0;->c:Lm5/w;

    .line 35
    iget-object v2, v2, Lm5/w;->a:[B

    .line 36
    invoke-interface {v1, v2, v14, v8}, Ls3/i;->s([BII)V

    .line 37
    iget-object v1, v3, Lc4/b0;->c:Lm5/w;

    .line 38
    iget v2, v1, Lm5/w;->b:I

    .line 39
    iget v4, v1, Lm5/w;->c:I

    :goto_8
    if-ge v2, v4, :cond_f

    .line 40
    iget-object v5, v1, Lm5/w;->a:[B

    .line 41
    aget-byte v5, v5, v2

    if-eq v5, v6, :cond_d

    goto :goto_9

    .line 42
    :cond_d
    invoke-static {v1, v2, v10}, Ld3/e;->o(Lm5/w;II)J

    move-result-wide v8

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v11

    if-eqz v5, :cond_e

    move-wide v4, v8

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    :goto_a
    iput-wide v4, v3, Lc4/b0;->g:J

    .line 44
    iput-boolean v7, v3, Lc4/b0;->e:Z

    goto :goto_b

    .line 45
    :cond_10
    iget-wide v4, v3, Lc4/b0;->g:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_11

    .line 46
    invoke-virtual {v3, v1}, Lc4/b0;->a(Ls3/i;)V

    goto :goto_b

    .line 47
    :cond_11
    iget-object v2, v3, Lc4/b0;->b:Lm5/d0;

    invoke-virtual {v2, v4, v5}, Lm5/d0;->b(J)J

    move-result-wide v4

    .line 48
    iget-object v2, v3, Lc4/b0;->b:Lm5/d0;

    iget-wide v6, v3, Lc4/b0;->h:J

    invoke-virtual {v2, v6, v7}, Lm5/d0;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 49
    iput-wide v6, v3, Lc4/b0;->i:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_12

    const-string v2, "Invalid duration: "

    .line 50
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    iget-wide v4, v3, Lc4/b0;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ". Using TIME_UNSET instead."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TsDurationReader"

    invoke-static {v4, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    iput-wide v4, v3, Lc4/b0;->i:J

    .line 53
    :cond_12
    invoke-virtual {v3, v1}, Lc4/b0;->a(Ls3/i;)V

    :goto_b
    return v14

    .line 54
    :cond_13
    iget-boolean v3, v0, Lc4/c0;->o:Z

    if-nez v3, :cond_15

    .line 55
    iput-boolean v7, v0, Lc4/c0;->o:Z

    .line 56
    iget-object v3, v0, Lc4/c0;->j:Lc4/b0;

    .line 57
    iget-wide v5, v3, Lc4/b0;->i:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v5, v7

    if-eqz v4, :cond_14

    .line 58
    new-instance v15, Lc4/a0;

    .line 59
    iget-object v4, v3, Lc4/b0;->b:Lm5/d0;

    .line 60
    iget v9, v0, Lc4/c0;->s:I

    iget v10, v0, Lc4/c0;->b:I

    move-object v3, v15

    move-wide v7, v11

    invoke-direct/range {v3 .. v10}, Lc4/a0;-><init>(Lm5/d0;JJII)V

    iput-object v15, v0, Lc4/c0;->k:Lc4/a0;

    .line 61
    iget-object v3, v0, Lc4/c0;->l:Ls3/j;

    .line 62
    iget-object v4, v15, Ls3/a;->a:Ls3/a$a;

    .line 63
    invoke-interface {v3, v4}, Ls3/j;->j(Ls3/u;)V

    goto :goto_c

    .line 64
    :cond_14
    iget-object v3, v0, Lc4/c0;->l:Ls3/j;

    new-instance v4, Ls3/u$b;

    invoke-direct {v4, v5, v6}, Ls3/u$b;-><init>(J)V

    invoke-interface {v3, v4}, Ls3/j;->j(Ls3/u;)V

    .line 65
    :cond_15
    :goto_c
    iget-boolean v3, v0, Lc4/c0;->p:Z

    if-eqz v3, :cond_16

    .line 66
    iput-boolean v14, v0, Lc4/c0;->p:Z

    const-wide/16 v3, 0x0

    .line 67
    invoke-virtual {v0, v3, v4, v3, v4}, Lc4/c0;->b(JJ)V

    .line 68
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_16

    .line 69
    iput-wide v3, v2, Ls3/t;->a:J

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v7, 0x1

    .line 70
    iget-object v3, v0, Lc4/c0;->k:Lc4/a0;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ls3/a;->b()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 71
    iget-object v3, v0, Lc4/c0;->k:Lc4/a0;

    invoke-virtual {v3, v1, v2}, Ls3/a;->a(Ls3/i;Ls3/t;)I

    move-result v1

    return v1

    .line 72
    :cond_17
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    .line 73
    iget-object v3, v2, Lm5/w;->a:[B

    .line 74
    iget v4, v2, Lm5/w;->b:I

    rsub-int v5, v4, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_19

    .line 75
    iget v2, v2, Lm5/w;->c:I

    sub-int/2addr v2, v4

    if-lez v2, :cond_18

    .line 76
    invoke-static {v3, v4, v3, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_18
    iget-object v4, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v4, v3, v2}, Lm5/w;->B([BI)V

    .line 78
    :cond_19
    :goto_d
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    .line 79
    iget v4, v2, Lm5/w;->c:I

    iget v2, v2, Lm5/w;->b:I

    sub-int v2, v4, v2

    const/4 v5, -0x1

    if-ge v2, v6, :cond_1b

    rsub-int v2, v4, 0x24b8

    .line 80
    invoke-interface {v1, v3, v4, v2}, Ls3/i;->b([BII)I

    move-result v2

    if-ne v2, v5, :cond_1a

    move v1, v14

    goto :goto_e

    .line 81
    :cond_1a
    iget-object v5, v0, Lc4/c0;->d:Lm5/w;

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Lm5/w;->C(I)V

    goto :goto_d

    :cond_1b
    move v1, v7

    :goto_e
    if-nez v1, :cond_1c

    return v5

    .line 82
    :cond_1c
    iget-object v1, v0, Lc4/c0;->d:Lm5/w;

    .line 83
    iget v2, v1, Lm5/w;->b:I

    .line 84
    iget v3, v1, Lm5/w;->c:I

    .line 85
    iget-object v1, v1, Lm5/w;->a:[B

    move v4, v2

    :goto_f
    if-ge v4, v3, :cond_1d

    .line 86
    aget-byte v5, v1, v4

    const/16 v6, 0x47

    if-eq v5, v6, :cond_1d

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 87
    :cond_1d
    iget-object v1, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v1, v4}, Lm5/w;->D(I)V

    add-int/lit16 v1, v4, 0xbc

    const/4 v5, 0x0

    if-le v1, v3, :cond_1f

    .line 88
    iget v3, v0, Lc4/c0;->r:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    iput v4, v0, Lc4/c0;->r:I

    .line 89
    iget v2, v0, Lc4/c0;->a:I

    if-ne v2, v13, :cond_20

    const/16 v2, 0x178

    if-gt v4, v2, :cond_1e

    goto :goto_10

    :cond_1e
    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 90
    invoke-static {v1, v5}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 91
    :cond_1f
    iput v14, v0, Lc4/c0;->r:I

    .line 92
    :cond_20
    :goto_10
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    .line 93
    iget v3, v2, Lm5/w;->c:I

    if-le v1, v3, :cond_21

    return v14

    .line 94
    :cond_21
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v2

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_22

    .line 95
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v2, v1}, Lm5/w;->D(I)V

    return v14

    :cond_22
    const/high16 v4, 0x400000

    and-int/2addr v4, v2

    if-eqz v4, :cond_23

    move v4, v7

    goto :goto_11

    :cond_23
    move v4, v14

    :goto_11
    or-int/lit8 v4, v4, 0x0

    const v6, 0x1fff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_24

    move v8, v7

    goto :goto_12

    :cond_24
    move v8, v14

    :goto_12
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_25

    move v9, v7

    goto :goto_13

    :cond_25
    move v9, v14

    :goto_13
    if-eqz v9, :cond_26

    .line 96
    iget-object v5, v0, Lc4/c0;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc4/d0;

    :cond_26
    if-nez v5, :cond_27

    .line 97
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v2, v1}, Lm5/w;->D(I)V

    return v14

    .line 98
    :cond_27
    iget v9, v0, Lc4/c0;->a:I

    if-eq v9, v13, :cond_29

    and-int/lit8 v2, v2, 0xf

    .line 99
    iget-object v9, v0, Lc4/c0;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v6, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 100
    iget-object v10, v0, Lc4/c0;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_28

    .line 101
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v2, v1}, Lm5/w;->D(I)V

    return v14

    :cond_28
    add-int/2addr v9, v7

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_29

    .line 102
    invoke-interface {v5}, Lc4/d0;->a()V

    :cond_29
    if-eqz v8, :cond_2b

    .line 103
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v2

    .line 104
    iget-object v8, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v8}, Lm5/w;->t()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2a

    move v8, v13

    goto :goto_14

    :cond_2a
    move v8, v14

    :goto_14
    or-int/2addr v4, v8

    .line 105
    iget-object v8, v0, Lc4/c0;->d:Lm5/w;

    sub-int/2addr v2, v7

    invoke-virtual {v8, v2}, Lm5/w;->E(I)V

    .line 106
    :cond_2b
    iget-boolean v2, v0, Lc4/c0;->n:Z

    .line 107
    iget v8, v0, Lc4/c0;->a:I

    if-eq v8, v13, :cond_2d

    if-nez v2, :cond_2d

    iget-object v8, v0, Lc4/c0;->i:Landroid/util/SparseBooleanArray;

    .line 108
    invoke-virtual {v8, v6, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_15

    :cond_2c
    move v6, v14

    goto :goto_16

    :cond_2d
    :goto_15
    move v6, v7

    :goto_16
    if-eqz v6, :cond_2e

    .line 109
    iget-object v6, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v6, v1}, Lm5/w;->C(I)V

    .line 110
    iget-object v6, v0, Lc4/c0;->d:Lm5/w;

    invoke-interface {v5, v6, v4}, Lc4/d0;->c(Lm5/w;I)V

    .line 111
    iget-object v4, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v4, v3}, Lm5/w;->C(I)V

    .line 112
    :cond_2e
    iget v3, v0, Lc4/c0;->a:I

    if-eq v3, v13, :cond_2f

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Lc4/c0;->n:Z

    if-eqz v2, :cond_2f

    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_2f

    .line 113
    iput-boolean v7, v0, Lc4/c0;->p:Z

    .line 114
    :cond_2f
    iget-object v2, v0, Lc4/c0;->d:Lm5/w;

    invoke-virtual {v2, v1}, Lm5/w;->D(I)V

    return v14
.end method

.method public final g(Ls3/j;)V
    .locals 0

    iput-object p1, p0, Lc4/c0;->l:Ls3/j;

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc4/c0;->d:Lm5/w;

    .line 2
    iget-object v0, v0, Lm5/w;->a:[B

    .line 3
    check-cast p1, Ls3/e;

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 4
    invoke-virtual {p1, v0, v1, v2, v1}, Ls3/e;->p([BIIZ)Z

    move v2, v1

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 5
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_2
    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Ls3/e;->k(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
