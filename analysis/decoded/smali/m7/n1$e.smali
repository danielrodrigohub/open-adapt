.class public final Lm7/n1$e;
.super Lm7/n1$b;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/n1$b;-><init>()V

    return-void
.end method

.method public static d([BJI)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    add-int/lit8 v1, v0, 0x8

    if-gt v1, p3, :cond_2

    .line 1
    sget-wide v2, Lm7/m1;->f:J

    add-long/2addr v2, p1

    invoke-static {p0, v2, v3}, Lm7/m1;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x8

    add-long/2addr p1, v2

    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v0, p3, :cond_4

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    .line 2
    invoke-static {p0, p1, p2}, Lm7/m1;->j([BJ)B

    move-result p1

    if-gez p1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v1

    goto :goto_1

    :cond_4
    return p3
.end method

.method public static e([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1
    invoke-static {p0, p2, p3}, Lm7/m1;->j([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lm7/m1;->j([BJ)B

    move-result p0

    .line 2
    invoke-static {p1, p4, p0}, Lm7/n1;->b(III)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    invoke-static {p0, p2, p3}, Lm7/m1;->j([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lm7/n1;->a(II)I

    move-result p0

    return p0

    .line 5
    :cond_2
    sget-object p0, Lm7/n1;->a:Lm7/n1$b;

    const/16 p0, -0xc

    if-le p1, p0, :cond_3

    const/4 p1, -0x1

    :cond_3
    return p1
.end method


# virtual methods
.method public final a([BII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_11

    int-to-long v3, p2

    .line 2
    invoke-static {p1, v3, v4, p3}, Lm7/n1$e;->d([BJI)I

    move-result v0

    add-int/2addr v0, p2

    add-int v3, p2, p3

    :goto_0
    if-ge v0, v3, :cond_1

    int-to-long v4, v0

    .line 3
    invoke-static {p1, v4, v5}, Lm7/m1;->j([BJ)B

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v0, v3, :cond_2

    .line 4
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lm7/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 5
    :cond_2
    new-array p3, p3, [C

    move v4, v1

    :goto_2
    if-ge p2, v0, :cond_3

    int-to-long v5, p2

    .line 6
    invoke-static {p1, v5, v6}, Lm7/m1;->j([BJ)B

    move-result v5

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 7
    aput-char v5, p3, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v6

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_3
    if-ge v0, v3, :cond_10

    add-int/lit8 p2, v0, 0x1

    int-to-long v4, v0

    .line 8
    invoke-static {p1, v4, v5}, Lm7/m1;->j([BJ)B

    move-result v4

    if-ltz v4, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    add-int/lit8 v0, v9, 0x1

    int-to-char v4, v4

    .line 9
    aput-char v4, p3, v9

    :goto_5
    if-ge p2, v3, :cond_7

    int-to-long v4, p2

    .line 10
    invoke-static {p1, v4, v5}, Lm7/m1;->j([BJ)B

    move-result v4

    if-ltz v4, :cond_5

    move v5, v2

    goto :goto_6

    :cond_5
    move v5, v1

    :goto_6
    if-nez v5, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v0, 0x1

    int-to-char v4, v4

    .line 11
    aput-char v4, p3, v0

    move v0, v5

    goto :goto_5

    :cond_7
    :goto_7
    move v9, v0

    move v0, p2

    goto :goto_3

    :cond_8
    const/16 v0, -0x20

    if-ge v4, v0, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    if-eqz v0, :cond_b

    if-ge p2, v3, :cond_a

    add-int/lit8 v0, p2, 0x1

    int-to-long v5, p2

    .line 12
    invoke-static {p1, v5, v6}, Lm7/m1;->j([BJ)B

    move-result p2

    add-int/lit8 v5, v9, 0x1

    .line 13
    invoke-static {v4, p2, p3, v9}, Lm7/n1$a;->b(BB[CI)V

    move v9, v5

    goto :goto_3

    .line 14
    :cond_a
    invoke-static {}, Lm7/z;->b()Lm7/z;

    move-result-object p1

    throw p1

    :cond_b
    const/16 v0, -0x10

    if-ge v4, v0, :cond_c

    move v0, v2

    goto :goto_9

    :cond_c
    move v0, v1

    :goto_9
    if-eqz v0, :cond_e

    add-int/lit8 v0, v3, -0x1

    if-ge p2, v0, :cond_d

    add-int/lit8 v0, p2, 0x1

    int-to-long v5, p2

    .line 15
    invoke-static {p1, v5, v6}, Lm7/m1;->j([BJ)B

    move-result p2

    add-int/lit8 v5, v0, 0x1

    int-to-long v6, v0

    .line 16
    invoke-static {p1, v6, v7}, Lm7/m1;->j([BJ)B

    move-result v0

    add-int/lit8 v6, v9, 0x1

    .line 17
    invoke-static {v4, p2, v0, p3, v9}, Lm7/n1$a;->c(BBB[CI)V

    move v0, v5

    move v9, v6

    goto :goto_3

    .line 18
    :cond_d
    invoke-static {}, Lm7/z;->b()Lm7/z;

    move-result-object p1

    throw p1

    :cond_e
    add-int/lit8 v0, v3, -0x2

    if-ge p2, v0, :cond_f

    add-int/lit8 v0, p2, 0x1

    int-to-long v5, p2

    .line 19
    invoke-static {p1, v5, v6}, Lm7/m1;->j([BJ)B

    move-result v5

    add-int/lit8 p2, v0, 0x1

    int-to-long v6, v0

    .line 20
    invoke-static {p1, v6, v7}, Lm7/m1;->j([BJ)B

    move-result v6

    add-int/lit8 v0, p2, 0x1

    int-to-long v7, p2

    .line 21
    invoke-static {p1, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v7

    add-int/lit8 p2, v9, 0x1

    move-object v8, p3

    .line 22
    invoke-static/range {v4 .. v9}, Lm7/n1$a;->a(BBBB[CI)V

    add-int/2addr p2, v2

    move v9, p2

    goto/16 :goto_3

    .line 23
    :cond_f
    invoke-static {}, Lm7/z;->b()Lm7/z;

    move-result-object p1

    throw p1

    .line 24
    :cond_10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v9}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 25
    :cond_11
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/CharSequence;[BII)I
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 2
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 4
    invoke-static {v1, v4, v5, v3}, Lm7/m1;->r([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 5
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 6
    invoke-static {v1, v4, v5, v13}, Lm7/m1;->r([BJB)V

    move-wide v4, v14

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x800

    if-ge v13, v3, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v3, v4, v14

    if-gtz v3, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 7
    invoke-static {v1, v4, v5, v3}, Lm7/m1;->r([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 8
    invoke-static {v1, v14, v15, v5}, Lm7/m1;->r([BJB)V

    :goto_2
    const/16 v5, 0x80

    move-wide/from16 v17, v3

    move v3, v5

    move-wide/from16 v4, v17

    goto/16 :goto_3

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v15, v4, v15

    if-gtz v15, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 9
    invoke-static {v1, v4, v5, v3}, Lm7/m1;->r([BJB)V

    add-long/2addr v11, v14

    ushr-int/lit8 v3, v13, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 10
    invoke-static {v1, v14, v15, v3}, Lm7/m1;->r([BJB)V

    const-wide/16 v3, 0x1

    add-long/2addr v3, v11

    and-int/lit8 v5, v13, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 11
    invoke-static {v1, v11, v12, v5}, Lm7/m1;->r([BJB)V

    const-wide/16 v11, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    .line 12
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 13
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 14
    invoke-static {v1, v4, v5, v15}, Lm7/m1;->r([BJB)V

    add-long/2addr v11, v13

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    const/16 v5, 0x80

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 15
    invoke-static {v1, v13, v14, v4}, Lm7/m1;->r([BJB)V

    const-wide/16 v13, 0x1

    add-long/2addr v13, v11

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 16
    invoke-static {v1, v11, v12, v4}, Lm7/m1;->r([BJB)V

    const-wide/16 v11, 0x1

    add-long v15, v13, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    .line 17
    invoke-static {v1, v13, v14, v2}, Lm7/m1;->r([BJB)V

    move v2, v3

    move v3, v5

    move-wide v4, v15

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 18
    :cond_7
    new-instance v0, Lm7/n1$d;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lm7/n1$d;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    :cond_9
    new-instance v0, Lm7/n1$d;

    invoke-direct {v0, v2, v8}, Lm7/n1$d;-><init>(II)V

    throw v0

    .line 21
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 22
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 23
    invoke-static {v10}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    .line 24
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c([BII)I
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    or-int v3, v1, v2

    .line 1
    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v6, 0x2

    if-ltz v3, :cond_d

    int-to-long v7, v1

    int-to-long v1, v2

    const/16 v3, -0x13

    const/16 v9, -0x3e

    const/16 v10, -0x10

    const/16 v11, -0x60

    const/16 v12, -0x20

    const/16 v13, -0x41

    const-wide/16 v14, 0x1

    sub-long/2addr v1, v7

    long-to-int v1, v1

    .line 2
    invoke-static {v0, v7, v8, v1}, Lm7/n1$e;->d([BJI)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v4, v2

    add-long/2addr v7, v4

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-lez v1, :cond_2

    add-long v4, v7, v14

    .line 3
    invoke-static {v0, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move-wide v7, v4

    goto :goto_1

    :cond_1
    move-wide v7, v4

    :cond_2
    if-nez v1, :cond_3

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-ge v2, v12, :cond_5

    if-nez v1, :cond_4

    move v5, v2

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-lt v2, v9, :cond_c

    add-long v4, v7, v14

    .line 4
    invoke-static {v0, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v2

    if-le v2, v13, :cond_b

    goto :goto_2

    :cond_5
    if-ge v2, v10, :cond_9

    if-ge v1, v6, :cond_6

    .line 5
    invoke-static {v0, v2, v7, v8, v1}, Lm7/n1$e;->e([BIJI)I

    move-result v5

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, -0x2

    add-long v4, v7, v14

    .line 6
    invoke-static {v0, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v7

    if-gt v7, v13, :cond_c

    if-ne v2, v12, :cond_7

    if-lt v7, v11, :cond_c

    :cond_7
    if-ne v2, v3, :cond_8

    if-ge v7, v11, :cond_c

    :cond_8
    add-long v7, v14, v4

    .line 7
    invoke-static {v0, v4, v5}, Lm7/m1;->j([BJ)B

    move-result v2

    if-le v2, v13, :cond_0

    goto :goto_2

    :cond_9
    const/4 v4, 0x3

    if-ge v1, v4, :cond_a

    .line 8
    invoke-static {v0, v2, v7, v8, v1}, Lm7/n1$e;->e([BIJI)I

    move-result v5

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, -0x3

    add-long v4, v7, v14

    .line 9
    invoke-static {v0, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v7

    if-gt v7, v13, :cond_c

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v7, v7, 0x70

    add-int/2addr v7, v2

    shr-int/lit8 v2, v7, 0x1e

    if-nez v2, :cond_c

    add-long v7, v4, v14

    .line 10
    invoke-static {v0, v4, v5}, Lm7/m1;->j([BJ)B

    move-result v2

    if-gt v2, v13, :cond_c

    add-long v4, v7, v14

    .line 11
    invoke-static {v0, v7, v8}, Lm7/m1;->j([BJ)B

    move-result v2

    if-le v2, v13, :cond_b

    goto :goto_2

    :cond_b
    move-wide v7, v4

    goto :goto_0

    :cond_c
    :goto_2
    const/4 v5, -0x1

    :goto_3
    return v5

    .line 12
    :cond_d
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    array-length v0, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
