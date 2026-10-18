.class public final Lcom/nike/adapt/service/a;
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

    iput-object p1, p0, Lcom/nike/adapt/service/a;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/service/a;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v1, Lcom/nike/adapt/service/FirmwareUpdateService;->s:Lcom/nike/adapt/service/FirmwareUpdateService$a;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
