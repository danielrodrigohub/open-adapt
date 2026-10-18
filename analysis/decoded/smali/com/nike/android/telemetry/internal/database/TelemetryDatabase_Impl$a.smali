.class public final Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;
.super Ly0/e0$a;
.source "TelemetryDatabase_Impl.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;->f(Ly0/n;)Ld1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ly0/e0$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ld1/b;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS `nike_telemetry` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `message` TEXT NOT NULL, `event_type` INTEGER NOT NULL, `session_id` TEXT NOT NULL, `app_id` TEXT NOT NULL, `app_version` TEXT NOT NULL, `device_model` TEXT NOT NULL, `os_version` TEXT NOT NULL, `library_id` TEXT NOT NULL, `library_version` TEXT NOT NULL, `timezone` TEXT NOT NULL, `user_id` TEXT, `attributes` TEXT NOT NULL, `sync_in_progress` INTEGER NOT NULL, `prompted_sync` INTEGER NOT NULL, `attempt_to_sync_count` INTEGER NOT NULL, `telemetry_uuid` TEXT NOT NULL)"

    if-nez v0, :cond_0

    move-object v2, p1

    check-cast v2, Le1/a;

    invoke-virtual {v2, v1}, Le1/a;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_0
    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    if-nez v0, :cond_1

    .line 2
    move-object v2, p1

    check-cast v2, Le1/a;

    invoke-virtual {v2, v1}, Le1/a;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_1
    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4c8ebeff63f975b9d7a398d8d6f28315\')"

    if-nez v0, :cond_2

    .line 3
    check-cast p1, Le1/a;

    invoke-virtual {p1, v1}, Le1/a;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final b(Ld1/b;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `nike_telemetry`"

    if-nez v0, :cond_0

    check-cast p1, Le1/a;

    invoke-virtual {p1, v1}, Le1/a;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 3
    iget-object p1, p1, Ly0/d0;->f:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 6
    iget-object v1, v1, Ly0/d0;->f:Ljava/util/List;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/d0$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 2
    iget-object v0, v0, Ly0/d0;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 5
    iget-object v2, v2, Ly0/d0;->f:Ljava/util/List;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/d0$b;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ld1/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 2
    iput-object p1, v0, Ly0/d0;->a:Ld1/b;

    .line 3
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Ly0/d0;->m(Ld1/b;)V

    .line 5
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 6
    iget-object v0, v0, Ly0/d0;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl$a;->b:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase_Impl;

    .line 9
    iget-object v2, v2, Ly0/d0;->f:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/d0$b;

    invoke-virtual {v2, p1}, Ly0/d0$b;->a(Ld1/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Ld1/b;)V
    .locals 0

    invoke-static {p1}, La1/c;->a(Ld1/b;)V

    return-void
.end method

.method public final g(Ld1/b;)Ly0/e0$b;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, La1/e$a;

    const-string v3, "id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, La1/e$a;

    const-string v4, "timestamp"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, La1/e$a;

    const-string v4, "message"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, La1/e$a;

    const-string v4, "event_type"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "event_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, La1/e$a;

    const-string v4, "session_id"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, La1/e$a;

    const-string v4, "app_id"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, La1/e$a;

    const-string v4, "app_version"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, La1/e$a;

    const-string v4, "device_model"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "device_model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, La1/e$a;

    const-string v4, "os_version"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "os_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, La1/e$a;

    const-string v4, "library_id"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "library_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, La1/e$a;

    const-string v4, "library_version"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "library_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, La1/e$a;

    const-string v4, "timezone"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, La1/e$a;

    const-string v4, "user_id"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, La1/e$a;

    const-string v4, "attributes"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, La1/e$a;

    const-string v4, "sync_in_progress"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "sync_in_progress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, La1/e$a;

    const-string v4, "prompted_sync"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "prompted_sync"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, La1/e$a;

    const-string v4, "attempt_to_sync_count"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "attempt_to_sync_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, La1/e$a;

    const-string v4, "telemetry_uuid"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, La1/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "telemetry_uuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 21
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 22
    new-instance v4, La1/e;

    const-string v5, "nike_telemetry"

    invoke-direct {v4, v5, v0, v1, v3}, La1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 23
    invoke-static {p1, v5}, La1/e;->a(Ld1/b;Ljava/lang/String;)La1/e;

    move-result-object p1

    .line 24
    invoke-virtual {v4, p1}, La1/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ly0/e0$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nike_telemetry(com.nike.android.telemetry.internal.model.TelemetryInfo).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ly0/e0$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 26
    :cond_0
    new-instance p1, Ly0/e0$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ly0/e0$b;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
