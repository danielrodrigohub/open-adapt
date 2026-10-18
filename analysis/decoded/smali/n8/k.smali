.class public final Ln8/k;
.super Lrd/o;
.source "FirmwareUpdateService.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Ln8/k;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ln8/k;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 2
    iget-boolean v1, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->q:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->r:Lx/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0xa455

    .line 4
    iget-object v0, v0, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "notificationManager"

    .line 5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    .line 7
    :goto_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
