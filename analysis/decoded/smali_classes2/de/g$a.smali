.class public final Lde/g$a;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d([B)Lde/g;
    .locals 9

    sget-object v0, Lde/g;->k:Lde/g$a;

    const/4 v0, 0x0

    .line 1
    array-length v1, p0

    .line 2
    array-length v2, p0

    int-to-long v3, v2

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lde/n0;->e(JJJ)V

    .line 3
    new-instance v2, Lde/g;

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Lgd/g;->m([BII)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lde/g;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lde/g;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lde/m0;->a:[B

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_1

    add-int/lit8 v6, v1, -0x1

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_0

    if-eq v7, v5, :cond_0

    if-eq v7, v4, :cond_0

    if-eq v7, v3, :cond_0

    if-eq v7, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x8

    .line 4
    div-long/2addr v6, v8

    long-to-int v6, v6

    new-array v7, v6, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v9, v1, :cond_d

    .line 5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v8, 0x41

    if-gt v8, v15, :cond_2

    const/16 v8, 0x5b

    if-ge v15, v8, :cond_2

    move v8, v14

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_3

    add-int/lit8 v15, v15, -0x41

    goto :goto_8

    :cond_3
    const/16 v8, 0x61

    if-gt v8, v15, :cond_4

    const/16 v8, 0x7b

    if-ge v15, v8, :cond_4

    move v8, v14

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_5

    add-int/lit8 v15, v15, -0x47

    goto :goto_8

    :cond_5
    const/16 v8, 0x30

    if-gt v8, v15, :cond_6

    const/16 v8, 0x3a

    if-ge v15, v8, :cond_6

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_7

    add-int/lit8 v15, v15, 0x4

    goto :goto_8

    :cond_7
    const/16 v8, 0x2b

    if-eq v15, v8, :cond_b

    const/16 v8, 0x2d

    if-ne v15, v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v8, 0x2f

    if-eq v15, v8, :cond_a

    const/16 v8, 0x5f

    if-ne v15, v8, :cond_9

    goto :goto_6

    :cond_9
    if-eq v15, v5, :cond_c

    if-eq v15, v4, :cond_c

    if-eq v15, v3, :cond_c

    if-ne v15, v2, :cond_11

    goto :goto_9

    :cond_a
    :goto_6
    const/16 v15, 0x3f

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v15, 0x3e

    :goto_8
    shl-int/lit8 v8, v11, 0x6

    or-int v11, v8, v15

    add-int/lit8 v10, v10, 0x1

    .line 6
    rem-int/lit8 v8, v10, 0x4

    if-nez v8, :cond_c

    add-int/lit8 v8, v12, 0x1

    shr-int/lit8 v13, v11, 0x10

    int-to-byte v13, v13

    .line 7
    aput-byte v13, v7, v12

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    .line 8
    aput-byte v13, v7, v8

    add-int/lit8 v8, v12, 0x1

    int-to-byte v13, v11

    .line 9
    aput-byte v13, v7, v12

    move v12, v8

    :cond_c
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 10
    :cond_d
    rem-int/lit8 v10, v10, 0x4

    if-eq v10, v14, :cond_11

    const/4 v0, 0x2

    if-eq v10, v0, :cond_f

    const/4 v0, 0x3

    if-eq v10, v0, :cond_e

    goto :goto_a

    :cond_e
    shl-int/lit8 v0, v11, 0x6

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    .line 11
    aput-byte v2, v7, v12

    add-int/lit8 v12, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 12
    aput-byte v0, v7, v1

    goto :goto_a

    :cond_f
    shl-int/lit8 v0, v11, 0xc

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 13
    aput-byte v0, v7, v12

    move v12, v1

    :goto_a
    if-ne v12, v6, :cond_10

    goto :goto_b

    .line 14
    :cond_10
    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v7, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move-object v7, v13

    :goto_b
    if-eqz v7, :cond_12

    .line 15
    new-instance v13, Lde/g;

    invoke-direct {v13, v7}, Lde/g;-><init>([B)V

    :cond_12
    return-object v13
.end method

.method public final b(Ljava/lang/String;)Lde/g;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    :goto_1
    if-ge v2, v0, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroidx/emoji2/text/b;->e(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v1

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroidx/emoji2/text/b;->e(C)I

    move-result v4

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Lde/g;

    invoke-direct {p1, v3}, Lde/g;-><init>([B)V

    return-object p1

    :cond_2
    const-string v0, "Unexpected hex string: "

    .line 7
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lde/g;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lde/g;

    .line 2
    sget-object v1, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lde/g;-><init>([B)V

    .line 4
    iput-object p1, v0, Lde/g;->j:Ljava/lang/String;

    return-object v0
.end method
