.class public final Ln8/l;
.super Ljava/util/TimerTask;
.source "FirmwareUpdateService.kt"


# instance fields
.field public h:F

.field public final synthetic i:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Ln8/l;->i:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ln8/l;->h:F

    iget-object v1, p0, Ln8/l;->i:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 2
    iget v2, v1, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x3c23d70a

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    const-string v0, "Firmware not progressing timeout"

    .line 3
    invoke-static {v1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ln8/l;->i:Lcom/nike/adapt/service/FirmwareUpdateService;

    const-string v1, "FW_PROGRESS_ERROR"

    invoke-static {v0, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;

    .line 5
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_2
    iget-object v0, p0, Ln8/l;->i:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 7
    iget v0, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    .line 8
    iput v0, p0, Ln8/l;->h:F

    return-void
.end method
