.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final binarySearch([B[[BI)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    add-int v5, v4, v2

    .line 2
    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    .line 3
    aget-byte v8, v0, v5

    int-to-byte v9, v6

    if-eq v8, v9, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_2
    add-int v10, v5, v9

    .line 4
    aget-byte v11, v0, v10

    int-to-byte v12, v6

    if-eq v11, v12, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v10, v5

    move/from16 v11, p3

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    const/16 v14, 0xff

    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    const/4 v15, 0x0

    goto :goto_4

    .line 5
    :cond_2
    aget-object v15, v1, v11

    aget-byte v15, v15, v12

    invoke-static {v15, v14}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v15

    move/from16 v17, v15

    move v15, v9

    move/from16 v9, v17

    :goto_4
    add-int v16, v5, v13

    .line 6
    aget-byte v3, v0, v16

    invoke-static {v3, v14}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v3

    sub-int/2addr v9, v3

    if-nez v9, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-eq v13, v6, :cond_5

    .line 7
    aget-object v3, v1, v11

    array-length v3, v3

    if-ne v3, v12, :cond_4

    .line 8
    array-length v3, v1

    sub-int/2addr v3, v8

    if-ne v11, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move v12, v7

    move v9, v8

    goto :goto_3

    :cond_4
    move v9, v15

    goto :goto_3

    :cond_5
    :goto_5
    if-gez v9, :cond_6

    :goto_6
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_6
    if-lez v9, :cond_7

    :goto_7
    add-int/lit8 v4, v10, 0x1

    goto :goto_0

    :cond_7
    sub-int v3, v6, v13

    .line 9
    aget-object v7, v1, v11

    array-length v7, v7

    sub-int/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    .line 10
    array-length v8, v1

    :goto_8
    if-ge v11, v8, :cond_8

    .line 11
    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v7, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    if-ge v7, v3, :cond_9

    goto :goto_6

    :cond_9
    if-le v7, v3, :cond_a

    goto :goto_7

    .line 12
    :cond_a
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    return-object v1
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    return-object v0
.end method
