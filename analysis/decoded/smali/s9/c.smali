.class public final Ls9/c;
.super Ljava/lang/Object;
.source "BatteryAlarmUtil.kt"


# static fields
.field public static final a:Ls9/c;

.field public static final b:Lh8/c;

.field public static final c:Lv9/t;

.field public static final d:I

.field public static final e:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls9/c;

    invoke-direct {v0}, Ls9/c;-><init>()V

    sput-object v0, Ls9/c;->a:Ls9/c;

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    sput-object v0, Ls9/c;->b:Lh8/c;

    .line 3
    sget-object v0, Lv9/t;->a:Lv9/t;

    sput-object v0, Ls9/c;->c:Lv9/t;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    sput v0, Ls9/c;->d:I

    .line 5
    sget-object v0, Ls9/c$a;->h:Ls9/c$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Ls9/c;->e:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ls9/c;Landroid/content/Context;)V
    .locals 7

    const-wide/32 v4, 0x6ddd00

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "context"

    .line 2
    invoke-static {p1, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lo7/x;->a:Lo7/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Alarm: Starting battery alarm manager with time interval off (ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/nike/adapt/receiver/BatteryAlarmReceiver;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    sget v0, Ls9/c;->d:I

    const v1, 0x8e183

    invoke-static {p1, v1, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string p0, "alarm"

    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {p0, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    add-long v2, p0, v4

    const/4 v1, 0x2

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z
    .locals 3

    .line 1
    sget-object v0, Ls9/c;->b:Lh8/c;

    .line 2
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final b(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z
    .locals 3

    .line 1
    sget-object v0, Ls9/c;->b:Lh8/c;

    .line 2
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p1

    if-gt p1, v1, :cond_1

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final c(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z
    .locals 5

    .line 1
    sget-object v0, Ls9/c;->b:Lh8/c;

    .line 2
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v3, 0x14

    const/16 v4, 0xb

    if-gt v4, v0, :cond_0

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p1

    if-gt v4, p1, :cond_2

    if-ge p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :cond_4
    :goto_2
    return v2
.end method

.method public final e(Landroid/content/Context;IZ)I
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "notificationType"

    invoke-static {v1, v2}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_1

    if-eq v3, v6, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    sget-object v7, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v7}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationFullyChargedSent()V

    .line 2
    sget-object v7, Ls9/c;->b:Lh8/c;

    invoke-virtual {v7, v4}, Lh8/c;->C(Z)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    sget-object v7, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v7}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationLowBatteryLightsOnSent()V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v7}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationLowBatterySent()V

    .line 4
    :goto_0
    sget-object v7, Ls9/c;->b:Lh8/c;

    invoke-virtual {v7, v4}, Lh8/c;->g(Z)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    sget-object v7, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v7}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationCriticalBatteryLightsOnSent()V

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v7}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationCriticalBatterySent()V

    .line 6
    :goto_1
    sget-object v7, Ls9/c;->b:Lh8/c;

    invoke-virtual {v7, v4}, Lh8/c;->g0(Z)V

    :goto_2
    const-string v7, "notification"

    .line 7
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v7, v8}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/app/NotificationManager;

    .line 8
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-static/range {p2 .. p2}, Lg2/e;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "extra_notification_type"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget v9, Ls9/c;->d:I

    const v11, 0x8e183

    invoke-static {v0, v11, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v1, :cond_12

    if-eqz v3, :cond_8

    if-eq v3, v5, :cond_6

    if-ne v3, v6, :cond_5

    const v12, 0x7f110147

    .line 11
    invoke-static {v12}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_5
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_6
    if-eqz p3, :cond_7

    const v12, 0x7f11014b

    goto :goto_3

    :cond_7
    const v12, 0x7f110149

    .line 12
    :goto_3
    invoke-static {v12}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    const v12, 0x7f110145

    goto :goto_4

    :cond_9
    const v12, 0x7f110144

    .line 13
    :goto_4
    invoke-static {v12}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v12

    .line 14
    :goto_5
    new-instance v13, Lx/o;

    sget-object v14, Lo7/l;->a:Lo7/l;

    .line 15
    sget-object v14, Lo7/l;->c:Ljava/lang/String;

    .line 16
    invoke-direct {v13, v0, v14}, Lx/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    iget-object v14, v13, Lx/o;->r:Landroid/app/Notification;

    const v15, 0x7f080184

    iput v15, v14, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_11

    if-eqz v3, :cond_c

    if-eq v3, v5, :cond_b

    if-ne v3, v6, :cond_a

    const v2, 0x7f110148

    .line 18
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_b
    const v2, 0x7f11014c

    .line 19
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const v2, 0x7f110146

    .line 20
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    :goto_6
    invoke-static {v2}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v13, Lx/o;->e:Ljava/lang/CharSequence;

    .line 22
    invoke-static {v12}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v13, Lx/o;->f:Ljava/lang/CharSequence;

    .line 23
    iput-object v8, v13, Lx/o;->g:Landroid/app/PendingIntent;

    .line 24
    iput v4, v13, Lx/o;->h:I

    const/16 v2, 0x10

    .line 25
    invoke-virtual {v13, v2, v5}, Lx/o;->c(IZ)V

    .line 26
    iget-object v2, v13, Lx/o;->r:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 27
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/2addr v3, v5

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 28
    new-instance v2, Lx/n;

    invoke-direct {v2}, Lx/n;-><init>()V

    .line 29
    invoke-static {v12}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lx/n;->b:Ljava/lang/CharSequence;

    .line 30
    iget-object v3, v13, Lx/o;->j:Lx/p;

    if-eq v3, v2, :cond_d

    .line 31
    iput-object v2, v13, Lx/o;->j:Lx/p;

    .line 32
    iget-object v3, v2, Lx/p;->a:Lx/o;

    if-eq v3, v13, :cond_d

    .line 33
    iput-object v13, v2, Lx/p;->a:Lx/o;

    .line 34
    invoke-virtual {v13, v2}, Lx/o;->d(Lx/p;)Lx/o;

    .line 35
    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nike/adapt/receiver/TurnOffLightsReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-static/range {p2 .. p2}, Lg2/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {v0, v4, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "getBroadcast(context, 0,\u2026tent, pendingIntentFlags)"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/nike/adapt/receiver/BatteryDismissedReceiver;

    invoke-direct {v3, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-static/range {p2 .. p2}, Lg2/e;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-static {v0, v11, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz p3, :cond_10

    if-eq v1, v6, :cond_e

    if-ne v1, v5, :cond_f

    :cond_e
    move v4, v5

    :cond_f
    if-eqz v4, :cond_10

    const v3, 0x7f11014a

    .line 42
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    iget-object v4, v13, Lx/o;->b:Ljava/util/ArrayList;

    new-instance v5, Lx/m;

    invoke-direct {v5, v3, v2}, Lx/m;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, v13, Lx/o;->r:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 45
    :cond_10
    invoke-virtual {v13}, Lx/o;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return v1

    .line 46
    :cond_11
    throw v2

    .line 47
    :cond_12
    throw v2

    .line 48
    :cond_13
    throw v2
.end method

.method public final f(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Battery Alarm: Stopping battery alarm manager"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nike/adapt/receiver/BatteryAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget v1, Ls9/c;->d:I

    const v2, 0x8e183

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/AlarmManager;

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/l;->a:Lo7/l;

    .line 2
    sget-object v1, Lo7/l;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lo7/l;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object v2, Ls9/c;->b:Lh8/c;

    invoke-virtual {v2, v1}, Lh8/c;->o0(Z)V

    .line 5
    :cond_0
    sget-object v2, Ls9/c;->b:Lh8/c;

    .line 6
    invoke-virtual {v2}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "PREF_IS_BATTERY_REMINDERS_ENABLED"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7
    sget-object v4, Ls9/c;->e:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg8/a;

    .line 8
    invoke-virtual {v4}, Lg8/a;->a()Z

    move-result v4

    .line 9
    sget-object v5, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    sget-object v6, Ls9/c;->c:Lv9/t;

    invoke-virtual {v5, v6}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices(Lv9/t;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 10
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_2

    const/high16 v2, 0x22000000

    goto :goto_1

    :cond_2
    const/high16 v2, 0x20000000

    :goto_1
    const v4, 0x8e183

    .line 11
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/nike/adapt/receiver/BatteryAlarmReceiver;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-static {p1, v4, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 13
    invoke-static {p0, p1}, Ls9/c;->d(Ls9/c;Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0, p1}, Ls9/c;->f(Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void
.end method
