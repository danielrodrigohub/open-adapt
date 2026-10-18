.class public final Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;
.super Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
.source "TelemetryDatabase_Impl.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public volatile o:Lib/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-virtual {p0}, Ly0/d0;->a()V

    .line 2
    iget-object v2, p0, Ly0/d0;->c:Ld1/d;

    .line 3
    invoke-interface {v2}, Ld1/d;->X()Ld1/b;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ly0/d0;->c()V

    const-string v3, "DELETE FROM `nike_telemetry`"

    .line 5
    instance-of v4, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ld1/b;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Ly0/d0;->l()V

    .line 8
    invoke-interface {v2, v1}, Ld1/b;->b0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-interface {v2}, Ld1/b;->C()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Ld1/b;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    .line 11
    invoke-virtual {p0}, Ly0/d0;->l()V

    .line 12
    invoke-interface {v2, v1}, Ld1/b;->b0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-interface {v2}, Ld1/b;->C()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-interface {v2, v0}, Ld1/b;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 15
    :cond_4
    :goto_2
    throw v3
.end method

.method public final e()Landroidx/room/c;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/c;

    const-string v3, "nike_telemetry"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/c;-><init>(Ly0/d0;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final f(Ly0/n;)Ld1/d;
    .locals 5

    .line 1
    new-instance v0, Ly0/e0;

    new-instance v1, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;

    invoke-direct {v1, p0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;-><init>(Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;)V

    const-string v2, "4c8ebeff63f975b9d7a398d8d6f28315"

    const-string v3, "1f23952184ccef0c09a4d6ae6ddde889"

    invoke-direct {v0, p1, v1, v2, v3}, Ly0/e0;-><init>(Ly0/n;Ly0/e0$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Ly0/n;->b:Landroid/content/Context;

    iget-object v2, p1, Ly0/n;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ld1/d$b;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Ld1/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ld1/d$a;Z)V

    .line 4
    iget-object p1, p1, Ly0/n;->a:Ld1/d$c;

    invoke-interface {p1, v3}, Ld1/d$c;->a(Ld1/d$b;)Ld1/d;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lz0/a;",
            ">;",
            "Lz0/a;",
            ">;)",
            "Ljava/util/List<",
            "Lz0/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lz0/b;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lz0/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lib/a;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final r()Lib/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->o:Lib/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->o:Lib/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->o:Lib/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lib/b;

    invoke-direct {v0, p0}, Lib/b;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->o:Lib/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->o:Lib/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
