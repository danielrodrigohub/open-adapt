.class public Lde/g;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lde/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lde/g$a;

.field public static final l:Lde/g;


# instance fields
.field public final h:[B

.field public transient i:I

.field public transient j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde/g$a;

    invoke-direct {v0}, Lde/g$a;-><init>()V

    sput-object v0, Lde/g;->k:Lde/g$a;

    new-instance v0, Lde/g;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lde/g;-><init>([B)V

    sput-object v0, Lde/g;->l:Lde/g;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/g;->h:[B

    return-void
.end method

.method public static m(Lde/g;Lde/g;IILjava/lang/Object;)I
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "other"

    .line 2
    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lde/g;->h:[B

    .line 4
    invoke-virtual {p0, p1, p2}, Lde/g;->l([BI)I

    move-result p0

    return p0
.end method

.method public static q(Lde/g;Lde/g;IILjava/lang/Object;)I
    .locals 0

    const p2, -0x499602d2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "other"

    .line 2
    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lde/g;->h:[B

    .line 4
    invoke-virtual {p0, p1, p2}, Lde/g;->p([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic y(Lde/g;IIILjava/lang/Object;)Lde/g;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, -0x499602d2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lde/g;->x(II)Lde/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lde/g;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lde/g;->n()[B

    move-result-object v0

    const-string v1, "<this>"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    iput-object v1, p0, Lde/g;->j:Ljava/lang/String;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public B(Lde/c;I)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2}, Lde/c;->x0([BII)Lde/c;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    sget-object v1, Lde/m0;->a:[B

    .line 3
    sget-object v1, Lde/m0;->a:[B

    const-string v2, "<this>"

    .line 4
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 6
    new-array v2, v2, [B

    .line 7
    array-length v4, v0

    array-length v5, v0

    rem-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 8
    aget-byte v5, v0, v5

    add-int/lit8 v8, v7, 0x1

    .line 9
    aget-byte v7, v0, v7

    add-int/lit8 v9, v8, 0x1

    .line 10
    aget-byte v8, v0, v8

    add-int/lit8 v10, v6, 0x1

    and-int/lit16 v11, v5, 0xff

    shr-int/2addr v11, v3

    .line 11
    aget-byte v11, v1, v11

    aput-byte v11, v2, v6

    add-int/lit8 v6, v10, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v11, v7, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v5, v11

    .line 12
    aget-byte v5, v1, v5

    aput-byte v5, v2, v10

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v3

    and-int/lit16 v10, v8, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v7, v10

    .line 13
    aget-byte v7, v1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 14
    aget-byte v7, v1, v7

    aput-byte v7, v2, v5

    move v5, v9

    goto :goto_0

    .line 15
    :cond_0
    array-length v7, v0

    sub-int/2addr v7, v4

    const/16 v4, 0x3d

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    if-eq v7, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 16
    aget-byte v5, v0, v5

    .line 17
    aget-byte v0, v0, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v8, v5, 0xff

    shr-int/2addr v8, v3

    .line 18
    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v8, v0, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    .line 19
    aget-byte v5, v1, v5

    aput-byte v5, v2, v7

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v3

    .line 20
    aget-byte v0, v1, v0

    aput-byte v0, v2, v6

    int-to-byte v0, v4

    .line 21
    aput-byte v0, v2, v5

    goto :goto_1

    .line 22
    :cond_2
    aget-byte v0, v0, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit16 v7, v0, 0xff

    shr-int/lit8 v3, v7, 0x2

    .line 23
    aget-byte v3, v1, v3

    aput-byte v3, v2, v6

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    .line 24
    aget-byte v0, v1, v0

    aput-byte v0, v2, v5

    add-int/lit8 v0, v3, 0x1

    int-to-byte v1, v4

    .line 25
    aput-byte v1, v2, v3

    .line 26
    aput-byte v1, v2, v0

    .line 27
    :goto_1
    new-instance v0, Ljava/lang/String;

    .line 28
    sget-object v1, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lde/g;

    invoke-virtual {p0, p1}, Lde/g;->g(Lde/g;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v2, p1, Lde/g;

    if-eqz v2, :cond_1

    check-cast p1, Lde/g;

    .line 2
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v2

    .line 3
    iget-object v3, p0, Lde/g;->h:[B

    .line 4
    array-length v4, v3

    if-ne v2, v4, :cond_1

    array-length v2, v3

    invoke-virtual {p1, v1, v3, v1, v2}, Lde/g;->t(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final g(Lde/g;)I
    .locals 9

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lde/g;->j()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    .line 4
    invoke-virtual {p0, v4}, Lde/g;->o(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 5
    invoke-virtual {p1, v4}, Lde/g;->o(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    return v3
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lde/g;->i:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lde/g;->h:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 4
    iput v0, p0, Lde/g;->i:I

    :goto_0
    return v0
.end method

.method public i(Ljava/lang/String;)Lde/g;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/g;->h:[B

    .line 3
    invoke-virtual {p0}, Lde/g;->j()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 5
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 6
    new-instance v0, Lde/g;

    const-string v1, "digestBytes"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lde/g;-><init>([B)V

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    array-length v0, v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 4
    sget-object v7, Landroidx/emoji2/text/b;->h:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 5
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public l([BI)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p2, v0, :cond_1

    .line 4
    :goto_0
    iget-object v2, p0, Lde/g;->h:[B

    .line 5
    array-length v3, p1

    invoke-static {v2, p2, p1, v1, v3}, Lde/n0;->a([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p2, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method public n()[B
    .locals 1

    iget-object v0, p0, Lde/g;->h:[B

    return-object v0
.end method

.method public o(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    aget-byte p1, v0, p1

    return p1
.end method

.method public p([BI)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p2}, Lde/n0;->k(Lde/g;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lde/g;->h:[B

    .line 3
    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p2, :cond_1

    .line 5
    iget-object v0, p0, Lde/g;->h:[B

    const/4 v1, 0x0

    .line 6
    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lde/n0;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_1
    return p2
.end method

.method public s(ILde/g;I)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v1, v0, p1, p3}, Lde/g;->t(I[BII)Z

    move-result p1

    return p1
.end method

.method public t(I[BII)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lde/g;->h:[B

    .line 2
    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 4
    invoke-static {v0, p1, p2, p3, p4}, Lde/n0;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lde/g;->h:[B

    .line 2
    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "[size=0]"

    goto/16 :goto_29

    .line 3
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    const/16 v6, 0x40

    if-ge v3, v2, :cond_47

    .line 4
    aget-byte v7, v1, v3

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/16 v10, 0x20

    const/16 v11, 0xa0

    const/16 v12, 0x7f

    const v13, 0xfffd

    const/high16 v15, 0x10000

    if-ltz v7, :cond_13

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_3

    goto/16 :goto_25

    :cond_3
    if-eq v7, v9, :cond_8

    if-eq v7, v8, :cond_8

    if-ltz v7, :cond_4

    if-ge v7, v10, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    if-gt v12, v7, :cond_5

    if-ge v7, v11, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_46

    :cond_8
    if-ne v7, v13, :cond_9

    goto/16 :goto_24

    :cond_9
    if-ge v7, v15, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x2

    :goto_6
    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_7
    move/from16 v4, v16

    if-ge v3, v2, :cond_2

    .line 5
    aget-byte v7, v1, v3

    if-ltz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 6
    aget-byte v3, v1, v3

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_b

    goto/16 :goto_25

    :cond_b
    if-eq v3, v9, :cond_10

    if-eq v3, v8, :cond_10

    if-ltz v3, :cond_c

    if-ge v3, v10, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_f

    if-gt v12, v3, :cond_d

    if-ge v3, v11, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_46

    :cond_10
    if-ne v3, v13, :cond_11

    goto/16 :goto_24

    :cond_11
    if-ge v3, v15, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    const/4 v3, 0x2

    :goto_c
    add-int/2addr v5, v3

    move v3, v7

    goto :goto_7

    :cond_13
    shr-int/lit8 v13, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v13, v15, :cond_20

    add-int/lit8 v7, v3, 0x1

    if-gt v2, v7, :cond_14

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    .line 7
    :cond_14
    aget-byte v13, v1, v3

    .line 8
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v14, :cond_15

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_16

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_16
    xor-int/lit16 v7, v7, 0xf80

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    if-ge v7, v14, :cond_17

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_17
    add-int/lit8 v13, v4, 0x1

    if-ne v4, v6, :cond_18

    goto/16 :goto_25

    :cond_18
    if-eq v7, v9, :cond_1d

    if-eq v7, v8, :cond_1d

    if-ltz v7, :cond_19

    if-ge v7, v10, :cond_19

    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    if-nez v4, :cond_1c

    if-gt v12, v7, :cond_1a

    if-ge v7, v11, :cond_1a

    const/4 v4, 0x1

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    goto :goto_11

    :cond_1c
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-nez v4, :cond_46

    :cond_1d
    const v4, 0xfffd

    if-ne v7, v4, :cond_1e

    goto/16 :goto_24

    :cond_1e
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_1f

    const/4 v14, 0x1

    goto :goto_12

    :cond_1f
    const/4 v14, 0x2

    :goto_12
    add-int/2addr v5, v14

    add-int/lit8 v3, v3, 0x2

    move v4, v13

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v10, v7, 0x4

    const v11, 0xe000

    const v12, 0xd800

    if-ne v10, v15, :cond_31

    add-int/lit8 v7, v3, 0x2

    if-gt v2, v7, :cond_21

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    .line 9
    :cond_21
    aget-byte v10, v1, v3

    add-int/lit8 v13, v3, 0x1

    .line 10
    aget-byte v13, v1, v13

    and-int/lit16 v15, v13, 0xc0

    if-ne v15, v14, :cond_22

    const/4 v15, 0x1

    goto :goto_13

    :cond_22
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_23

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    .line 11
    :cond_23
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v14, :cond_24

    const/4 v14, 0x1

    goto :goto_14

    :cond_24
    const/4 v14, 0x0

    :goto_14
    if-nez v14, :cond_25

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_25
    const v14, -0x1e080

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    const/16 v10, 0x800

    if-ge v7, v10, :cond_26

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_26
    if-gt v12, v7, :cond_27

    if-ge v7, v11, :cond_27

    const/4 v10, 0x1

    goto :goto_15

    :cond_27
    const/4 v10, 0x0

    :goto_15
    if-eqz v10, :cond_28

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_28
    add-int/lit8 v10, v4, 0x1

    if-ne v4, v6, :cond_29

    goto/16 :goto_25

    :cond_29
    if-eq v7, v9, :cond_2e

    if-eq v7, v8, :cond_2e

    if-ltz v7, :cond_2a

    const/16 v4, 0x20

    if-ge v7, v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_16

    :cond_2a
    const/4 v4, 0x0

    :goto_16
    if-nez v4, :cond_2d

    const/16 v4, 0x7f

    if-gt v4, v7, :cond_2b

    const/16 v4, 0xa0

    if-ge v7, v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_17

    :cond_2b
    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v4, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    const/4 v4, 0x1

    :goto_19
    if-nez v4, :cond_46

    :cond_2e
    const v4, 0xfffd

    if-ne v7, v4, :cond_2f

    goto/16 :goto_24

    :cond_2f
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_30

    const/4 v14, 0x1

    goto :goto_1a

    :cond_30
    const/4 v14, 0x2

    :goto_1a
    add-int/2addr v5, v14

    add-int/lit8 v3, v3, 0x3

    move v4, v10

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v7, v7, 0x3

    if-ne v7, v15, :cond_45

    add-int/lit8 v7, v3, 0x3

    if-gt v2, v7, :cond_32

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    .line 12
    :cond_32
    aget-byte v8, v1, v3

    add-int/lit8 v10, v3, 0x1

    .line 13
    aget-byte v10, v1, v10

    and-int/lit16 v13, v10, 0xc0

    if-ne v13, v14, :cond_33

    const/4 v13, 0x1

    goto :goto_1b

    :cond_33
    const/4 v13, 0x0

    :goto_1b
    if-nez v13, :cond_34

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_34
    add-int/lit8 v13, v3, 0x2

    .line 14
    aget-byte v13, v1, v13

    and-int/lit16 v15, v13, 0xc0

    if-ne v15, v14, :cond_35

    const/4 v15, 0x1

    goto :goto_1c

    :cond_35
    const/4 v15, 0x0

    :goto_1c
    if-nez v15, :cond_36

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    .line 15
    :cond_36
    aget-byte v7, v1, v7

    and-int/lit16 v15, v7, 0xc0

    if-ne v15, v14, :cond_37

    const/4 v14, 0x1

    goto :goto_1d

    :cond_37
    const/4 v14, 0x0

    :goto_1d
    if-nez v14, :cond_38

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_38
    const v14, 0x381f80

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    shl-int/lit8 v8, v8, 0x12

    xor-int/2addr v7, v8

    const v8, 0x10ffff

    if-le v7, v8, :cond_39

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_39
    if-gt v12, v7, :cond_3a

    if-ge v7, v11, :cond_3a

    const/4 v8, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v8, 0x0

    :goto_1e
    if-eqz v8, :cond_3b

    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_3b
    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_3c

    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_3c
    add-int/lit8 v8, v4, 0x1

    if-ne v4, v6, :cond_3d

    goto :goto_25

    :cond_3d
    if-eq v7, v9, :cond_42

    const/16 v4, 0xd

    if-eq v7, v4, :cond_42

    if-ltz v7, :cond_3e

    const/16 v4, 0x20

    if-ge v7, v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x0

    :goto_1f
    if-nez v4, :cond_41

    const/16 v4, 0x7f

    if-gt v4, v7, :cond_3f

    const/16 v4, 0xa0

    if-ge v7, v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_20

    :cond_3f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_40

    goto :goto_21

    :cond_40
    const/4 v4, 0x0

    goto :goto_22

    :cond_41
    :goto_21
    const/4 v4, 0x1

    :goto_22
    if-nez v4, :cond_46

    :cond_42
    const v4, 0xfffd

    if-ne v7, v4, :cond_43

    goto :goto_24

    :cond_43
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_44

    const/4 v14, 0x1

    goto :goto_23

    :cond_44
    const/4 v14, 0x2

    :goto_23
    add-int/2addr v5, v14

    add-int/lit8 v3, v3, 0x4

    move v4, v8

    goto/16 :goto_1

    :cond_45
    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_46
    :goto_24
    const/4 v5, -0x1

    :cond_47
    :goto_25
    const-string v1, "\u2026]"

    const-string v2, "[size="

    const/16 v3, 0x5d

    const/4 v4, -0x1

    if-ne v5, v4, :cond_4e

    .line 16
    iget-object v4, v0, Lde/g;->h:[B

    .line 17
    array-length v4, v4

    if-gt v4, v6, :cond_48

    const-string v1, "[hex="

    .line 18
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual/range {p0 .. p0}, Lde/g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 20
    :cond_48
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    iget-object v3, v0, Lde/g;->h:[B

    .line 22
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v0, v6}, Lde/n0;->k(Lde/g;I)I

    move-result v3

    .line 24
    iget-object v4, v0, Lde/g;->h:[B

    .line 25
    array-length v5, v4

    if-gt v3, v5, :cond_49

    const/4 v5, 0x1

    goto :goto_26

    :cond_49
    const/4 v5, 0x0

    :goto_26
    if-eqz v5, :cond_4d

    add-int/lit8 v5, v3, 0x0

    if-ltz v5, :cond_4a

    const/4 v5, 0x1

    goto :goto_27

    :cond_4a
    const/4 v5, 0x0

    :goto_27
    if-eqz v5, :cond_4c

    .line 26
    array-length v5, v4

    if-ne v3, v5, :cond_4b

    move-object v5, v0

    goto :goto_28

    .line 27
    :cond_4b
    new-instance v5, Lde/g;

    const/4 v6, 0x0

    invoke-static {v4, v6, v3}, Lgd/g;->m([BII)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lde/g;-><init>([B)V

    .line 28
    :goto_28
    invoke-virtual {v5}, Lde/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 29
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endIndex < beginIndex"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    const-string v1, "endIndex > length("

    .line 30
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    iget-object v2, v0, Lde/g;->h:[B

    .line 32
    array-length v2, v2

    const/16 v3, 0x29

    .line 33
    invoke-static {v1, v2, v3}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lde/g;->A()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 36
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\"

    const-string v9, "\\\\"

    .line 37
    invoke-static {v7, v8, v9, v6}, Lyd/o;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    .line 38
    invoke-static {v7, v8, v9, v6}, Lyd/o;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, "\\r"

    .line 39
    invoke-static {v7, v8, v9, v6}, Lyd/o;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4f

    .line 41
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lde/g;->h:[B

    .line 43
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 44
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_29
    return-object v1
.end method

.method public final u()Lde/g;
    .locals 1

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lde/g;->i(Ljava/lang/String;)Lde/g;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lde/g;)Z
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, p1, v0}, Lde/g;->s(ILde/g;I)Z

    move-result p1

    return p1
.end method

.method public x(II)Lde/g;
    .locals 4

    .line 1
    invoke-static {p0, p2}, Lde/n0;->k(Lde/g;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2
    iget-object v2, p0, Lde/g;->h:[B

    .line 3
    array-length v3, v2

    if-gt p2, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    sub-int v3, p2, p1

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 4
    array-length v0, v2

    if-ne p2, v0, :cond_3

    move-object v0, p0

    goto :goto_3

    .line 5
    :cond_3
    new-instance v0, Lde/g;

    invoke-static {v2, p1, p2}, Lgd/g;->m([BII)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lde/g;-><init>([B)V

    :goto_3
    return-object v0

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "endIndex > length("

    .line 7
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lde/g;->h:[B

    .line 9
    array-length p2, p2

    const/16 v0, 0x29

    .line 10
    invoke-static {p1, p2, v0}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()Lde/g;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lde/g;->h:[B

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 3
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v5, "copyOf(this, size)"

    invoke-static {v1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 5
    aput-byte v2, v1, v0

    .line 6
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_3

    .line 7
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 8
    aput-byte v0, v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lde/g;

    invoke-direct {v0, v1}, Lde/g;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method
