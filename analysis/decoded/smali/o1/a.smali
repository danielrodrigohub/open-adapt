.class public final Lo1/a;
.super Ljava/lang/Object;
.source "SystemJobInfoConverter.java"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo1/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lo1/a;->a:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Lt1/o;I)Landroid/app/job/JobInfo;
    .locals 12

    .line 1
    iget-object v0, p1, Lt1/o;->j:Lk1/c;

    .line 2
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3
    iget-object v2, p1, Lt1/o;->a:Ljava/lang/String;

    const-string v3, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lt1/o;->c()Z

    move-result v2

    const-string v3, "EXTRA_IS_PERIODIC"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    iget-object v3, p0, Lo1/a;->a:Landroid/content/ComponentName;

    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 6
    iget-boolean p2, v0, Lk1/c;->b:Z

    .line 7
    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 8
    iget-boolean v2, v0, Lk1/c;->c:Z

    .line 9
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 11
    iget-object v1, v0, Lk1/c;->a:Lk1/m;

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    const/16 v4, 0x1e

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v2, v4, :cond_0

    sget-object v4, Lk1/m;->m:Lk1/m;

    if-ne v1, v4, :cond_0

    .line 13
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0x19

    .line 14
    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 16
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v3, :cond_3

    const/4 v8, 0x3

    if-eq v4, v8, :cond_6

    const/4 v8, 0x4

    if-eq v4, v8, :cond_1

    goto :goto_0

    :cond_1
    if-lt v2, v5, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    :goto_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v4

    sget-object v8, Lo1/a;->b:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v6

    const-string v1, "API version too low. Cannot convert network type value %s"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v9, v6, [Ljava/lang/Throwable;

    invoke-virtual {v4, v8, v1, v9}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v8, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v6

    .line 19
    :cond_6
    :goto_2
    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 20
    :goto_3
    iget-boolean v1, v0, Lk1/c;->c:Z

    if-nez v1, :cond_8

    .line 21
    iget v1, p1, Lt1/o;->l:I

    if-ne v1, v3, :cond_7

    move v1, v6

    goto :goto_4

    :cond_7
    move v1, v7

    .line 22
    :goto_4
    iget-wide v3, p1, Lt1/o;->m:J

    invoke-virtual {p2, v3, v4, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 23
    :cond_8
    invoke-virtual {p1}, Lt1/o;->a()J

    move-result-wide v3

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v3, v8

    const-wide/16 v8, 0x0

    .line 25
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/16 v1, 0x1c

    if-gt v2, v1, :cond_9

    .line 26
    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    :cond_9
    cmp-long v1, v3, v8

    if-lez v1, :cond_a

    .line 27
    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    .line 28
    :cond_a
    iget-boolean v1, p1, Lt1/o;->q:Z

    if-nez v1, :cond_b

    .line 29
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 30
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lk1/c;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    iget-object v1, v0, Lk1/c;->h:Lk1/d;

    .line 32
    iget-object v1, v1, Lk1/d;->a:Ljava/util/HashSet;

    .line 33
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/d$a;

    .line 34
    iget-boolean v10, v2, Lk1/d$a;->b:Z

    .line 35
    new-instance v11, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 36
    iget-object v2, v2, Lk1/d$a;->a:Landroid/net/Uri;

    .line 37
    invoke-direct {v11, v2, v10}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 38
    invoke-virtual {p2, v11}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_6

    .line 39
    :cond_c
    iget-wide v1, v0, Lk1/c;->f:J

    .line 40
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 41
    iget-wide v1, v0, Lk1/c;->g:J

    .line 42
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 43
    :cond_d
    invoke-virtual {p2, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_e

    .line 45
    iget-boolean v1, v0, Lk1/c;->d:Z

    .line 46
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 47
    iget-boolean v0, v0, Lk1/c;->e:Z

    .line 48
    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 49
    :cond_e
    iget v0, p1, Lt1/o;->k:I

    if-lez v0, :cond_f

    move v0, v7

    goto :goto_7

    :cond_f
    move v0, v6

    :goto_7
    cmp-long v1, v3, v8

    if-lez v1, :cond_10

    move v6, v7

    .line 50
    :cond_10
    invoke-static {}, Lf0/a;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean p1, p1, Lt1/o;->q:Z

    if-eqz p1, :cond_11

    if-nez v0, :cond_11

    if-nez v6, :cond_11

    .line 51
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 52
    :cond_11
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
