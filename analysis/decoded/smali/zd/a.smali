.class public final Lzd/a;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lzd/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lzd/a$a;

.field public static final j:J

.field public static final k:J


# instance fields
.field public final h:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzd/a$a;

    invoke-direct {v0}, Lzd/a$a;-><init>()V

    sput-object v0, Lzd/a;->i:Lzd/a$a;

    .line 1
    sget v0, Lzd/b;->a:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    invoke-static {v0, v1}, Lc3/d;->k(J)J

    move-result-wide v0

    .line 3
    sput-wide v0, Lzd/a;->j:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 4
    invoke-static {v0, v1}, Lc3/d;->k(J)J

    move-result-wide v0

    .line 5
    sput-wide v0, Lzd/a;->k:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lzd/a;->h:J

    return-void
.end method

.method public static final b(Ljava/lang/StringBuilder;IIILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8

    const/16 p1, 0x2e

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<this>"

    .line 4
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_7

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p3, p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    new-instance v3, Lvd/e;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr p3, v4

    invoke-direct {v3, v1, p3}, Lvd/e;-><init>(II)V

    invoke-virtual {v3}, Lvd/c;->n()Lgd/w;

    move-result-object p3

    :goto_0
    move-object v3, p3

    check-cast v3, Lvd/d;

    .line 9
    iget-boolean v3, v3, Lvd/d;->j:Z

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p3}, Lgd/w;->a()I

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p1, p2

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_5

    :goto_2
    add-int/lit8 v3, p2, -0x1

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    if-eqz v4, :cond_3

    move p3, p2

    goto :goto_4

    :cond_3
    if-gez v3, :cond_4

    goto :goto_4

    :cond_4
    move p2, v3

    goto :goto_2

    :cond_5
    :goto_4
    add-int/2addr p3, v1

    const/4 p2, 0x3

    if-ge p3, p2, :cond_6

    .line 16
    invoke-virtual {p0, p1, v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    add-int/lit8 p3, p3, 0x2

    .line 17
    div-int/2addr p3, p2

    mul-int/2addr p3, p2

    invoke-virtual {p0, p1, v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 18
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Desired length "

    const-string p2, " is less than zero."

    .line 19
    invoke-static {p1, p3, p2}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_8
    :goto_5
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static g(JJ)I
    .locals 4

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    long-to-int v0, v0

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/2addr v0, v3

    long-to-int p2, p2

    and-int/2addr p2, v3

    sub-int/2addr v0, p2

    invoke-static {p0, p1}, Lzd/a;->n(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    return v3
.end method

.method public static final i(J)J
    .locals 1

    sget-object v0, Lzd/c;->k:Lzd/c;

    invoke-static {p0, p1, v0}, Lzd/a;->p(JLzd/c;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final j(J)Lzd/c;
    .locals 0

    invoke-static {p0, p1}, Lzd/a;->l(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzd/c;->i:Lzd/c;

    goto :goto_0

    :cond_0
    sget-object p0, Lzd/c;->j:Lzd/c;

    :goto_0
    return-object p0
.end method

.method public static k(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final l(J)Z
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final m(J)Z
    .locals 2

    sget-wide v0, Lzd/a;->j:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lzd/a;->k:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final n(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o(JLzd/c;)D
    .locals 2

    const-string v0, "unit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lzd/a;->j:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Lzd/a;->k:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    shr-long v0, p0, v0

    long-to-double v0, v0

    .line 3
    invoke-static {p0, p1}, Lzd/a;->j(J)Lzd/c;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Ld3/e;->e(DLzd/c;Lzd/c;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final p(JLzd/c;)J
    .locals 2

    const-string v0, "unit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lzd/a;->j:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Lzd/a;->k:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    shr-long v0, p0, v0

    .line 3
    invoke-static {p0, p1}, Lzd/a;->j(J)Lzd/c;

    move-result-object p0

    const-string p1, "sourceUnit"

    .line 4
    invoke-static {p0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p2, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static q(J)Ljava/lang/String;
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "0s"

    goto/16 :goto_e

    .line 1
    :cond_0
    sget-wide v4, Lzd/a;->j:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_e

    .line 2
    :cond_1
    sget-wide v4, Lzd/a;->k:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_e

    .line 3
    :cond_2
    invoke-static/range {p0 .. p1}, Lzd/a;->n(J)Z

    move-result v4

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const/16 v6, 0x2d

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    invoke-static/range {p0 .. p1}, Lzd/a;->n(J)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    shr-long v8, v0, v7

    neg-long v8, v8

    long-to-int v0, v0

    and-int/2addr v0, v7

    shl-long/2addr v8, v7

    int-to-long v0, v0

    add-long/2addr v0, v8

    .line 7
    sget v6, Lzd/b;->a:I

    .line 8
    :cond_4
    sget-object v6, Lzd/c;->n:Lzd/c;

    invoke-static {v0, v1, v6}, Lzd/a;->p(JLzd/c;)J

    move-result-wide v8

    .line 9
    invoke-static {v0, v1}, Lzd/a;->m(J)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 10
    :cond_5
    sget-object v6, Lzd/c;->m:Lzd/c;

    invoke-static {v0, v1, v6}, Lzd/a;->p(JLzd/c;)J

    move-result-wide v11

    const/16 v6, 0x18

    int-to-long v13, v6

    .line 11
    rem-long/2addr v11, v13

    long-to-int v6, v11

    .line 12
    :goto_0
    invoke-static {v0, v1}, Lzd/a;->m(J)Z

    move-result v11

    const/16 v12, 0x3c

    if-eqz v11, :cond_6

    const/4 v10, 0x0

    goto :goto_1

    .line 13
    :cond_6
    sget-object v11, Lzd/c;->l:Lzd/c;

    invoke-static {v0, v1, v11}, Lzd/a;->p(JLzd/c;)J

    move-result-wide v13

    int-to-long v10, v12

    .line 14
    rem-long/2addr v13, v10

    long-to-int v10, v13

    .line 15
    :goto_1
    invoke-static {v0, v1}, Lzd/a;->m(J)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    invoke-static {v0, v1}, Lzd/a;->i(J)J

    move-result-wide v13

    int-to-long v11, v12

    rem-long/2addr v13, v11

    long-to-int v11, v13

    .line 16
    :goto_2
    invoke-static {v0, v1}, Lzd/a;->m(J)Z

    move-result v12

    const v13, 0xf4240

    const/16 v14, 0x3e8

    if-eqz v12, :cond_8

    move-wide v1, v2

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    long-to-int v12, v0

    and-int/2addr v12, v7

    if-ne v12, v7, :cond_9

    move v12, v7

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_a

    shr-long/2addr v0, v7

    int-to-long v2, v14

    .line 17
    rem-long/2addr v0, v2

    int-to-long v2, v13

    mul-long/2addr v0, v2

    goto :goto_4

    :cond_a
    shr-long/2addr v0, v7

    const v2, 0x3b9aca00

    int-to-long v2, v2

    .line 18
    rem-long/2addr v0, v2

    :goto_4
    long-to-int v0, v0

    const-wide/16 v1, 0x0

    :goto_5
    cmp-long v1, v8, v1

    if-eqz v1, :cond_b

    move v1, v7

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v6, :cond_c

    move v2, v7

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    if-eqz v10, :cond_d

    move v3, v7

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-nez v11, :cond_f

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    move v12, v7

    :goto_a
    if-eqz v1, :cond_10

    .line 19
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v7

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    :goto_b
    const/16 v9, 0x20

    if-nez v2, :cond_11

    if-eqz v1, :cond_13

    if-nez v3, :cond_11

    if-eqz v12, :cond_13

    :cond_11
    add-int/lit8 v15, v8, 0x1

    if-lez v8, :cond_12

    .line 20
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v15

    :cond_13
    if-nez v3, :cond_14

    if-eqz v12, :cond_16

    if-nez v2, :cond_14

    if-eqz v1, :cond_16

    :cond_14
    add-int/lit8 v6, v8, 0x1

    if-lez v8, :cond_15

    .line 22
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_15
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x6d

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v6

    :cond_16
    if-eqz v12, :cond_1c

    add-int/lit8 v6, v8, 0x1

    if-lez v8, :cond_17

    .line 24
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    if-nez v11, :cond_1b

    if-nez v1, :cond_1b

    if-nez v2, :cond_1b

    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    if-lt v0, v13, :cond_19

    .line 25
    div-int v1, v0, v13

    rem-int/2addr v0, v13

    const/4 v2, 0x6

    const-string v3, "ms"

    invoke-static {v5, v1, v0, v2, v3}, Lzd/a;->b(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    :cond_19
    if-lt v0, v14, :cond_1a

    .line 26
    div-int/lit16 v1, v0, 0x3e8

    rem-int/2addr v0, v14

    const/4 v2, 0x3

    const-string v3, "us"

    invoke-static {v5, v1, v0, v2, v3}, Lzd/a;->b(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    .line 27
    :cond_1a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    :goto_c
    const/16 v1, 0x9

    const-string v2, "s"

    .line 28
    invoke-static {v5, v11, v0, v1, v2}, Lzd/a;->b(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    :goto_d
    move v8, v6

    :cond_1c
    if-eqz v4, :cond_1d

    if-le v8, v7, :cond_1d

    const/16 v0, 0x28

    .line 29
    invoke-virtual {v5, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lzd/a;

    .line 2
    iget-wide v0, p1, Lzd/a;->h:J

    .line 3
    iget-wide v2, p0, Lzd/a;->h:J

    invoke-static {v2, v3, v0, v1}, Lzd/a;->g(JJ)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    iget-wide v0, p0, Lzd/a;->h:J

    .line 1
    instance-of v2, p1, Lzd/a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lzd/a;

    .line 2
    iget-wide v4, p1, Lzd/a;->h:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lzd/a;->h:J

    invoke-static {v0, v1}, Lzd/a;->k(J)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lzd/a;->h:J

    invoke-static {v0, v1}, Lzd/a;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
