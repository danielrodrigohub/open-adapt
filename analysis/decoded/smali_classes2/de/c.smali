.class public final Lde/c;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lde/f;
.implements Lde/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/c$a;
    }
.end annotation


# instance fields
.field public h:Lde/e0;

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A(I)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->y0(I)Lde/c;

    return-object p0
.end method

.method public final A0(J)Lde/c;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lde/c;->y0(I)Lde/c;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 2
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 3
    invoke-virtual {p0, v1}, Lde/c;->t0(I)Lde/e0;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lde/e0;->a:[B

    .line 5
    iget v5, v2, Lde/e0;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 6
    sget-object v0, Lee/h;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    .line 7
    aget-byte v0, v0, v7

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v2, Lde/e0;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lde/e0;->c:I

    .line 9
    iget-wide p1, p0, Lde/c;->i:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    .line 10
    iput-wide p1, p0, Lde/c;->i:J

    :goto_1
    return-object p0
.end method

.method public final B(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    long-to-int p1, p1

    .line 2
    new-array p1, p1, [B

    .line 3
    invoke-virtual {p0, p1}, Lde/c;->readFully([B)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "byteCount: "

    .line 5
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final B0(I)Lde/c;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lde/c;->t0(I)Lde/e0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lde/e0;->a:[B

    .line 3
    iget v2, v0, Lde/e0;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lde/e0;->c:I

    .line 9
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lde/c;->i:J

    return-object p0
.end method

.method public final C0(J)Lde/c;
    .locals 9

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lde/c;->t0(I)Lde/e0;

    move-result-object v1

    .line 2
    iget-object v2, v1, Lde/e0;->a:[B

    .line 3
    iget v3, v1, Lde/e0;->c:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 6
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 8
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 9
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 10
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v2, v4

    .line 12
    iput v0, v1, Lde/e0;->c:I

    .line 13
    iget-wide p1, p0, Lde/c;->i:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 14
    iput-wide p1, p0, Lde/c;->i:J

    return-object p0
.end method

.method public final bridge synthetic D([B)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->w0([B)Lde/c;

    return-object p0
.end method

.method public final D0(I)Lde/c;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lde/c;->t0(I)Lde/e0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lde/e0;->a:[B

    .line 3
    iget v2, v0, Lde/e0;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lde/e0;->c:I

    .line 7
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lde/c;->i:J

    return-object p0
.end method

.method public final E(Lde/h0;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    check-cast p1, Lde/c;

    invoke-virtual {p1, p0, v0, v1}, Lde/c;->write(Lde/c;J)V

    :cond_0
    return-wide v0
.end method

.method public final E0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lde/c;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lde/c;->G0(Ljava/lang/String;II)Lde/c;

    return-object p0

    .line 3
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lde/c;->x0([BII)Lde/c;

    return-object p0

    :cond_4
    const-string p2, "endIndex > string.length: "

    const-string p4, " > "

    .line 5
    invoke-static {p2, p3, p4}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p1, "endIndex < beginIndex: "

    const-string p4, " < "

    .line 7
    invoke-static {p1, p3, p4, p2}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p1, "beginIndex < 0: "

    .line 9
    invoke-static {p1, p2}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final F()Lde/e;
    .locals 0

    return-object p0
.end method

.method public final F0(Ljava/lang/String;)Lde/c;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lde/c;->G0(Ljava/lang/String;II)Lde/c;

    return-object p0
.end method

.method public final G()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const-wide/16 v0, -0x7

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 2
    :cond_0
    iget-object v7, p0, Lde/c;->h:Lde/e0;

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v8, v7, Lde/e0;->a:[B

    .line 4
    iget v9, v7, Lde/e0;->b:I

    .line 5
    iget v10, v7, Lde/e0;->c:I

    :goto_0
    if-ge v9, v10, :cond_6

    .line 6
    aget-byte v11, v8, v9

    const/16 v12, 0x30

    int-to-byte v12, v12

    if-lt v11, v12, :cond_4

    const/16 v13, 0x39

    int-to-byte v13, v13

    if-gt v11, v13, :cond_4

    sub-int/2addr v12, v11

    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v2, v13

    if-ltz v13, :cond_2

    if-nez v13, :cond_1

    int-to-long v13, v12

    cmp-long v13, v13, v0

    if-gez v13, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0xa

    mul-long/2addr v2, v13

    int-to-long v11, v12

    add-long/2addr v2, v11

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    invoke-virtual {v0, v2, v3}, Lde/c;->z0(J)Lde/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lde/c;->y0(I)Lde/c;

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v0}, Lde/c;->readByte()B

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number too large: "

    .line 10
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lde/c;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v12, 0x2d

    int-to-byte v12, v12

    if-ne v11, v12, :cond_5

    if-nez v4, :cond_5

    const-wide/16 v11, 0x1

    sub-long/2addr v0, v11

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    :cond_6
    if-ne v9, v10, :cond_7

    .line 12
    invoke-virtual {v7}, Lde/e0;->a()Lde/e0;

    move-result-object v8

    iput-object v8, p0, Lde/c;->h:Lde/e0;

    .line 13
    invoke-static {v7}, Lde/f0;->b(Lde/e0;)V

    goto :goto_3

    .line 14
    :cond_7
    iput v9, v7, Lde/e0;->b:I

    :goto_3
    if-nez v6, :cond_8

    .line 15
    iget-object v7, p0, Lde/c;->h:Lde/e0;

    if-nez v7, :cond_0

    .line 16
    :cond_8
    iget-wide v0, p0, Lde/c;->i:J

    int-to-long v6, v4

    sub-long/2addr v0, v6

    .line 17
    iput-wide v0, p0, Lde/c;->i:J

    if-eqz v5, :cond_9

    const/4 v6, 0x2

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    :goto_4
    if-ge v4, v6, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    if-eqz v5, :cond_a

    const-string v0, "Expected a digit"

    goto :goto_5

    :cond_a
    const-string v0, "Expected a digit or \'-\'"

    .line 18
    :goto_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, " but was 0x"

    .line 19
    invoke-static {v0, v2}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 20
    invoke-virtual {p0, v2, v3}, Lde/c;->h0(J)B

    move-result v2

    invoke-static {v2}, Lde/n0;->n(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    neg-long v2, v2

    :goto_6
    return-wide v2

    .line 22
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final G0(Ljava/lang/String;II)Lde/c;
    .locals 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p3, p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Lde/c;->t0(I)Lde/e0;

    move-result-object v4

    .line 4
    iget-object v5, v4, Lde/e0;->a:[B

    .line 5
    iget v6, v4, Lde/e0;->c:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 6
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 7
    aput-byte v2, v5, p2

    :goto_4
    move p2, v8

    if-ge p2, v7, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v3, :cond_3

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 9
    aput-byte v2, v5, p2

    goto :goto_4

    :cond_3
    add-int/2addr v6, p2

    .line 10
    iget v2, v4, Lde/e0;->c:I

    sub-int/2addr v6, v2

    add-int/2addr v2, v6

    .line 11
    iput v2, v4, Lde/e0;->c:I

    .line 12
    iget-wide v2, p0, Lde/c;->i:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    .line 13
    iput-wide v2, p0, Lde/c;->i:J

    goto :goto_3

    :cond_4
    const/16 v4, 0x800

    if-ge v2, v4, :cond_5

    const/4 v4, 0x2

    .line 14
    invoke-virtual {p0, v4}, Lde/c;->t0(I)Lde/e0;

    move-result-object v5

    .line 15
    iget-object v6, v5, Lde/e0;->a:[B

    iget v7, v5, Lde/e0;->c:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 16
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 17
    iput v7, v5, Lde/e0;->c:I

    .line 18
    iget-wide v2, p0, Lde/c;->i:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 19
    iput-wide v2, p0, Lde/c;->i:J

    goto/16 :goto_9

    :cond_5
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_7

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v0

    :goto_5
    const v7, 0xdbff

    if-gt v2, v7, :cond_a

    const v7, 0xdc00

    if-gt v7, v6, :cond_8

    const v7, 0xe000

    if-ge v6, v7, :cond_8

    move v7, v1

    goto :goto_6

    :cond_8
    move v7, v0

    :goto_6
    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v6, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 21
    invoke-virtual {p0, v4}, Lde/c;->t0(I)Lde/e0;

    move-result-object v6

    .line 22
    iget-object v7, v6, Lde/e0;->a:[B

    iget v8, v6, Lde/e0;->c:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 23
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 24
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 25
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 26
    iput v8, v6, Lde/e0;->c:I

    .line 27
    iget-wide v2, p0, Lde/c;->i:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 28
    iput-wide v2, p0, Lde/c;->i:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 29
    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lde/c;->y0(I)Lde/c;

    move p2, v4

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    .line 30
    invoke-virtual {p0, v4}, Lde/c;->t0(I)Lde/e0;

    move-result-object v6

    .line 31
    iget-object v7, v6, Lde/e0;->a:[B

    iget v8, v6, Lde/e0;->c:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 32
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 33
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 34
    iput v8, v6, Lde/e0;->c:I

    .line 35
    iget-wide v2, p0, Lde/c;->i:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    .line 36
    iput-wide v2, p0, Lde/c;->i:J

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    return-object p0

    :cond_d
    const-string p2, "endIndex > string.length: "

    const-string v0, " > "

    .line 37
    invoke-static {p2, p3, v0}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    const-string p1, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 39
    invoke-static {p1, p3, v0, p2}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    const-string p1, "beginIndex < 0: "

    .line 41
    invoke-static {p1, p2}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final H0(I)Lde/c;
    .locals 11

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lde/c;->y0(I)Lde/c;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/4 v2, 0x2

    const/16 v3, 0x3f

    if-ge p1, v1, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lde/c;->t0(I)Lde/e0;

    move-result-object v1

    .line 3
    iget-object v4, v1, Lde/e0;->a:[B

    iget v5, v1, Lde/e0;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v2

    .line 5
    iput v5, v1, Lde/e0;->c:I

    .line 6
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lde/c;->i:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xd800

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v1, p1, :cond_2

    const v1, 0xe000

    if-ge p1, v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Lde/c;->y0(I)Lde/c;

    goto :goto_1

    :cond_3
    const/high16 v1, 0x10000

    const/4 v6, 0x3

    if-ge p1, v1, :cond_4

    .line 9
    invoke-virtual {p0, v6}, Lde/c;->t0(I)Lde/e0;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lde/e0;->a:[B

    iget v4, v1, Lde/e0;->c:I

    shr-int/lit8 v5, p1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v2, v5

    add-int/lit8 v5, v4, 0x2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 12
    aput-byte p1, v2, v5

    add-int/2addr v4, v6

    .line 13
    iput v4, v1, Lde/e0;->c:I

    .line 14
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lde/c;->i:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    const/4 v7, 0x4

    if-gt p1, v1, :cond_5

    .line 16
    invoke-virtual {p0, v7}, Lde/c;->t0(I)Lde/e0;

    move-result-object v1

    .line 17
    iget-object v2, v1, Lde/e0;->a:[B

    iget v4, v1, Lde/e0;->c:I

    shr-int/lit8 v5, p1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, p1, 0xc

    and-int/2addr v6, v3

    or-int/2addr v6, v0

    int-to-byte v6, v6

    .line 18
    aput-byte v6, v2, v5

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, p1, 0x6

    and-int/2addr v6, v3

    or-int/2addr v6, v0

    int-to-byte v6, v6

    .line 19
    aput-byte v6, v2, v5

    add-int/lit8 v5, v4, 0x3

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 20
    aput-byte p1, v2, v5

    add-int/2addr v4, v7

    .line 21
    iput v4, v1, Lde/e0;->c:I

    .line 22
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lde/c;->i:J

    :goto_1
    return-object p0

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected code point: 0x"

    .line 25
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_9

    const/16 v3, 0x8

    new-array v8, v3, [C

    .line 26
    sget-object v9, Landroidx/emoji2/text/b;->h:[C

    shr-int/lit8 v10, p1, 0x1c

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    aput-char v10, v8, v4

    shr-int/lit8 v10, p1, 0x18

    and-int/lit8 v10, v10, 0xf

    .line 27
    aget-char v10, v9, v10

    aput-char v10, v8, v5

    shr-int/lit8 v5, p1, 0x14

    and-int/lit8 v5, v5, 0xf

    .line 28
    aget-char v5, v9, v5

    aput-char v5, v8, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0xf

    .line 29
    aget-char v2, v9, v2

    aput-char v2, v8, v6

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 30
    aget-char v2, v9, v2

    aput-char v2, v8, v7

    const/4 v2, 0x5

    shr-int/lit8 v5, p1, 0x8

    and-int/lit8 v5, v5, 0xf

    .line 31
    aget-char v5, v9, v5

    aput-char v5, v8, v2

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 32
    aget-char v2, v9, v2

    const/4 v5, 0x6

    aput-char v2, v8, v5

    const/4 v2, 0x7

    and-int/lit8 p1, p1, 0xf

    .line 33
    aget-char p1, v9, p1

    aput-char p1, v8, v2

    :goto_2
    if-ge v4, v3, :cond_6

    .line 34
    aget-char p1, v8, v4

    const/16 v2, 0x30

    if-ne p1, v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string p1, "startIndex: "

    if-ltz v4, :cond_8

    if-gt v4, v3, :cond_7

    .line 35
    new-instance p1, Ljava/lang/String;

    rsub-int/lit8 v2, v4, 0x8

    .line 36
    invoke-direct {p1, v8, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 37
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " > endIndex: "

    .line 38
    invoke-static {p1, v4, v1, v3}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, ", endIndex: "

    const-string v2, ", size: "

    .line 41
    invoke-static {p1, v4, v1, v3, v2}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "0"

    .line 43
    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->readLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v0

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x28

    ushr-long/2addr v5, v7

    or-long/2addr v2, v5

    const-wide v5, 0xff0000000000L

    and-long/2addr v5, v0

    const/16 v8, 0x18

    ushr-long/2addr v5, v8

    or-long/2addr v2, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v5, v0

    const/16 v9, 0x8

    ushr-long/2addr v5, v9

    or-long/2addr v2, v5

    const-wide v5, 0xff000000L

    and-long/2addr v5, v0

    shl-long/2addr v5, v9

    or-long/2addr v2, v5

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, v0

    shl-long/2addr v5, v8

    or-long/2addr v2, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v5, v0

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    const-wide/16 v5, 0xff

    and-long/2addr v0, v5

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final J(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, p1, v3

    :goto_1
    const/16 v2, 0xa

    int-to-byte v2, v2

    const-wide/16 v7, 0x0

    move-object v5, p0

    move v6, v2

    move-wide v9, v0

    .line 1
    invoke-virtual/range {v5 .. v10}, Lde/c;->i0(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 2
    invoke-static {p0, v5, v6}, Lee/h;->b(Lde/c;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    iget-wide v5, p0, Lde/c;->i:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    sub-long v3, v0, v3

    .line 4
    invoke-virtual {p0, v3, v4}, Lde/c;->h0(J)B

    move-result v3

    const/16 v4, 0xd

    int-to-byte v4, v4

    if-ne v3, v4, :cond_3

    .line 5
    invoke-virtual {p0, v0, v1}, Lde/c;->h0(J)B

    move-result v3

    if-ne v3, v2, :cond_3

    .line 6
    invoke-static {p0, v0, v1}, Lee/h;->b(Lde/c;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 7
    :cond_3
    new-instance v6, Lde/c;

    invoke-direct {v6}, Lde/c;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    iget-wide v4, p0, Lde/c;->i:J

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Lde/c;->g0(Lde/c;JJ)Lde/c;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    .line 12
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget-wide v2, p0, Lde/c;->i:J

    .line 14
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v6}, Lde/c;->i()Lde/g;

    move-result-object p1

    invoke-virtual {p1}, Lde/g;->k()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 19
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic N(Lde/g;)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->u0(Lde/g;)Lde/c;

    return-object p0
.end method

.method public final Q()Lde/f;
    .locals 1

    new-instance v0, Lde/b0;

    invoke-direct {v0, p0}, Lde/b0;-><init>(Lde/f;)V

    invoke-static {v0}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v0

    return-object v0
.end method

.method public final S(Lde/g;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lde/c;->k0(Lde/g;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final T(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lde/c;->i:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic U(Ljava/lang/String;)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->F0(Ljava/lang/String;)Lde/c;

    return-object p0
.end method

.method public final V(Lde/y;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lee/h;->c(Lde/c;Lde/y;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lde/y;->h:[Lde/g;

    .line 3
    aget-object p1, p1, v0

    .line 4
    invoke-virtual {p1}, Lde/g;->j()I

    move-result p1

    int-to-long v1, p1

    .line 5
    invoke-virtual {p0, v1, v2}, Lde/c;->a(J)V

    :goto_0
    return v0
.end method

.method public final bridge synthetic W(J)Lde/e;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/c;->z0(J)Lde/c;

    move-result-object p1

    return-object p1
.end method

.method public final Y()Lde/c;
    .locals 6

    .line 1
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    .line 2
    iget-wide v1, p0, Lde/c;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lde/c;->h:Lde/e0;

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lde/e0;->c()Lde/e0;

    move-result-object v2

    .line 5
    iput-object v2, v0, Lde/c;->h:Lde/e0;

    .line 6
    iput-object v2, v2, Lde/e0;->g:Lde/e0;

    .line 7
    iput-object v2, v2, Lde/e0;->f:Lde/e0;

    .line 8
    iget-object v3, v1, Lde/e0;->f:Lde/e0;

    :goto_0
    if-eq v3, v1, :cond_1

    .line 9
    iget-object v4, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lde/e0;->c()Lde/e0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/e0;->b(Lde/e0;)Lde/e0;

    .line 10
    iget-object v3, v3, Lde/e0;->f:Lde/e0;

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v1, p0, Lde/c;->i:J

    .line 12
    iput-wide v1, v0, Lde/c;->i:J

    :goto_1
    return-object v0
.end method

.method public final a(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lde/e0;->c:I

    iget v2, v0, Lde/e0;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 4
    iget-wide v2, p0, Lde/c;->i:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 5
    iput-wide v2, p0, Lde/c;->i:J

    sub-long/2addr p1, v4

    .line 6
    iget v2, v0, Lde/e0;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lde/e0;->b:I

    .line 7
    iget v1, v0, Lde/e0;->c:I

    if-ne v2, v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object v1

    iput-object v1, p0, Lde/c;->h:Lde/e0;

    .line 9
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final a0(JLde/g;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lde/g;->j()I

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    .line 2
    iget-wide v3, p0, Lde/c;->i:J

    sub-long/2addr v3, p1

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 3
    invoke-virtual {p3}, Lde/g;->j()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    int-to-long v3, v1

    add-long/2addr v3, p1

    .line 4
    invoke-virtual {p0, v3, v4}, Lde/c;->h0(J)B

    move-result v3

    add-int v4, v2, v1

    .line 5
    invoke-virtual {p3, v4}, Lde/g;->o(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method

.method public final b()Lde/c;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic c([BII)Lde/e;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lde/c;->x0([BII)Lde/c;

    return-object p0
.end method

.method public final c0()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 2
    :cond_0
    iget-object v6, p0, Lde/c;->h:Lde/e0;

    invoke-static {v6}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v7, v6, Lde/e0;->a:[B

    .line 4
    iget v8, v6, Lde/e0;->b:I

    .line 5
    iget v9, v6, Lde/e0;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Lde/c;->A0(J)Lde/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lde/c;->y0(I)Lde/c;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number too large: "

    .line 9
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Lde/c;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 12
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {v10}, Lde/n0;->n(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 15
    invoke-virtual {v6}, Lde/e0;->a()Lde/e0;

    move-result-object v7

    iput-object v7, p0, Lde/c;->h:Lde/e0;

    .line 16
    invoke-static {v6}, Lde/f0;->b(Lde/e0;)V

    goto :goto_4

    .line 17
    :cond_7
    iput v8, v6, Lde/e0;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 18
    iget-object v6, p0, Lde/c;->h:Lde/e0;

    if-nez v6, :cond_0

    .line 19
    :cond_8
    iget-wide v1, p0, Lde/c;->i:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    .line 20
    iput-wide v1, p0, Lde/c;->i:J

    return-wide v4

    .line 21
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lde/c;->Y()Lde/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lde/c;->i:J

    invoke-virtual {p0, v0, v1, p1}, Lde/c;->o0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e0()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lde/c$b;

    invoke-direct {v0, p0}, Lde/c$b;-><init>(Lde/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    move v2, v3

    goto/16 :goto_3

    .line 1
    :cond_1
    instance-of v4, v1, Lde/c;

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 2
    :cond_2
    iget-wide v4, v0, Lde/c;->i:J

    .line 3
    check-cast v1, Lde/c;

    .line 4
    iget-wide v6, v1, Lde/c;->i:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    iget-object v4, v0, Lde/c;->h:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 6
    iget-object v1, v1, Lde/c;->h:Lde/e0;

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 7
    iget v5, v4, Lde/e0;->b:I

    .line 8
    iget v8, v1, Lde/e0;->b:I

    move-wide v9, v6

    .line 9
    :goto_1
    iget-wide v11, v0, Lde/c;->i:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    .line 10
    iget v11, v4, Lde/e0;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lde/e0;->c:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v6

    :goto_2
    cmp-long v15, v13, v11

    if-gez v15, :cond_6

    .line 11
    iget-object v15, v4, Lde/e0;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lde/e0;->a:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v8, v15, v8

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 v18, 0x1

    add-long v13, v13, v18

    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_2

    .line 12
    :cond_6
    iget v13, v4, Lde/e0;->c:I

    if-ne v5, v13, :cond_7

    .line 13
    iget-object v4, v4, Lde/e0;->f:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 14
    iget v5, v4, Lde/e0;->b:I

    .line 15
    :cond_7
    iget v13, v1, Lde/e0;->c:I

    if-ne v8, v13, :cond_8

    .line 16
    iget-object v1, v1, Lde/e0;->f:Lde/e0;

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 17
    iget v8, v1, Lde/e0;->b:I

    :cond_8
    add-long/2addr v9, v11

    goto :goto_1

    :goto_3
    return v2
.end method

.method public final f(Lde/c;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lde/c;->write(Lde/c;J)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lde/c;->write(Lde/c;J)V

    .line 4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final f0()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lde/c;->h:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v2, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v3, v2, Lde/e0;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lde/e0;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lde/e0;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic g(J)Lde/e;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/c;->A0(J)Lde/c;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Lde/c;JJ)Lde/c;
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p0, Lde/c;->i:J

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-static/range {v1 .. v6}, Lde/n0;->e(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-wide v2, p1, Lde/c;->i:J

    add-long/2addr v2, p4

    .line 4
    iput-wide v2, p1, Lde/c;->i:J

    .line 5
    iget-object v2, p0, Lde/c;->h:Lde/e0;

    .line 6
    :goto_0
    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v3, v2, Lde/e0;->c:I

    iget v4, v2, Lde/e0;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 7
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 8
    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lde/e0;->c()Lde/e0;

    move-result-object v3

    .line 9
    iget v4, v3, Lde/e0;->b:I

    long-to-int p2, p2

    add-int/2addr v4, p2

    iput v4, v3, Lde/e0;->b:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    .line 10
    iget p2, v3, Lde/e0;->c:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lde/e0;->c:I

    .line 11
    iget-object p2, p1, Lde/c;->h:Lde/e0;

    if-nez p2, :cond_2

    .line 12
    iput-object v3, v3, Lde/e0;->g:Lde/e0;

    .line 13
    iput-object v3, v3, Lde/e0;->f:Lde/e0;

    .line 14
    iput-object v3, p1, Lde/c;->h:Lde/e0;

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {p2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object p2, p2, Lde/e0;->g:Lde/e0;

    invoke-static {p2}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lde/e0;->b(Lde/e0;)Lde/e0;

    .line 16
    :goto_2
    iget p2, v3, Lde/e0;->c:I

    iget p3, v3, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 17
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0
.end method

.method public final h()Lde/c;
    .locals 0

    return-object p0
.end method

.method public final h0(J)B
    .locals 7

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lde/n0;->e(JJJ)V

    .line 3
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    if-eqz v0, :cond_3

    .line 4
    iget-wide v1, p0, Lde/c;->i:J

    sub-long v3, v1, p1

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 5
    iget-object v0, v0, Lde/e0;->g:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 6
    iget v3, v0, Lde/e0;->c:I

    iget v4, v0, Lde/e0;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, v0, Lde/e0;->a:[B

    iget v0, v0, Lde/e0;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    .line 8
    :goto_1
    iget v3, v0, Lde/e0;->c:I

    iget v4, v0, Lde/e0;->b:I

    sub-int/2addr v3, v4

    int-to-long v5, v3

    add-long/2addr v5, v1

    cmp-long v3, v5, p1

    if-gtz v3, :cond_2

    .line 9
    iget-object v0, v0, Lde/e0;->f:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v1, v5

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, v0, Lde/e0;->a:[B

    int-to-long v3, v4

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p1, v0, p1

    :goto_2
    return p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 2
    :cond_1
    iget v2, v0, Lde/e0;->b:I

    .line 3
    iget v3, v0, Lde/e0;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lde/e0;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lde/e0;->f:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lde/c;->h:Lde/e0;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public final i()Lde/g;
    .locals 2

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lde/c;->j(J)Lde/g;

    move-result-object v0

    return-object v0
.end method

.method public final i0(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    cmp-long v2, p2, p4

    if-gtz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_c

    .line 1
    iget-wide v2, p0, Lde/c;->i:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_1

    move-wide p4, v2

    :cond_1
    cmp-long v4, p2, p4

    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 2
    :cond_2
    iget-object v4, p0, Lde/c;->h:Lde/e0;

    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    sub-long v5, v2, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_7

    :goto_0
    cmp-long v0, v2, p2

    if-lez v0, :cond_4

    .line 3
    iget-object v4, v4, Lde/e0;->g:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 4
    iget v0, v4, Lde/e0;->c:I

    iget v1, v4, Lde/e0;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_4
    :goto_1
    cmp-long v0, v2, p4

    if-gez v0, :cond_b

    .line 5
    iget-object v0, v4, Lde/e0;->a:[B

    .line 6
    iget v1, v4, Lde/e0;->c:I

    int-to-long v5, v1

    iget v1, v4, Lde/e0;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    .line 7
    iget v5, v4, Lde/e0;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    :goto_2
    if-ge p2, v1, :cond_6

    .line 8
    aget-byte p3, v0, p2

    if-ne p3, p1, :cond_5

    .line 9
    iget p1, v4, Lde/e0;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v2

    goto :goto_7

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 10
    :cond_6
    iget p2, v4, Lde/e0;->c:I

    iget p3, v4, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    .line 11
    iget-object v4, v4, Lde/e0;->f:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v2

    goto :goto_1

    .line 12
    :cond_7
    :goto_3
    iget v2, v4, Lde/e0;->c:I

    iget v3, v4, Lde/e0;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gtz v5, :cond_8

    .line 13
    iget-object v4, v4, Lde/e0;->f:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_3

    :cond_8
    :goto_4
    cmp-long v2, v0, p4

    if-gez v2, :cond_b

    .line 14
    iget-object v2, v4, Lde/e0;->a:[B

    .line 15
    iget v3, v4, Lde/e0;->c:I

    int-to-long v5, v3

    iget v3, v4, Lde/e0;->b:I

    int-to-long v7, v3

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 16
    iget v5, v4, Lde/e0;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v0

    long-to-int p2, v5

    :goto_5
    if-ge p2, v3, :cond_a

    .line 17
    aget-byte p3, v2, p2

    if-ne p3, p1, :cond_9

    .line 18
    iget p1, v4, Lde/e0;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    goto :goto_7

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 19
    :cond_a
    iget p2, v4, Lde/e0;->c:I

    iget p3, v4, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 20
    iget-object v4, v4, Lde/e0;->f:Lde/e0;

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_4

    :cond_b
    :goto_6
    const-wide/16 p1, -0x1

    :goto_7
    return-wide p1

    :cond_c
    const-string p1, "size="

    .line 21
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget-wide v0, p0, Lde/c;->i:J

    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(J)Lde/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lde/c;->s0(I)Lde/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lde/c;->a(J)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lde/g;

    invoke-virtual {p0, p1, p2}, Lde/c;->B(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lde/g;-><init>([B)V

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    const-string v0, "byteCount: "

    .line 5
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j0(Lde/g;J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-string v3, "bytes"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lde/g;->j()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-eqz v3, :cond_c

    const-wide/16 v7, 0x0

    cmp-long v3, v1, v7

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_b

    .line 2
    iget-object v3, v0, Lde/c;->h:Lde/e0;

    if-nez v3, :cond_2

    goto/16 :goto_8

    .line 3
    :cond_2
    iget-wide v9, v0, Lde/c;->i:J

    sub-long v11, v9, v1

    cmp-long v5, v11, v1

    const-wide/16 v11, 0x1

    if-gez v5, :cond_6

    :goto_2
    cmp-long v5, v9, v1

    if-lez v5, :cond_3

    .line 4
    iget-object v3, v3, Lde/e0;->g:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 5
    iget v5, v3, Lde/e0;->c:I

    iget v7, v3, Lde/e0;->b:I

    sub-int/2addr v5, v7

    int-to-long v7, v5

    sub-long/2addr v9, v7

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lde/g;->n()[B

    move-result-object v5

    .line 7
    aget-byte v6, v5, v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Lde/g;->j()I

    move-result v4

    .line 9
    iget-wide v7, v0, Lde/c;->i:J

    int-to-long v13, v4

    sub-long/2addr v7, v13

    add-long/2addr v7, v11

    :goto_3
    cmp-long v11, v9, v7

    if-gez v11, :cond_a

    .line 10
    iget-object v11, v3, Lde/e0;->a:[B

    .line 11
    iget v12, v3, Lde/e0;->c:I

    iget v13, v3, Lde/e0;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v7

    sub-long/2addr v13, v9

    move-wide v15, v7

    int-to-long v7, v12

    .line 12
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 13
    iget v8, v3, Lde/e0;->b:I

    int-to-long v12, v8

    add-long/2addr v12, v1

    sub-long/2addr v12, v9

    long-to-int v1, v12

    :goto_4
    if-ge v1, v7, :cond_5

    .line 14
    aget-byte v2, v11, v1

    if-ne v2, v6, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-static {v3, v2, v5, v4}, Lee/h;->a(Lde/e0;I[BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget v2, v3, Lde/e0;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v9

    goto/16 :goto_9

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16
    :cond_5
    iget v1, v3, Lde/e0;->c:I

    iget v2, v3, Lde/e0;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v9, v1

    .line 17
    iget-object v3, v3, Lde/e0;->f:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v1, v9

    move-wide v7, v15

    goto :goto_3

    .line 18
    :cond_6
    :goto_5
    iget v5, v3, Lde/e0;->c:I

    iget v9, v3, Lde/e0;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v7

    cmp-long v5, v9, v1

    if-gtz v5, :cond_7

    .line 19
    iget-object v3, v3, Lde/e0;->f:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v7, v9

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lde/g;->n()[B

    move-result-object v5

    .line 21
    aget-byte v6, v5, v6

    .line 22
    invoke-virtual/range {p1 .. p1}, Lde/g;->j()I

    move-result v4

    .line 23
    iget-wide v9, v0, Lde/c;->i:J

    int-to-long v13, v4

    sub-long/2addr v9, v13

    add-long/2addr v9, v11

    :goto_6
    cmp-long v11, v7, v9

    if-gez v11, :cond_a

    .line 24
    iget-object v11, v3, Lde/e0;->a:[B

    .line 25
    iget v12, v3, Lde/e0;->c:I

    iget v13, v3, Lde/e0;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v9

    sub-long/2addr v13, v7

    move-wide v15, v9

    int-to-long v9, v12

    .line 26
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 27
    iget v10, v3, Lde/e0;->b:I

    int-to-long v12, v10

    add-long/2addr v12, v1

    sub-long/2addr v12, v7

    long-to-int v1, v12

    :goto_7
    if-ge v1, v9, :cond_9

    .line 28
    aget-byte v2, v11, v1

    if-ne v2, v6, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-static {v3, v2, v5, v4}, Lee/h;->a(Lde/e0;I[BI)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    iget v2, v3, Lde/e0;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v7

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 30
    :cond_9
    iget v1, v3, Lde/e0;->c:I

    iget v2, v3, Lde/e0;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v7, v1

    .line 31
    iget-object v3, v3, Lde/e0;->f:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v1, v7

    move-wide v9, v15

    goto :goto_6

    :cond_a
    :goto_8
    const-wide/16 v1, -0x1

    :goto_9
    return-wide v1

    :cond_b
    const-string v3, "fromIndex < 0: "

    .line 32
    invoke-static {v3, v1, v2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes is empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k0(Lde/g;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_14

    .line 1
    iget-object v2, p0, Lde/c;->h:Lde/e0;

    const-wide/16 v5, -0x1

    if-nez v2, :cond_1

    goto/16 :goto_11

    .line 2
    :cond_1
    iget-wide v7, p0, Lde/c;->i:J

    sub-long v9, v7, p2

    cmp-long v9, v9, p2

    const/4 v10, 0x2

    if-gez v9, :cond_a

    :goto_1
    cmp-long v0, v7, p2

    if-lez v0, :cond_2

    .line 3
    iget-object v2, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 4
    iget v0, v2, Lde/e0;->c:I

    iget v1, v2, Lde/e0;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v7, v0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 6
    invoke-virtual {p1, v3}, Lde/g;->o(I)B

    move-result v0

    .line 7
    invoke-virtual {p1, v4}, Lde/g;->o(I)B

    move-result p1

    .line 8
    :goto_2
    iget-wide v3, p0, Lde/c;->i:J

    cmp-long v1, v7, v3

    if-gez v1, :cond_13

    .line 9
    iget-object v1, v2, Lde/e0;->a:[B

    .line 10
    iget v3, v2, Lde/e0;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    sub-long/2addr v3, v7

    long-to-int p2, v3

    .line 11
    iget p3, v2, Lde/e0;->c:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 12
    aget-byte v3, v1, p2

    if-eq v3, v0, :cond_4

    if-ne v3, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 13
    :cond_4
    :goto_4
    iget p1, v2, Lde/e0;->b:I

    goto :goto_8

    .line 14
    :cond_5
    iget p2, v2, Lde/e0;->c:I

    iget p3, v2, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v7, p2

    .line 15
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v7

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p1}, Lde/g;->n()[B

    move-result-object p1

    .line 17
    :goto_5
    iget-wide v0, p0, Lde/c;->i:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_13

    .line 18
    iget-object v0, v2, Lde/e0;->a:[B

    .line 19
    iget v1, v2, Lde/e0;->b:I

    int-to-long v9, v1

    add-long/2addr v9, p2

    sub-long/2addr v9, v7

    long-to-int p2, v9

    .line 20
    iget p3, v2, Lde/e0;->c:I

    :goto_6
    if-ge p2, p3, :cond_9

    .line 21
    aget-byte v1, v0, p2

    .line 22
    array-length v4, p1

    move v9, v3

    :goto_7
    if-ge v9, v4, :cond_8

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_7

    .line 23
    iget p1, v2, Lde/e0;->b:I

    :goto_8
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v5, p1, v7

    goto/16 :goto_11

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 24
    :cond_9
    iget p2, v2, Lde/e0;->c:I

    iget p3, v2, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v7, p2

    .line 25
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v7

    goto :goto_5

    .line 26
    :cond_a
    :goto_9
    iget v7, v2, Lde/e0;->c:I

    iget v8, v2, Lde/e0;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v9, v7, p2

    if-gtz v9, :cond_b

    .line 27
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v0, v7

    goto :goto_9

    .line 28
    :cond_b
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v7

    if-ne v7, v10, :cond_f

    .line 29
    invoke-virtual {p1, v3}, Lde/g;->o(I)B

    move-result v3

    .line 30
    invoke-virtual {p1, v4}, Lde/g;->o(I)B

    move-result p1

    .line 31
    :goto_a
    iget-wide v7, p0, Lde/c;->i:J

    cmp-long v4, v0, v7

    if-gez v4, :cond_13

    .line 32
    iget-object v4, v2, Lde/e0;->a:[B

    .line 33
    iget v7, v2, Lde/e0;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 34
    iget p3, v2, Lde/e0;->c:I

    :goto_b
    if-ge p2, p3, :cond_e

    .line 35
    aget-byte v7, v4, p2

    if-eq v7, v3, :cond_d

    if-ne v7, p1, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 36
    :cond_d
    :goto_c
    iget p1, v2, Lde/e0;->b:I

    goto :goto_10

    .line 37
    :cond_e
    iget p2, v2, Lde/e0;->c:I

    iget p3, v2, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 38
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    .line 39
    :cond_f
    invoke-virtual {p1}, Lde/g;->n()[B

    move-result-object p1

    .line 40
    :goto_d
    iget-wide v7, p0, Lde/c;->i:J

    cmp-long v4, v0, v7

    if-gez v4, :cond_13

    .line 41
    iget-object v4, v2, Lde/e0;->a:[B

    .line 42
    iget v7, v2, Lde/e0;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 43
    iget p3, v2, Lde/e0;->c:I

    :goto_e
    if-ge p2, p3, :cond_12

    .line 44
    aget-byte v7, v4, p2

    .line 45
    array-length v8, p1

    move v9, v3

    :goto_f
    if-ge v9, v8, :cond_11

    aget-byte v10, p1, v9

    if-ne v7, v10, :cond_10

    .line 46
    iget p1, v2, Lde/e0;->b:I

    :goto_10
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v5, p1, v0

    goto :goto_11

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 47
    :cond_12
    iget p2, v2, Lde/e0;->c:I

    iget p3, v2, Lde/e0;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 48
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_d

    :cond_13
    :goto_11
    return-wide v5

    :cond_14
    const-string p1, "fromIndex < 0: "

    .line 49
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final l0([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lde/n0;->e(JJJ)V

    .line 2
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lde/e0;->c:I

    iget v2, v0, Lde/e0;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Lde/e0;->a:[B

    .line 5
    iget v2, v0, Lde/e0;->b:I

    add-int v3, v2, p3

    .line 6
    invoke-static {v1, p1, p2, v2, v3}, Lgd/g;->j([B[BIII)[B

    .line 7
    iget p1, v0, Lde/e0;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lde/e0;->b:I

    .line 8
    iget-wide v1, p0, Lde/c;->i:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 9
    iput-wide v1, p0, Lde/c;->i:J

    .line 10
    iget p2, v0, Lde/e0;->c:I

    if-ne p1, p2, :cond_1

    .line 11
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object p1

    iput-object p1, p0, Lde/c;->h:Lde/e0;

    .line 12
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method public final m()Lde/e;
    .locals 0

    return-object p0
.end method

.method public final m0(Lde/c$a;)Lde/c$a;
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lee/h;->a:[B

    .line 2
    sget-object v0, Lde/n0;->a:Lde/c$a;

    if-ne p1, v0, :cond_0

    new-instance p1, Lde/c$a;

    invoke-direct {p1}, Lde/c$a;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p1, Lde/c$a;->h:Lde/c;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iput-object p0, p1, Lde/c$a;->h:Lde/c;

    .line 5
    iput-boolean v1, p1, Lde/c$a;->i:Z

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic n(I)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->D0(I)Lde/c;

    return-object p0
.end method

.method public final n0()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final o(J)Z
    .locals 2

    iget-wide v0, p0, Lde/c;->i:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o0(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 1
    iget-wide v1, p0, Lde/c;->i:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_4

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lde/e0;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lde/e0;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p2}, Lde/c;->B(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 5
    iget-object v3, v0, Lde/e0;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Lde/e0;->b:I

    add-int/2addr p3, v4

    iput p3, v0, Lde/e0;->b:I

    .line 7
    iget-wide v3, p0, Lde/c;->i:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lde/c;->i:J

    .line 8
    iget p1, v0, Lde/e0;->c:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object p1

    iput-object p1, p0, Lde/c;->h:Lde/e0;

    .line 10
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    :cond_3
    return-object v2

    .line 11
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_5
    const-string p3, "byteCount: "

    .line 12
    invoke-static {p3, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p0()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lde/c;->i:J

    sget-object v2, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lde/c;->o0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q0(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lde/c;->o0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r(I)Lde/e;
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->B0(I)Lde/c;

    return-object p0
.end method

.method public final r0()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0, v2, v3}, Lde/c;->h0(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const v5, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    move v7, v2

    move v6, v4

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v1, v6, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v6, 0x2

    move v7, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v1, v6, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v6, 0x3

    const/16 v7, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v1, v6, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v6, 0x4

    const/high16 v7, 0x10000

    .line 3
    :goto_0
    iget-wide v8, p0, Lde/c;->i:J

    int-to-long v10, v6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_4

    int-to-long v8, v0

    .line 4
    invoke-virtual {p0, v8, v9}, Lde/c;->h0(J)B

    move-result v12

    and-int/lit16 v13, v12, 0xc0

    if-ne v13, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v8, v12, 0x3f

    or-int/2addr v1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, v8, v9}, Lde/c;->a(J)V

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p0, v10, v11}, Lde/c;->a(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_5

    goto :goto_2

    :cond_5
    const v0, 0xd800

    if-gt v0, v1, :cond_6

    const v0, 0xe000

    if-ge v1, v0, :cond_6

    move v2, v4

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    if-ge v1, v7, :cond_8

    goto :goto_2

    :cond_8
    move v5, v1

    goto :goto_2

    .line 7
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "size < "

    const-string v3, ": "

    .line 8
    invoke-static {v2, v6, v3}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    iget-wide v3, p0, Lde/c;->i:J

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lde/n0;->n(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-wide/16 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Lde/c;->a(J)V

    :goto_2
    return v5

    .line 12
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lde/e0;->c:I

    iget v3, v0, Lde/e0;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, v0, Lde/e0;->a:[B

    iget v3, v0, Lde/e0;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    iget p1, v0, Lde/e0;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lde/e0;->b:I

    .line 14
    iget-wide v2, p0, Lde/c;->i:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lde/c;->i:J

    .line 15
    iget v2, v0, Lde/e0;->c:I

    if-ne p1, v2, :cond_1

    .line 16
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object p1

    iput-object p1, p0, Lde/c;->h:Lde/e0;

    .line 17
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    :cond_1
    return v1
.end method

.method public final read(Lde/c;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-wide v2, p0, Lde/c;->i:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lde/c;->write(Lde/c;J)V

    move-wide p1, p2

    :goto_1
    return-wide p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 3
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lde/e0;->b:I

    .line 4
    iget v2, v0, Lde/e0;->c:I

    .line 5
    iget-object v3, v0, Lde/e0;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-byte v1, v3, v1

    .line 7
    iget-wide v5, p0, Lde/c;->i:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 8
    iput-wide v5, p0, Lde/c;->i:J

    if-ne v4, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object v2

    iput-object v2, p0, Lde/c;->h:Lde/e0;

    .line 10
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    goto :goto_0

    .line 11
    :cond_0
    iput v4, v0, Lde/e0;->b:I

    :goto_0
    return v1

    .line 12
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lde/c;->l0([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lde/e0;->b:I

    .line 4
    iget v4, v0, Lde/e0;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v0, Lde/e0;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 12
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 13
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 14
    iget-wide v5, p0, Lde/c;->i:J

    sub-long/2addr v5, v2

    .line 15
    iput-wide v5, p0, Lde/c;->i:J

    if-ne v7, v4, :cond_1

    .line 16
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object v2

    iput-object v2, p0, Lde/c;->h:Lde/e0;

    .line 17
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    goto :goto_0

    .line 18
    :cond_1
    iput v7, v0, Lde/e0;->b:I

    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 19
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readLong()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lde/e0;->b:I

    .line 4
    iget v4, v0, Lde/e0;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    const/16 v6, 0x20

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p0}, Lde/c;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    .line 6
    invoke-virtual {p0}, Lde/c;->readInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1

    .line 7
    :cond_0
    iget-object v5, v0, Lde/e0;->a:[B

    add-int/lit8 v7, v1, 0x1

    .line 8
    aget-byte v1, v5, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v7, 0x1

    .line 9
    aget-byte v7, v5, v7

    int-to-long v12, v7

    and-long/2addr v12, v10

    const/16 v7, 0x30

    shl-long/2addr v12, v7

    or-long v7, v8, v12

    add-int/lit8 v9, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v7, v12

    add-int/lit8 v1, v9, 0x1

    .line 11
    aget-byte v9, v5, v9

    int-to-long v12, v9

    and-long/2addr v12, v10

    shl-long/2addr v12, v6

    or-long v6, v7, v12

    add-int/lit8 v8, v1, 0x1

    .line 12
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 13
    aget-byte v8, v5, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 14
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 15
    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    .line 16
    iget-wide v7, p0, Lde/c;->i:J

    sub-long/2addr v7, v2

    .line 17
    iput-wide v7, p0, Lde/c;->i:J

    if-ne v1, v4, :cond_1

    .line 18
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object v1

    iput-object v1, p0, Lde/c;->h:Lde/e0;

    .line 19
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    goto :goto_0

    .line 20
    :cond_1
    iput v1, v0, Lde/e0;->b:I

    :goto_0
    move-wide v0, v5

    :goto_1
    return-wide v0

    .line 21
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lde/e0;->b:I

    .line 4
    iget v4, v0, Lde/e0;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 5
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, v0, Lde/e0;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 7
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 8
    iget-wide v5, p0, Lde/c;->i:J

    sub-long/2addr v5, v2

    .line 9
    iput-wide v5, p0, Lde/c;->i:J

    if-ne v7, v4, :cond_1

    .line 10
    invoke-virtual {v0}, Lde/e0;->a()Lde/e0;

    move-result-object v2

    iput-object v2, p0, Lde/c;->h:Lde/e0;

    .line 11
    invoke-static {v0}, Lde/f0;->b(Lde/e0;)V

    goto :goto_0

    .line 12
    :cond_1
    iput v7, v0, Lde/e0;->b:I

    :goto_0
    int-to-short v0, v1

    :goto_1
    return v0

    .line 13
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final s(Lde/j0;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final s0(I)Lde/g;
    .locals 8

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lde/g;->l:Lde/g;

    goto :goto_2

    .line 2
    :cond_0
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    .line 3
    invoke-static/range {v0 .. v5}, Lde/n0;->e(JJJ)V

    .line 4
    iget-object v0, p0, Lde/c;->h:Lde/e0;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    .line 5
    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v4, v0, Lde/e0;->c:I

    iget v5, v0, Lde/e0;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 6
    iget-object v0, v0, Lde/e0;->f:Lde/e0;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 9
    new-array v2, v2, [I

    .line 10
    iget-object v4, p0, Lde/c;->h:Lde/e0;

    move-object v5, v4

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    .line 11
    invoke-static {v5}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v6, v5, Lde/e0;->a:[B

    aput-object v6, v0, v4

    .line 12
    iget v6, v5, Lde/e0;->c:I

    iget v7, v5, Lde/e0;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 13
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    .line 14
    iget v7, v5, Lde/e0;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    .line 15
    iput-boolean v6, v5, Lde/e0;->d:Z

    add-int/2addr v4, v6

    .line 16
    iget-object v5, v5, Lde/e0;->f:Lde/e0;

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Lde/g0;

    invoke-direct {p1, v0, v2}, Lde/g0;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public final t0(I)Lde/e0;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-object v1, p0, Lde/c;->h:Lde/e0;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lde/f0;->c()Lde/e0;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lde/c;->h:Lde/e0;

    .line 4
    iput-object p1, p1, Lde/e0;->g:Lde/e0;

    .line 5
    iput-object p1, p1, Lde/e0;->f:Lde/e0;

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v1, v1, Lde/e0;->g:Lde/e0;

    .line 7
    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v2, v1, Lde/e0;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Lde/e0;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lde/f0;->c()Lde/e0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lde/e0;->b(Lde/e0;)Lde/e0;

    :goto_2
    return-object p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lde/k0;
    .locals 1

    sget-object v0, Lde/k0;->NONE:Lde/k0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lde/c;->s0(I)Lde/g;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lde/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "size > Int.MAX_VALUE: "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-wide v1, p0, Lde/c;->i:J

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lde/c;->J(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0(Lde/g;)Lde/c;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v0

    .line 2
    invoke-virtual {p1, p0, v0}, Lde/g;->B(Lde/c;I)V

    return-object p0
.end method

.method public final v0(Lde/j0;J)Lde/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1
    invoke-interface {p1, p0, p2, p3}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sub-long/2addr p2, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public final w()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lde/c;->B(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final w0([B)Lde/c;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lde/c;->x0([BII)Lde/c;

    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0, v2}, Lde/c;->t0(I)Lde/e0;

    move-result-object v2

    .line 47
    iget v3, v2, Lde/e0;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 48
    iget-object v4, v2, Lde/e0;->a:[B

    iget v5, v2, Lde/e0;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 49
    iget v4, v2, Lde/e0;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lde/e0;->c:I

    goto :goto_0

    .line 50
    :cond_0
    iget-wide v1, p0, Lde/c;->i:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/c;->i:J

    return v0
.end method

.method public final write(Lde/c;J)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_f

    .line 1
    iget-wide v3, p1, Lde/c;->i:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    .line 2
    invoke-static/range {v3 .. v8}, Lde/n0;->e(JJJ)V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_e

    .line 3
    iget-object v2, p1, Lde/c;->h:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v2, v2, Lde/e0;->c:I

    iget-object v3, p1, Lde/c;->h:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v3, v3, Lde/e0;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    .line 4
    iget-object v2, p0, Lde/c;->h:Lde/e0;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v2, v2, Lde/e0;->g:Lde/e0;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 5
    iget-boolean v3, v2, Lde/e0;->e:Z

    if-eqz v3, :cond_3

    .line 6
    iget v3, v2, Lde/e0;->c:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    iget-boolean v5, v2, Lde/e0;->d:Z

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_3

    :cond_2
    iget v5, v2, Lde/e0;->b:I

    :goto_3
    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 7
    iget-object v0, p1, Lde/c;->h:Lde/e0;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v2, v1}, Lde/e0;->d(Lde/e0;I)V

    .line 8
    iget-wide v0, p1, Lde/c;->i:J

    sub-long/2addr v0, p2

    .line 9
    iput-wide v0, p1, Lde/c;->i:J

    .line 10
    iget-wide v0, p0, Lde/c;->i:J

    add-long/2addr v0, p2

    .line 11
    iput-wide v0, p0, Lde/c;->i:J

    goto/16 :goto_a

    .line 12
    :cond_3
    iget-object v2, p1, Lde/c;->h:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    long-to-int v3, p2

    if-lez v3, :cond_4

    .line 13
    iget v4, v2, Lde/e0;->c:I

    iget v5, v2, Lde/e0;->b:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-eqz v4, :cond_6

    const/16 v4, 0x400

    if-lt v3, v4, :cond_5

    .line 14
    invoke-virtual {v2}, Lde/e0;->c()Lde/e0;

    move-result-object v4

    goto :goto_5

    .line 15
    :cond_5
    invoke-static {}, Lde/f0;->c()Lde/e0;

    move-result-object v4

    .line 16
    iget-object v5, v2, Lde/e0;->a:[B

    iget-object v6, v4, Lde/e0;->a:[B

    iget v7, v2, Lde/e0;->b:I

    add-int v8, v7, v3

    .line 17
    invoke-static {v5, v6, v1, v7, v8}, Lgd/g;->j([B[BIII)[B

    .line 18
    :goto_5
    iget v5, v4, Lde/e0;->b:I

    add-int/2addr v5, v3

    iput v5, v4, Lde/e0;->c:I

    .line 19
    iget v5, v2, Lde/e0;->b:I

    add-int/2addr v5, v3

    iput v5, v2, Lde/e0;->b:I

    .line 20
    iget-object v2, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lde/e0;->b(Lde/e0;)Lde/e0;

    .line 21
    iput-object v4, p1, Lde/c;->h:Lde/e0;

    goto :goto_6

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    :goto_6
    iget-object v2, p1, Lde/c;->h:Lde/e0;

    .line 24
    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v3, v2, Lde/e0;->c:I

    iget v4, v2, Lde/e0;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 25
    invoke-virtual {v2}, Lde/e0;->a()Lde/e0;

    move-result-object v5

    iput-object v5, p1, Lde/c;->h:Lde/e0;

    .line 26
    iget-object v5, p0, Lde/c;->h:Lde/e0;

    if-nez v5, :cond_8

    .line 27
    iput-object v2, p0, Lde/c;->h:Lde/e0;

    .line 28
    iput-object v2, v2, Lde/e0;->g:Lde/e0;

    .line 29
    iput-object v2, v2, Lde/e0;->f:Lde/e0;

    goto :goto_9

    .line 30
    :cond_8
    invoke-static {v5}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v5, v5, Lde/e0;->g:Lde/e0;

    .line 31
    invoke-static {v5}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lde/e0;->b(Lde/e0;)Lde/e0;

    .line 32
    iget-object v5, v2, Lde/e0;->g:Lde/e0;

    if-eq v5, v2, :cond_9

    move v6, v0

    goto :goto_7

    :cond_9
    move v6, v1

    :goto_7
    if-eqz v6, :cond_d

    .line 33
    invoke-static {v5}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-boolean v5, v5, Lde/e0;->e:Z

    if-nez v5, :cond_a

    goto :goto_9

    .line 34
    :cond_a
    iget v5, v2, Lde/e0;->c:I

    iget v6, v2, Lde/e0;->b:I

    sub-int/2addr v5, v6

    .line 35
    iget-object v6, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v6}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v6, v6, Lde/e0;->c:I

    rsub-int v6, v6, 0x2000

    iget-object v7, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-boolean v7, v7, Lde/e0;->d:Z

    if-eqz v7, :cond_b

    move v7, v1

    goto :goto_8

    :cond_b
    iget-object v7, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v7, v7, Lde/e0;->b:I

    :goto_8
    add-int/2addr v6, v7

    if-le v5, v6, :cond_c

    goto :goto_9

    .line 36
    :cond_c
    iget-object v6, v2, Lde/e0;->g:Lde/e0;

    invoke-static {v6}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v5}, Lde/e0;->d(Lde/e0;I)V

    .line 37
    invoke-virtual {v2}, Lde/e0;->a()Lde/e0;

    .line 38
    invoke-static {v2}, Lde/f0;->b(Lde/e0;)V

    .line 39
    :goto_9
    iget-wide v5, p1, Lde/c;->i:J

    sub-long/2addr v5, v3

    .line 40
    iput-wide v5, p1, Lde/c;->i:J

    .line 41
    iget-wide v5, p0, Lde/c;->i:J

    add-long/2addr v5, v3

    .line 42
    iput-wide v5, p0, Lde/c;->i:J

    sub-long/2addr p2, v3

    goto/16 :goto_1

    .line 43
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_a
    return-void

    .line 44
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lde/c;->i:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lde/c;->a(J)V

    return-void
.end method

.method public final x0([BII)Lde/c;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lde/n0;->e(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lde/c;->t0(I)Lde/e0;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lde/e0;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lde/e0;->a:[B

    .line 5
    iget v3, v0, Lde/e0;->c:I

    add-int v4, p2, v1

    .line 6
    invoke-static {p1, v2, v3, p2, v4}, Lgd/g;->j([B[BIII)[B

    .line 7
    iget p2, v0, Lde/e0;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lde/e0;->c:I

    move p2, v4

    goto :goto_0

    .line 8
    :cond_0
    iget-wide p1, p0, Lde/c;->i:J

    add-long/2addr p1, v7

    .line 9
    iput-wide p1, p0, Lde/c;->i:J

    return-object p0
.end method

.method public final y()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->readInt()I

    move-result v0

    invoke-static {v0}, Lde/n0;->l(I)I

    move-result v0

    return v0
.end method

.method public final y0(I)Lde/c;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lde/c;->t0(I)Lde/e0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lde/e0;->a:[B

    iget v2, v0, Lde/e0;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lde/e0;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lde/c;->i:J

    return-object p0
.end method

.method public final z()Z
    .locals 4

    iget-wide v0, p0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z0(J)Lde/c;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lde/c;->y0(I)Lde/c;

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lde/c;->F0(Ljava/lang/String;)Lde/c;

    goto/16 :goto_2

    :cond_1
    move v3, v4

    :cond_2
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const/16 v5, 0xa

    if-gez v2, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v2, p1, v6

    if-gez v2, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v2, p1, v6

    if-gez v2, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v2, p1, v6

    if-gez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v6, 0x3e8

    cmp-long v2, p1, v6

    if-gez v2, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v6, 0xf4240

    cmp-long v2, p1, v6

    if-gez v2, :cond_8

    const-wide/32 v6, 0x186a0

    cmp-long v2, p1, v6

    if-gez v2, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v6, 0x989680

    cmp-long v2, p1, v6

    if-gez v2, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v6, 0xe8d4a51000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_e

    const-wide v6, 0x2540be400L

    cmp-long v2, p1, v6

    if-gez v2, :cond_c

    const-wide/32 v6, 0x3b9aca00

    cmp-long v2, p1, v6

    if-gez v2, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    move v4, v5

    goto :goto_0

    :cond_c
    const-wide v6, 0x174876e800L

    cmp-long v2, p1, v6

    if-gez v2, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v6, 0x38d7ea4c68000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_11

    const-wide v6, 0x9184e72a000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v6, 0x5af3107a4000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v6, 0x16345785d8a0000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_13

    const-wide v6, 0x2386f26fc10000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v6, 0xde0b6b3a7640000L

    cmp-long v2, p1, v6

    if-gez v2, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_15
    invoke-virtual {p0, v4}, Lde/c;->t0(I)Lde/e0;

    move-result-object v2

    .line 4
    iget-object v6, v2, Lde/e0;->a:[B

    .line 5
    iget v7, v2, Lde/e0;->c:I

    add-int/2addr v7, v4

    :goto_1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v5

    .line 6
    rem-long v10, p1, v8

    long-to-int v10, v10

    add-int/lit8 v7, v7, -0x1

    .line 7
    sget-object v11, Lee/h;->a:[B

    .line 8
    aget-byte v10, v11, v10

    aput-byte v10, v6, v7

    .line 9
    div-long/2addr p1, v8

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v6, v7

    .line 11
    :cond_17
    iget p1, v2, Lde/e0;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Lde/e0;->c:I

    .line 12
    iget-wide p1, p0, Lde/c;->i:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lde/c;->i:J

    :goto_2
    return-object p0
.end method
