package ib;

import android.database.Cursor;
import androidx.appcompat.widget.o;
import androidx.lifecycle.m0;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import d1.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
import p4.h;
import y0.d0;
import y0.f0;
import y0.p;
import y0.q;

/* JADX INFO: compiled from: TelemetryDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ib.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f8999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q<kb.a> f9000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m0 f9001c = new m0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final hb.a f9002d = new hb.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p<kb.a> f9003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p<kb.a> f9004f;

    /* JADX INFO: compiled from: TelemetryDao_Impl.java */
    public class a extends q<kb.a> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR ABORT INTO `nike_telemetry` (`id`,`timestamp`,`message`,`event_type`,`session_id`,`app_id`,`app_version`,`device_model`,`os_version`,`library_id`,`library_version`,`timezone`,`user_id`,`attributes`,`sync_in_progress`,`prompted_sync`,`attempt_to_sync_count`,`telemetry_uuid`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // y0.q
        public final void e(g gVar, kb.a aVar) {
            kb.a aVar2 = aVar;
            gVar.K(1, aVar2.f9766a);
            gVar.K(2, aVar2.f9767b);
            String str = aVar2.f9768c;
            if (str == null) {
                gVar.t(3);
            } else {
                gVar.l(3, str);
            }
            m0 m0Var = b.this.f9001c;
            int i10 = aVar2.f9769d;
            Objects.requireNonNull(m0Var);
            o.d(i10, AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE);
            gVar.K(4, q.g.a(i10));
            String str2 = aVar2.f9770e;
            if (str2 == null) {
                gVar.t(5);
            } else {
                gVar.l(5, str2);
            }
            String str3 = aVar2.f9771f;
            if (str3 == null) {
                gVar.t(6);
            } else {
                gVar.l(6, str3);
            }
            String str4 = aVar2.f9772g;
            if (str4 == null) {
                gVar.t(7);
            } else {
                gVar.l(7, str4);
            }
            String str5 = aVar2.f9773h;
            if (str5 == null) {
                gVar.t(8);
            } else {
                gVar.l(8, str5);
            }
            String str6 = aVar2.f9774i;
            if (str6 == null) {
                gVar.t(9);
            } else {
                gVar.l(9, str6);
            }
            String str7 = aVar2.f9775j;
            if (str7 == null) {
                gVar.t(10);
            } else {
                gVar.l(10, str7);
            }
            String str8 = aVar2.f9776k;
            if (str8 == null) {
                gVar.t(11);
            } else {
                gVar.l(11, str8);
            }
            String str9 = aVar2.f9777l;
            if (str9 == null) {
                gVar.t(12);
            } else {
                gVar.l(12, str9);
            }
            String str10 = aVar2.f9778m;
            if (str10 == null) {
                gVar.t(13);
            } else {
                gVar.l(13, str10);
            }
            hb.a aVar3 = b.this.f9002d;
            Map<String, Object> map = aVar2.f9779n;
            Objects.requireNonNull(aVar3);
            h.j(map, "map");
            String string = JSONObjectInstrumentation.toString(new JSONObject(map));
            h.i(string, "JSONObject(map).toString()");
            gVar.l(14, string);
            gVar.K(15, aVar2.f9780o ? 1L : 0L);
            gVar.K(16, aVar2.f9781p ? 1L : 0L);
            gVar.K(17, aVar2.f9782q);
            String str11 = aVar2.f9783r;
            if (str11 == null) {
                gVar.t(18);
            } else {
                gVar.l(18, str11);
            }
        }
    }

    /* JADX INFO: renamed from: ib.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TelemetryDao_Impl.java */
    public class C0176b extends p<kb.a> {
        public C0176b(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "DELETE FROM `nike_telemetry` WHERE `id` = ?";
        }

        @Override // y0.p
        public final void e(g gVar, kb.a aVar) {
            gVar.K(1, aVar.f9766a);
        }
    }

    /* JADX INFO: compiled from: TelemetryDao_Impl.java */
    public class c extends p<kb.a> {
        public c(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE OR REPLACE `nike_telemetry` SET `id` = ?,`timestamp` = ?,`message` = ?,`event_type` = ?,`session_id` = ?,`app_id` = ?,`app_version` = ?,`device_model` = ?,`os_version` = ?,`library_id` = ?,`library_version` = ?,`timezone` = ?,`user_id` = ?,`attributes` = ?,`sync_in_progress` = ?,`prompted_sync` = ?,`attempt_to_sync_count` = ?,`telemetry_uuid` = ? WHERE `id` = ?";
        }

        @Override // y0.p
        public final void e(g gVar, kb.a aVar) {
            kb.a aVar2 = aVar;
            gVar.K(1, aVar2.f9766a);
            gVar.K(2, aVar2.f9767b);
            String str = aVar2.f9768c;
            if (str == null) {
                gVar.t(3);
            } else {
                gVar.l(3, str);
            }
            m0 m0Var = b.this.f9001c;
            int i10 = aVar2.f9769d;
            Objects.requireNonNull(m0Var);
            o.d(i10, AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE);
            gVar.K(4, q.g.a(i10));
            String str2 = aVar2.f9770e;
            if (str2 == null) {
                gVar.t(5);
            } else {
                gVar.l(5, str2);
            }
            String str3 = aVar2.f9771f;
            if (str3 == null) {
                gVar.t(6);
            } else {
                gVar.l(6, str3);
            }
            String str4 = aVar2.f9772g;
            if (str4 == null) {
                gVar.t(7);
            } else {
                gVar.l(7, str4);
            }
            String str5 = aVar2.f9773h;
            if (str5 == null) {
                gVar.t(8);
            } else {
                gVar.l(8, str5);
            }
            String str6 = aVar2.f9774i;
            if (str6 == null) {
                gVar.t(9);
            } else {
                gVar.l(9, str6);
            }
            String str7 = aVar2.f9775j;
            if (str7 == null) {
                gVar.t(10);
            } else {
                gVar.l(10, str7);
            }
            String str8 = aVar2.f9776k;
            if (str8 == null) {
                gVar.t(11);
            } else {
                gVar.l(11, str8);
            }
            String str9 = aVar2.f9777l;
            if (str9 == null) {
                gVar.t(12);
            } else {
                gVar.l(12, str9);
            }
            String str10 = aVar2.f9778m;
            if (str10 == null) {
                gVar.t(13);
            } else {
                gVar.l(13, str10);
            }
            hb.a aVar3 = b.this.f9002d;
            Map<String, Object> map = aVar2.f9779n;
            Objects.requireNonNull(aVar3);
            h.j(map, "map");
            String string = JSONObjectInstrumentation.toString(new JSONObject(map));
            h.i(string, "JSONObject(map).toString()");
            gVar.l(14, string);
            gVar.K(15, aVar2.f9780o ? 1L : 0L);
            gVar.K(16, aVar2.f9781p ? 1L : 0L);
            gVar.K(17, aVar2.f9782q);
            String str11 = aVar2.f9783r;
            if (str11 == null) {
                gVar.t(18);
            } else {
                gVar.l(18, str11);
            }
            gVar.K(19, aVar2.f9766a);
        }
    }

    public b(d0 d0Var) {
        this.f8999a = d0Var;
        this.f9000b = new a(d0Var);
        this.f9003e = new C0176b(d0Var);
        this.f9004f = new c(d0Var);
    }

    @Override // ib.a
    public final void a(kb.a... aVarArr) {
        this.f8999a.b();
        this.f8999a.c();
        try {
            this.f9003e.f(aVarArr);
            this.f8999a.p();
        } finally {
            this.f8999a.l();
        }
    }

    @Override // ib.a
    public final List<kb.a> b() {
        int i10 = 0;
        f0 f0VarF0 = f0.f0("SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 0 AND prompted_sync == 0 AND attempt_to_sync_count < 4 LIMIT 100", 0);
        this.f8999a.b();
        Cursor cursorO = this.f8999a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(new kb.a(cursorO.getLong(i10), cursorO.getLong(1), cursorO.isNull(2) ? null : cursorO.getString(2), this.f9001c.e(cursorO.getInt(3)), cursorO.isNull(4) ? null : cursorO.getString(4), cursorO.isNull(5) ? null : cursorO.getString(5), cursorO.isNull(6) ? null : cursorO.getString(6), cursorO.isNull(7) ? null : cursorO.getString(7), cursorO.isNull(8) ? null : cursorO.getString(8), cursorO.isNull(9) ? null : cursorO.getString(9), cursorO.isNull(10) ? null : cursorO.getString(10), cursorO.isNull(11) ? null : cursorO.getString(11), cursorO.isNull(12) ? null : cursorO.getString(12), this.f9002d.b(cursorO.isNull(13) ? null : cursorO.getString(13)), cursorO.getInt(14) != 0, cursorO.getInt(15) != 0, cursorO.getInt(16), cursorO.isNull(17) ? null : cursorO.getString(17)));
                i10 = 0;
            }
            return arrayList;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    @Override // ib.a
    public final List<kb.a> c() {
        int i10 = 0;
        f0 f0VarF0 = f0.f0("SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 0 AND attempt_to_sync_count < 4 LIMIT 100", 0);
        this.f8999a.b();
        Cursor cursorO = this.f8999a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(new kb.a(cursorO.getLong(i10), cursorO.getLong(1), cursorO.isNull(2) ? null : cursorO.getString(2), this.f9001c.e(cursorO.getInt(3)), cursorO.isNull(4) ? null : cursorO.getString(4), cursorO.isNull(5) ? null : cursorO.getString(5), cursorO.isNull(6) ? null : cursorO.getString(6), cursorO.isNull(7) ? null : cursorO.getString(7), cursorO.isNull(8) ? null : cursorO.getString(8), cursorO.isNull(9) ? null : cursorO.getString(9), cursorO.isNull(10) ? null : cursorO.getString(10), cursorO.isNull(11) ? null : cursorO.getString(11), cursorO.isNull(12) ? null : cursorO.getString(12), this.f9002d.b(cursorO.isNull(13) ? null : cursorO.getString(13)), cursorO.getInt(14) != 0, cursorO.getInt(15) != 0, cursorO.getInt(16), cursorO.isNull(17) ? null : cursorO.getString(17)));
                i10 = 0;
            }
            return arrayList;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    @Override // ib.a
    public final List<kb.a> d() {
        int i10 = 0;
        f0 f0VarF0 = f0.f0("SELECT `nike_telemetry`.`id` AS `id`, `nike_telemetry`.`timestamp` AS `timestamp`, `nike_telemetry`.`message` AS `message`, `nike_telemetry`.`event_type` AS `event_type`, `nike_telemetry`.`session_id` AS `session_id`, `nike_telemetry`.`app_id` AS `app_id`, `nike_telemetry`.`app_version` AS `app_version`, `nike_telemetry`.`device_model` AS `device_model`, `nike_telemetry`.`os_version` AS `os_version`, `nike_telemetry`.`library_id` AS `library_id`, `nike_telemetry`.`library_version` AS `library_version`, `nike_telemetry`.`timezone` AS `timezone`, `nike_telemetry`.`user_id` AS `user_id`, `nike_telemetry`.`attributes` AS `attributes`, `nike_telemetry`.`sync_in_progress` AS `sync_in_progress`, `nike_telemetry`.`prompted_sync` AS `prompted_sync`, `nike_telemetry`.`attempt_to_sync_count` AS `attempt_to_sync_count`, `nike_telemetry`.`telemetry_uuid` AS `telemetry_uuid` FROM nike_telemetry WHERE sync_in_progress == 1 OR prompted_sync == 1 ", 0);
        this.f8999a.b();
        Cursor cursorO = this.f8999a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(new kb.a(cursorO.getLong(i10), cursorO.getLong(1), cursorO.isNull(2) ? null : cursorO.getString(2), this.f9001c.e(cursorO.getInt(3)), cursorO.isNull(4) ? null : cursorO.getString(4), cursorO.isNull(5) ? null : cursorO.getString(5), cursorO.isNull(6) ? null : cursorO.getString(6), cursorO.isNull(7) ? null : cursorO.getString(7), cursorO.isNull(8) ? null : cursorO.getString(8), cursorO.isNull(9) ? null : cursorO.getString(9), cursorO.isNull(10) ? null : cursorO.getString(10), cursorO.isNull(11) ? null : cursorO.getString(11), cursorO.isNull(12) ? null : cursorO.getString(12), this.f9002d.b(cursorO.isNull(13) ? null : cursorO.getString(13)), cursorO.getInt(14) != 0, cursorO.getInt(15) != 0, cursorO.getInt(16), cursorO.isNull(17) ? null : cursorO.getString(17)));
                i10 = 0;
            }
            return arrayList;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    @Override // ib.a
    public final void e(kb.a... aVarArr) {
        this.f8999a.b();
        this.f8999a.c();
        try {
            q<kb.a> qVar = this.f9000b;
            g gVarA = qVar.a();
            try {
                for (kb.a aVar : aVarArr) {
                    qVar.e(gVarA, aVar);
                    gVarA.Z();
                }
                qVar.d(gVarA);
                this.f8999a.p();
                this.f8999a.l();
            } catch (Throwable th) {
                qVar.d(gVarA);
                throw th;
            }
        } catch (Throwable th2) {
            this.f8999a.l();
            throw th2;
        }
    }

    @Override // ib.a
    public final void f(kb.a... aVarArr) {
        this.f8999a.b();
        this.f8999a.c();
        try {
            this.f9004f.f(aVarArr);
            this.f8999a.p();
        } finally {
            this.f8999a.l();
        }
    }
}
