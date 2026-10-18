.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;
.super Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError;
.source "AdaptFirmwareUpdateState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlotCheck"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError;-><init>(Lrd/h;)V

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
