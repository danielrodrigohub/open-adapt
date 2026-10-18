.class final Lcom/nike/adapt/adk/DeviceCache;
.super Ljava/lang/Object;
.source "InMemoryCache.kt"

# interfaces
.implements Lcom/nike/adapt/adk/IDeviceCacheADK;


# instance fields
.field private adaptFirmwareVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

.field private battery:Lcom/nike/adapt/adk/model/Battery;

.field private deviceStats:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private initialFirmwareVersion:Ljava/lang/String;

.field private final isRightFoot:Z

.field private lastKnownAbsoluteTightness:I

.field private lastKnownConnectionState:Lv9/e;

.field private lastKnownRelativeTightness:I

.field private maxTightness:I

.field private serialNumber:Ljava/lang/String;

.field private shoeType:Ls9/r;


# direct methods
.method public constructor <init>(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "lastKnownConnectionState"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "battery"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFirmwareVersion"

    invoke-static {p8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/DeviceCache;->shoeType:Ls9/r;

    .line 4
    iput p3, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownAbsoluteTightness:I

    .line 5
    iput p4, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownRelativeTightness:I

    .line 6
    iput-object p5, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownConnectionState:Lv9/e;

    .line 7
    iput-object p6, p0, Lcom/nike/adapt/adk/DeviceCache;->battery:Lcom/nike/adapt/adk/model/Battery;

    .line 8
    iput-object p7, p0, Lcom/nike/adapt/adk/DeviceCache;->serialNumber:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/nike/adapt/adk/DeviceCache;->deviceStats:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/nike/adapt/adk/DeviceCache;->maxTightness:I

    .line 12
    iput-object p8, p0, Lcom/nike/adapt/adk/DeviceCache;->firmwareVersion:Ljava/lang/String;

    .line 13
    new-instance p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getFirmwareVersion()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->adaptFirmwareVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    return-void
.end method

.method public synthetic constructor <init>(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILrd/h;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    .line 14
    sget-object v6, Lv9/e;->i:Lv9/e;

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    .line 15
    new-instance v7, Lcom/nike/adapt/adk/model/Battery;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v2, v8, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_5

    move-object v4, v2

    goto :goto_5

    :cond_5
    move-object/from16 v4, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    const-string v8, ""

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v2, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/16 v0, 0x2a

    goto :goto_8

    :cond_8
    move/from16 v0, p10

    :goto_8
    move-object p2, p0

    move p3, p1

    move-object p4, v1

    move p5, v3

    move/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v4

    move-object/from16 p10, v8

    move-object/from16 p11, v2

    move/from16 p12, v0

    .line 16
    invoke-direct/range {p2 .. p12}, Lcom/nike/adapt/adk/DeviceCache;-><init>(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    return v0
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/DeviceCache;ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/nike/adapt/adk/DeviceCache;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result v1

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/nike/adapt/adk/DeviceCache;->copy(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/nike/adapt/adk/DeviceCache;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAdaptFirmwareVersion$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFirmwareVersion$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component10()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result v0

    return v0
.end method

.method public final component2()Ls9/r;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v0

    return-object v0
.end method

.method public final component3()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v0

    return v0
.end method

.method public final component4()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v0

    return v0
.end method

.method public final component5()Lv9/e;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/nike/adapt/adk/model/Battery;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/nike/adapt/adk/DeviceCache;
    .locals 12

    const-string v0, "lastKnownConnectionState"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "battery"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFirmwareVersion"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/DeviceCache;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/nike/adapt/adk/DeviceCache;-><init>(ZLs9/r;IILv9/e;Lcom/nike/adapt/adk/model/Battery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/DeviceCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/DeviceCache;

    iget-boolean v1, p0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    iget-boolean v3, p1, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result p1

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 2

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBattery()Lcom/nike/adapt/adk/model/Battery;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->battery:Lcom/nike/adapt/adk/model/Battery;

    return-object v0
.end method

.method public getDeviceStats()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->deviceStats:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitialFirmwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLastKnownAbsoluteTightness()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownAbsoluteTightness:I

    return v0
.end method

.method public getLastKnownConnectionState()Lv9/e;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownConnectionState:Lv9/e;

    return-object v0
.end method

.method public getLastKnownRelativeTightness()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownRelativeTightness:I

    return v0
.end method

.method public getMaxTightness()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/DeviceCache;->maxTightness:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getShoeType()Ls9/r;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceCache;->shoeType:Ls9/r;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v1

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v0, v3}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v1

    .line 3
    invoke-static {v1, v0, v3}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    const/16 v3, 0x1f

    .line 5
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v0

    sget-object v1, Lv9/e;->o:Lv9/e;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/adk/DeviceCache;->setFirmwareVersion(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->adaptFirmwareVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    return-void
.end method

.method public setBattery(Lcom/nike/adapt/adk/model/Battery;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->battery:Lcom/nike/adapt/adk/model/Battery;

    return-void
.end method

.method public setDeviceStats(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->deviceStats:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public final setInitialFirmwareVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setLastKnownAbsoluteTightness(I)V
    .locals 0

    iput p1, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownAbsoluteTightness:I

    return-void
.end method

.method public setLastKnownConnectionState(Lv9/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownConnectionState:Lv9/e;

    return-void
.end method

.method public setLastKnownRelativeTightness(I)V
    .locals 0

    iput p1, p0, Lcom/nike/adapt/adk/DeviceCache;->lastKnownRelativeTightness:I

    return-void
.end method

.method public setMaxTightness(I)V
    .locals 0

    iput p1, p0, Lcom/nike/adapt/adk/DeviceCache;->maxTightness:I

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setShoeType(Ls9/r;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceCache;->shoeType:Ls9/r;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-boolean v0, p0, Lcom/nike/adapt/adk/DeviceCache;->isRightFoot:Z

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getShoeType()Ls9/r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownAbsoluteTightness()I

    move-result v2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownRelativeTightness()I

    move-result v3

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getLastKnownConnectionState()Lv9/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nike/adapt/adk/DeviceCache;->initialFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getDeviceStats()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceCache;->getMaxTightness()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceCache(isRightFoot="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shoeType="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastKnownAbsoluteTightness="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastKnownRelativeTightness="

    const-string v1, ", lastKnownConnectionState="

    .line 1
    invoke-static {v10, v2, v0, v3, v1}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", battery="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serialNumber="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", initialFirmwareVersion="

    const-string v1, ", deviceStats="

    .line 3
    invoke-static {v10, v6, v0, v7, v1}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxTightness="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
