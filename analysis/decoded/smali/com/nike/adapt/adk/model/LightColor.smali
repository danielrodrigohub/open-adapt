.class public final enum Lcom/nike/adapt/adk/model/LightColor;
.super Ljava/lang/Enum;
.source "LightColor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/LightColor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/LightColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum AURORA_GREEN:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/LightColor;

.field public static final Companion:Lcom/nike/adapt/adk/model/LightColor$Companion;

.field public static final enum ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum GREEN_SPARK:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum PINK_BLAST:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum RACER_BLUE:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum RED_ORBIT:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum TOTAL_ORANGE:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum VIVID_PURPLE:Lcom/nike/adapt/adk/model/LightColor;

.field public static final enum WHITE:Lcom/nike/adapt/adk/model/LightColor;


# instance fields
.field private final adaptColorPreset:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

.field private final blue:I

.field private final dynamicHex:I

.field private final green:I

.field private final ledLightHomeIcon:I

.field private final ledLightIcon:I

.field private final ledLightIconAnimated:I

.field private final paletteHex:I

.field private final red:I

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/LightColor;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nike/adapt/adk/model/LightColor;

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->RACER_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->PINK_BLAST:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->RED_ORBIT:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->TOTAL_ORANGE:Lcom/nike/adapt/adk/model/LightColor;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->GREEN_SPARK:Lcom/nike/adapt/adk/model/LightColor;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->WHITE:Lcom/nike/adapt/adk/model/LightColor;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v10, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->AURORA_GREEN:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v1, "AURORA_GREEN"

    const/4 v2, 0x0

    const v4, 0x7f080150

    const v5, 0x7f080146

    const v6, 0x7f080147

    const v7, 0x7f06001e

    const v8, 0x7f06001d

    const v9, 0x7f11029e

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v10, Lcom/nike/adapt/adk/model/LightColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "HERO_BLUE"

    const/4 v13, 0x1

    const v15, 0x7f080154

    const v16, 0x7f08014e

    const v17, 0x7f08014f

    const v18, 0x7f06008b

    const v19, 0x7f06008a

    const v20, 0x7f1102a4

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v4, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->RACER_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v2, "RACER_BLUE"

    const/4 v3, 0x2

    const v5, 0x7f080157

    const v6, 0x7f080162

    const v7, 0x7f080163

    const v8, 0x7f060288

    const v9, 0x7f060287

    const v10, 0x7f1102ac

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->RACER_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->VIVID_PURPLE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "VIVID_PURPLE"

    const/4 v13, 0x3

    const v15, 0x7f08015a

    const v16, 0x7f080168

    const v17, 0x7f080169

    const v18, 0x7f0602a8

    const v19, 0x7f0602a7

    const v20, 0x7f1102b0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/LightColor;

    .line 5
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v4, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->PINK_BLAST:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v2, "PINK_BLAST"

    const/4 v3, 0x4

    const v5, 0x7f080156

    const v6, 0x7f080160

    const v7, 0x7f080161

    const v8, 0x7f06027a

    const v9, 0x7f060279

    const v10, 0x7f1102aa

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->PINK_BLAST:Lcom/nike/adapt/adk/model/LightColor;

    .line 6
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->RED_ORBIT:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "RED_ORBIT"

    const/4 v13, 0x5

    const v15, 0x7f080158

    const v16, 0x7f080164

    const v17, 0x7f080165

    const v18, 0x7f06028c

    const v19, 0x7f06028b

    const v20, 0x7f1102ae

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->RED_ORBIT:Lcom/nike/adapt/adk/model/LightColor;

    .line 7
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v4, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v2, "BRIGHT_CRIMSON"

    const/4 v3, 0x6

    const v5, 0x7f080151

    const v6, 0x7f080148

    const v7, 0x7f080149

    const v8, 0x7f06002e

    const v9, 0x7f06002d

    const v10, 0x7f1102a0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/LightColor;

    .line 8
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->TOTAL_ORANGE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "TOTAL_ORANGE"

    const/4 v13, 0x7

    const v15, 0x7f080159

    const v16, 0x7f080166

    const v17, 0x7f080167

    const v18, 0x7f0602a5

    const v19, 0x7f0602a4

    const v20, 0x7f1102af

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->TOTAL_ORANGE:Lcom/nike/adapt/adk/model/LightColor;

    .line 9
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v4, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->OPTIC_YELLOW:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v2, "OPTIC_YELLOW"

    const/16 v3, 0x8

    const v5, 0x7f080155

    const v6, 0x7f08015e

    const v7, 0x7f08015f

    const v8, 0x7f060275

    const v9, 0x7f060274

    const v10, 0x7f1102a7

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

    .line 10
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "ELECTRIC_GREEN"

    const/16 v13, 0x9

    const v15, 0x7f080152

    const v16, 0x7f08014a

    const v17, 0x7f08014b

    const v18, 0x7f060077

    const v19, 0x7f060076

    const v20, 0x7f1102a1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    .line 11
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v4, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->GREEN_SPARK:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v2, "GREEN_SPARK"

    const/16 v3, 0xa

    const v5, 0x7f080153

    const v6, 0x7f08014c

    const v7, 0x7f08014d

    const v8, 0x7f060086

    const v9, 0x7f060085

    const v10, 0x7f1102a3

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->GREEN_SPARK:Lcom/nike/adapt/adk/model/LightColor;

    .line 12
    new-instance v0, Lcom/nike/adapt/adk/model/LightColor;

    sget-object v14, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->WHITE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const-string v12, "WHITE"

    const/16 v13, 0xb

    const v15, 0x7f08015b

    const v16, 0x7f08016a

    const v17, 0x7f08016b

    const v18, 0x7f0602ad

    const v19, 0x7f0602ac

    const v20, 0x7f1102b1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/nike/adapt/adk/model/LightColor;-><init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->WHITE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-static {}, Lcom/nike/adapt/adk/model/LightColor;->$values()[Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->$VALUES:[Lcom/nike/adapt/adk/model/LightColor;

    new-instance v0, Lcom/nike/adapt/adk/model/LightColor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/LightColor$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/LightColor;->Companion:Lcom/nike/adapt/adk/model/LightColor$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;",
            "IIIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nike/adapt/adk/model/LightColor;->adaptColorPreset:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    iput p4, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightHomeIcon:I

    iput p5, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightIcon:I

    iput p6, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightIconAnimated:I

    iput p7, p0, Lcom/nike/adapt/adk/model/LightColor;->paletteHex:I

    iput p8, p0, Lcom/nike/adapt/adk/model/LightColor;->dynamicHex:I

    iput p9, p0, Lcom/nike/adapt/adk/model/LightColor;->title:I

    .line 2
    invoke-virtual {p3}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result p1

    iput p1, p0, Lcom/nike/adapt/adk/model/LightColor;->red:I

    .line 3
    invoke-virtual {p3}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result p1

    iput p1, p0, Lcom/nike/adapt/adk/model/LightColor;->green:I

    .line 4
    invoke-virtual {p3}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p1

    iput p1, p0, Lcom/nike/adapt/adk/model/LightColor;->blue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/LightColor;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/LightColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/LightColor;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/LightColor;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/LightColor;->$VALUES:[Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/LightColor;

    return-object v0
.end method


# virtual methods
.method public final getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/LightColor;->adaptColorPreset:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    return-object v0
.end method

.method public final getBlue()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->blue:I

    return v0
.end method

.method public final getDynamicHex()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->dynamicHex:I

    return v0
.end method

.method public final getGreen()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->green:I

    return v0
.end method

.method public final getLedLightHomeIcon()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightHomeIcon:I

    return v0
.end method

.method public final getLedLightIcon()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightIcon:I

    return v0
.end method

.method public final getLedLightIconAnimated()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->ledLightIconAnimated:I

    return v0
.end method

.method public final getPaletteHex()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->paletteHex:I

    return v0
.end method

.method public final getRed()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->red:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/LightColor;->title:I

    return v0
.end method
