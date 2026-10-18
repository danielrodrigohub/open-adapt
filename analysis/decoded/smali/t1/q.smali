.class public final Lt1/q;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Lt1/p;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lt1/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lt1/q$b;

.field public final d:Lt1/q$c;

.field public final e:Lt1/q$d;

.field public final f:Lt1/q$e;

.field public final g:Lt1/q$f;

.field public final h:Lt1/q$g;

.field public final i:Lt1/q$h;


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/q;->a:Ly0/d0;

    .line 3
    new-instance v0, Lt1/q$a;

    invoke-direct {v0, p1}, Lt1/q$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->b:Lt1/q$a;

    .line 4
    new-instance v0, Lt1/q$b;

    invoke-direct {v0, p1}, Lt1/q$b;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->c:Lt1/q$b;

    .line 5
    new-instance v0, Lt1/q$c;

    invoke-direct {v0, p1}, Lt1/q$c;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->d:Lt1/q$c;

    .line 6
    new-instance v0, Lt1/q$d;

    invoke-direct {v0, p1}, Lt1/q$d;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->e:Lt1/q$d;

    .line 7
    new-instance v0, Lt1/q$e;

    invoke-direct {v0, p1}, Lt1/q$e;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->f:Lt1/q$e;

    .line 8
    new-instance v0, Lt1/q$f;

    invoke-direct {v0, p1}, Lt1/q$f;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->g:Lt1/q$f;

    .line 9
    new-instance v0, Lt1/q$g;

    invoke-direct {v0, p1}, Lt1/q$g;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->h:Lt1/q$g;

    .line 10
    new-instance v0, Lt1/q$h;

    invoke-direct {v0, p1}, Lt1/q$h;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/q;->i:Lt1/q$h;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->c:Lt1/q$b;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 7
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    .line 9
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 10
    iget-object p1, p0, Lt1/q;->c:Lt1/q$b;

    invoke-virtual {p1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 13
    iget-object v1, p0, Lt1/q;->c:Lt1/q$b;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 14
    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lt1/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    const/16 v0, 0xc8

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ly0/f0;->K(IJ)V

    .line 3
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 4
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    .line 5
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 6
    invoke-static {v4, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 7
    invoke-static {v4, v5}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 8
    invoke-static {v4, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 9
    invoke-static {v4, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 10
    invoke-static {v4, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 11
    invoke-static {v4, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 12
    invoke-static {v4, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 13
    invoke-static {v4, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 14
    invoke-static {v4, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 15
    invoke-static {v4, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 16
    invoke-static {v4, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 17
    invoke-static {v4, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 18
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 19
    invoke-static {v4, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 20
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 21
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 22
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 23
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 24
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 25
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 26
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 27
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 28
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 29
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 30
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v12

    .line 34
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    .line 35
    new-instance v14, Lk1/c;

    invoke-direct {v14}, Lk1/c;-><init>()V

    .line 36
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 37
    invoke-static/range {v31 .. v31}, Lt1/u;->c(I)Lk1/m;

    move-result-object v0

    .line 38
    iput-object v0, v14, Lk1/c;->a:Lk1/m;

    .line 39
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v31

    .line 40
    :goto_1
    iput-boolean v0, v14, Lk1/c;->b:Z

    .line 41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move/from16 v0, v31

    .line 42
    :goto_2
    iput-boolean v0, v14, Lk1/c;->c:Z

    .line 43
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v31

    .line 44
    :goto_3
    iput-boolean v0, v14, Lk1/c;->d:Z

    .line 45
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v31

    .line 46
    :goto_4
    iput-boolean v0, v14, Lk1/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    .line 47
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 48
    iput-wide v5, v14, Lk1/c;->f:J

    .line 49
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 50
    iput-wide v5, v14, Lk1/c;->g:J

    .line 51
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 52
    invoke-static {v5}, Lt1/u;->a([B)Lk1/d;

    move-result-object v5

    .line 53
    iput-object v5, v14, Lk1/c;->h:Lk1/d;

    .line 54
    new-instance v5, Lt1/o;

    invoke-direct {v5, v1, v12}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 56
    invoke-static {v1}, Lt1/u;->e(I)Lk1/p;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->b:Lk1/p;

    .line 57
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->d:Ljava/lang/String;

    .line 58
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 60
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 61
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lt1/o;->f:Landroidx/work/b;

    move v12, v0

    move/from16 v28, v1

    move/from16 v6, v17

    .line 62
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 63
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->h:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 64
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->i:J

    move/from16 v6, v20

    .line 65
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lt1/o;->k:I

    move/from16 v7, v21

    .line 66
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 67
    invoke-static/range {v19 .. v19}, Lt1/u;->b(I)I

    move-result v0

    iput v0, v5, Lt1/o;->l:I

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->m:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 69
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->n:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 70
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 71
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->p:J

    move/from16 v1, v26

    .line 72
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    move/from16 v2, v31

    .line 73
    :goto_5
    iput-boolean v2, v5, Lt1/o;->q:Z

    move/from16 v2, v27

    .line 74
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 75
    invoke-static/range {v25 .. v25}, Lt1/u;->d(I)I

    move-result v0

    iput v0, v5, Lt1/o;->r:I

    .line 76
    iput-object v14, v5, Lt1/o;->j:Lk1/c;

    .line 77
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v6

    move/from16 v6, v33

    move/from16 v34, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v34

    goto/16 :goto_0

    .line 78
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 80
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    .line 82
    throw v0
.end method

.method public final c(I)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lt1/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ly0/f0;->K(IJ)V

    .line 3
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 4
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    .line 5
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 6
    invoke-static {v4, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 7
    invoke-static {v4, v5}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 8
    invoke-static {v4, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 9
    invoke-static {v4, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 10
    invoke-static {v4, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 11
    invoke-static {v4, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 12
    invoke-static {v4, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 13
    invoke-static {v4, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 14
    invoke-static {v4, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 15
    invoke-static {v4, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 16
    invoke-static {v4, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 17
    invoke-static {v4, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 18
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 19
    invoke-static {v4, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 20
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "interval_duration"

    .line 21
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "flex_duration"

    .line 22
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "run_attempt_count"

    .line 23
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "backoff_policy"

    .line 24
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_delay_duration"

    .line 25
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "period_start_time"

    .line 26
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "minimum_retention_duration"

    .line 27
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "schedule_requested_at"

    .line 28
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "run_in_foreground"

    .line 29
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "out_of_quota_policy"

    .line 30
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 34
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 35
    new-instance v14, Lk1/c;

    invoke-direct {v14}, Lk1/c;-><init>()V

    .line 36
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 37
    invoke-static/range {v30 .. v30}, Lt1/u;->c(I)Lk1/m;

    move-result-object v0

    .line 38
    iput-object v0, v14, Lk1/c;->a:Lk1/m;

    .line 39
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v30

    .line 40
    :goto_1
    iput-boolean v0, v14, Lk1/c;->b:Z

    .line 41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move/from16 v0, v30

    .line 42
    :goto_2
    iput-boolean v0, v14, Lk1/c;->c:Z

    .line 43
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v0, v30

    .line 44
    :goto_3
    iput-boolean v0, v14, Lk1/c;->d:Z

    .line 45
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v30

    .line 46
    :goto_4
    iput-boolean v0, v14, Lk1/c;->e:Z

    move v0, v5

    move/from16 v32, v6

    .line 47
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 48
    iput-wide v5, v14, Lk1/c;->f:J

    .line 49
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 50
    iput-wide v5, v14, Lk1/c;->g:J

    .line 51
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 52
    invoke-static {v5}, Lt1/u;->a([B)Lk1/d;

    move-result-object v5

    .line 53
    iput-object v5, v14, Lk1/c;->h:Lk1/d;

    .line 54
    new-instance v5, Lt1/o;

    invoke-direct {v5, v1, v12}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 56
    invoke-static {v1}, Lt1/u;->e(I)Lk1/p;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->b:Lk1/p;

    .line 57
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->d:Ljava/lang/String;

    .line 58
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->e:Landroidx/work/b;

    move/from16 v1, v27

    .line 60
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 61
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lt1/o;->f:Landroidx/work/b;

    move/from16 v6, p1

    move/from16 p1, v0

    move/from16 v27, v1

    .line 62
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->g:J

    move v12, v2

    move/from16 v0, v17

    .line 63
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->h:J

    move/from16 v17, v6

    move v2, v7

    move/from16 v1, v18

    .line 64
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->i:J

    move/from16 v6, v19

    .line 65
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lt1/o;->k:I

    move/from16 v7, v20

    .line 66
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    .line 67
    invoke-static/range {v18 .. v18}, Lt1/u;->b(I)I

    move-result v0

    iput v0, v5, Lt1/o;->l:I

    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v0, v21

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->m:J

    move v2, v6

    move/from16 v21, v7

    move/from16 v1, v22

    .line 69
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->n:J

    move v7, v0

    move/from16 v22, v1

    move/from16 v6, v23

    .line 70
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->o:J

    move/from16 v23, v2

    move/from16 v0, v24

    .line 71
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->p:J

    move/from16 v1, v25

    .line 72
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    move/from16 v2, v30

    .line 73
    :goto_5
    iput-boolean v2, v5, Lt1/o;->q:Z

    move/from16 v2, v26

    .line 74
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v25, v0

    .line 75
    invoke-static/range {v24 .. v24}, Lt1/u;->d(I)I

    move-result v0

    iput v0, v5, Lt1/o;->r:I

    .line 76
    iput-object v14, v5, Lt1/o;->j:Lk1/c;

    .line 77
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v5, p1

    move/from16 v26, v2

    move v2, v12

    move/from16 p1, v17

    move/from16 v17, v19

    move/from16 v19, v23

    move/from16 v24, v25

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v25, v1

    move/from16 v23, v6

    move/from16 v6, v32

    move/from16 v33, v21

    move/from16 v21, v7

    move/from16 v7, v20

    move/from16 v20, v33

    goto/16 :goto_0

    .line 78
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 80
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    .line 82
    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt1/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    .line 4
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 5
    invoke-static {v4, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 6
    invoke-static {v4, v5}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 7
    invoke-static {v4, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 8
    invoke-static {v4, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 9
    invoke-static {v4, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 10
    invoke-static {v4, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 11
    invoke-static {v4, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 12
    invoke-static {v4, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 13
    invoke-static {v4, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 14
    invoke-static {v4, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 15
    invoke-static {v4, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 16
    invoke-static {v4, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 17
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 18
    invoke-static {v4, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 19
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 20
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 21
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 22
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 23
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 24
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 25
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 27
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 28
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 29
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v12

    .line 33
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    .line 34
    new-instance v14, Lk1/c;

    invoke-direct {v14}, Lk1/c;-><init>()V

    .line 35
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 36
    invoke-static/range {v31 .. v31}, Lt1/u;->c(I)Lk1/m;

    move-result-object v0

    .line 37
    iput-object v0, v14, Lk1/c;->a:Lk1/m;

    .line 38
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v31

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_1
    iput-boolean v0, v14, Lk1/c;->b:Z

    .line 40
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v31

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_2
    iput-boolean v0, v14, Lk1/c;->c:Z

    .line 42
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v31

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_3
    iput-boolean v0, v14, Lk1/c;->d:Z

    .line 44
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v31

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 45
    :goto_4
    iput-boolean v0, v14, Lk1/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    .line 46
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 47
    iput-wide v5, v14, Lk1/c;->f:J

    .line 48
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 49
    iput-wide v5, v14, Lk1/c;->g:J

    .line 50
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 51
    invoke-static {v5}, Lt1/u;->a([B)Lk1/d;

    move-result-object v5

    .line 52
    iput-object v5, v14, Lk1/c;->h:Lk1/d;

    .line 53
    new-instance v5, Lt1/o;

    invoke-direct {v5, v1, v12}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 55
    invoke-static {v1}, Lt1/u;->e(I)Lk1/p;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->b:Lk1/p;

    .line 56
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 59
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 60
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lt1/o;->f:Landroidx/work/b;

    move v12, v0

    move/from16 v28, v1

    move/from16 v6, v17

    .line 61
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 62
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->h:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 63
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->i:J

    move/from16 v6, v20

    .line 64
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lt1/o;->k:I

    move/from16 v7, v21

    .line 65
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 66
    invoke-static/range {v19 .. v19}, Lt1/u;->b(I)I

    move-result v0

    iput v0, v5, Lt1/o;->l:I

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 67
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->m:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 68
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->n:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 69
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 70
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->p:J

    move/from16 v1, v26

    .line 71
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v2, v31

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 72
    :goto_5
    iput-boolean v2, v5, Lt1/o;->q:Z

    move/from16 v2, v27

    .line 73
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 74
    invoke-static/range {v25 .. v25}, Lt1/u;->d(I)I

    move-result v0

    iput v0, v5, Lt1/o;->r:I

    .line 75
    iput-object v14, v5, Lt1/o;->j:Lk1/c;

    .line 76
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v6

    move/from16 v6, v33

    move/from16 v34, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v34

    goto/16 :goto_0

    .line 77
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 79
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    .line 81
    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt1/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    .line 4
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 5
    invoke-static {v4, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 6
    invoke-static {v4, v5}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 7
    invoke-static {v4, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 8
    invoke-static {v4, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 9
    invoke-static {v4, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 10
    invoke-static {v4, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 11
    invoke-static {v4, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 12
    invoke-static {v4, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 13
    invoke-static {v4, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 14
    invoke-static {v4, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 15
    invoke-static {v4, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 16
    invoke-static {v4, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 17
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 18
    invoke-static {v4, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 19
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 20
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 21
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 22
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 23
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 24
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 25
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 26
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 27
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 28
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "out_of_quota_policy"

    .line 29
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v29, v12

    .line 33
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v14

    .line 34
    new-instance v14, Lk1/c;

    invoke-direct {v14}, Lk1/c;-><init>()V

    .line 35
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 36
    invoke-static/range {v31 .. v31}, Lt1/u;->c(I)Lk1/m;

    move-result-object v0

    .line 37
    iput-object v0, v14, Lk1/c;->a:Lk1/m;

    .line 38
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v31, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v31

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_1
    iput-boolean v0, v14, Lk1/c;->b:Z

    .line 40
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v31

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_2
    iput-boolean v0, v14, Lk1/c;->c:Z

    .line 42
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v31

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_3
    iput-boolean v0, v14, Lk1/c;->d:Z

    .line 44
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, v31

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 45
    :goto_4
    iput-boolean v0, v14, Lk1/c;->e:Z

    move v0, v5

    move/from16 v33, v6

    .line 46
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 47
    iput-wide v5, v14, Lk1/c;->f:J

    .line 48
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 49
    iput-wide v5, v14, Lk1/c;->g:J

    .line 50
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 51
    invoke-static {v5}, Lt1/u;->a([B)Lk1/d;

    move-result-object v5

    .line 52
    iput-object v5, v14, Lk1/c;->h:Lk1/d;

    .line 53
    new-instance v5, Lt1/o;

    invoke-direct {v5, v1, v12}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 55
    invoke-static {v1}, Lt1/u;->e(I)Lk1/p;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->b:Lk1/p;

    .line 56
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->d:Ljava/lang/String;

    .line 57
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v5, Lt1/o;->e:Landroidx/work/b;

    move/from16 v1, v28

    .line 59
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 60
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    iput-object v6, v5, Lt1/o;->f:Landroidx/work/b;

    move v12, v0

    move/from16 v28, v1

    move/from16 v6, v17

    .line 61
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->g:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 62
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->h:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 63
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->i:J

    move/from16 v6, v20

    .line 64
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lt1/o;->k:I

    move/from16 v7, v21

    .line 65
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 66
    invoke-static/range {v19 .. v19}, Lt1/u;->b(I)I

    move-result v0

    iput v0, v5, Lt1/o;->l:I

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 67
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->m:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 68
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lt1/o;->n:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 69
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lt1/o;->o:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 70
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Lt1/o;->p:J

    move/from16 v1, v26

    .line 71
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v2, v31

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 72
    :goto_5
    iput-boolean v2, v5, Lt1/o;->q:Z

    move/from16 v2, v27

    .line 73
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v26, v0

    .line 74
    invoke-static/range {v25 .. v25}, Lt1/u;->d(I)I

    move-result v0

    iput v0, v5, Lt1/o;->r:I

    .line 75
    iput-object v14, v5, Lt1/o;->j:Lk1/c;

    .line 76
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v2

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v25, v26

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v24, v6

    move/from16 v6, v33

    move/from16 v34, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v34

    goto/16 :goto_0

    .line 77
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 79
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    .line 81
    throw v0
.end method

.method public final f(Ljava/lang/String;)Lk1/p;
    .locals 4

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 9
    invoke-static {v1}, Lt1/u;->e(I)Lk1/p;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 14
    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 15
    throw v1
.end method

.method public final h(Ljava/lang/String;)Lt1/o;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 5
    iget-object v0, v1, Lt1/q;->a:Ly0/d0;

    .line 6
    invoke-virtual {v0, v2}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 7
    invoke-static {v4, v0}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 8
    invoke-static {v4, v5}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 9
    invoke-static {v4, v6}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 10
    invoke-static {v4, v7}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 11
    invoke-static {v4, v8}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 12
    invoke-static {v4, v9}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 13
    invoke-static {v4, v10}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 14
    invoke-static {v4, v11}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 15
    invoke-static {v4, v12}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 16
    invoke-static {v4, v13}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 17
    invoke-static {v4, v14}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 18
    invoke-static {v4, v15}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "input"

    .line 19
    invoke-static {v4, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v1, "output"

    .line 20
    invoke-static {v4, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 21
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    .line 22
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "flex_duration"

    .line 23
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "run_attempt_count"

    .line 24
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_policy"

    .line 25
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_delay_duration"

    .line 26
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "period_start_time"

    .line 27
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "minimum_retention_duration"

    .line 28
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "schedule_requested_at"

    .line 29
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "run_in_foreground"

    .line 30
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "out_of_quota_policy"

    .line 31
    invoke-static {v4, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 32
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 33
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v26, v2

    .line 35
    new-instance v2, Lk1/c;

    invoke-direct {v2}, Lk1/c;-><init>()V

    .line 36
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 37
    invoke-static {v0}, Lt1/u;->c(I)Lk1/m;

    move-result-object v0

    .line 38
    iput-object v0, v2, Lk1/c;->a:Lk1/m;

    .line 39
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 40
    :goto_1
    iput-boolean v0, v2, Lk1/c;->b:Z

    .line 41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v5

    .line 42
    :goto_2
    iput-boolean v0, v2, Lk1/c;->c:Z

    .line 43
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v5

    .line 44
    :goto_3
    iput-boolean v0, v2, Lk1/c;->d:Z

    .line 45
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v5

    .line 46
    :goto_4
    iput-boolean v0, v2, Lk1/c;->e:Z

    .line 47
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 48
    iput-wide v6, v2, Lk1/c;->f:J

    .line 49
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 50
    iput-wide v6, v2, Lk1/c;->g:J

    .line 51
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 52
    invoke-static {v0}, Lt1/u;->a([B)Lk1/d;

    move-result-object v0

    .line 53
    iput-object v0, v2, Lk1/c;->h:Lk1/d;

    .line 54
    new-instance v0, Lt1/o;

    invoke-direct {v0, v12, v14}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 56
    invoke-static {v6}, Lt1/u;->e(I)Lk1/p;

    move-result-object v6

    iput-object v6, v0, Lt1/o;->b:Lk1/p;

    .line 57
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lt1/o;->d:Ljava/lang/String;

    .line 58
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v3

    iput-object v3, v0, Lt1/o;->e:Landroidx/work/b;

    .line 60
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    iput-object v1, v0, Lt1/o;->f:Landroidx/work/b;

    move/from16 v1, p1

    .line 62
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->g:J

    move/from16 v1, v17

    .line 63
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->h:J

    move/from16 v1, v18

    .line 64
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->i:J

    move/from16 v1, v19

    .line 65
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lt1/o;->k:I

    move/from16 v1, v20

    .line 66
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 67
    invoke-static {v1}, Lt1/u;->b(I)I

    move-result v1

    iput v1, v0, Lt1/o;->l:I

    move/from16 v1, v21

    .line 68
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->m:J

    move/from16 v1, v22

    .line 69
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->n:J

    move/from16 v1, v23

    .line 70
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->o:J

    move/from16 v1, v24

    .line 71
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lt1/o;->p:J

    move/from16 v1, v25

    .line 72
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v5

    .line 73
    :goto_5
    iput-boolean v3, v0, Lt1/o;->q:Z

    move/from16 v1, v26

    .line 74
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 75
    invoke-static {v1}, Lt1/u;->d(I)I

    move-result v1

    iput v1, v0, Lt1/o;->r:I

    .line 76
    iput-object v2, v0, Lt1/o;->j:Lk1/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 77
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 79
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Ly0/f0;->g0()V

    .line 81
    throw v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lt1/o$a;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    .line 7
    invoke-static {p1, v1}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 8
    invoke-static {p1, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    new-instance v4, Lt1/o$a;

    invoke-direct {v4}, Lt1/o$a;-><init>()V

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lt1/o$a;->a:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 14
    invoke-static {v5}, Lt1/u;->e(I)Lk1/p;

    move-result-object v5

    iput-object v5, v4, Lt1/o$a;->b:Lk1/p;

    .line 15
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 20
    throw v1
.end method

.method public final j(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->f:Lt1/q$e;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    move-result p1

    .line 7
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 9
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 10
    iget-object v1, p0, Lt1/q;->f:Lt1/q$e;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 13
    iget-object v1, p0, Lt1/q;->f:Lt1/q$e;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 14
    throw p1
.end method

.method public final k(Ljava/lang/String;J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->h:Lt1/q$g;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p2, p3}, Ld1/e;->K(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Ld1/e;->t(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    move-result p1

    .line 8
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p2}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 10
    invoke-virtual {p2}, Ly0/d0;->l()V

    .line 11
    iget-object p2, p0, Lt1/q;->h:Lt1/q$g;

    invoke-virtual {p2, v0}, Ly0/h0;->d(Ld1/g;)V

    return p1

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 13
    invoke-virtual {p2}, Ly0/d0;->l()V

    .line 14
    iget-object p2, p0, Lt1/q;->h:Lt1/q$g;

    invoke-virtual {p2, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 15
    throw p1
.end method

.method public final l(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->g:Lt1/q$f;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    move-result p1

    .line 7
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 9
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 10
    iget-object v1, p0, Lt1/q;->g:Lt1/q$f;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 13
    iget-object v1, p0, Lt1/q;->g:Lt1/q$f;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 14
    throw p1
.end method

.method public final m(Ljava/lang/String;Landroidx/work/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->d:Lt1/q$c;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    .line 3
    invoke-static {p2}, Landroidx/work/b;->b(Landroidx/work/b;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1, p2}, Ld1/e;->R(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 6
    invoke-interface {v0, p2}, Ld1/e;->t(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v0, p2, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 9
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 10
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    .line 12
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 13
    iget-object p1, p0, Lt1/q;->d:Lt1/q$c;

    invoke-virtual {p1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 15
    invoke-virtual {p2}, Ly0/d0;->l()V

    .line 16
    iget-object p2, p0, Lt1/q;->d:Lt1/q$c;

    invoke-virtual {p2, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 17
    throw p1
.end method

.method public final n(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/q;->e:Lt1/q$d;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p2, p3}, Ld1/e;->K(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Ld1/e;->t(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 8
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    .line 10
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 11
    iget-object p1, p0, Lt1/q;->e:Lt1/q$d;

    invoke-virtual {p1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 13
    invoke-virtual {p2}, Ly0/d0;->l()V

    .line 14
    iget-object p2, p0, Lt1/q;->e:Lt1/q$d;

    invoke-virtual {p2, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 15
    throw p1
.end method

.method public final varargs o(Lk1/p;[Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE workspec SET state="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE id IN ("

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_0

    const-string v5, ","

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lt1/q;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->a()V

    .line 13
    invoke-virtual {v1}, Ly0/d0;->b()V

    .line 14
    iget-object v1, v1, Ly0/d0;->c:Ld1/d;

    invoke-interface {v1}, Ld1/d;->X()Ld1/b;

    move-result-object v1

    invoke-interface {v1, v0}, Ld1/b;->q(Ljava/lang/String;)Ld1/g;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lt1/u;->f(Lk1/p;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 16
    invoke-interface {v0, p1, v1, v2}, Ld1/e;->K(IJ)V

    const/4 p1, 0x2

    .line 17
    array-length v1, p2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, p2, v3

    if-nez v2, :cond_2

    .line 18
    invoke-interface {v0, p1}, Ld1/e;->t(I)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {v0, p1, v2}, Ld1/e;->l(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 21
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    move-result p1

    .line 22
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {p2}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 24
    invoke-virtual {p2}, Ly0/d0;->l()V

    return p1

    :catchall_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lt1/q;->a:Ly0/d0;

    .line 26
    invoke-virtual {p2}, Ly0/d0;->l()V

    .line 27
    throw p1
.end method
