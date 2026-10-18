.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;
.super Ljava/lang/Object;
.source "AdaptFirmwareUpdateState.kt"

# interfaces
.implements Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckUpdateStatusError"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
