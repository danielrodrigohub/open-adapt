.class public final Lcom/nike/adapt/service/FirmwareUpdateService$c;
.super Lrd/o;
.source "FirmwareUpdateService.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/service/FirmwareUpdateService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/o;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService$c;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/o;

    const-string v0, "$this$firmwareUpgradeListener"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/nike/adapt/service/b;

    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService$c;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {v0, v1}, Lcom/nike/adapt/service/b;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    .line 4
    iput-object v0, p1, Lv9/o;->b:Lqd/l;

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
