.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
.super Ljava/lang/Object;
.source "BigfootPairedDevices.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final colorWay:Ljava/lang/String;

.field private final hasConnectedLocally:Z

.field private final isDefault:Z

.field private final lastSnapshotUsedName:Ljava/lang/String;

.field private final leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

.field private final localUpdatedMillis:J

.field private final pairId:Ljava/lang/String;

.field private final pairName:Ljava/lang/String;

.field private final rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

.field private final scheduledForDeletion:Z

.field private final snapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
            ">;JZZ)V"
        }
    .end annotation

    const-string v0, "pairId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftDevice"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightDevice"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshots"

    invoke-static {p8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    .line 5
    iput-object p4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    .line 6
    iput-object p5, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    .line 7
    iput-object p6, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    .line 10
    iput-wide p9, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    .line 11
    iput-boolean p11, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    .line 12
    iput-boolean p12, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZILrd/h;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v12, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v14, v2

    goto :goto_1

    :cond_1
    move/from16 v14, p11

    :goto_1
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    move v15, v2

    goto :goto_2

    :cond_2
    move/from16 v15, p12

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 13
    invoke-direct/range {v3 .. v15}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZILjava/lang/Object;)Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-wide/from16 p9, v10

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->copy(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    return v0
.end method

.method public final component4()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    return-object v0
.end method

.method public final component5()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    return-object v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
            ">;JZZ)",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;"
        }
    .end annotation

    const-string v0, "pairId"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairName"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftDevice"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightDevice"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshots"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    move-object v1, v0

    move/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getColorWay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasConnectedLocally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    return v0
.end method

.method public final getLastSnapshotUsedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLeftDevice()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    return-object v0
.end method

.method public final getLocalUpdatedMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    return-wide v0
.end method

.method public final getPairId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPairName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRightDevice()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    return-object v0
.end method

.method public final getScheduledForDeletion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    return v0
.end method

.method public final getSnapshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    return v0
.end method

.method public final shallowEquals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    iget-object v3, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    iget-object p1, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    iget-object v3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    iget-object v4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    iget-object v5, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    iget-object v6, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    iget-object v7, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    iget-wide v8, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    iget-boolean v10, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    iget-boolean v11, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    const-string v12, "BigfootPairedDevices(pairId="

    const-string v13, ", pairName="

    const-string v14, ", isDefault="

    .line 1
    invoke-static {v12, v0, v13, v1, v14}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastSnapshotUsedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colorWay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localUpdatedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledForDeletion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasConnectedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->pairName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->leftDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->rightDevice:Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->lastSnapshotUsedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->colorWay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->snapshots:Ljava/util/List;

    .line 1
    invoke-static {v0, p1}, Lca/a;->d(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    invoke-virtual {v1, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->localUpdatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->scheduledForDeletion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->hasConnectedLocally:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
