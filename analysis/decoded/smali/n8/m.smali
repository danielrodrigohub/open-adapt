.class public final Ln8/m;
.super Ljava/util/TimerTask;
.source "FirmwareUpdateService.kt"


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Ln8/m;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Ln8/m;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 2
    iget-object v1, v1, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequestConnectionTimeoutTimer handleComplete"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ln8/m;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    new-instance v1, Ln8/m$a;

    invoke-direct {v1, v0}, Ln8/m$a;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    invoke-virtual {v0, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->d(Lqd/a;)V

    return-void
.end method
