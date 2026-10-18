.class public abstract Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError;
.super Ljava/lang/Object;
.source "AdaptFirmwareUpdateState.kt"

# interfaces
.implements Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UploadInProgressError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$UserCanceled;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$TransferStopped;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError;-><init>()V

    return-void
.end method
