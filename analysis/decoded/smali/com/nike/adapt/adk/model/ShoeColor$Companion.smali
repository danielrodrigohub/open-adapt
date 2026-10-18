.class public final Lcom/nike/adapt/adk/model/ShoeColor$Companion;
.super Ljava/lang/Object;
.source "ShoeColor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/ShoeColor;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;
    .locals 8

    const-string v0, "adaptShoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/nike/adapt/adk/model/ShoeColor;->values()[Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 3
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v7

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    move-object v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method
