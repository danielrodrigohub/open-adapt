.class public final Lokhttp3/internal/_HostnamesCommonKt;
.super Ljava/lang/Object;
.source "-HostnamesCommon.kt"


# static fields
.field private static final VERIFY_AS_IP_ADDRESS:Lyd/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyd/g;

    const-string v1, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v0, v1}, Lyd/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lyd/g;

    return-void
.end method

.method public static final canParseAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lyd/g;

    invoke-virtual {v0, p0}, Lyd/g;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    .line 3
    invoke-static {v3, v4}, Lp4/h;->l(II)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_2

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Lp4/h;->l(II)I

    move-result v4

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x6

    const-string v6, " #%/:?@[\\]"

    .line 4
    invoke-static {v6, v3, v1, v1, v4}, Lyd/s;->o0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    return v1
.end method

.method public static final containsInvalidLabelLengths(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    const/16 v3, 0xfe

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    move v0, v2

    :goto_1
    const/16 v3, 0x2e

    const/4 v4, 0x4

    .line 2
    invoke-static {p0, v3, v0, v2, v4}, Lyd/s;->o0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    goto :goto_2

    :cond_2
    sub-int v5, v3, v0

    :goto_2
    if-gt v1, v5, :cond_3

    const/16 v0, 0x40

    if-ge v5, v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    return v1

    :cond_4
    if-eq v3, v4, :cond_5

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq v3, v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public static final decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 7

    const-string v0, "input"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p4

    :goto_0
    const/4 v1, 0x0

    if-ge p1, p2, :cond_8

    .line 1
    array-length v2, p3

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-eq v0, p4, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    move v2, p1

    move v3, v1

    :goto_1
    if-ge v2, p2, :cond_6

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 4
    invoke-static {v4, v5}, Lp4/h;->l(II)I

    move-result v6

    if-ltz v6, :cond_6

    const/16 v6, 0x39

    invoke-static {v4, v6}, Lp4/h;->l(II)I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    if-eq p1, v2, :cond_4

    return v1

    :cond_4
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    sub-int p1, v2, p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    .line 5
    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_0

    :cond_8
    add-int/lit8 p4, p4, 0x4

    if-ne v0, p4, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public static final decodeIpv6(Ljava/lang/String;II)[B
    .locals 11

    const-string v0, "input"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_0
    const/4 v7, 0x0

    if-ge p1, p2, :cond_b

    if-ne v4, v0, :cond_0

    return-object v7

    :cond_0
    add-int/lit8 v8, p1, 0x2

    if-gt v8, p2, :cond_3

    const-string v9, "::"

    .line 1
    invoke-static {p0, v9, p1, v3}, Lyd/o;->f0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eq v5, v2, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v4, v4, 0x2

    move v5, v4

    if-ne v8, p2, :cond_2

    goto :goto_5

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_7

    const-string v8, ":"

    .line 2
    invoke-static {p0, v8, p1, v3}, Lyd/o;->f0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "."

    .line 3
    invoke-static {p0, v8, p1, v3}, Lyd/o;->f0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit8 p1, v4, -0x2

    .line 4
    invoke-static {p0, v6, p2, v1, p1}, Lokhttp3/internal/_HostnamesCommonKt;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v7

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_6
    return-object v7

    :cond_7
    :goto_1
    move v6, p1

    :goto_2
    move v8, v3

    move p1, v6

    :goto_3
    if-ge p1, p2, :cond_8

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result v9

    if-eq v9, v2, :cond_8

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v9

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    sub-int v9, p1, v6

    if-eqz v9, :cond_a

    const/4 v10, 0x4

    if-le v9, v10, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 6
    aput-byte v9, v1, v4

    add-int/lit8 v4, v7, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 7
    aput-byte v8, v1, v7

    goto :goto_0

    :cond_a
    :goto_4
    return-object v7

    :cond_b
    :goto_5
    if-eq v4, v0, :cond_d

    if-ne v5, v2, :cond_c

    return-object v7

    :cond_c
    sub-int p0, v4, v5

    rsub-int/lit8 p0, p0, 0x10

    .line 8
    invoke-static {v1, v1, p0, v5, v4}, Lgd/g;->j([B[BIII)[B

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 9
    invoke-static {v1, v5, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_d
    return-object v1
.end method

.method public static final inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8

    const-string v0, "address"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    .line 1
    :goto_0
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_0

    .line 2
    aget-byte v6, p0, v4

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_0
    sub-int v5, v4, v2

    if-le v5, v3, :cond_1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    move v1, v2

    move v3, v5

    :cond_1
    add-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 3
    :cond_2
    new-instance v2, Lde/c;

    invoke-direct {v2}, Lde/c;-><init>()V

    .line 4
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_6

    const/16 v4, 0x3a

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {v2, v4}, Lde/c;->y0(I)Lde/c;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_3

    .line 6
    invoke-virtual {v2, v4}, Lde/c;->y0(I)Lde/c;

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    .line 7
    invoke-virtual {v2, v4}, Lde/c;->y0(I)Lde/c;

    .line 8
    :cond_5
    aget-byte v4, p0, v0

    const/16 v6, 0xff

    invoke-static {v4, v6}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7, v6}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v6

    or-int/2addr v4, v6

    int-to-long v6, v4

    .line 9
    invoke-virtual {v2, v6, v7}, Lde/c;->A0(J)Lde/c;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 10
    :cond_6
    invoke-virtual {v2}, Lde/c;->p0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
