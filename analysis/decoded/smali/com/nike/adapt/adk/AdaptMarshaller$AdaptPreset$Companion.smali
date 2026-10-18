.class public final Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;
.super Ljava/lang/Object;
.source "AdaptMarshaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;-><init>()V

    return-void
.end method

.method private final inRangeOf(III)Z
    .locals 1

    sub-int v0, p2, p3

    if-ge v0, p1, :cond_0

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf(III)Z

    move-result p0

    return p0
.end method

.method private static final parse$lambda-1(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 3

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->TOTAL_ORANGE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;

    .line 4
    iget v1, p0, Lba/f;->h:I

    .line 5
    iget v2, p0, Lba/f;->i:I

    .line 6
    iget p0, p0, Lba/f;->j:I

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;-><init>(III)V

    throw v0

    .line 8
    :cond_1
    sget-object p0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 12

    const-string v0, "shoeLedLight"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->values()[Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    sget-object v11, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v6

    .line 4
    iget v7, p1, Lba/f;->h:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v11

    .line 5
    invoke-static/range {v5 .. v10}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v6

    .line 6
    iget v7, p1, Lba/f;->i:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v11

    .line 7
    invoke-static/range {v5 .. v10}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result v6

    .line 8
    iget v7, p1, Lba/f;->j:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v11

    .line 9
    invoke-static/range {v5 .. v10}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 10
    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse$lambda-1(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    :cond_3
    return-object v4
.end method

.method public final parse(Lcom/nike/adapt/adk/model/AdaptColor;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 13

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->values()[Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 13
    sget-object v12, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptColor;->getRed()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    invoke-static/range {v6 .. v11}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptColor;->getGreen()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    invoke-static/range {v6 .. v11}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result v7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptColor;->getBlue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v12

    invoke-static/range {v6 .. v11}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->inRangeOf$default(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    return-object v1
.end method

.method public final parse(Lcom/nike/adapt/network/assets/model/ShoeLightingColor;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 8

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->values()[Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    .line 15
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 16
    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v6

    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->getRed()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->getGreen()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result v6

    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->getBlue()I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    return-object v1
.end method
