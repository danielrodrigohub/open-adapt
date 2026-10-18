.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;
.super Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.source "AdaptFirmwareStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage;-><init>(Lrd/h;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Failure"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
