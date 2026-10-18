.class public final Lm9/i;
.super Lrd/o;
.source "FirmwareUpdateActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lm9/i;->h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "FirmwareUpdateCrumb Firmware Update Get Help: FW_STATS"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isSoftwareUpdateErrorThrownSecondTryGetHelp()V

    .line 6
    new-instance p1, Lh9/g0;

    sget-object v0, Lh9/g0;->f:Lh9/g0$b;

    invoke-virtual {v0}, Lh9/g0$b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lm9/i;->h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lm9/i;->h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    sget-object v0, Ls9/z;->m:Ls9/z;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->G(Ls9/z;)V

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
