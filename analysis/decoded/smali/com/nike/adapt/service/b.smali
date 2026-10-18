.class public final Lcom/nike/adapt/service/b;
.super Lrd/o;
.source "FirmwareUpdateService.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lfa/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/FirmwareUpdateService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lfa/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lfa/d;->k:Lfa/i;

    .line 4
    instance-of v1, v0, Lfa/i$a;

    const-string v2, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/BigfootApplication;

    .line 7
    iput-object v3, p1, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareBatteryTooLowResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareBatteryTooLowResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 9
    :cond_0
    instance-of v1, v0, Lfa/i$b;

    const-string v4, "FirmwareUpdateCrumb "

    if-eqz v1, :cond_1

    .line 10
    sget-object p1, Lo7/x;->a:Lo7/x;

    iget-object v0, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 11
    iget-object v0, v0, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " handleComplete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    new-instance v0, Lcom/nike/adapt/service/a;

    invoke-direct {v0, p1}, Lcom/nike/adapt/service/a;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    invoke-virtual {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->d(Lqd/a;)V

    .line 14
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/BigfootApplication;

    .line 15
    iput-object v3, p1, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareCompletedResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareCompletedResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 17
    :cond_1
    instance-of v1, v0, Lfa/i$c;

    if-eqz v1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const-string v1, "FW_CONNECTION_LOST_ERROR"

    invoke-static {p1, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;

    .line 19
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/BigfootApplication;

    .line 21
    iput-object v3, p1, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 22
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareConnectionLostResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareConnectionLostResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 23
    :cond_2
    instance-of v1, v0, Lfa/i$d;

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, p1, Lfa/d;->h:Lfa/c;

    .line 25
    iget-object v1, v1, Lfa/c;->j:Lfa/k;

    .line 26
    instance-of v1, v1, Lfa/k$m;

    if-nez v1, :cond_4

    .line 27
    iget-object v1, p1, Lfa/d;->i:Lfa/c;

    .line 28
    iget-object v1, v1, Lfa/c;->j:Lfa/k;

    .line 29
    instance-of v1, v1, Lfa/k$m;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const-string v4, "FW_PROGRESS_ERROR"

    invoke-static {v1, v4}, Lcom/nike/adapt/service/FirmwareUpdateService;->a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;

    goto :goto_1

    .line 31
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const-string v4, "FW_FLASH_ERROR"

    invoke-static {v1, v4}, Lcom/nike/adapt/service/FirmwareUpdateService;->a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nike/adapt/BigfootApplication;

    .line 34
    iput-object v3, v0, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 35
    iget-object v0, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    new-instance v1, Lcom/nike/adapt/adk/FirmwareFailureResult;

    .line 36
    iget-object p1, p1, Lfa/d;->j:Lfa/c;

    .line 37
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 38
    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/k;)Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/nike/adapt/adk/FirmwareFailureResult;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 39
    :cond_5
    instance-of p1, v0, Lfa/i$e;

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 v0, 0x0

    .line 41
    iput v0, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    .line 42
    invoke-virtual {p1, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    .line 43
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareFetchingDataResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareFetchingDataResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 44
    :cond_6
    instance-of p1, v0, Lfa/i$f;

    if-eqz p1, :cond_7

    .line 45
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-virtual {p1}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "editor"

    .line 49
    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1d4c0

    int-to-long v4, v2

    add-long/2addr v0, v4

    const-string v2, "PREF_TIMER_FOR_RESTART_FROM_FLASH"

    .line 50
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->softwareFlashSuccess()V

    .line 53
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "ADK_FW_UPDATE_COMPLETE"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 55
    iget-object v0, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->j:Lh8/c;

    .line 56
    invoke-static {p1, v3}, Lcom/nike/adapt/service/FirmwareUpdateService;->a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh8/c;->B(Lv7/d;)V

    .line 57
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 58
    iput v0, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    .line 59
    sget-object p1, Lcom/nike/adapt/adk/FirmwareFlashingResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareFlashingResult;

    .line 60
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p1}, Ls7/b;->a(Li8/b;)V

    goto/16 :goto_2

    .line 61
    :cond_7
    instance-of p1, v0, Lfa/i$g;

    if-eqz p1, :cond_8

    .line 62
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    check-cast v0, Lfa/i$g;

    .line 63
    iget v2, v0, Lfa/i$g;->h:F

    .line 64
    iput v2, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    .line 65
    invoke-virtual {p1, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    .line 66
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    new-instance v1, Lcom/nike/adapt/adk/FirmwareInProgressResult;

    .line 67
    iget v0, v0, Lfa/i$g;->h:F

    .line 68
    invoke-direct {v1, v0}, Lcom/nike/adapt/adk/FirmwareInProgressResult;-><init>(F)V

    invoke-static {p1, v1}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto/16 :goto_2

    .line 69
    :cond_8
    instance-of p1, v0, Lfa/i$h;

    if-eqz p1, :cond_9

    .line 70
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/BigfootApplication;

    .line 72
    iput-object v3, p1, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 73
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareNoUpdateAvailableResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareNoUpdateAvailableResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto :goto_2

    .line 74
    :cond_9
    instance-of p1, v0, Lfa/i$i;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareNotStartedResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareNotStartedResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    goto :goto_2

    .line 75
    :cond_a
    instance-of p1, v0, Lfa/i$j;

    if-eqz p1, :cond_c

    .line 76
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/service/FirmwareUpdateService;->s:Lcom/nike/adapt/service/FirmwareUpdateService$a;

    .line 77
    invoke-virtual {p1}, Lcom/nike/adapt/service/FirmwareUpdateService;->e()V

    .line 78
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    const/4 v0, 0x2

    .line 79
    invoke-virtual {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    .line 80
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequestConnectionTimer"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->m:Ljava/util/Timer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 84
    :cond_b
    iput-object v3, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->m:Ljava/util/Timer;

    .line 85
    new-instance v0, Ljava/util/Timer;

    const-string v1, "fw_upgrade_connection_timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ln8/n;

    invoke-direct {v1, p1}, Ln8/n;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 87
    iput-object v0, p1, Lcom/nike/adapt/service/FirmwareUpdateService;->m:Ljava/util/Timer;

    .line 88
    iget-object p1, p0, Lcom/nike/adapt/service/b;->h:Lcom/nike/adapt/service/FirmwareUpdateService;

    sget-object v0, Lcom/nike/adapt/adk/FirmwareReconnectingResult;->INSTANCE:Lcom/nike/adapt/adk/FirmwareReconnectingResult;

    invoke-static {p1, v0}, Lcom/nike/adapt/service/FirmwareUpdateService;->c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V

    .line 89
    :cond_c
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
