.class public final Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;
.super Lp8/a;
.source "FirmwareUpdateActivity.kt"

# interfaces
.implements Lm9/o$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;
    }
.end annotation


# static fields
.field public static final Q:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;


# instance fields
.field public final I:Ljava/lang/String;

.field public J:Lq7/e;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public final L:Lh8/c;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Ls9/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;

    invoke-direct {v0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->Q:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    const-class v0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    check-cast v0, Lrd/g;

    invoke-virtual {v0}, Lrd/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->L:Lh8/c;

    return-void
.end method


# virtual methods
.method public final G(Ls9/z;)V
    .locals 5

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadNextState state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->P:Ls9/z;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    sget-object p1, Lm9/h;->j0:Lm9/h$a;

    .line 6
    new-instance p1, Lm9/h;

    invoke-direct {p1}, Lm9/h;-><init>()V

    goto :goto_1

    :pswitch_1
    const-string p1, "connectivity"

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 8
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lm9/e;->q0:Lm9/e$a;

    .line 11
    new-instance p1, Lm9/e;

    invoke-direct {p1}, Lm9/e;-><init>()V

    goto :goto_1

    .line 12
    :cond_1
    sget-object p1, Lm9/h;->j0:Lm9/h$a;

    .line 13
    new-instance p1, Lm9/h;

    invoke-direct {p1}, Lm9/h;-><init>()V

    goto :goto_1

    .line 14
    :pswitch_2
    sget-object p1, Lm9/e;->q0:Lm9/e$a;

    .line 15
    new-instance p1, Lm9/e;

    invoke-direct {p1}, Lm9/e;-><init>()V

    goto :goto_1

    .line 16
    :pswitch_3
    sget-object p1, Lm9/v;->o0:Lm9/v$a;

    .line 17
    new-instance p1, Lm9/v;

    invoke-direct {p1}, Lm9/v;-><init>()V

    goto :goto_1

    .line 18
    :pswitch_4
    sget-object p1, Lm9/r;->f0:Lm9/r$a;

    .line 19
    new-instance p1, Lm9/r;

    invoke-direct {p1}, Lm9/r;-><init>()V

    goto :goto_1

    .line 20
    :pswitch_5
    sget-object p1, Lm9/u;->l0:Lm9/u$a;

    .line 21
    new-instance p1, Lm9/u;

    invoke-direct {p1}, Lm9/u;-><init>()V

    goto :goto_1

    .line 22
    :pswitch_6
    sget-object p1, Lm9/o;->p0:Lm9/o$a;

    .line 23
    new-instance p1, Lm9/o;

    invoke-direct {p1}, Lm9/o;-><init>()V

    goto :goto_1

    .line 24
    :pswitch_7
    sget-object p1, Lm9/t;->d0:Lm9/t$a;

    .line 25
    new-instance p1, Lm9/t;

    invoke-direct {p1}, Lm9/t;-><init>()V

    .line 26
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v1

    .line 27
    iget-boolean v1, v1, Landroidx/fragment/app/x;->D:Z

    if-nez v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    check-cast v2, Lrd/g;

    invoke-virtual {v2}, Lrd/g;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " openingFragment: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    .line 30
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const v0, 0x7f0a0077

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 2
    iget-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 3
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lp8/a;->F:Lt9/a;

    .line 7
    invoke-virtual {p1}, Lt9/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Both Connected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/FirmwareUpdateResult;)V
    .locals 17
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    const-string v1, "result"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, v0, Lcom/nike/adapt/adk/FirmwareFailureResult;

    if-eqz v1, :cond_5

    .line 2
    check-cast v0, Lcom/nike/adapt/adk/FirmwareFailureResult;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/FirmwareFailureResult;->getErrorState()Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadFailed;

    :goto_0
    const-string v14, "FirmwareUpdateCrumb "

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lo7/x;->a:Lo7/x;

    iget-object v3, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorState: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v3, "No Internet Errors Download Failed"

    .line 6
    invoke-virtual {v1, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateFailedReason(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateNetworkFailure(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->N:Z

    if-nez v0, :cond_8

    .line 10
    iput-boolean v2, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->N:Z

    const-string v0, "FirmwareUpdateCrumb Network Error: FW_STATS"

    .line 11
    invoke-virtual {v1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 12
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v1, Lm9/n;

    invoke-direct {v1, v13}, Lm9/n;-><init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;)V

    invoke-virtual {v0, v13, v1}, Ls9/y;->i(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;

    goto/16 :goto_2

    .line 13
    :cond_1
    instance-of v0, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$ConnectionLost;

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    iget-boolean v3, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->O:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connectionLost: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 15
    iget-boolean v1, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->O:Z

    if-nez v1, :cond_8

    .line 16
    iput-boolean v2, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->O:Z

    const-string v1, "FirmwareUpdateCrumb Connection Error: FW_STATS"

    .line 17
    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lh9/w;

    new-instance v1, Lb9/k;

    invoke-direct {v1}, Lb9/k;-><init>()V

    invoke-direct {v0, v1}, Lh9/w;-><init>(Lb9/c;)V

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 20
    :cond_2
    sget-object v15, Lo7/x;->a:Lo7/x;

    iget-object v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    iget-boolean v1, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->M:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " generalFirmwareFailed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 21
    iget-boolean v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->M:Z

    if-nez v0, :cond_8

    .line 22
    iput-boolean v2, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->M:Z

    const-string v0, "FirmwareUpdateCrumb LFT Error: FW_STATS"

    .line 23
    invoke-virtual {v15, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 24
    sget-object v0, Ls9/g;->a:Ls9/g;

    .line 25
    sget-object v0, Ls9/g;->c:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    .line 26
    invoke-interface {v0}, Lh8/a;->p()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lh8/a;->q(I)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0}, Lh8/a;->M()J

    move-result-wide v5

    const v1, 0x240c8400

    int-to-long v7, v1

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-gez v1, :cond_3

    .line 28
    invoke-interface {v0}, Lh8/a;->p()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_3

    .line 29
    invoke-interface {v0, v3}, Lh8/a;->q(I)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lh8/a;->n(J)V

    move v2, v3

    :goto_1
    const-string v0, "cancel"

    const-string v1, "OK"

    if-eqz v2, :cond_4

    .line 31
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v2}, Lcom/nike/adapt/analytics/TrackManager;->isSoftwareUpdateErrorThrownSecondTry()V

    .line 32
    sget-object v2, Ls9/y;->a:Ls9/y;

    new-instance v10, Lm9/i;

    invoke-direct {v10, v13}, Lm9/i;-><init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;)V

    sget-object v9, Lm9/j;->h:Lm9/j;

    .line 33
    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v11, Ls9/y$a;

    const/4 v0, 0x0

    const/16 v3, 0xc

    const-string v4, "SECOND_LFT_ERROR_DIALOG"

    invoke-direct {v11, v4, v1, v0, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f1100a3

    const/4 v4, 0x0

    const v5, 0x7f1100a0

    const/4 v6, 0x0

    const v7, 0x7f1101a3

    const v8, 0x7f1100c7

    const/4 v12, 0x0

    const/16 v16, 0x94

    move-object v0, v2

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v12

    move/from16 v12, v16

    .line 35
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    .line 36
    iget-object v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " displayCustomerCareErrorMessage: true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 37
    :cond_4
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v2}, Lcom/nike/adapt/analytics/TrackManager;->isSoftwareUpdateErrorThrown()V

    .line 38
    sget-object v2, Ls9/y;->a:Ls9/y;

    sget-object v10, Lm9/k;->h:Lm9/k;

    new-instance v9, Lm9/m;

    invoke-direct {v9, v13}, Lm9/m;-><init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;)V

    .line 39
    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v11, Ls9/y$a;

    const/16 v0, 0x8

    const-string v3, "LFT_ERROR_DIALOG"

    const-string v4, "TRY_AGAIN"

    invoke-direct {v11, v3, v1, v4, v0}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f1100a3

    const/4 v4, 0x0

    const v5, 0x7f1100a2

    const/4 v6, 0x0

    const v7, 0x7f1101a3

    const v8, 0x7f11023e

    const/4 v12, 0x0

    const/16 v16, 0x94

    move-object v0, v2

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v12

    move/from16 v12, v16

    .line 41
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    .line 42
    iget-object v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " displayCustomerCareErrorMessage: false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_5
    instance-of v1, v0, Lcom/nike/adapt/adk/FirmwareInProgressResult;

    if-eqz v1, :cond_6

    .line 44
    iget-object v0, v13, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->P:Ls9/z;

    sget-object v1, Ls9/z;->j:Ls9/z;

    if-eq v0, v1, :cond_8

    .line 45
    invoke-virtual {v13, v1}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->G(Ls9/z;)V

    goto :goto_2

    .line 46
    :cond_6
    instance-of v1, v0, Lcom/nike/adapt/adk/FirmwareReconnectingResult;

    if-eqz v1, :cond_7

    sget-object v0, Ls9/z;->l:Ls9/z;

    invoke-virtual {v13, v0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->G(Ls9/z;)V

    goto :goto_2

    .line 47
    :cond_7
    instance-of v0, v0, Lcom/nike/adapt/adk/FirmwareCompletedResult;

    if-eqz v0, :cond_8

    sget-object v0, Ls9/z;->k:Ls9/z;

    invoke-virtual {v13, v0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->G(Ls9/z;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0077

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    const v0, 0x7f0a0489

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    move-result-object v0

    .line 7
    new-instance v2, Lq7/e;

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1, v0}, Lq7/e;-><init>(Landroid/widget/RelativeLayout;Lq7/e2;)V

    .line 8
    iput-object v2, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->J:Lq7/e;

    .line 9
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->J:Lq7/e;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/e;->a:Lq7/e2;

    iget-object p1, p1, Lq7/e2;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 13
    iget-object v3, p0, Lp8/q;->B:Li8/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p0

    .line 14
    invoke-static/range {v1 .. v7}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 15
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lf/a;->m(Z)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "binding"

    .line 18
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .locals 9

    .line 1
    sget-object v0, Ls9/z;->l:Ls9/z;

    sget-object v1, Ls9/z;->j:Ls9/z;

    sget-object v2, Ls9/z;->m:Ls9/z;

    invoke-super {p0}, Lp8/a;->onStart()V

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v3

    check-cast v3, Lo7/f;

    invoke-virtual {v3}, Lo7/f;->d()Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v3

    .line 3
    sget-object v4, Lo7/x;->a:Lo7/x;

    iget-object v5, p0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->I:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v6, "Likely no devices"

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FirmwareUpdateCrumb "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onStart getDefaultDeviceFirmwareStage: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$ConnectionLost;

    :goto_1
    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    move-object v0, v2

    goto :goto_4

    .line 5
    :cond_3
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    if-eqz v4, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NotStarted;

    if-eqz v4, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    if-eqz v4, :cond_6

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 8
    :cond_6
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;

    if-eqz v4, :cond_7

    goto :goto_4

    .line 9
    :cond_7
    instance-of v4, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;

    if-eqz v4, :cond_8

    goto :goto_3

    .line 10
    :cond_8
    instance-of v1, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Flashing;

    if-eqz v1, :cond_9

    goto :goto_4

    .line 11
    :cond_9
    instance-of v0, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NoUpdateAvailable;

    if-eqz v0, :cond_a

    sget-object v0, Ls9/z;->h:Ls9/z;

    goto :goto_4

    .line 12
    :cond_a
    instance-of v0, v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Completed;

    if-eqz v0, :cond_2

    sget-object v0, Ls9/z;->k:Ls9/z;

    .line 13
    :goto_4
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->G(Ls9/z;)V

    return-void
.end method
