.class public final Lgb/c;
.super Ljava/util/Observable;
.source "TelemetryModule.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final a:Lgb/c;

.field public static b:Landroid/content/Context;

.field public static c:Lgb/b;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

.field public static n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgb/c;

    invoke-direct {v0}, Lgb/c;-><init>()V

    sput-object v0, Lgb/c;->a:Lgb/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
    .locals 1

    sget-object v0, Lgb/c;->m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "database"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lgb/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "workerTag"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final varargs c([Lgb/a;)V
    .locals 33

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Lgb/c;->c:Lgb/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 2
    invoke-interface {v1}, Lgb/b;->a()Z

    move-result v1

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    xor-int/2addr v3, v5

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 4
    sget-object v1, Lmb/b;->a:Lmb/b;

    .line 5
    sget-object v1, Lgb/c;->b:Landroid/content/Context;

    if-eqz v1, :cond_a

    .line 6
    invoke-virtual/range {p0 .. p0}, Lgb/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v27, Lgb/c;->d:Ljava/lang/String;

    if-eqz v27, :cond_9

    .line 8
    sget-object v28, Lgb/c;->e:Ljava/lang/String;

    if-eqz v28, :cond_8

    .line 9
    sget-object v29, Lgb/c;->f:Ljava/lang/String;

    if-eqz v29, :cond_7

    .line 10
    sget-object v15, Lgb/c;->g:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 11
    sget-object v30, Lgb/c;->h:Ljava/lang/String;

    if-eqz v30, :cond_5

    .line 12
    sget-object v2, Lgb/c;->k:Ljava/lang/String;

    .line 13
    array-length v6, v0

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb/a;

    const-string v6, "telemetry"

    .line 14
    invoke-static {v0, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    array-length v13, v0

    :goto_1
    if-ge v4, v13, :cond_4

    aget-object v6, v0, v4

    .line 17
    new-instance v12, Lkb/a;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 19
    iget-object v11, v6, Lgb/a;->a:Ljava/lang/String;

    .line 20
    iget v7, v6, Lgb/a;->b:I

    const-string v8, "type"

    .line 21
    invoke-static {v7, v8}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 22
    invoke-static {v7}, Lq/g;->a(I)I

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_3

    if-eq v7, v5, :cond_2

    if-ne v7, v8, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    .line 23
    :cond_1
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_2
    move v5, v8

    .line 24
    :cond_3
    :goto_2
    iget-object v6, v6, Lgb/a;->c:Ljava/util/Map;

    move-object/from16 v22, v6

    const-wide/16 v7, 0x0

    .line 25
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v16, v6

    const-string v7, "MODEL"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    const-string v7, "getInstance().timeZone.displayName"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v6

    const-string v7, "randomUUID().toString()"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    move-object v7, v12

    move v12, v5

    move v5, v13

    move-object/from16 v13, v27

    move-object v8, v14

    move-object/from16 v14, v28

    move-object/from16 p1, v15

    move-object/from16 v15, v29

    move-object/from16 v18, p1

    move-object/from16 v19, v30

    move-object/from16 v21, v2

    move-object/from16 v32, v0

    move-object/from16 v31, v2

    move-object v2, v7

    move-object v0, v8

    const-wide/16 v7, 0x0

    .line 29
    invoke-direct/range {v6 .. v26}, Lkb/a;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    move-object/from16 v15, p1

    move-object v14, v0

    move v13, v5

    move-object/from16 v0, v32

    move v5, v2

    move-object/from16 v2, v31

    goto/16 :goto_1

    :cond_4
    move-object v0, v14

    move-object/from16 p1, v15

    .line 31
    sget-object v2, Lnb/b;->i:Lnb/b;

    new-instance v4, Lmb/a;

    move-object/from16 v5, p1

    invoke-direct {v4, v1, v5, v0, v3}, Lmb/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, v2, Lnb/b;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lv9/a0;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lv9/a0;-><init>(Lqd/a;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    const-string v0, "libraryVersion"

    .line 33
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "libraryId"

    .line 34
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "appVersion"

    .line 35
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "appId"

    .line 36
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v0, "sessionId"

    .line 37
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string v0, "context"

    .line 38
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-nez v1, :cond_c

    .line 39
    invoke-virtual/range {p0 .. p0}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->r()Lib/a;

    move-result-object v0

    invoke-interface {v0}, Lib/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 40
    invoke-virtual/range {p0 .. p0}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ly0/d0;->d()V

    :cond_c
    :goto_3
    return-void

    :cond_d
    const-string v0, "telemetryGatekeeper"

    .line 41
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
