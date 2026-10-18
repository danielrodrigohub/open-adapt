.class public final Lkc/c$h;
.super Lkc/c;
.source "FileTransferError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Transfer Canceled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lkc/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
