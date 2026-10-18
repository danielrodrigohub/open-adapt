.class final Lcom/nike/adapt/adk/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.kt"

# interfaces
.implements Landroidx/lifecycle/b;
.implements Lcom/nike/adapt/adk/IDeviceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/DeviceController$Companion;,
        Lcom/nike/adapt/adk/DeviceController$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/adk/DeviceController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adaptIdentifier:Lv9/a;

.field private final adaptPreferenceHelper$delegate:Lfd/d;

.field private final controllerEventUUID:Li8/d;

.field private final fitListener:Lv9/q;

.field private isFirmwareCallInProgress:Z

.field private isSubscribed:Z

.field private leftAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field private leftGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field private final minimumFirmwareRequirementNotMet:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field private final modeListener:Lv9/s;

.field private final notConnected:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field private final pairListener:Lv9/i;

.field private requester:Lv9/l;

.field private rightAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field private rightGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field private final uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/adapt/adk/DeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/DeviceController$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/DeviceController;->Companion:Lcom/nike/adapt/adk/DeviceController$Companion;

    const-string v0, "DeviceController"

    sput-object v0, Lcom/nike/adapt/adk/DeviceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/i;Li8/d;)V
    .locals 2

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv9/a;

    .line 3
    iget-object v1, p2, Li8/d;->i:Ljava/util/UUID;

    .line 4
    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->adaptIdentifier:Lv9/a;

    .line 5
    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 6
    new-instance p2, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {p2}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    .line 7
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;

    const/4 v0, 0x3

    invoke-static {v0, p2}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p2

    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->adaptPreferenceHelper$delegate:Lfd/d;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/p;)V

    .line 9
    :cond_0
    new-instance p1, Lcom/nike/adapt/adk/DeviceController$pairListener$1;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/DeviceController$pairListener$1;-><init>(Lcom/nike/adapt/adk/DeviceController;)V

    const/4 p2, 0x1

    .line 10
    new-instance v0, Lv9/i;

    invoke-direct {v0, p2}, Lv9/i;-><init>(Z)V

    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->pairListener:Lv9/i;

    .line 12
    new-instance p1, Lcom/nike/adapt/adk/DeviceController$modeListener$1;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/DeviceController$modeListener$1;-><init>(Lcom/nike/adapt/adk/DeviceController;)V

    .line 13
    new-instance p2, Lv9/s;

    invoke-direct {p2}, Lv9/s;-><init>()V

    invoke-interface {p1, p2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->modeListener:Lv9/s;

    .line 15
    new-instance p1, Lcom/nike/adapt/adk/DeviceController$fitListener$1;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/DeviceController$fitListener$1;-><init>(Lcom/nike/adapt/adk/DeviceController;)V

    .line 16
    new-instance p2, Lv9/q;

    invoke-direct {p2}, Lv9/q;-><init>()V

    invoke-interface {p1, p2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->fitListener:Lv9/q;

    .line 18
    sget-object p1, Lcom/nike/adapt/adk/DeviceController$notConnected$1;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$notConnected$1;

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 19
    sget-object p1, Lcom/nike/adapt/adk/DeviceController$minimumFirmwareRequirementNotMet$1;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$minimumFirmwareRequirementNotMet$1;

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    return-void
.end method

.method public static final synthetic access$getControllerEventUUID$p(Lcom/nike/adapt/adk/DeviceController;)Li8/d;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    return-object p0
.end method

.method public static final synthetic access$getRequester$p(Lcom/nike/adapt/adk/DeviceController;)Lv9/l;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/DeviceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isFirmwareCallInProgress$p(Lcom/nike/adapt/adk/DeviceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nike/adapt/adk/DeviceController;->isFirmwareCallInProgress:Z

    return p0
.end method

.method public static final synthetic access$mapAndPublishError(Lcom/nike/adapt/adk/DeviceController;Lv9/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/DeviceController;->mapAndPublishError(Lv9/f;)V

    return-void
.end method

.method public static final synthetic access$mapAndUpdateDevice(Lcom/nike/adapt/adk/DeviceController;Lw9/u1;Lv9/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nike/adapt/adk/DeviceController;->mapAndUpdateDevice(Lw9/u1;Lv9/g;)V

    return-void
.end method

.method public static final synthetic access$publish(Lcom/nike/adapt/adk/DeviceController;Li8/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    return-void
.end method

.method public static final synthetic access$setFirmwareCallInProgress$p(Lcom/nike/adapt/adk/DeviceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nike/adapt/adk/DeviceController;->isFirmwareCallInProgress:Z

    return-void
.end method

.method private final checkForFirmwareUpdates()V
    .locals 6

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;-><init>(Lcom/nike/adapt/adk/DeviceController;Ljd/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getAdaptPreferenceHelper()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->adaptPreferenceHelper$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public static synthetic getPairListener$app_prodRelease$annotations()V
    .locals 0

    return-void
.end method

.method private final mapAndPublishError(Lv9/f;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lv9/b3;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/ToggleAutoLaceError;

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 4
    iget-boolean p1, p1, Lv9/f;->l:Z

    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, p1, v2}, Lcom/nike/adapt/adk/ToggleAutoLaceError;-><init>(Li8/d;ZZ)V

    .line 6
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/c;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Lv9/y2;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/nike/adapt/adk/ToggleAutoLaceError;

    .line 9
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 10
    iget-boolean p1, p1, Lv9/f;->l:Z

    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, p1, v2}, Lcom/nike/adapt/adk/ToggleAutoLaceError;-><init>(Li8/d;ZZ)V

    .line 12
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/c;)V

    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p1, Lv9/o4;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nike/adapt/adk/SetAutoLaceError;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 14
    iget-boolean p1, p1, Lv9/f;->l:Z

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/nike/adapt/adk/SetAutoLaceError;-><init>(Li8/d;Z)V

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final mapAndUpdateDevice(Lw9/u1;Lv9/g;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->Companion:Lcom/nike/adapt/adk/Shoe$Companion;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/adk/Shoe$Companion;->valueOf(Lw9/u1;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 3
    iget-object v0, v0, Li8/d;->h:Ljava/lang/String;

    .line 4
    new-instance v1, Li8/d;

    invoke-virtual {p2}, Lv9/g;->a()Lv9/a;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lv9/a;->h:Ljava/util/UUID;

    .line 6
    invoke-direct {v1, v0, v2}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 7
    instance-of v0, p2, Lv9/t4;

    if-eqz v0, :cond_0

    .line 8
    new-instance p2, Lcom/nike/adapt/adk/LaceTightenResult;

    invoke-direct {p2, v1, p1}, Lcom/nike/adapt/adk/LaceTightenResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 10
    :cond_0
    instance-of v0, p2, Lv9/y1;

    if-eqz v0, :cond_2

    .line 11
    move-object v0, p2

    check-cast v0, Lv9/y1;

    .line 12
    iget-object v0, v0, Lv9/y1;->n:Lba/e;

    .line 13
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/e;)Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    .line 14
    iget-boolean p2, p2, Lda/g;->i:Z

    if-eqz p2, :cond_1

    .line 15
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_0

    .line 16
    :cond_1
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 17
    :goto_0
    new-instance p2, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v1, p1, v0}, Lcom/nike/adapt/adk/GetBatteryPercentResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 18
    :cond_2
    instance-of v0, p2, Lv9/n5;

    if-eqz v0, :cond_4

    .line 19
    iget-boolean v0, p2, Lda/g;->i:Z

    if-eqz v0, :cond_3

    .line 20
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lv9/n5;

    .line 21
    iget-object v1, v1, Lv9/n5;->n:Ljava/lang/String;

    .line 22
    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lv9/n5;

    .line 24
    iget-object v1, v1, Lv9/n5;->n:Ljava/lang/String;

    .line 25
    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setSerialNumber(Ljava/lang/String;)V

    .line 26
    :goto_1
    new-instance v0, Lcom/nike/adapt/adk/GetSerialNumberResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    check-cast p2, Lv9/n5;

    .line 27
    iget-object p2, p2, Lv9/n5;->n:Ljava/lang/String;

    .line 28
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GetSerialNumberResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 29
    :cond_4
    instance-of v0, p2, Lv9/f4;

    if-eqz v0, :cond_5

    .line 30
    check-cast p2, Lv9/f4;

    .line 31
    iget-object v0, p2, Lv9/f4;->n:Lea/i;

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/nike/adapt/adk/DeviceController;->updateTightnessCache(Lcom/nike/adapt/adk/Shoe;Lea/i;)V

    .line 33
    new-instance v0, Lcom/nike/adapt/adk/GetLacingPercentResult;

    .line 34
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 35
    iget-object p2, p2, Lv9/f4;->n:Lea/i;

    .line 36
    iget-object v2, p2, Lea/i;->h:Lea/h$c;

    .line 37
    iget v2, v2, Lea/h$c;->j:I

    .line 38
    iget-object p2, p2, Lea/i;->i:Lea/h$a;

    .line 39
    iget p2, p2, Lea/h$a;->j:I

    .line 40
    invoke-direct {v0, v1, p1, v2, p2}, Lcom/nike/adapt/adk/GetLacingPercentResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;II)V

    .line 41
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 42
    :cond_5
    instance-of v0, p2, Lv9/w3;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    check-cast p2, Lv9/w3;

    .line 43
    iget-object p2, p2, Lv9/w3;->n:Lea/d;

    .line 44
    iget-object p2, p2, Lea/d;->l:Lba/f;

    if-eqz p2, :cond_22

    .line 45
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v3, p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p2

    invoke-direct {v0, p2, v2, v1, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 46
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->rightGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_2

    .line 47
    :cond_6
    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->leftGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 48
    :goto_2
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->leftGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_22

    .line 49
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->rightGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p2, :cond_22

    .line 50
    sget-object v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 52
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lh8/a;->k0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 53
    :cond_7
    new-instance v0, Lcom/nike/adapt/adk/GetLedResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1, v3, p1}, Lcom/nike/adapt/adk/GetLedResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    .line 54
    new-instance p1, Lcom/nike/adapt/adk/GetLedResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/adk/GetLedResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    .line 55
    iput-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->leftGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 56
    iput-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->rightGetLedAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto/16 :goto_7

    .line 57
    :cond_8
    instance-of v0, p2, Lv9/z3;

    if-eqz v0, :cond_b

    check-cast p2, Lv9/z3;

    .line 58
    iget-object p2, p2, Lv9/z3;->n:Lea/d;

    .line 59
    iget-object p2, p2, Lea/d;->l:Lba/f;

    if-eqz p2, :cond_22

    .line 60
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v3, p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p2

    invoke-direct {v0, p2, v2, v1, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 61
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->rightAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_3

    .line 62
    :cond_9
    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->leftAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 63
    :goto_3
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->leftAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_22

    .line 64
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->rightAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p2, :cond_22

    .line 65
    sget-object v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 67
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lh8/a;->k0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 68
    :cond_a
    new-instance v0, Lcom/nike/adapt/adk/SetLedResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1, v3, p1}, Lcom/nike/adapt/adk/SetLedResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    .line 69
    new-instance p1, Lcom/nike/adapt/adk/SetLedResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/adk/SetLedResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    .line 70
    iput-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->leftAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 71
    iput-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->rightAdaptDeviceColor:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 72
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object p2

    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    .line 73
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightEffect(Lv7/c;)V

    goto/16 :goto_7

    .line 75
    :cond_b
    instance-of v0, p2, Lv9/a1;

    if-eqz v0, :cond_e

    .line 76
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getPendingLightPack()Lz8/a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 77
    invoke-virtual {p2, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightPack(Lz8/a;)V

    .line 78
    invoke-virtual {p2, v2}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightPack(Lz8/a;)V

    .line 79
    :cond_c
    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getPendingLightEffect()Lv7/c;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightEffect(Lv7/c;)V

    .line 81
    invoke-virtual {p2, v2}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightEffect(Lv7/c;)V

    .line 82
    :cond_d
    new-instance p2, Lcom/nike/adapt/adk/StartAnimationResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v0, p1}, Lcom/nike/adapt/adk/StartAnimationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 83
    :cond_e
    instance-of v0, p2, Lv9/e1;

    if-eqz v0, :cond_f

    .line 84
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v0, Lz8/a;->m:Lz8/a;

    invoke-virtual {p2, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightPack(Lz8/a;)V

    .line 85
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-virtual {p2, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightEffect(Lv7/c;)V

    .line 86
    new-instance p2, Lcom/nike/adapt/adk/StopAnimationResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v0, p1}, Lcom/nike/adapt/adk/StopAnimationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 87
    :cond_f
    instance-of v0, p2, Lv9/c1;

    if-eqz v0, :cond_10

    .line 88
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v1, Lz8/a;->m:Lz8/a;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightPack(Lz8/a;)V

    .line 89
    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightEffect(Lv7/c;)V

    .line 90
    new-instance v0, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    .line 91
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 92
    check-cast p2, Lv9/c1;

    .line 93
    iget-object p2, p2, Lv9/c1;->m:Lba/g;

    .line 94
    iget-object v2, p2, Lba/g;->k:Lba/g$c;

    .line 95
    invoke-static {v2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/g$c;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v2

    .line 96
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/nike/adapt/adk/StopAnimationNotificationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lba/g;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 98
    :cond_10
    instance-of v0, p2, Lv9/w0;

    if-eqz v0, :cond_13

    .line 99
    check-cast p2, Lv9/w0;

    .line 100
    iget-object v0, p2, Lv9/w0;->n:Lba/g;

    .line 101
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/g;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v0

    .line 102
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    if-eqz v0, :cond_11

    .line 103
    sget-object v2, Lz8/a;->l:Lz8/a$a;

    .line 104
    iget-object v3, p2, Lv9/w0;->n:Lba/g;

    .line 105
    iget v3, v3, Lba/g;->h:I

    .line 106
    invoke-virtual {v2, v3}, Lz8/a$a;->a(I)Lz8/a;

    move-result-object v2

    goto :goto_4

    :cond_11
    sget-object v2, Lz8/a;->m:Lz8/a;

    .line 107
    :goto_4
    invoke-virtual {v1, v2}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightPack(Lz8/a;)V

    if-eqz v0, :cond_12

    .line 108
    sget-object v0, Lv7/c;->a:Lv7/c$b;

    .line 109
    iget-object v2, p2, Lv9/w0;->n:Lba/g;

    .line 110
    iget v2, v2, Lba/g;->h:I

    .line 111
    invoke-virtual {v0, v2}, Lv7/c$b;->a(I)Lv7/c;

    move-result-object v0

    goto :goto_5

    :cond_12
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    .line 112
    :goto_5
    invoke-virtual {v1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setActiveLightEffect(Lv7/c;)V

    .line 113
    new-instance v0, Lcom/nike/adapt/adk/GetAnimationResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 114
    iget-object p2, p2, Lv9/w0;->n:Lba/g;

    .line 115
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/g;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GetAnimationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 116
    :cond_13
    instance-of v0, p2, Lv9/a2;

    if-eqz v0, :cond_15

    .line 117
    move-object v0, p2

    check-cast v0, Lv9/a2;

    .line 118
    iget-object v0, v0, Lv9/a2;->m:Lba/e;

    .line 119
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/e;)Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    .line 120
    iget-boolean p2, p2, Lda/g;->i:Z

    if-eqz p2, :cond_14

    .line 121
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_6

    .line 122
    :cond_14
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 123
    :goto_6
    new-instance p2, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    .line 124
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 125
    invoke-direct {p2, v1, p1, v0}, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    .line 126
    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 127
    :cond_15
    instance-of v0, p2, Lv9/n4;

    if-eqz v0, :cond_16

    .line 128
    check-cast p2, Lv9/n4;

    .line 129
    iget-object v0, p2, Lv9/n4;->m:Lea/i;

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/nike/adapt/adk/DeviceController;->updateTightnessCache(Lcom/nike/adapt/adk/Shoe;Lea/i;)V

    .line 131
    new-instance v0, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    .line 132
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 133
    iget-object p2, p2, Lv9/n4;->m:Lea/i;

    .line 134
    iget-object v2, p2, Lea/i;->h:Lea/h$c;

    .line 135
    iget v2, v2, Lea/h$c;->j:I

    .line 136
    iget-object p2, p2, Lea/i;->i:Lea/h$a;

    .line 137
    iget p2, p2, Lea/h$a;->j:I

    .line 138
    invoke-direct {v0, v1, p1, v2, p2}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;II)V

    .line 139
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 140
    :cond_16
    instance-of v0, p2, Lv9/d3;

    if-eqz v0, :cond_17

    .line 141
    new-instance p2, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;

    .line 142
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    const/4 v1, 0x1

    .line 143
    invoke-direct {p2, v0, p1, v1}, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Z)V

    .line 144
    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 145
    :cond_17
    instance-of v0, p2, Lv9/a3;

    if-eqz v0, :cond_18

    .line 146
    new-instance p2, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;

    .line 147
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    const/4 v1, 0x0

    .line 148
    invoke-direct {p2, v0, p1, v1}, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Z)V

    .line 149
    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 150
    :cond_18
    instance-of v0, p2, Lv9/k2;

    if-eqz v0, :cond_19

    new-instance p2, Lcom/nike/adapt/adk/DeleteDevicesResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v0, p1}, Lcom/nike/adapt/adk/DeleteDevicesResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 151
    :cond_19
    instance-of v0, p2, Lv9/c4;

    if-eqz v0, :cond_1a

    .line 152
    new-instance v0, Lcom/nike/adapt/adk/GetDeviceStatsResult;

    .line 153
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 154
    move-object v2, p2

    check-cast v2, Lv9/c4;

    .line 155
    iget-object v2, v2, Lv9/c4;->n:Lba/i;

    .line 156
    iget-boolean v3, p2, Lda/g;->i:Z

    .line 157
    iget-object p2, p2, Lda/g;->h:Ljava/lang/String;

    .line 158
    invoke-static {v2, v3, p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/i;ZLjava/lang/String;)La8/d;

    move-result-object p2

    .line 159
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GetDeviceStatsResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;La8/d;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 161
    :cond_1a
    instance-of v0, p2, Lv9/i4;

    if-eqz v0, :cond_1b

    .line 162
    new-instance v0, Lcom/nike/adapt/adk/GetAutoLaceResult;

    .line 163
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 164
    check-cast p2, Lv9/i4;

    .line 165
    iget-object p2, p2, Lv9/i4;->n:Lea/i;

    .line 166
    iget-object p2, p2, Lea/i;->h:Lea/h$c;

    .line 167
    iget p2, p2, Lea/h$c;->j:I

    .line 168
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GetAutoLaceResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;I)V

    .line 169
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 170
    :cond_1b
    instance-of v0, p2, Lv9/q4;

    if-eqz v0, :cond_1c

    new-instance p2, Lcom/nike/adapt/adk/SetAutoLaceResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v0, p1}, Lcom/nike/adapt/adk/SetAutoLaceResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_7

    .line 171
    :cond_1c
    instance-of v0, p2, Lv9/g3;

    if-eqz v0, :cond_1d

    .line 172
    new-instance v0, Lcom/nike/adapt/adk/GetGestureConfigResult;

    .line 173
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 174
    check-cast p2, Lv9/g3;

    .line 175
    iget-object p2, p2, Lv9/g3;->l:Ljava/util/List;

    .line 176
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 177
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GetGestureConfigResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Ljava/util/List;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto :goto_7

    .line 179
    :cond_1d
    instance-of v0, p2, Lv9/j3;

    if-eqz v0, :cond_1e

    .line 180
    new-instance v0, Lcom/nike/adapt/adk/SetGestureConfigResult;

    .line 181
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 182
    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;

    check-cast p2, Lv9/j3;

    .line 183
    iget-object p2, p2, Lv9/j3;->m:Lga/b;

    .line 184
    invoke-virtual {v2, p2}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;->from(Lga/b;)Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object p2

    .line 185
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/SetGestureConfigResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto :goto_7

    .line 187
    :cond_1e
    instance-of v0, p2, Lv9/n3;

    if-eqz v0, :cond_1f

    .line 188
    check-cast p2, Lv9/n3;

    .line 189
    iget-object p2, p2, Lv9/n3;->l:Lga/d;

    .line 190
    new-instance v0, Lcom/nike/adapt/adk/GetGestureStatsResult;

    .line 191
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 192
    new-instance v2, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;

    .line 193
    iget v3, p2, Lga/d;->j:I

    .line 194
    iget v4, p2, Lga/d;->h:I

    .line 195
    iget p2, p2, Lga/d;->i:I

    .line 196
    invoke-direct {v2, v3, v4, p2}, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;-><init>(III)V

    .line 197
    invoke-direct {v0, v1, p1, v2}, Lcom/nike/adapt/adk/GetGestureStatsResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureStatistics;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto :goto_7

    .line 199
    :cond_1f
    instance-of v0, p2, Lv9/q3;

    if-eqz v0, :cond_20

    .line 200
    new-instance p2, Lcom/nike/adapt/adk/ResetGestureConfigResult;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p2, v0, p1}, Lcom/nike/adapt/adk/ResetGestureConfigResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    invoke-direct {p0, p2}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto :goto_7

    .line 201
    :cond_20
    instance-of v0, p2, Lv9/k3;

    if-eqz v0, :cond_21

    .line 202
    new-instance v0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    .line 203
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    .line 204
    check-cast p2, Lv9/k3;

    .line 205
    iget-object p2, p2, Lv9/k3;->l:Lga/c;

    .line 206
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lga/c;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object p2

    .line 207
    invoke-direct {v0, v1, p1, p2}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto :goto_7

    .line 209
    :cond_21
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-virtual {p2}, Lv9/g;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Adk Result : "

    .line 210
    invoke-static {v0, p2, p1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    :cond_22
    :goto_7
    return-void
.end method

.method private final publish(Li8/b;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lde/n0;->b(Li8/b;)V

    .line 2
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p1}, Ls7/b;->a(Li8/b;)V

    return-void
.end method

.method private final publish(Li8/c;)V
    .locals 3

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    const-string v0, "errorResult"

    .line 4
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    sget-object v0, Ls7/b;->b:Lfe/c;

    invoke-virtual {v0, p1}, Lfe/c;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventBus"

    invoke-virtual {v0, v2, v1, p1}, Lo7/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final updateTightnessCache(Lcom/nike/adapt/adk/Shoe;Lea/i;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lea/i;->i:Lea/h$a;

    .line 2
    iget v0, v0, Lea/h$a;->j:I

    .line 3
    iget-object p2, p2, Lea/i;->h:Lea/h$c;

    .line 4
    iget p2, p2, Lea/h$c;->j:I

    .line 5
    sget-object v1, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownAbsoluteTightness(I)V

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownAbsoluteTightness(I)V

    .line 8
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownRelativeTightness(I)V

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownRelativeTightness(I)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownAbsoluteTightness(I)V

    .line 11
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownRelativeTightness(I)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownAbsoluteTightness(I)V

    .line 13
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownRelativeTightness(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteDisconnectedShoes(Lea/m;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lv9/l;

    invoke-direct {v0, p1}, Lv9/l;-><init>(Lea/m;)V

    new-instance p1, Lv9/j2;

    sget-object v1, Lcom/nike/adapt/adk/DeviceController$deleteDisconnectedShoes$1$1;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$deleteDisconnectedShoes$1$1;

    invoke-direct {p1, v1}, Lv9/j2;-><init>(Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    :cond_0
    return-void
.end method

.method public final getPairListener$app_prodRelease()Lv9/i;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->pairListener:Lv9/i;

    return-object v0
.end method

.method public final getUiScope()Lcom/nike/adapt/coroutine/MainCoroutineScope;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->pairListener:Lv9/i;

    invoke-virtual {p1, v0}, Lv9/l;->f(Lv9/i;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->modeListener:Lv9/s;

    invoke-virtual {p1, v0}, Lv9/l;->i(Lv9/s;)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->fitListener:Lv9/q;

    invoke-virtual {p1, v0}, Lv9/l;->h(Lv9/q;)V

    :cond_2
    return-void
.end method

.method public onStop(Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceController;->unsubscribe()V

    return-void
.end method

.method public requestFitCalibrate(Lp8/v;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lp8/u;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lv9/x2;

    .line 5
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 6
    invoke-direct {v0, v1, v1}, Lv9/x2;-><init>(Lqd/l;Lqd/l;)V

    .line 7
    sget-object v1, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {p1, v1, v0}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of p1, p1, Lp8/t;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz p1, :cond_1

    sget-object v0, Lv9/w2;->b:Lv9/w2;

    const-string v1, "adaptKitDeviceRequest"

    .line 10
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {p1, v1, v0}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestModeTo(Lp8/l;)V
    .locals 12

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lp8/d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lv9/z4;

    new-instance v9, Lea/e;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v2, "randomUUID()"

    invoke-static {v3, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lp8/d;

    .line 6
    iget-object v4, p1, Lp8/d;->a:Ljava/lang/String;

    .line 7
    iget-boolean v5, p1, Lp8/d;->d:Z

    .line 8
    new-instance v6, Lea/c;

    .line 9
    new-instance v2, Lea/i;

    .line 10
    new-instance v7, Lea/h$c;

    .line 11
    iget-object v8, p1, Lp8/d;->b:Ld9/a;

    .line 12
    iget v8, v8, Ld9/a;->j:I

    .line 13
    invoke-direct {v7, v8}, Lea/h$c;-><init>(I)V

    .line 14
    sget-object v8, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v10

    invoke-interface {v10}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v10

    .line 15
    invoke-direct {v2, v7, v10}, Lea/i;-><init>(Lea/h$c;I)V

    .line 16
    new-instance v7, Lea/d;

    .line 17
    iget-object v10, p1, Lp8/d;->b:Ld9/a;

    .line 18
    iget-object v10, v10, Ld9/a;->i:Lba/f;

    .line 19
    invoke-direct {v7, v10}, Lea/d;-><init>(Lba/f;)V

    .line 20
    invoke-direct {v6, v2, v7}, Lea/c;-><init>(Lea/i;Lea/d;)V

    .line 21
    new-instance v7, Lea/c;

    .line 22
    new-instance v2, Lea/i;

    .line 23
    new-instance v10, Lea/h$c;

    .line 24
    iget-object v11, p1, Lp8/d;->c:Ld9/a;

    .line 25
    iget v11, v11, Ld9/a;->j:I

    .line 26
    invoke-direct {v10, v11}, Lea/h$c;-><init>(I)V

    .line 27
    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v8

    invoke-interface {v8}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v8

    .line 28
    invoke-direct {v2, v10, v8}, Lea/i;-><init>(Lea/h$c;I)V

    .line 29
    new-instance v8, Lea/d;

    .line 30
    iget-object p1, p1, Lp8/d;->c:Ld9/a;

    .line 31
    iget-object p1, p1, Ld9/a;->i:Lba/f;

    .line 32
    invoke-direct {v8, p1}, Lea/d;-><init>(Lba/f;)V

    .line 33
    invoke-direct {v7, v2, v8}, Lea/c;-><init>(Lea/i;Lea/d;)V

    const/4 v8, 0x0

    move-object v2, v9

    .line 34
    invoke-direct/range {v2 .. v8}, Lea/e;-><init>(Ljava/util/UUID;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    .line 35
    sget-object p1, Lcom/nike/adapt/adk/DeviceController$requestModeTo$1;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestModeTo$1;

    sget-object v2, Lcom/nike/adapt/adk/DeviceController$requestModeTo$2;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestModeTo$2;

    .line 36
    invoke-direct {v1, v9, p1, v2}, Lv9/z4;-><init>(Lea/e;Lqd/l;Lqd/l;)V

    .line 37
    sget-object p1, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {v0, p1, v1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p1, Lp8/e0;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz v0, :cond_2

    new-instance v1, Lv9/b5;

    check-cast p1, Lp8/e0;

    .line 40
    iget-object p1, p1, Lp8/e0;->a:Lea/e;

    .line 41
    sget-object v2, Lcom/nike/adapt/adk/DeviceController$requestModeTo$3;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestModeTo$3;

    invoke-direct {v1, p1, v2}, Lv9/b5;-><init>(Lea/e;Lqd/l;)V

    .line 42
    sget-object p1, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {v0, p1, v1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v0, p1, Lp8/p;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz v0, :cond_2

    new-instance v1, Lv9/a5;

    check-cast p1, Lp8/p;

    .line 45
    iget-object p1, p1, Lp8/p;->a:Lea/e;

    .line 46
    sget-object v2, Lcom/nike/adapt/adk/DeviceController$requestModeTo$4;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestModeTo$4;

    invoke-direct {v1, p1, v2}, Lv9/a5;-><init>(Lea/e;Lqd/l;)V

    .line 47
    sget-object p1, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {v0, p1, v1}, Lv9/l;->e(Lw9/u1;Lv9/k;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V
    .locals 7

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, p2, Lp8/d0;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 4
    check-cast p2, Lp8/d0;

    .line 5
    iget v1, p2, Lp8/d0;->b:I

    if-ne v1, v5, :cond_1

    .line 6
    new-instance v1, Lea/h$c;

    .line 7
    iget p2, p2, Lp8/d0;->a:I

    .line 8
    invoke-direct {v1, p2}, Lea/h$c;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lea/h$a;

    .line 9
    iget p2, p2, Lp8/d0;->a:I

    .line 10
    invoke-direct {v1, p2}, Lea/h$a;-><init>(I)V

    .line 11
    :goto_0
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto/16 :goto_4

    .line 12
    :cond_2
    new-instance p1, Lv9/v4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$3;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$3;

    invoke-direct {p1, v1, v4, p2}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 13
    :cond_3
    new-instance p1, Lv9/v4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$2;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$2;

    invoke-direct {p1, v1, v4, p2}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 14
    :cond_4
    new-instance p1, Lv9/v4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$1;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$1;

    invoke-direct {p1, v1, v4, p2}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 15
    :cond_5
    instance-of v1, p2, Lp8/c0;

    if-eqz v1, :cond_a

    .line 16
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v2

    check-cast p2, Lp8/c0;

    .line 17
    iget v6, p2, Lp8/c0;->a:I

    add-int/2addr v2, v6

    .line 18
    iget v6, p2, Lp8/c0;->b:I

    if-ne v6, v5, :cond_6

    .line 19
    new-instance v6, Lea/h$c;

    invoke-direct {v6, v2}, Lea/h$c;-><init>(I)V

    goto :goto_1

    :cond_6
    new-instance v6, Lea/h$a;

    invoke-direct {v6, v2}, Lea/h$a;-><init>(I)V

    .line 20
    :goto_1
    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v1

    .line 21
    iget v2, p2, Lp8/c0;->a:I

    add-int/2addr v1, v2

    .line 22
    iget p2, p2, Lp8/c0;->b:I

    if-ne p2, v5, :cond_7

    .line 23
    new-instance p2, Lea/h$c;

    invoke-direct {p2, v1}, Lea/h$c;-><init>(I)V

    goto :goto_2

    :cond_7
    new-instance p2, Lea/h$a;

    invoke-direct {p2, v1}, Lea/h$a;-><init>(I)V

    .line 24
    :goto_2
    sget-object v1, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_9

    if-eq p1, v3, :cond_8

    goto/16 :goto_4

    .line 25
    :cond_8
    new-instance p1, Lv9/v4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$5;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$5;

    invoke-direct {p1, v6, v4, p2}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 26
    :cond_9
    new-instance p1, Lv9/v4;

    sget-object v1, Lcom/nike/adapt/adk/DeviceController$requestTo$4;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$4;

    invoke-direct {p1, p2, v4, v1}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 27
    :cond_a
    instance-of v1, p2, Lp8/k0;

    if-eqz v1, :cond_e

    .line 28
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    goto/16 :goto_4

    .line 29
    :cond_b
    new-instance p1, Lv9/s4;

    invoke-direct {p1, v4, v5, v4}, Lv9/s4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 30
    :cond_c
    new-instance p1, Lv9/s4;

    invoke-direct {p1, v4, v5, v4}, Lv9/s4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 31
    :cond_d
    new-instance p1, Lv9/s4;

    invoke-direct {p1, v4, v5, v4}, Lv9/s4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 32
    :cond_e
    instance-of v1, p2, Lp8/g;

    if-eqz v1, :cond_12

    .line 33
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_11

    if-eq p1, v3, :cond_10

    if-eq p1, v2, :cond_f

    goto/16 :goto_4

    .line 34
    :cond_f
    new-instance p1, Lv9/x1;

    invoke-direct {p1, v4, v5, v4}, Lv9/x1;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 35
    :cond_10
    new-instance p1, Lv9/x1;

    invoke-direct {p1, v4, v5, v4}, Lv9/x1;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 36
    :cond_11
    new-instance p1, Lv9/x1;

    invoke-direct {p1, v4, v5, v4}, Lv9/x1;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 37
    :cond_12
    instance-of v1, p2, Lp8/n;

    if-eqz v1, :cond_16

    .line 38
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_15

    if-eq p1, v3, :cond_14

    if-eq p1, v2, :cond_13

    goto/16 :goto_4

    .line 39
    :cond_13
    new-instance p1, Lv9/e4;

    invoke-direct {p1, v4, v5, v4}, Lv9/e4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 40
    :cond_14
    new-instance p1, Lv9/e4;

    invoke-direct {p1, v4, v5, v4}, Lv9/e4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 41
    :cond_15
    new-instance p1, Lv9/e4;

    invoke-direct {p1, v4, v5, v4}, Lv9/e4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 42
    :cond_16
    instance-of v1, p2, Lp8/j;

    if-eqz v1, :cond_1a

    .line 43
    check-cast p2, Lp8/j;

    .line 44
    iget-object p2, p2, Lp8/j;->a:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 45
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p2

    .line 46
    sget-object v1, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x5

    if-eq p1, v5, :cond_19

    if-eq p1, v3, :cond_18

    if-eq p1, v2, :cond_17

    goto/16 :goto_4

    .line 47
    :cond_17
    new-instance p1, Lv9/y3;

    .line 48
    new-instance v2, Lea/d;

    .line 49
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v3

    .line 50
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v4

    .line 51
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p2

    .line 52
    invoke-direct {v2, v3, v4, p2, v1}, Lea/d;-><init>(IIII)V

    .line 53
    invoke-direct {p1, v2}, Lv9/y3;-><init>(Lea/d;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 54
    :cond_18
    new-instance p1, Lv9/y3;

    .line 55
    new-instance v2, Lea/d;

    .line 56
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v3

    .line 57
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v4

    .line 58
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p2

    .line 59
    invoke-direct {v2, v3, v4, p2, v1}, Lea/d;-><init>(IIII)V

    .line 60
    invoke-direct {p1, v2}, Lv9/y3;-><init>(Lea/d;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 61
    :cond_19
    new-instance p1, Lv9/y3;

    .line 62
    new-instance v2, Lea/d;

    .line 63
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v3

    .line 64
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v4

    .line 65
    invoke-virtual {p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p2

    .line 66
    invoke-direct {v2, v3, v4, p2, v1}, Lea/d;-><init>(IIII)V

    .line 67
    invoke-direct {p1, v2}, Lv9/y3;-><init>(Lea/d;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 68
    :cond_1a
    instance-of v1, p2, Lp8/x;

    if-eqz v1, :cond_1e

    .line 69
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_1d

    if-eq p1, v3, :cond_1c

    if-eq p1, v2, :cond_1b

    goto/16 :goto_4

    .line 70
    :cond_1b
    new-instance p1, Lv9/v3;

    invoke-direct {p1, v4, v5, v4}, Lv9/v3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 71
    :cond_1c
    new-instance p1, Lv9/v3;

    invoke-direct {p1, v4, v5, v4}, Lv9/v3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 72
    :cond_1d
    new-instance p1, Lv9/v3;

    invoke-direct {p1, v4, v5, v4}, Lv9/v3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 73
    :cond_1e
    instance-of v1, p2, Lp8/h0;

    if-eqz v1, :cond_22

    .line 74
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v4, Lz8/a;->m:Lz8/a;

    invoke-virtual {v1, v4}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightPack(Lz8/a;)V

    .line 75
    sget-object v4, Lv7/c$e;->c:Lv7/c$e;

    invoke-virtual {v1, v4}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightEffect(Lv7/c;)V

    .line 76
    new-instance v1, Lv9/z0;

    .line 77
    check-cast p2, Lp8/h0;

    .line 78
    iget-object p2, p2, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    .line 79
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lcom/nike/adapt/adk/model/AdaptAnimation;)Lba/a;

    move-result-object p2

    .line 80
    iget-object v4, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 81
    iget-object v6, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 82
    invoke-direct {v1, p2, v4, v6}, Lv9/z0;-><init>(Lba/a;Lqd/l;Lqd/l;)V

    .line 83
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_21

    if-eq p1, v3, :cond_20

    if-eq p1, v2, :cond_1f

    goto/16 :goto_4

    .line 84
    :cond_1f
    invoke-static {v0, v1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 85
    :cond_20
    invoke-static {v0, v1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 86
    :cond_21
    invoke-static {v0, v1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 87
    :cond_22
    instance-of v1, p2, Lp8/i0;

    if-eqz v1, :cond_26

    .line 88
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v4, Lz8/a;->l:Lz8/a$a;

    check-cast p2, Lp8/i0;

    .line 89
    iget-object v6, p2, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    .line 90
    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lz8/a$a;->a(I)Lz8/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightPack(Lz8/a;)V

    .line 91
    sget-object v4, Lv7/c;->a:Lv7/c$b;

    .line 92
    iget-object v6, p2, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    .line 93
    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lv7/c$b;->a(I)Lv7/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nike/adapt/adk/InMemoryCache;->setPendingLightEffect(Lv7/c;)V

    .line 94
    new-instance v1, Lv9/x0;

    .line 95
    iget-object v4, p2, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    .line 96
    iget p2, p2, Lp8/i0;->b:I

    .line 97
    invoke-static {v4, p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)Lba/h;

    move-result-object p2

    .line 98
    iget-object v4, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 99
    iget-object v6, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 100
    invoke-direct {v1, p2, v4, v6}, Lv9/x0;-><init>(Lba/h;Lqd/l;Lqd/l;)V

    .line 101
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_25

    if-eq p1, v3, :cond_24

    if-eq p1, v2, :cond_23

    goto/16 :goto_4

    .line 102
    :cond_23
    invoke-static {v0, v1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 103
    :cond_24
    invoke-static {v0, v1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 104
    :cond_25
    invoke-static {v0, v1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 105
    :cond_26
    instance-of v1, p2, Lp8/j0;

    if-eqz v1, :cond_27

    .line 106
    new-instance p1, Lv9/d1;

    .line 107
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 108
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 109
    invoke-direct {p1, p2, v1}, Lv9/d1;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 110
    :cond_27
    instance-of v1, p2, Lp8/w;

    if-eqz v1, :cond_2c

    .line 111
    check-cast p2, Lp8/w;

    .line 112
    iget-object p2, p2, Lp8/w;->a:Lqd/l;

    if-nez p2, :cond_28

    .line 113
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 114
    :cond_28
    sget-object v1, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_2b

    if-eq p1, v3, :cond_2a

    if-eq p1, v2, :cond_29

    goto/16 :goto_4

    .line 115
    :cond_29
    new-instance p1, Lv9/v0;

    .line 116
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 117
    invoke-direct {p1, v1, p2}, Lv9/v0;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 118
    :cond_2a
    new-instance p1, Lv9/v0;

    .line 119
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 120
    invoke-direct {p1, v1, p2}, Lv9/v0;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 121
    :cond_2b
    new-instance p1, Lv9/v0;

    .line 122
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 123
    invoke-direct {p1, v1, p2}, Lv9/v0;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 124
    :cond_2c
    instance-of v1, p2, Lp8/k;

    if-eqz v1, :cond_2d

    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController;->checkForFirmwareUpdates()V

    goto/16 :goto_4

    .line 125
    :cond_2d
    instance-of v1, p2, Lp8/y;

    if-eqz v1, :cond_2e

    .line 126
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    .line 127
    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->parse()Lw9/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv9/l;->b(Lw9/u1;)Lfb/c;

    move-result-object v1

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parse(Lfb/c;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    .line 128
    invoke-interface {p2, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

    .line 129
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    .line 130
    sget-object p2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/Shoe;->parse()Lw9/u1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lv9/l;->b(Lw9/u1;)Lfb/c;

    move-result-object p2

    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parse(Lfb/c;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p2

    .line 131
    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

    .line 132
    new-instance p1, Lcom/nike/adapt/adk/GetCurrentFirmwareVersionsResult;

    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->controllerEventUUID:Li8/d;

    invoke-direct {p1, p2}, Lcom/nike/adapt/adk/GetCurrentFirmwareVersionsResult;-><init>(Li8/d;)V

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/DeviceController;->publish(Li8/b;)V

    goto/16 :goto_4

    .line 133
    :cond_2e
    instance-of v1, p2, Lp8/b0;

    if-eqz v1, :cond_32

    .line 134
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_31

    if-eq p1, v3, :cond_30

    if-eq p1, v2, :cond_2f

    goto/16 :goto_4

    .line 135
    :cond_2f
    new-instance p1, Lv9/m5;

    invoke-direct {p1, v4, v5, v4}, Lv9/m5;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 136
    :cond_30
    new-instance p1, Lv9/m5;

    invoke-direct {p1, v4, v5, v4}, Lv9/m5;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 137
    :cond_31
    new-instance p1, Lv9/m5;

    invoke-direct {p1, v4, v5, v4}, Lv9/m5;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 138
    :cond_32
    instance-of v1, p2, Lp8/f0;

    if-eqz v1, :cond_3a

    .line 139
    check-cast p2, Lp8/f0;

    .line 140
    iget-boolean p2, p2, Lp8/f0;->a:Z

    if-eqz p2, :cond_36

    .line 141
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_35

    if-eq p1, v3, :cond_34

    if-eq p1, v2, :cond_33

    goto/16 :goto_4

    .line 142
    :cond_33
    new-instance p1, Lv9/c3;

    invoke-direct {p1, v4, v5, v4}, Lv9/c3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 143
    :cond_34
    new-instance p1, Lv9/c3;

    invoke-direct {p1, v4, v5, v4}, Lv9/c3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 144
    :cond_35
    new-instance p1, Lv9/c3;

    invoke-direct {p1, v4, v5, v4}, Lv9/c3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 145
    :cond_36
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_39

    if-eq p1, v3, :cond_38

    if-eq p1, v2, :cond_37

    goto/16 :goto_4

    .line 146
    :cond_37
    new-instance p1, Lv9/z2;

    invoke-direct {p1, v4, v5, v4}, Lv9/z2;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 147
    :cond_38
    new-instance p1, Lv9/z2;

    invoke-direct {p1, v4, v5, v4}, Lv9/z2;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 148
    :cond_39
    new-instance p1, Lv9/z2;

    invoke-direct {p1, v4, v5, v4}, Lv9/z2;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 149
    :cond_3a
    instance-of v1, p2, Lp8/o;

    if-eqz v1, :cond_3e

    .line 150
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_3d

    if-eq p1, v3, :cond_3c

    if-eq p1, v2, :cond_3b

    goto/16 :goto_4

    .line 151
    :cond_3b
    new-instance p1, Lv9/j2;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$10;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$10;

    invoke-direct {p1, p2}, Lv9/j2;-><init>(Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 152
    :cond_3c
    new-instance p1, Lv9/j2;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$9;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$9;

    invoke-direct {p1, p2}, Lv9/j2;-><init>(Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 153
    :cond_3d
    new-instance p1, Lv9/j2;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$8;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$8;

    invoke-direct {p1, p2}, Lv9/j2;-><init>(Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 154
    :cond_3e
    instance-of v1, p2, Lp8/z;

    if-eqz v1, :cond_42

    .line 155
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_41

    if-eq p1, v3, :cond_40

    if-eq p1, v2, :cond_3f

    goto/16 :goto_4

    .line 156
    :cond_3f
    new-instance p1, Lv9/b4;

    invoke-direct {p1, v4, v5, v4}, Lv9/b4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 157
    :cond_40
    new-instance p1, Lv9/b4;

    invoke-direct {p1, v4, v5, v4}, Lv9/b4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 158
    :cond_41
    new-instance p1, Lv9/b4;

    invoke-direct {p1, v4, v5, v4}, Lv9/b4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 159
    :cond_42
    instance-of v1, p2, Lp8/f;

    if-eqz v1, :cond_47

    .line 160
    check-cast p2, Lp8/f;

    .line 161
    iget v1, p2, Lp8/f;->b:I

    if-ne v1, v5, :cond_43

    .line 162
    new-instance v1, Lea/h$c;

    .line 163
    iget p2, p2, Lp8/f;->a:I

    .line 164
    invoke-direct {v1, p2}, Lea/h$c;-><init>(I)V

    goto :goto_3

    :cond_43
    new-instance v1, Lea/h$a;

    .line 165
    iget p2, p2, Lp8/f;->a:I

    .line 166
    invoke-direct {v1, p2}, Lea/h$a;-><init>(I)V

    .line 167
    :goto_3
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_46

    if-eq p1, v3, :cond_45

    if-eq p1, v2, :cond_44

    goto/16 :goto_4

    .line 168
    :cond_44
    new-instance p1, Lv9/p4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$13;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$13;

    invoke-direct {p1, v1, p2}, Lv9/p4;-><init>(Lea/h;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 169
    :cond_45
    new-instance p1, Lv9/p4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$12;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$12;

    invoke-direct {p1, v1, p2}, Lv9/p4;-><init>(Lea/h;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 170
    :cond_46
    new-instance p1, Lv9/p4;

    sget-object p2, Lcom/nike/adapt/adk/DeviceController$requestTo$11;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$11;

    invoke-direct {p1, v1, p2}, Lv9/p4;-><init>(Lea/h;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 171
    :cond_47
    instance-of v1, p2, Lp8/e;

    if-eqz v1, :cond_4b

    .line 172
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_4a

    if-eq p1, v3, :cond_49

    if-eq p1, v2, :cond_48

    goto/16 :goto_4

    .line 173
    :cond_48
    new-instance p1, Lv9/h4;

    invoke-direct {p1, v4, v5, v4}, Lv9/h4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 174
    :cond_49
    new-instance p1, Lv9/h4;

    invoke-direct {p1, v4, v5, v4}, Lv9/h4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 175
    :cond_4a
    new-instance p1, Lv9/h4;

    invoke-direct {p1, v4, v5, v4}, Lv9/h4;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto/16 :goto_4

    .line 176
    :cond_4b
    instance-of v1, p2, Lp8/g0;

    if-eqz v1, :cond_4f

    .line 177
    sget-object v1, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_4e

    if-eq p1, v3, :cond_4d

    if-eq p1, v2, :cond_4c

    goto/16 :goto_4

    .line 178
    :cond_4c
    new-instance p1, Lv9/i3;

    .line 179
    check-cast p2, Lp8/g0;

    .line 180
    iget-object p2, p2, Lp8/g0;->a:Ljava/util/List;

    .line 181
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 182
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 183
    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 184
    invoke-direct {p1, p2, v1, v2}, Lv9/i3;-><init>(Ljava/util/List;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto :goto_4

    .line 185
    :cond_4d
    new-instance p1, Lv9/i3;

    .line 186
    check-cast p2, Lp8/g0;

    .line 187
    iget-object p2, p2, Lp8/g0;->a:Ljava/util/List;

    .line 188
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 189
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 190
    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 191
    invoke-direct {p1, p2, v1, v2}, Lv9/i3;-><init>(Ljava/util/List;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto :goto_4

    .line 192
    :cond_4e
    new-instance p1, Lv9/i3;

    .line 193
    check-cast p2, Lp8/g0;

    .line 194
    iget-object p2, p2, Lp8/g0;->a:Ljava/util/List;

    .line 195
    invoke-static {p2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 196
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 197
    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 198
    invoke-direct {p1, p2, v1, v2}, Lv9/i3;-><init>(Ljava/util/List;Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto :goto_4

    .line 199
    :cond_4f
    instance-of p2, p2, Lp8/a0;

    if-eqz p2, :cond_53

    .line 200
    sget-object p2, Lcom/nike/adapt/adk/DeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_52

    if-eq p1, v3, :cond_51

    if-eq p1, v2, :cond_50

    goto :goto_4

    .line 201
    :cond_50
    new-instance p1, Lv9/f3;

    .line 202
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 203
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 204
    invoke-direct {p1, p2, v1}, Lv9/f3;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    goto :goto_4

    .line 205
    :cond_51
    new-instance p1, Lv9/f3;

    .line 206
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 207
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 208
    invoke-direct {p1, p2, v1}, Lv9/f3;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto :goto_4

    .line 209
    :cond_52
    new-instance p1, Lv9/f3;

    .line 210
    iget-object p2, p0, Lcom/nike/adapt/adk/DeviceController;->notConnected:Lqd/l;

    .line 211
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->minimumFirmwareRequirementNotMet:Lqd/l;

    .line 212
    invoke-direct {p1, p2, v1}, Lv9/f3;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    :cond_53
    :goto_4
    return-void
.end method

.method public subscribe(Lea/m;)V
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/nike/adapt/adk/DeviceController;->isSubscribed:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lv9/l;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController;->adaptIdentifier:Lv9/a;

    invoke-direct {v0, p1, v1}, Lv9/l;-><init>(Lea/m;Lv9/a;)V

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->pairListener:Lv9/i;

    invoke-virtual {v0, p1}, Lv9/l;->f(Lv9/i;)V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->modeListener:Lv9/s;

    invoke-virtual {v0, p1}, Lv9/l;->i(Lv9/s;)V

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController;->fitListener:Lv9/q;

    invoke-virtual {v0, p1}, Lv9/l;->h(Lv9/q;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/nike/adapt/adk/DeviceController;->isSubscribed:Z

    .line 7
    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/nike/adapt/adk/DeviceController;->isSubscribed:Z

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv9/l;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    return-void
.end method

.method public updatePair(Lea/m;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lo7/x;->a:Lo7/x;

    .line 2
    iget-object v1, p1, Lea/m;->i:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lea/m;->u:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Lea/m;->k:Lea/b;

    .line 5
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 6
    iget-object v4, p1, Lea/m;->l:Lea/b;

    .line 7
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    const-string v5, "Update Pair Called : name = "

    const-string v6, " id = "

    const-string v7, " left :"

    .line 8
    invoke-static {v5, v1, v6, v2, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController;->requester:Lv9/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv9/l;->k(Lea/m;)V

    :cond_1
    return-void
.end method
