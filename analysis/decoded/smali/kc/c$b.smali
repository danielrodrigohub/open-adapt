.class public final Lkc/c$b;
.super Lkc/c;
.source "FileTransferError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CORE_RF_FILE_TRANSFER_ERROR_NAK_ON_PUBLISH"

    invoke-direct {p0, v0, p3, p2, p1}, Lkc/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
