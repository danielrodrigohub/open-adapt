.class public final Lib/b;
.super Ljava/lang/Object;
.source "TelemetryDao_Impl.java"

# interfaces
.implements Lib/a;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lib/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lkb/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/m0;

.field public final d:Lhb/a;

.field public final e:Lib/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/p<",
            "Lkb/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lib/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/p<",
            "Lkb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0}, Landroidx/lifecycle/m0;-><init>()V

    iput-object v0, p0, Lib/b;->c:Landroidx/lifecycle/m0;

    .line 3
    new-instance v0, Lhb/a;

    invoke-direct {v0}, Lhb/a;-><init>()V

    iput-object v0, p0, Lib/b;->d:Lhb/a;

    .line 4
    iput-object p1, p0, Lib/b;->a:Ly0/d0;

    .line 5
    new-instance v0, Lib/b$a;

    invoke-direct {v0, p0, p1}, Lib/b$a;-><init>(Lib/b;Ly0/d0;)V

    iput-object v0, p0, Lib/b;->b:Lib/b$a;

    .line 6
    new-instance v0, Lib/b$b;

    invoke-direct {v0, p1}, Lib/b$b;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lib/b;->e:Lib/b$b;

    .line 7
    new-instance v0, Lib/b$c;

    invoke-direct {v0, p0, p1}, Lib/b$c;-><init>(Lib/b;Ly0/d0;)V

    iput-object v0, p0, Lib/b;->f:Lib/b$c;

    return-void
.end method


# virtual methods
.method public final varargs a([Lkb/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lib/b;->e:Lib/b$b;

    invoke-virtual {v0, p1}, Ly0/p;->f([Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    .line 6
    invoke-virtual {p1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    .line 8
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 9
    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 0 AND prompted_sync == 0 AND attempt_to_sync_count < 4 LIMIT 100"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    .line 4
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 7
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v5, 0x1

    .line 8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v6, 0x2

    .line 9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    move-object v11, v12

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_1
    const/4 v6, 0x3

    .line 11
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 12
    iget-object v13, v1, Lib/b;->c:Landroidx/lifecycle/m0;

    invoke-virtual {v13, v6}, Landroidx/lifecycle/m0;->e(I)I

    move-result v13

    const/4 v6, 0x4

    .line 13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v12

    goto :goto_2

    .line 14
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :goto_2
    const/4 v6, 0x5

    .line 15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v12

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    :goto_3
    const/4 v6, 0x6

    .line 17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v12

    goto :goto_4

    .line 18
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    :goto_4
    const/4 v6, 0x7

    .line 19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v12

    goto :goto_5

    .line 20
    :cond_4
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    :goto_5
    const/16 v6, 0x8

    .line 21
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v12

    goto :goto_6

    .line 22
    :cond_5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    :goto_6
    const/16 v6, 0x9

    .line 23
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v12

    goto :goto_7

    .line 24
    :cond_6
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    :goto_7
    const/16 v6, 0xa

    .line 25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v12

    goto :goto_8

    .line 26
    :cond_7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    :goto_8
    const/16 v6, 0xb

    .line 27
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v12

    goto :goto_9

    .line 28
    :cond_8
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_9
    const/16 v6, 0xc

    .line 29
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v12

    goto :goto_a

    .line 30
    :cond_9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    :goto_a
    const/16 v6, 0xd

    .line 31
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object v6, v12

    goto :goto_b

    .line 32
    :cond_a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    :goto_b
    iget-object v2, v1, Lib/b;->d:Lhb/a;

    invoke-virtual {v2, v6}, Lhb/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/16 v6, 0xe

    .line 34
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v23, v5

    goto :goto_c

    :cond_b
    const/16 v23, 0x0

    :goto_c
    const/16 v6, 0xf

    .line 35
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    move/from16 v24, v5

    goto :goto_d

    :cond_c
    const/16 v24, 0x0

    :goto_d
    const/16 v5, 0x10

    .line 36
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v5, 0x11

    .line 37
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v26, v12

    goto :goto_e

    .line 38
    :cond_d
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    .line 39
    :goto_e
    new-instance v5, Lkb/a;

    move-object v6, v5

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v2

    invoke-direct/range {v6 .. v26}, Lkb/a;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 41
    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v3}, Ly0/f0;->g0()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Ly0/f0;->g0()V

    .line 45
    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 0 AND attempt_to_sync_count < 4 LIMIT 100"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    .line 4
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 7
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v5, 0x1

    .line 8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v6, 0x2

    .line 9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    move-object v11, v12

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_1
    const/4 v6, 0x3

    .line 11
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 12
    iget-object v13, v1, Lib/b;->c:Landroidx/lifecycle/m0;

    invoke-virtual {v13, v6}, Landroidx/lifecycle/m0;->e(I)I

    move-result v13

    const/4 v6, 0x4

    .line 13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v12

    goto :goto_2

    .line 14
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :goto_2
    const/4 v6, 0x5

    .line 15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v12

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    :goto_3
    const/4 v6, 0x6

    .line 17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v12

    goto :goto_4

    .line 18
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    :goto_4
    const/4 v6, 0x7

    .line 19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v12

    goto :goto_5

    .line 20
    :cond_4
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    :goto_5
    const/16 v6, 0x8

    .line 21
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v12

    goto :goto_6

    .line 22
    :cond_5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    :goto_6
    const/16 v6, 0x9

    .line 23
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v12

    goto :goto_7

    .line 24
    :cond_6
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    :goto_7
    const/16 v6, 0xa

    .line 25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v12

    goto :goto_8

    .line 26
    :cond_7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    :goto_8
    const/16 v6, 0xb

    .line 27
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v12

    goto :goto_9

    .line 28
    :cond_8
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_9
    const/16 v6, 0xc

    .line 29
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v12

    goto :goto_a

    .line 30
    :cond_9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    :goto_a
    const/16 v6, 0xd

    .line 31
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object v6, v12

    goto :goto_b

    .line 32
    :cond_a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    :goto_b
    iget-object v2, v1, Lib/b;->d:Lhb/a;

    invoke-virtual {v2, v6}, Lhb/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/16 v6, 0xe

    .line 34
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v23, v5

    goto :goto_c

    :cond_b
    const/16 v23, 0x0

    :goto_c
    const/16 v6, 0xf

    .line 35
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    move/from16 v24, v5

    goto :goto_d

    :cond_c
    const/16 v24, 0x0

    :goto_d
    const/16 v5, 0x10

    .line 36
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v5, 0x11

    .line 37
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v26, v12

    goto :goto_e

    .line 38
    :cond_d
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    .line 39
    :goto_e
    new-instance v5, Lkb/a;

    move-object v6, v5

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v2

    invoke-direct/range {v6 .. v26}, Lkb/a;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 41
    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v3}, Ly0/f0;->g0()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Ly0/f0;->g0()V

    .line 45
    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 1 OR prompted_sync == 1 "

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, v1, Lib/b;->a:Ly0/d0;

    .line 4
    invoke-virtual {v0, v3}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 7
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v5, 0x1

    .line 8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v6, 0x2

    .line 9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    move-object v11, v12

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_1
    const/4 v6, 0x3

    .line 11
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 12
    iget-object v13, v1, Lib/b;->c:Landroidx/lifecycle/m0;

    invoke-virtual {v13, v6}, Landroidx/lifecycle/m0;->e(I)I

    move-result v13

    const/4 v6, 0x4

    .line 13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v12

    goto :goto_2

    .line 14
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :goto_2
    const/4 v6, 0x5

    .line 15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v12

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    :goto_3
    const/4 v6, 0x6

    .line 17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v12

    goto :goto_4

    .line 18
    :cond_3
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    :goto_4
    const/4 v6, 0x7

    .line 19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v12

    goto :goto_5

    .line 20
    :cond_4
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    :goto_5
    const/16 v6, 0x8

    .line 21
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v12

    goto :goto_6

    .line 22
    :cond_5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    :goto_6
    const/16 v6, 0x9

    .line 23
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v12

    goto :goto_7

    .line 24
    :cond_6
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    :goto_7
    const/16 v6, 0xa

    .line 25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v12

    goto :goto_8

    .line 26
    :cond_7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    :goto_8
    const/16 v6, 0xb

    .line 27
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v12

    goto :goto_9

    .line 28
    :cond_8
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    :goto_9
    const/16 v6, 0xc

    .line 29
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v12

    goto :goto_a

    .line 30
    :cond_9
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    :goto_a
    const/16 v6, 0xd

    .line 31
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object v6, v12

    goto :goto_b

    .line 32
    :cond_a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    :goto_b
    iget-object v2, v1, Lib/b;->d:Lhb/a;

    invoke-virtual {v2, v6}, Lhb/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/16 v6, 0xe

    .line 34
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v23, v5

    goto :goto_c

    :cond_b
    const/16 v23, 0x0

    :goto_c
    const/16 v6, 0xf

    .line 35
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    move/from16 v24, v5

    goto :goto_d

    :cond_c
    const/16 v24, 0x0

    :goto_d
    const/16 v5, 0x10

    .line 36
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v5, 0x11

    .line 37
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v26, v12

    goto :goto_e

    .line 38
    :cond_d
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    .line 39
    :goto_e
    new-instance v5, Lkb/a;

    move-object v6, v5

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v2

    invoke-direct/range {v6 .. v26}, Lkb/a;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V

    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 41
    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v3}, Ly0/f0;->g0()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Ly0/f0;->g0()V

    .line 45
    throw v0
.end method

.method public final varargs e([Lkb/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lib/b;->b:Lib/b$a;

    .line 4
    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v0, v1, v4}, Lib/b$a;->e(Ld1/g;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1}, Ld1/g;->Z()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    :try_start_2
    invoke-virtual {v0, v1}, Ly0/h0;->d(Ld1/g;)V

    .line 9
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    .line 11
    invoke-virtual {p1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    invoke-virtual {v0, v1}, Ly0/h0;->d(Ld1/g;)V

    .line 13
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    .line 15
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 16
    throw p1
.end method

.method public final varargs f([Lkb/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lib/b;->f:Lib/b$c;

    invoke-virtual {v0, p1}, Ly0/p;->f([Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lib/b;->a:Ly0/d0;

    .line 6
    invoke-virtual {p1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lib/b;->a:Ly0/d0;

    .line 8
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 9
    throw p1
.end method
