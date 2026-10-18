.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices$Creator;
.super Ljava/lang/Object;
.source "BigfootPairedDevices.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    sget-object v6, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v5

    :goto_1
    if-eq v12, v6, :cond_1

    sget-object v13, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v14, 0x1

    .line 1
    invoke-static {v13, v0, v11, v12, v14}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v12

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move v14, v5

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v5

    :goto_3
    new-instance v15, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    move-object v2, v15

    move v5, v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-wide v11, v12

    move v13, v14

    move v14, v0

    invoke-direct/range {v2 .. v14}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZZ)V

    return-object v15
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices$Creator;->newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    move-result-object p1

    return-object p1
.end method
