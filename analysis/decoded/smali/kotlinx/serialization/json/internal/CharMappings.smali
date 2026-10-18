.class public final Lkotlinx/serialization/json/internal/CharMappings;
.super Ljava/lang/Object;
.source "JsonLexer.kt"


# static fields
.field public static final CHAR_TO_TOKEN:[B

.field public static final ESCAPE_2_CHAR:[C

.field public static final INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/CharMappings;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharMappings;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;

    const/16 v1, 0x75

    new-array v1, v1, [C

    .line 1
    sput-object v1, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    const/16 v1, 0x7e

    new-array v1, v1, [B

    .line 2
    sput-object v1, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharMappings;->initEscape()V

    .line 4
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharMappings;->initCharToToken()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initC2ESC(CC)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    return-void
.end method

.method private final initC2ESC(IC)V
    .locals 1

    const/16 v0, 0x75

    if-eq p2, v0, :cond_0

    .line 1
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    int-to-char p1, p1

    aput-char p1, v0, p2

    :cond_0
    return-void
.end method

.method private final initC2TC(CB)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    return-void
.end method

.method private final initC2TC(IB)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method private final initCharToToken()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x7f

    .line 1
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    const/16 v1, 0x9

    const/4 v2, 0x3

    .line 2
    invoke-direct {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v3, 0xa

    .line 3
    invoke-direct {p0, v3, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v3, 0xd

    .line 4
    invoke-direct {p0, v3, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    .line 5
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v0, 0x2c

    const/4 v2, 0x4

    .line 6
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x3a

    const/4 v2, 0x5

    .line 7
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x7b

    const/4 v2, 0x6

    .line 8
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x7d

    const/4 v2, 0x7

    .line 9
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x5b

    const/16 v2, 0x8

    .line 10
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x5d

    .line 11
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x22

    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x5c

    const/4 v1, 0x2

    .line 13
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final initEscape()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x75

    .line 1
    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0x1f

    if-le v1, v0, :cond_0

    const/16 v0, 0x8

    const/16 v1, 0x62

    .line 2
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0x9

    const/16 v1, 0x74

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xa

    const/16 v1, 0x6e

    .line 4
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xc

    const/16 v1, 0x66

    .line 5
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xd

    const/16 v1, 0x72

    .line 6
    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0x2f

    .line 7
    invoke-direct {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    const/16 v0, 0x22

    .line 8
    invoke-direct {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    const/16 v0, 0x5c

    .line 9
    invoke-direct {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
