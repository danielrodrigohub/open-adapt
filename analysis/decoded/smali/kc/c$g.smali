.class public final Lkc/c$g;
.super Lkc/c;
.source "FileTransferError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    const-string v0, "CORE_RF_FILE_TRANSFER_ERROR_TRANSFER_ALREADY_IN_FLIGHT"

    const/4 v1, 0x1

    const-string v2, "FirmwareTransferAlreadyInProgress"

    invoke-direct {p0, v0, v1, p1, v2}, Lkc/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
