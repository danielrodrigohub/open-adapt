.class public final enum Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;
.super Ljava/lang/Enum;
.source "BigfootColorPreset.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum AURORA_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum BRIGHT_CRIMSON:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum ELECTRIC_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum GREEN_SPARK:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum HERO_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum LIGHT_OFF:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum OPTIC_YELLOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum PINK_BLAST:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum RACER_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum RED_ORBIT:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum TOTAL_ORANGE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum VIVID_PURPLE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

.field public static final enum WHITE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;


# instance fields
.field private final blue:I

.field private final green:I

.field private final red:I


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->AURORA_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->HERO_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->RACER_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->VIVID_PURPLE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->PINK_BLAST:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->RED_ORBIT:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->BRIGHT_CRIMSON:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->TOTAL_ORANGE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->OPTIC_YELLOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->ELECTRIC_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->GREEN_SPARK:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->WHITE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->LIGHT_OFF:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v1, "AURORA_GREEN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v5, 0xff

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->AURORA_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 2
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "HERO_BLUE"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x3c

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->HERO_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 3
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "RACER_BLUE"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->RACER_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 4
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "VIVID_PURPLE"

    const/4 v9, 0x3

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/16 v12, 0xc8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->VIVID_PURPLE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 5
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "PINK_BLAST"

    const/4 v3, 0x4

    const/16 v4, 0xff

    const/16 v5, 0xa

    const/16 v6, 0x50

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->PINK_BLAST:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 6
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "RED_ORBIT"

    const/4 v9, 0x5

    const/16 v10, 0xf0

    const/16 v12, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->RED_ORBIT:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 7
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "BRIGHT_CRIMSON"

    const/4 v3, 0x6

    const/16 v5, 0x10

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->BRIGHT_CRIMSON:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 8
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "TOTAL_ORANGE"

    const/4 v9, 0x7

    const/16 v10, 0xff

    const/16 v11, 0x28

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->TOTAL_ORANGE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 9
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "OPTIC_YELLOW"

    const/16 v3, 0x8

    const/16 v5, 0xff

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->OPTIC_YELLOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 10
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "ELECTRIC_GREEN"

    const/16 v9, 0x9

    const/16 v10, 0x78

    const/16 v11, 0xf0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->ELECTRIC_GREEN:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 11
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "GREEN_SPARK"

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/16 v5, 0xf0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->GREEN_SPARK:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 12
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v8, "WHITE"

    const/16 v9, 0xb

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->WHITE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    .line 13
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    const-string v2, "LIGHT_OFF"

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->LIGHT_OFF:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    invoke-static {}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->$values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->$VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->red:I

    iput p4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->green:I

    iput p5, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->blue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;
    .locals 1

    const-class v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;
    .locals 1

    sget-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->$VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    return-object v0
.end method


# virtual methods
.method public final getBlue()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->blue:I

    return v0
.end method

.method public final getGreen()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->green:I

    return v0
.end method

.method public final getRed()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->red:I

    return v0
.end method
