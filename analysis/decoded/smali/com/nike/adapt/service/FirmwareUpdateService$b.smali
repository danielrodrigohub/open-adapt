.class public final Lcom/nike/adapt/service/FirmwareUpdateService$b;
.super Landroid/os/Binder;
.source "FirmwareUpdateService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/service/FirmwareUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService$b;->a:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
