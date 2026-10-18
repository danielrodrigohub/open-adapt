.class public final Lcom/nike/adapt/adk/InMemoryCache;
.super Ljava/lang/Object;
.source "InMemoryCache.kt"


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

.field private static activeLightEffect:Lv7/c;

.field private static activeLightPack:Lz8/a;

.field private static hasShoeUpdates:Z

.field private static final leftDevice$delegate:Lfd/d;

.field private static lowestFirmwareVersion:Ljava/lang/String;

.field private static manifest:Lcom/nike/adapt/network/assets/model/Manifest;

.field private static needToDisplayEffectsSubtitleForFirstTime:Z

.field private static pendingLightEffect:Lv7/c;

.field private static pendingLightPack:Lz8/a;

.field private static final rightDevice$delegate:Lfd/d;

.field private static updateToFirmwareVersion:Ljava/lang/String;

.field private static useInternetPerSession:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/InMemoryCache;

    invoke-direct {v0}, Lcom/nike/adapt/adk/InMemoryCache;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache$rightDevice$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->rightDevice$delegate:Lfd/d;

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache$leftDevice$2;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache$leftDevice$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->leftDevice$delegate:Lfd/d;

    const-string v0, ""

    .line 3
    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->updateToFirmwareVersion:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->lowestFirmwareVersion:Ljava/lang/String;

    .line 5
    sget-object v0, Lz8/a;->m:Lz8/a;

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->activeLightPack:Lz8/a;

    .line 6
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    sput-object v0, Lcom/nike/adapt/adk/InMemoryCache;->activeLightEffect:Lv7/c;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->useInternetPerSession:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final clearDevice(Lcom/nike/adapt/adk/IDeviceCacheADK;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownAbsoluteTightness(I)V

    .line 2
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownRelativeTightness(I)V

    .line 3
    sget-object v1, Lv9/e;->i:Lv9/e;

    invoke-interface {p1, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 5
    new-instance v1, Lcom/nike/adapt/adk/model/Battery;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    invoke-interface {p1, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    const-string v0, ""

    .line 6
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setSerialNumber(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setFirmwareVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->hasShoeUpdates:Z

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/InMemoryCache;->clearDevice(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/InMemoryCache;->clearDevice(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->useInternetPerSession:Z

    return-void
.end method

.method public final eitherShoeIsConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getActiveLightEffect()Lv7/c;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->activeLightEffect:Lv7/c;

    return-object v0
.end method

.method public final getActiveLightPack()Lz8/a;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->activeLightPack:Lz8/a;

    return-object v0
.end method

.method public final getHasShoeUpdates()Z
    .locals 1

    sget-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->hasShoeUpdates:Z

    return v0
.end method

.method public final getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->leftDevice$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/adk/IDeviceCacheADK;

    return-object v0
.end method

.method public final getLowestFirmwareVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->lowestFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getManifest()Lcom/nike/adapt/network/assets/model/Manifest;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->manifest:Lcom/nike/adapt/network/assets/model/Manifest;

    return-object v0
.end method

.method public final getNeedToDisplayEffectsSubtitleForFirstTime()Z
    .locals 1

    sget-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->needToDisplayEffectsSubtitleForFirstTime:Z

    return v0
.end method

.method public final getPendingLightEffect()Lv7/c;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->pendingLightEffect:Lv7/c;

    return-object v0
.end method

.method public final getPendingLightPack()Lz8/a;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->pendingLightPack:Lz8/a;

    return-object v0
.end method

.method public final getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->rightDevice$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/adk/IDeviceCacheADK;

    return-object v0
.end method

.method public final getUpdateToFirmwareVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->updateToFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseInternetPerSession()Z
    .locals 1

    sget-boolean v0, Lcom/nike/adapt/adk/InMemoryCache;->useInternetPerSession:Z

    return v0
.end method

.method public final setActiveLightEffect(Lv7/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->activeLightEffect:Lv7/c;

    return-void
.end method

.method public final setActiveLightPack(Lz8/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->activeLightPack:Lz8/a;

    return-void
.end method

.method public final setHasShoeUpdates(Z)V
    .locals 0

    sput-boolean p1, Lcom/nike/adapt/adk/InMemoryCache;->hasShoeUpdates:Z

    return-void
.end method

.method public final setLowestFirmwareVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->lowestFirmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public final setManifest(Lcom/nike/adapt/network/assets/model/Manifest;)V
    .locals 0

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->manifest:Lcom/nike/adapt/network/assets/model/Manifest;

    return-void
.end method

.method public final setNeedToDisplayEffectsSubtitleForFirstTime(Z)V
    .locals 0

    sput-boolean p1, Lcom/nike/adapt/adk/InMemoryCache;->needToDisplayEffectsSubtitleForFirstTime:Z

    return-void
.end method

.method public final setPendingLightEffect(Lv7/c;)V
    .locals 0

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->pendingLightEffect:Lv7/c;

    return-void
.end method

.method public final setPendingLightPack(Lz8/a;)V
    .locals 0

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->pendingLightPack:Lz8/a;

    return-void
.end method

.method public final setUpdateToFirmwareVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nike/adapt/adk/InMemoryCache;->updateToFirmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public final setUseInternetPerSession(Z)V
    .locals 0

    sput-boolean p1, Lcom/nike/adapt/adk/InMemoryCache;->useInternetPerSession:Z

    return-void
.end method
