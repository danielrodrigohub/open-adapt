.class public final Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;
.super Ljava/lang/Object;
.source "AdaptDeviceLEDIntensityADK.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
    .locals 7

    .line 1
    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->values()[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 3
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->getMeter()I

    move-result v6

    if-ne v6, p1, :cond_0

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
