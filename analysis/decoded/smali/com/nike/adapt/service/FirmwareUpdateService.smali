.class public final Lcom/nike/adapt/service/FirmwareUpdateService;
.super Landroid/app/Service;
.source "FirmwareUpdateService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/service/FirmwareUpdateService$b;,
        Lcom/nike/adapt/service/FirmwareUpdateService$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/nike/adapt/service/FirmwareUpdateService$a;


# instance fields
.field public final h:Ljava/lang/String;

.field public i:Lea/m;

.field public final j:Lh8/c;

.field public k:Lv9/l;

.field public l:Ljava/util/Timer;

.field public m:Ljava/util/Timer;

.field public n:Ljava/util/Timer;

.field public final o:Lcom/nike/adapt/service/FirmwareUpdateService$b;

.field public p:F

.field public q:Z

.field public r:Lx/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/service/FirmwareUpdateService$a;

    invoke-direct {v0}, Lcom/nike/adapt/service/FirmwareUpdateService$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/service/FirmwareUpdateService;->s:Lcom/nike/adapt/service/FirmwareUpdateService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    const-class v0, Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    check-cast v0, Lrd/g;

    invoke-virtual {v0}, Lrd/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->j:Lh8/c;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    new-instance v0, Lcom/nike/adapt/service/FirmwareUpdateService$b;

    invoke-direct {v0, p0}, Lcom/nike/adapt/service/FirmwareUpdateService$b;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->o:Lcom/nike/adapt/service/FirmwareUpdateService$b;

    return-void
.end method

.method public static final a(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)Lv7/d;
    .locals 14

    .line 1
    new-instance v13, Lv7/d;

    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->j:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v1, v0

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->i:Lea/m;

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, v0, Lea/m;->u:Ljava/lang/String;

    .line 4
    iget-object v3, v0, Lea/m;->i:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->j:Lh8/c;

    .line 6
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v4, 0x0

    const-string v0, "PREF_FIRMWARE_UPGRADE_START_TIME"

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 8
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "model"

    .line 10
    invoke-static {v0, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "manufacturer"

    invoke-static {p0, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 11
    invoke-static {v0, p0, v8}, Lyd/o;->g0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    goto :goto_0

    :cond_2
    const-string v8, " "

    .line 12
    invoke-static {p0, v8, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    .line 13
    :goto_0
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Android SDK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 16
    sget-object p0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getLowestFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/nike/adapt/adk/InMemoryCache;->getUpdateToFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    move-object v0, v13

    move-object v12, p1

    .line 17
    invoke-direct/range {v0 .. v12}, Lv7/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p0, Lo7/x;->a:Lo7/x;

    invoke-virtual {v13}, Lv7/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    return-object v13

    :cond_3
    const-string p0, "pairedDevices"

    .line 19
    invoke-static {p0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Lcom/nike/adapt/service/FirmwareUpdateService;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handleFailures "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    if-eqz p1, :cond_0

    sget-object v0, Lv9/o2;->b:Lv9/o2;

    invoke-static {p1, v0}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    .line 4
    :cond_0
    new-instance p1, Ln8/k;

    invoke-direct {p1, p0}, Ln8/k;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    invoke-virtual {p0, p1}, Lcom/nike/adapt/service/FirmwareUpdateService;->d(Lqd/a;)V

    return-void
.end method

.method public static final c(Lcom/nike/adapt/service/FirmwareUpdateService;Li8/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Ls7/b;->a:Ls7/b;

    invoke-virtual {p0, p1}, Ls7/b;->a(Li8/b;)V

    return-void
.end method


# virtual methods
.method public final d(Lqd/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopFirmwareService Killed all listeners, services, timers"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv9/l;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/nike/adapt/BigfootApplication;

    .line 6
    iput-object v0, v1, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/service/FirmwareUpdateService;->e()V

    .line 8
    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->m:Ljava/util/Timer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->m:Ljava/util/Timer;

    .line 10
    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->n:Ljava/util/Timer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 11
    :cond_2
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->n:Ljava/util/Timer;

    .line 12
    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->l:Ljava/util/Timer;

    return-void
.end method

.method public final f(I)Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Lx/o;

    sget-object v1, Lo7/l;->a:Lo7/l;

    invoke-virtual {v1}, Lo7/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lx/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object v1, Ls9/g;->a:Ls9/g;

    const-string v1, "state"

    .line 3
    invoke-static {p1, v1}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    const v6, 0x7f1100a3

    .line 4
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    const v6, 0x7f110352

    .line 5
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const v6, 0x7f1100a9

    .line 6
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const v6, 0x7f11034d

    .line 7
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    :goto_0
    invoke-static {v6}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lx/o;->e:Ljava/lang/CharSequence;

    .line 9
    iget v6, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    if-eqz p1, :cond_16

    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_4

    const v6, 0x7f110353

    .line 10
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_5
    const v6, 0x7f110351

    .line 11
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    const v6, 0x7f1100a7

    .line 12
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 13
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    :goto_1
    invoke-static {v6}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lx/o;->f:Ljava/lang/CharSequence;

    if-eqz p1, :cond_15

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_a

    if-eq v2, v4, :cond_9

    if-ne v2, v3, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_9
    :goto_2
    move v7, v6

    goto :goto_3

    :cond_a
    move v7, v5

    .line 16
    :goto_3
    invoke-virtual {v0, v4, v7}, Lx/o;->c(IZ)V

    if-eqz p1, :cond_14

    if-eqz v2, :cond_d

    if-eq v2, v5, :cond_d

    if-eq v2, v4, :cond_c

    if-ne v2, v3, :cond_b

    goto :goto_4

    .line 17
    :cond_b
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_c
    :goto_4
    move v3, v5

    goto :goto_5

    :cond_d
    move v3, v6

    :goto_5
    const/16 v4, 0x10

    .line 18
    invoke-virtual {v0, v4, v3}, Lx/o;->c(IZ)V

    const v3, 0x7f080184

    .line 19
    iget-object v4, v0, Lx/o;->r:Landroid/app/Notification;

    iput v3, v4, Landroid/app/Notification;->icon:I

    const-string v3, "progress"

    .line 20
    iput-object v3, v0, Lx/o;->n:Ljava/lang/String;

    const/4 v3, -0x1

    .line 21
    iput v3, v0, Lx/o;->h:I

    .line 22
    sget-object v3, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->Q:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;

    .line 23
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x10008000

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.nike.adapt.PARAM_FIRMWARE_SERVICE_PI"

    .line 25
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0xc000000

    .line 26
    invoke-static {p0, v6, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "getActivity(\n           \u2026G_IMMUTABLE\n            )"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v3, v0, Lx/o;->g:Landroid/app/PendingIntent;

    const/16 v3, 0x8

    .line 28
    invoke-virtual {v0, v3, v5}, Lx/o;->c(IZ)V

    if-eqz p1, :cond_13

    if-eqz v2, :cond_f

    if-eq v2, v5, :cond_e

    goto :goto_6

    .line 29
    :cond_e
    iput v6, v0, Lx/o;->k:I

    .line 30
    iput v6, v0, Lx/o;->l:I

    .line 31
    iput-boolean v5, v0, Lx/o;->m:Z

    goto :goto_6

    :cond_f
    const/16 p1, 0x3e8

    .line 32
    iget v2, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->p:F

    const/16 v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 33
    iput p1, v0, Lx/o;->k:I

    .line 34
    iput v2, v0, Lx/o;->l:I

    .line 35
    iput-boolean v6, v0, Lx/o;->m:Z

    .line 36
    :goto_6
    invoke-virtual {v0}, Lx/o;->a()Landroid/app/Notification;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->r:Lx/s;

    if-eqz v0, :cond_12

    const v2, 0xa455

    .line 38
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_10

    const-string v4, "android.support.useSideChannel"

    .line 39
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    move v5, v6

    :goto_7
    if-eqz v5, :cond_11

    .line 40
    new-instance v3, Lx/s$a;

    iget-object v4, v0, Lx/s;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lx/s$a;-><init>(Ljava/lang/String;Landroid/app/Notification;)V

    invoke-virtual {v0, v3}, Lx/s;->a(Lx/s$d;)V

    .line 41
    iget-object v0, v0, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_8

    .line 42
    :cond_11
    iget-object v0, v0, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_8
    return-object p1

    :cond_12
    const-string p1, "notificationManager"

    .line 43
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_13
    throw v1

    .line 45
    :cond_14
    throw v1

    .line 46
    :cond_15
    throw v1

    .line 47
    :cond_16
    throw v1

    .line 48
    :cond_17
    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->o:Lcom/nike/adapt/service/FirmwareUpdateService$b;

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Lx/s;

    invoke-direct {v0, p0}, Lx/s;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->r:Lx/s;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x2

    if-eqz p1, :cond_6

    .line 1
    iget-object p3, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    if-eqz p3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object p3, Lo7/x;->a:Lo7/x;

    const-string v0, "START_FW_UPDATE : FW_STATS"

    invoke-virtual {p3, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string p3, "FIRMWARE_UPDATE_SERVICE_PAIRED_DEVICE"

    .line 4
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    check-cast p1, Lea/m;

    iput-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->i:Lea/m;

    const p1, 0xa455

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3}, Lcom/nike/adapt/service/FirmwareUpdateService;->f(I)Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 6
    new-instance p1, Lv9/l;

    iget-object p3, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->i:Lea/m;

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    invoke-direct {p1, p3}, Lv9/l;-><init>(Lea/m;)V

    iput-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    .line 7
    new-instance p3, Lcom/nike/adapt/service/FirmwareUpdateService$c;

    invoke-direct {p3, p0}, Lcom/nike/adapt/service/FirmwareUpdateService$c;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    .line 8
    new-instance v1, Lv9/o;

    invoke-direct {v1}, Lv9/o;-><init>()V

    invoke-virtual {p3, v1}, Lcom/nike/adapt/service/FirmwareUpdateService$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v1}, Lv9/l;->g(Lv9/o;)V

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->r:Lx/s;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p1, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 12
    iget-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    if-eqz p1, :cond_3

    new-instance p3, Lv9/v2;

    sget-object v0, Ls9/g;->a:Ls9/g;

    .line 13
    sget-object v0, Ls9/h;->b:Ljava/util/ArrayList;

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v0, Lfa/j;->h:Lfa/j;

    goto :goto_0

    .line 17
    :cond_2
    sget-object v0, Lfa/j;->i:Lfa/j;

    .line 18
    :goto_0
    invoke-direct {p3, v0}, Lv9/v2;-><init>(Lfa/j;)V

    invoke-static {p1, p3}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/nike/adapt/service/FirmwareUpdateService;->e()V

    .line 20
    new-instance p1, Ljava/util/Timer;

    const-string p3, "fw_upgrade_timeout_timer"

    invoke-direct {p1, p3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ln8/l;

    invoke-direct {v2, p0}, Ln8/l;-><init>(Lcom/nike/adapt/service/FirmwareUpdateService;)V

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x2710

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 22
    iput-object p1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->l:Ljava/util/Timer;

    return p2

    :cond_4
    const-string p1, "notificationManager"

    .line 23
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "pairedDevices"

    .line 24
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_6
    :goto_1
    sget-object p3, Lo7/x;->a:Lo7/x;

    iget-object v0, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onStartCommand, Intent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", requester: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo7/x;->a(Ljava/lang/String;)V

    return p2
.end method
