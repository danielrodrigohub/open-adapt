.class public final Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;
.super Ljava/lang/Object;
.source "AdaptShoeColor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptShoeColor;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptShoeColor;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;
    .locals 2

    const-string v0, "leftAdaptDeviceColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightAdaptDeviceColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getIntensity()Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    return-object v0
.end method

.method public final create(Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)Lcom/nike/adapt/adk/model/AdaptShoeColor;
    .locals 2

    const-string v0, "shoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intensity"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    return-object v0
.end method
