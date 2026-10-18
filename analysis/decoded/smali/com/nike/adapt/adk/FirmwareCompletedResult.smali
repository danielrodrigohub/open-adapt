.class public final Lcom/nike/adapt/adk/FirmwareCompletedResult;
.super Lcom/nike/adapt/adk/FirmwareUpdateResult;
.source "FirmwareUpdateResults.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/FirmwareCompletedResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/nike/adapt/adk/FirmwareCompletedResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/FirmwareCompletedResult;

    invoke-direct {v0}, Lcom/nike/adapt/adk/FirmwareCompletedResult;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/FirmwareCompletedResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareCompletedResult;

    new-instance v0, Lcom/nike/adapt/adk/FirmwareCompletedResult$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/FirmwareCompletedResult$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/FirmwareCompletedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/FirmwareUpdateResult;-><init>(Lrd/h;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
