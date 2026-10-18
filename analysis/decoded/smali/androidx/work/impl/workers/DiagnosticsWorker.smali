.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "DiagnosticsWorker.java"


# static fields
.field public static final n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static i(Lt1/k;Lt1/s;Lt1/h;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/k;",
            "Lt1/s;",
            "Lt1/h;",
            "Ljava/util/List<",
            "Lt1/o;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Job Id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    .line 2
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/o;

    .line 5
    iget-object v3, v2, Lt1/o;->a:Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Lt1/i;

    invoke-virtual {v5, v3}, Lt1/i;->a(Ljava/lang/String;)Lt1/g;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget v3, v3, Lt1/g;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    :cond_0
    iget-object v3, v2, Lt1/o;->a:Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Lt1/l;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 8
    invoke-static {v7, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v7

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v7, v1}, Ly0/f0;->t(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v7, v1, v3}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 11
    :goto_1
    iget-object v3, v6, Lt1/l;->a:Ly0/d0;

    invoke-virtual {v3}, Ly0/d0;->b()V

    .line 12
    iget-object v3, v6, Lt1/l;->a:Ly0/d0;

    .line 13
    invoke-virtual {v3, v7}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v3

    .line 14
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 18
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v7}, Ly0/f0;->g0()V

    .line 20
    iget-object v3, v2, Lt1/o;->a:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lt1/t;

    invoke-virtual {v7, v3}, Lt1/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v7, ","

    .line 21
    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 23
    iget-object v8, v2, Lt1/o;->a:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, v2, Lt1/o;->c:Ljava/lang/String;

    aput-object v8, v7, v1

    const/4 v8, 0x2

    aput-object v5, v7, v8

    iget-object v2, v2, Lt1/o;->b:Lk1/p;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v7, v5

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object v3, v7, v2

    const-string v2, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    .line 25
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 27
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v7}, Ly0/f0;->g0()V

    .line 29
    throw p0

    .line 30
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final h()Landroidx/work/ListenableWorker$a;
    .locals 38

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Landroidx/work/ListenableWorker;->h:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 4
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lt1/k;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->x()Lt1/s;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lt1/h;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 9
    check-cast v2, Lt1/q;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v8, 0x1

    .line 10
    invoke-static {v7, v8}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v8, v5, v6}, Ly0/f0;->K(IJ)V

    .line 12
    iget-object v5, v2, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v5}, Ly0/d0;->b()V

    .line 13
    iget-object v5, v2, Lt1/q;->a:Ly0/d0;

    .line 14
    invoke-virtual {v5, v7}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v6, "required_network_type"

    .line 15
    invoke-static {v5, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v9, "requires_charging"

    .line 16
    invoke-static {v5, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "requires_device_idle"

    .line 17
    invoke-static {v5, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "requires_battery_not_low"

    .line 18
    invoke-static {v5, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "requires_storage_not_low"

    .line 19
    invoke-static {v5, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "trigger_content_update_delay"

    .line 20
    invoke-static {v5, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "trigger_max_content_delay"

    .line 21
    invoke-static {v5, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "content_uri_triggers"

    .line 22
    invoke-static {v5, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v8, "id"

    .line 23
    invoke-static {v5, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v1, "state"

    .line 24
    invoke-static {v5, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v16, v0

    const-string v0, "worker_class_name"

    .line 25
    invoke-static {v5, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v3

    const-string v3, "input_merger_class_name"

    .line 26
    invoke-static {v5, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v18, v4

    const-string v4, "input"

    .line 27
    invoke-static {v5, v4}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v19, v2

    const-string v2, "output"

    .line 28
    invoke-static {v5, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v7

    :try_start_1
    const-string v7, "initial_delay"

    .line 29
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v21, v7

    const-string v7, "interval_duration"

    .line 30
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v22, v7

    const-string v7, "flex_duration"

    .line 31
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v23, v7

    const-string v7, "run_attempt_count"

    .line 32
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v24, v7

    const-string v7, "backoff_policy"

    .line 33
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v25, v7

    const-string v7, "backoff_delay_duration"

    .line 34
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v26, v7

    const-string v7, "period_start_time"

    .line 35
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v27, v7

    const-string v7, "minimum_retention_duration"

    .line 36
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v28, v7

    const-string v7, "schedule_requested_at"

    .line 37
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v29, v7

    const-string v7, "run_in_foreground"

    .line 38
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v30, v7

    const-string v7, "out_of_quota_policy"

    .line 39
    invoke-static {v5, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v31, v7

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v32, v2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    move-object/from16 v33, v7

    if-eqz v2, :cond_5

    .line 42
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v34, v0

    .line 44
    new-instance v0, Lk1/c;

    invoke-direct {v0}, Lk1/c;-><init>()V

    .line 45
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v36, v6

    .line 46
    invoke-static/range {v35 .. v35}, Lt1/u;->c(I)Lk1/m;

    move-result-object v6

    .line 47
    iput-object v6, v0, Lk1/c;->a:Lk1/m;

    .line 48
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_1
    iput-boolean v6, v0, Lk1/c;->b:Z

    .line 50
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 51
    :goto_2
    iput-boolean v6, v0, Lk1/c;->c:Z

    .line 52
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 53
    :goto_3
    iput-boolean v6, v0, Lk1/c;->d:Z

    .line 54
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    .line 55
    :goto_4
    iput-boolean v6, v0, Lk1/c;->e:Z

    move/from16 v35, v8

    move v6, v9

    .line 56
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 57
    iput-wide v8, v0, Lk1/c;->f:J

    .line 58
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 59
    iput-wide v8, v0, Lk1/c;->g:J

    .line 60
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 61
    invoke-static {v8}, Lt1/u;->a([B)Lk1/d;

    move-result-object v8

    .line 62
    iput-object v8, v0, Lk1/c;->h:Lk1/d;

    .line 63
    new-instance v8, Lt1/o;

    invoke-direct {v8, v2, v7}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 65
    invoke-static {v2}, Lt1/u;->e(I)Lk1/p;

    move-result-object v2

    iput-object v2, v8, Lt1/o;->b:Lk1/p;

    .line 66
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lt1/o;->d:Ljava/lang/String;

    .line 67
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v2

    iput-object v2, v8, Lt1/o;->e:Landroidx/work/b;

    move/from16 v2, v32

    .line 69
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 70
    invoke-static {v7}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v7

    iput-object v7, v8, Lt1/o;->f:Landroidx/work/b;

    move v9, v1

    move/from16 v32, v2

    move/from16 v7, v21

    .line 71
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lt1/o;->g:J

    move/from16 v21, v3

    move/from16 v1, v22

    .line 72
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lt1/o;->h:J

    move/from16 v22, v4

    move/from16 v2, v23

    .line 73
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v8, Lt1/o;->i:J

    move/from16 v3, v24

    .line 74
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v8, Lt1/o;->k:I

    move/from16 v4, v25

    .line 75
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v1

    .line 76
    invoke-static/range {v23 .. v23}, Lt1/u;->b(I)I

    move-result v1

    iput v1, v8, Lt1/o;->l:I

    move/from16 v23, v2

    move/from16 v25, v3

    move/from16 v1, v26

    .line 77
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lt1/o;->m:J

    move/from16 v26, v4

    move/from16 v2, v27

    .line 78
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v8, Lt1/o;->n:J

    move v4, v1

    move/from16 v27, v2

    move/from16 v3, v28

    .line 79
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lt1/o;->o:J

    move/from16 v28, v3

    move/from16 v1, v29

    .line 80
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lt1/o;->p:J

    move/from16 v2, v30

    .line 81
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 82
    :goto_5
    iput-boolean v3, v8, Lt1/o;->q:Z

    move/from16 v3, v31

    .line 83
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v1

    .line 84
    invoke-static/range {v29 .. v29}, Lt1/u;->d(I)I

    move-result v1

    iput v1, v8, Lt1/o;->r:I

    .line 85
    iput-object v0, v8, Lt1/o;->j:Lk1/c;

    move-object/from16 v0, v33

    .line 86
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v31, v3

    move v1, v9

    move/from16 v3, v21

    move/from16 v29, v30

    move/from16 v8, v35

    move/from16 v30, v2

    move v9, v6

    move/from16 v21, v7

    move/from16 v6, v36

    move-object v7, v0

    move/from16 v0, v34

    move/from16 v37, v26

    move/from16 v26, v4

    move/from16 v4, v22

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v37

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v33

    .line 87
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-virtual/range {v20 .. v20}, Ly0/f0;->g0()V

    .line 89
    invoke-virtual/range {v19 .. v19}, Lt1/q;->d()Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-virtual/range {v19 .. v19}, Lt1/q;->b()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 92
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/workers/DiagnosticsWorker;->n:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Throwable;

    const-string v7, "Recently completed work:\n\n"

    invoke-virtual {v3, v4, v7, v6}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 93
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v3

    move-object/from16 v8, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    .line 94
    invoke-static {v6, v7, v8, v0}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lt1/k;Lt1/s;Lt1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/Throwable;

    .line 95
    invoke-virtual {v3, v4, v0, v9}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v8, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v5, 0x0

    .line 96
    :goto_6
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorker;->n:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Throwable;

    const-string v9, "Running work:\n\n"

    invoke-virtual {v0, v3, v9, v4}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    invoke-static {v6, v7, v8, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lt1/k;Lt1/s;Lt1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v4}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 99
    :cond_7
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 100
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/DiagnosticsWorker;->n:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    const-string v4, "Enqueued work:\n\n"

    invoke-virtual {v0, v1, v4, v3}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 101
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    .line 102
    invoke-static {v6, v7, v8, v2}, Landroidx/work/impl/workers/DiagnosticsWorker;->i(Lt1/k;Lt1/s;Lt1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 104
    :cond_8
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v20, v7

    .line 105
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 106
    invoke-virtual/range {v20 .. v20}, Ly0/f0;->g0()V

    .line 107
    throw v0
.end method
