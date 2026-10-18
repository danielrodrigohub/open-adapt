package com.nike.android.telemetry.internal.database;

import a1.c;
import a1.e;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import d1.d;
import ib.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import y0.d0;
import y0.e0;
import y0.n;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class TelemetryDatabase_Impl extends TelemetryDatabase {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile b f5923o;

    @Instrumented
    public class a extends e0.a {
        public a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // y0.e0.a
        public final void a(d1.b bVar) {
            boolean z10 = bVar instanceof SQLiteDatabase;
            if (z10) {
                SQLiteInstrumentation.execSQL((SQLiteDatabase) bVar, "CREATE TABLE IF NOT EXISTS `nike_telemetry` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `message` TEXT NOT NULL, `event_type` INTEGER NOT NULL, `session_id` TEXT NOT NULL, `app_id` TEXT NOT NULL, `app_version` TEXT NOT NULL, `device_model` TEXT NOT NULL, `os_version` TEXT NOT NULL, `library_id` TEXT NOT NULL, `library_version` TEXT NOT NULL, `timezone` TEXT NOT NULL, `user_id` TEXT, `attributes` TEXT NOT NULL, `sync_in_progress` INTEGER NOT NULL, `prompted_sync` INTEGER NOT NULL, `attempt_to_sync_count` INTEGER NOT NULL, `telemetry_uuid` TEXT NOT NULL)");
            } else {
                ((e1.a) bVar).k("CREATE TABLE IF NOT EXISTS `nike_telemetry` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `message` TEXT NOT NULL, `event_type` INTEGER NOT NULL, `session_id` TEXT NOT NULL, `app_id` TEXT NOT NULL, `app_version` TEXT NOT NULL, `device_model` TEXT NOT NULL, `os_version` TEXT NOT NULL, `library_id` TEXT NOT NULL, `library_version` TEXT NOT NULL, `timezone` TEXT NOT NULL, `user_id` TEXT, `attributes` TEXT NOT NULL, `sync_in_progress` INTEGER NOT NULL, `prompted_sync` INTEGER NOT NULL, `attempt_to_sync_count` INTEGER NOT NULL, `telemetry_uuid` TEXT NOT NULL)");
            }
            if (z10) {
                SQLiteInstrumentation.execSQL((SQLiteDatabase) bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            } else {
                ((e1.a) bVar).k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            }
            if (z10) {
                SQLiteInstrumentation.execSQL((SQLiteDatabase) bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '4c8ebeff63f975b9d7a398d8d6f28315')");
            } else {
                ((e1.a) bVar).k("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '4c8ebeff63f975b9d7a398d8d6f28315')");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // y0.e0.a
        public final void b(d1.b bVar) {
            if (bVar instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL((SQLiteDatabase) bVar, "DROP TABLE IF EXISTS `nike_telemetry`");
            } else {
                ((e1.a) bVar).k("DROP TABLE IF EXISTS `nike_telemetry`");
            }
            List<d0.b> list = TelemetryDatabase_Impl.this.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Objects.requireNonNull(TelemetryDatabase_Impl.this.f18160f.get(i10));
                }
            }
        }

        @Override // y0.e0.a
        public final void c() {
            List<d0.b> list = TelemetryDatabase_Impl.this.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Objects.requireNonNull(TelemetryDatabase_Impl.this.f18160f.get(i10));
                }
            }
        }

        @Override // y0.e0.a
        public final void d(d1.b bVar) {
            TelemetryDatabase_Impl.this.f18155a = bVar;
            TelemetryDatabase_Impl.this.m(bVar);
            List<d0.b> list = TelemetryDatabase_Impl.this.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    TelemetryDatabase_Impl.this.f18160f.get(i10).a(bVar);
                }
            }
        }

        @Override // y0.e0.a
        public final void e() {
        }

        @Override // y0.e0.a
        public final void f(d1.b bVar) {
            c.a(bVar);
        }

        @Override // y0.e0.a
        public final e0.b g(d1.b bVar) {
            HashMap map = new HashMap(18);
            map.put("id", new e.a("id", "INTEGER", true, 1, null, 1));
            map.put(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, new e.a(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, "INTEGER", true, 0, null, 1));
            map.put("message", new e.a("message", "TEXT", true, 0, null, 1));
            map.put("event_type", new e.a("event_type", "INTEGER", true, 0, null, 1));
            map.put("session_id", new e.a("session_id", "TEXT", true, 0, null, 1));
            map.put("app_id", new e.a("app_id", "TEXT", true, 0, null, 1));
            map.put("app_version", new e.a("app_version", "TEXT", true, 0, null, 1));
            map.put("device_model", new e.a("device_model", "TEXT", true, 0, null, 1));
            map.put("os_version", new e.a("os_version", "TEXT", true, 0, null, 1));
            map.put("library_id", new e.a("library_id", "TEXT", true, 0, null, 1));
            map.put("library_version", new e.a("library_version", "TEXT", true, 0, null, 1));
            map.put("timezone", new e.a("timezone", "TEXT", true, 0, null, 1));
            map.put("user_id", new e.a("user_id", "TEXT", false, 0, null, 1));
            map.put("attributes", new e.a("attributes", "TEXT", true, 0, null, 1));
            map.put("sync_in_progress", new e.a("sync_in_progress", "INTEGER", true, 0, null, 1));
            map.put("prompted_sync", new e.a("prompted_sync", "INTEGER", true, 0, null, 1));
            map.put("attempt_to_sync_count", new e.a("attempt_to_sync_count", "INTEGER", true, 0, null, 1));
            map.put("telemetry_uuid", new e.a("telemetry_uuid", "TEXT", true, 0, null, 1));
            e eVar = new e("nike_telemetry", map, new HashSet(0), new HashSet(0));
            e eVarA = e.a(bVar, "nike_telemetry");
            if (eVar.equals(eVarA)) {
                return new e0.b(true, null);
            }
            return new e0.b(false, "nike_telemetry(com.nike.android.telemetry.internal.model.TelemetryInfo).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.d0
    public final void d() {
        boolean zC;
        a();
        d1.b bVarX = this.f18157c.X();
        try {
            c();
            if (bVarX instanceof SQLiteDatabase) {
                SQLiteInstrumentation.execSQL((SQLiteDatabase) bVarX, "DELETE FROM `nike_telemetry`");
            } else {
                bVarX.k("DELETE FROM `nike_telemetry`");
            }
            p();
            if (zC) {
                return;
            }
        } finally {
            l();
            bVarX.b0("PRAGMA wal_checkpoint(FULL)").close();
            if (!bVarX.C()) {
                if (bVarX instanceof SQLiteDatabase) {
                    SQLiteInstrumentation.execSQL((SQLiteDatabase) bVarX, "VACUUM");
                } else {
                    bVarX.k("VACUUM");
                }
            }
        }
    }

    @Override // y0.d0
    public final androidx.room.c e() {
        return new androidx.room.c(this, new HashMap(0), new HashMap(0), "nike_telemetry");
    }

    @Override // y0.d0
    public final d f(n nVar) {
        e0 e0Var = new e0(nVar, new a(), "4c8ebeff63f975b9d7a398d8d6f28315", "1f23952184ccef0c09a4d6ae6ddde889");
        Context context = nVar.f18257b;
        String str = nVar.f18258c;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        return nVar.f18256a.a(new d.b(context, str, e0Var, false));
    }

    @Override // y0.d0
    public final List g() {
        return Arrays.asList(new z0.b[0]);
    }

    @Override // y0.d0
    public final Set<Class<? extends z0.a>> h() {
        return new HashSet();
    }

    @Override // y0.d0
    public final Map<Class<?>, List<Class<?>>> i() {
        HashMap map = new HashMap();
        map.put(ib.a.class, Collections.emptyList());
        return map;
    }

    @Override // com.nike.android.telemetry.internal.database.TelemetryDatabase
    public final ib.a r() {
        b bVar;
        if (this.f5923o != null) {
            return this.f5923o;
        }
        synchronized (this) {
            if (this.f5923o == null) {
                this.f5923o = new b(this);
            }
            bVar = this.f5923o;
        }
        return bVar;
    }
}
