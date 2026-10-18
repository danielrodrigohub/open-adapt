.class public final Ln8/n;
.super Ljava/util/TimerTask;
.source "FirmwareUpdateService.kt"


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Ln8/n;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Ln8/n;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 2
    iget-object v1, v1, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequestConnectionTimer 30000 milliseconds has passed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ln8/n;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 5
    iget-object v1, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->n:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->n:Ljava/util/Timer;

    .line 7
    new-instance v1, Ljava/util/Timer;

    const-string v2, "fw_upgrade_connection_timeout_timer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ln8/m;

    invoke-direct {v2, v0}, Ln8/m;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    const-wide/32 v3, 0x15f90

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 9
    iput-object v1, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->n:Ljava/util/Timer;

    return-void
.end method
