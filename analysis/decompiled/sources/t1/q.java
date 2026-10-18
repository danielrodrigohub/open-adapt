package t1;

import android.database.Cursor;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http.HttpStatusCodesKt;
import y0.d0;
import y0.f0;
import y0.h0;

/* JADX INFO: compiled from: WorkSpecDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<o> f15371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f15372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f15373d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f15374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e f15375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final f f15376g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g f15377h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f15378i;

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class a extends y0.q<o> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX WARN: Code duplicated, block: B:86:0x01c8  */
        /* JADX WARN: Code duplicated, block: B:87:0x01ce  */
        /* JADX WARN: Type inference failed for: r0v17, types: [java.util.HashSet, java.util.Set<k1.d$a>] */
        @Override // y0.q
        public final void e(d1.g gVar, o oVar) throws Throwable {
            int i10;
            int i11;
            Throwable th;
            ObjectOutputStream objectOutputStream;
            o oVar2 = oVar;
            String str = oVar2.f15350a;
            int i12 = 1;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            gVar.K(2, u.f(oVar2.f15351b));
            String str2 = oVar2.f15352c;
            if (str2 == null) {
                gVar.t(3);
            } else {
                gVar.l(3, str2);
            }
            String str3 = oVar2.f15353d;
            if (str3 == null) {
                gVar.t(4);
            } else {
                gVar.l(4, str3);
            }
            byte[] bArrB = androidx.work.b.b(oVar2.f15354e);
            if (bArrB == null) {
                gVar.t(5);
            } else {
                gVar.R(5, bArrB);
            }
            byte[] bArrB2 = androidx.work.b.b(oVar2.f15355f);
            if (bArrB2 == null) {
                gVar.t(6);
            } else {
                gVar.R(6, bArrB2);
            }
            gVar.K(7, oVar2.f15356g);
            gVar.K(8, oVar2.f15357h);
            gVar.K(9, oVar2.f15358i);
            gVar.K(10, oVar2.f15360k);
            int i13 = oVar2.f15361l;
            int iA = q.g.a(i13);
            if (iA == 0) {
                i10 = 0;
            } else {
                if (iA != 1) {
                    StringBuilder sbC = a0.b.c("Could not convert ");
                    sbC.append(k1.a.c(i13));
                    sbC.append(" to int");
                    throw new IllegalArgumentException(sbC.toString());
                }
                i10 = 1;
            }
            gVar.K(11, i10);
            gVar.K(12, oVar2.f15362m);
            gVar.K(13, oVar2.f15363n);
            gVar.K(14, oVar2.f15364o);
            gVar.K(15, oVar2.f15365p);
            gVar.K(16, oVar2.f15366q ? 1L : 0L);
            int i14 = oVar2.f15367r;
            int iA2 = q.g.a(i14);
            if (iA2 == 0) {
                i11 = 0;
            } else {
                if (iA2 != 1) {
                    StringBuilder sbC2 = a0.b.c("Could not convert ");
                    sbC2.append(androidx.recyclerview.widget.d.h(i14));
                    sbC2.append(" to int");
                    throw new IllegalArgumentException(sbC2.toString());
                }
                i11 = 1;
            }
            gVar.K(17, i11);
            k1.c cVar = oVar2.f15359j;
            if (cVar == null) {
                gVar.t(18);
                gVar.t(19);
                gVar.t(20);
                gVar.t(21);
                gVar.t(22);
                gVar.t(23);
                gVar.t(24);
                gVar.t(25);
                return;
            }
            k1.m mVar = cVar.f9574a;
            int iOrdinal = mVar.ordinal();
            if (iOrdinal == 0) {
                i12 = 0;
            } else if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    i12 = 2;
                } else if (iOrdinal == 3) {
                    i12 = 3;
                } else if (iOrdinal == 4) {
                    i12 = 4;
                } else {
                    if (Build.VERSION.SDK_INT < 30 || mVar != k1.m.TEMPORARILY_UNMETERED) {
                        throw new IllegalArgumentException("Could not convert " + mVar + " to int");
                    }
                    i12 = 5;
                }
            }
            gVar.K(18, i12);
            gVar.K(19, cVar.f9575b ? 1L : 0L);
            gVar.K(20, cVar.f9576c ? 1L : 0L);
            gVar.K(21, cVar.f9577d ? 1L : 0L);
            gVar.K(22, cVar.f9578e ? 1L : 0L);
            gVar.K(23, cVar.f9579f);
            gVar.K(24, cVar.f9580g);
            k1.d dVar = cVar.f9581h;
            byte[] byteArray = null;
            objectOutputStream = null;
            ObjectOutputStream objectOutputStream2 = null;
            if (dVar.a() != 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        try {
                            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                            try {
                                try {
                                    objectOutputStream.writeInt(dVar.a());
                                    for (k1.d.a aVar : dVar.f9585a) {
                                        objectOutputStream.writeUTF(aVar.f9586a.toString());
                                        objectOutputStream.writeBoolean(aVar.f9587b);
                                    }
                                    objectOutputStream.close();
                                } catch (IOException e10) {
                                    e = e10;
                                    objectOutputStream2 = objectOutputStream;
                                    e.printStackTrace();
                                    if (objectOutputStream2 != null) {
                                        objectOutputStream2.close();
                                    }
                                    byteArrayOutputStream.close();
                                    byteArray = byteArrayOutputStream.toByteArray();
                                    if (byteArray == null) {
                                        gVar.t(25);
                                    } else {
                                        gVar.R(25, byteArray);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (objectOutputStream != null) {
                                        try {
                                            objectOutputStream.close();
                                        } catch (IOException e11) {
                                            e11.printStackTrace();
                                        }
                                    }
                                    try {
                                        byteArrayOutputStream.close();
                                        throw th;
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                        throw th;
                                    }
                                }
                                byteArrayOutputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        } catch (IOException e14) {
                            e = e14;
                        }
                        byteArray = byteArrayOutputStream.toByteArray();
                    } catch (Throwable th3) {
                        th = th3;
                        objectOutputStream = objectOutputStream2;
                    }
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            }
            if (byteArray == null) {
                gVar.t(25);
            } else {
                gVar.R(25, byteArray);
            }
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class b extends h0 {
        public b(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class c extends h0 {
        public c(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class d extends h0 {
        public d(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class e extends h0 {
        public e(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class f extends h0 {
        public f(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class g extends h0 {
        public g(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class h extends h0 {
        public h(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    public q(d0 d0Var) {
        this.f15370a = d0Var;
        this.f15371b = new a(d0Var);
        this.f15372c = new b(d0Var);
        this.f15373d = new c(d0Var);
        this.f15374e = new d(d0Var);
        this.f15375f = new e(d0Var);
        this.f15376g = new f(d0Var);
        this.f15377h = new g(d0Var);
        this.f15378i = new h(d0Var);
        new AtomicBoolean(false);
    }

    public final void a(String str) {
        this.f15370a.b();
        d1.g gVarA = this.f15372c.a();
        if (str == null) {
            gVarA.t(1);
        } else {
            gVarA.l(1, str);
        }
        this.f15370a.c();
        try {
            gVarA.p();
            this.f15370a.p();
        } finally {
            this.f15370a.l();
            this.f15372c.d(gVarA);
        }
    }

    public final List b() throws Throwable {
        f0 f0Var;
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        f0VarF0.K(1, HttpStatusCodesKt.HTTP_OK);
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "required_network_type");
            int iA2 = a1.b.a(cursorO, "requires_charging");
            int iA3 = a1.b.a(cursorO, "requires_device_idle");
            int iA4 = a1.b.a(cursorO, "requires_battery_not_low");
            int iA5 = a1.b.a(cursorO, "requires_storage_not_low");
            int iA6 = a1.b.a(cursorO, "trigger_content_update_delay");
            int iA7 = a1.b.a(cursorO, "trigger_max_content_delay");
            int iA8 = a1.b.a(cursorO, "content_uri_triggers");
            int iA9 = a1.b.a(cursorO, "id");
            int iA10 = a1.b.a(cursorO, "state");
            int iA11 = a1.b.a(cursorO, "worker_class_name");
            int iA12 = a1.b.a(cursorO, "input_merger_class_name");
            int iA13 = a1.b.a(cursorO, "input");
            int iA14 = a1.b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = a1.b.a(cursorO, "initial_delay");
                int iA16 = a1.b.a(cursorO, "interval_duration");
                int iA17 = a1.b.a(cursorO, "flex_duration");
                int iA18 = a1.b.a(cursorO, "run_attempt_count");
                int iA19 = a1.b.a(cursorO, "backoff_policy");
                int iA20 = a1.b.a(cursorO, "backoff_delay_duration");
                int iA21 = a1.b.a(cursorO, "period_start_time");
                int iA22 = a1.b.a(cursorO, "minimum_retention_duration");
                int iA23 = a1.b.a(cursorO, "schedule_requested_at");
                int iA24 = a1.b.a(cursorO, "run_in_foreground");
                int iA25 = a1.b.a(cursorO, "out_of_quota_policy");
                int i10 = iA14;
                ArrayList arrayList = new ArrayList(cursorO.getCount());
                while (cursorO.moveToNext()) {
                    String string = cursorO.getString(iA9);
                    int i11 = iA9;
                    String string2 = cursorO.getString(iA11);
                    int i12 = iA11;
                    k1.c cVar = new k1.c();
                    int i13 = iA;
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    int i14 = iA2;
                    int i15 = iA3;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    o oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    int i16 = i10;
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(i16));
                    i10 = i16;
                    int i17 = iA15;
                    oVar.f15356g = cursorO.getLong(i17);
                    int i18 = iA13;
                    int i19 = iA16;
                    oVar.f15357h = cursorO.getLong(i19);
                    int i20 = iA4;
                    int i21 = iA17;
                    oVar.f15358i = cursorO.getLong(i21);
                    int i22 = iA18;
                    oVar.f15360k = cursorO.getInt(i22);
                    int i23 = iA19;
                    oVar.f15361l = u.b(cursorO.getInt(i23));
                    iA17 = i21;
                    int i24 = iA20;
                    oVar.f15362m = cursorO.getLong(i24);
                    int i25 = iA21;
                    oVar.f15363n = cursorO.getLong(i25);
                    iA21 = i25;
                    int i26 = iA22;
                    oVar.f15364o = cursorO.getLong(i26);
                    int i27 = iA23;
                    oVar.f15365p = cursorO.getLong(i27);
                    int i28 = iA24;
                    oVar.f15366q = cursorO.getInt(i28) != 0;
                    int i29 = iA25;
                    oVar.f15367r = u.d(cursorO.getInt(i29));
                    oVar.f15359j = cVar;
                    arrayList.add(oVar);
                    iA25 = i29;
                    iA2 = i14;
                    iA13 = i18;
                    iA15 = i17;
                    iA16 = i19;
                    iA18 = i22;
                    iA23 = i27;
                    iA9 = i11;
                    iA11 = i12;
                    iA = i13;
                    iA24 = i28;
                    iA22 = i26;
                    iA3 = i15;
                    iA20 = i24;
                    iA4 = i20;
                    iA19 = i23;
                }
                cursorO.close();
                f0Var.g0();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorO.close();
                f0Var.g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f0Var = f0VarF0;
        }
    }

    public final List<o> c(int i10) throws Throwable {
        f0 f0Var;
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        f0VarF0.K(1, i10);
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "required_network_type");
            int iA2 = a1.b.a(cursorO, "requires_charging");
            int iA3 = a1.b.a(cursorO, "requires_device_idle");
            int iA4 = a1.b.a(cursorO, "requires_battery_not_low");
            int iA5 = a1.b.a(cursorO, "requires_storage_not_low");
            int iA6 = a1.b.a(cursorO, "trigger_content_update_delay");
            int iA7 = a1.b.a(cursorO, "trigger_max_content_delay");
            int iA8 = a1.b.a(cursorO, "content_uri_triggers");
            int iA9 = a1.b.a(cursorO, "id");
            int iA10 = a1.b.a(cursorO, "state");
            int iA11 = a1.b.a(cursorO, "worker_class_name");
            int iA12 = a1.b.a(cursorO, "input_merger_class_name");
            int iA13 = a1.b.a(cursorO, "input");
            int iA14 = a1.b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = a1.b.a(cursorO, "initial_delay");
                int iA16 = a1.b.a(cursorO, "interval_duration");
                int iA17 = a1.b.a(cursorO, "flex_duration");
                int iA18 = a1.b.a(cursorO, "run_attempt_count");
                int iA19 = a1.b.a(cursorO, "backoff_policy");
                int iA20 = a1.b.a(cursorO, "backoff_delay_duration");
                int iA21 = a1.b.a(cursorO, "period_start_time");
                int iA22 = a1.b.a(cursorO, "minimum_retention_duration");
                int iA23 = a1.b.a(cursorO, "schedule_requested_at");
                int iA24 = a1.b.a(cursorO, "run_in_foreground");
                int iA25 = a1.b.a(cursorO, "out_of_quota_policy");
                int i11 = iA14;
                ArrayList arrayList = new ArrayList(cursorO.getCount());
                while (cursorO.moveToNext()) {
                    String string = cursorO.getString(iA9);
                    int i12 = iA9;
                    String string2 = cursorO.getString(iA11);
                    int i13 = iA11;
                    k1.c cVar = new k1.c();
                    int i14 = iA;
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    int i15 = iA2;
                    int i16 = iA3;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    o oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    int i17 = i11;
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(i17));
                    int i18 = iA15;
                    i11 = i17;
                    oVar.f15356g = cursorO.getLong(i18);
                    int i19 = iA13;
                    int i20 = iA16;
                    oVar.f15357h = cursorO.getLong(i20);
                    int i21 = iA4;
                    int i22 = iA17;
                    oVar.f15358i = cursorO.getLong(i22);
                    int i23 = iA18;
                    oVar.f15360k = cursorO.getInt(i23);
                    int i24 = iA19;
                    oVar.f15361l = u.b(cursorO.getInt(i24));
                    iA17 = i22;
                    int i25 = iA20;
                    oVar.f15362m = cursorO.getLong(i25);
                    int i26 = iA21;
                    oVar.f15363n = cursorO.getLong(i26);
                    iA21 = i26;
                    int i27 = iA22;
                    oVar.f15364o = cursorO.getLong(i27);
                    int i28 = iA23;
                    oVar.f15365p = cursorO.getLong(i28);
                    int i29 = iA24;
                    oVar.f15366q = cursorO.getInt(i29) != 0;
                    int i30 = iA25;
                    oVar.f15367r = u.d(cursorO.getInt(i30));
                    oVar.f15359j = cVar;
                    arrayList.add(oVar);
                    iA2 = i15;
                    iA25 = i30;
                    iA13 = i19;
                    iA15 = i18;
                    iA16 = i20;
                    iA18 = i23;
                    iA23 = i28;
                    iA9 = i12;
                    iA11 = i13;
                    iA = i14;
                    iA24 = i29;
                    iA22 = i27;
                    iA3 = i16;
                    iA20 = i25;
                    iA4 = i21;
                    iA19 = i24;
                }
                cursorO.close();
                f0Var.g0();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorO.close();
                f0Var.g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f0Var = f0VarF0;
        }
    }

    public final List<o> d() throws Throwable {
        f0 f0Var;
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "required_network_type");
            int iA2 = a1.b.a(cursorO, "requires_charging");
            int iA3 = a1.b.a(cursorO, "requires_device_idle");
            int iA4 = a1.b.a(cursorO, "requires_battery_not_low");
            int iA5 = a1.b.a(cursorO, "requires_storage_not_low");
            int iA6 = a1.b.a(cursorO, "trigger_content_update_delay");
            int iA7 = a1.b.a(cursorO, "trigger_max_content_delay");
            int iA8 = a1.b.a(cursorO, "content_uri_triggers");
            int iA9 = a1.b.a(cursorO, "id");
            int iA10 = a1.b.a(cursorO, "state");
            int iA11 = a1.b.a(cursorO, "worker_class_name");
            int iA12 = a1.b.a(cursorO, "input_merger_class_name");
            int iA13 = a1.b.a(cursorO, "input");
            int iA14 = a1.b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = a1.b.a(cursorO, "initial_delay");
                int iA16 = a1.b.a(cursorO, "interval_duration");
                int iA17 = a1.b.a(cursorO, "flex_duration");
                int iA18 = a1.b.a(cursorO, "run_attempt_count");
                int iA19 = a1.b.a(cursorO, "backoff_policy");
                int iA20 = a1.b.a(cursorO, "backoff_delay_duration");
                int iA21 = a1.b.a(cursorO, "period_start_time");
                int iA22 = a1.b.a(cursorO, "minimum_retention_duration");
                int iA23 = a1.b.a(cursorO, "schedule_requested_at");
                int iA24 = a1.b.a(cursorO, "run_in_foreground");
                int iA25 = a1.b.a(cursorO, "out_of_quota_policy");
                int i10 = iA14;
                ArrayList arrayList = new ArrayList(cursorO.getCount());
                while (cursorO.moveToNext()) {
                    String string = cursorO.getString(iA9);
                    int i11 = iA9;
                    String string2 = cursorO.getString(iA11);
                    int i12 = iA11;
                    k1.c cVar = new k1.c();
                    int i13 = iA;
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    int i14 = iA2;
                    int i15 = iA3;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    o oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    int i16 = i10;
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(i16));
                    i10 = i16;
                    int i17 = iA15;
                    oVar.f15356g = cursorO.getLong(i17);
                    int i18 = iA13;
                    int i19 = iA16;
                    oVar.f15357h = cursorO.getLong(i19);
                    int i20 = iA4;
                    int i21 = iA17;
                    oVar.f15358i = cursorO.getLong(i21);
                    int i22 = iA18;
                    oVar.f15360k = cursorO.getInt(i22);
                    int i23 = iA19;
                    oVar.f15361l = u.b(cursorO.getInt(i23));
                    iA17 = i21;
                    int i24 = iA20;
                    oVar.f15362m = cursorO.getLong(i24);
                    int i25 = iA21;
                    oVar.f15363n = cursorO.getLong(i25);
                    iA21 = i25;
                    int i26 = iA22;
                    oVar.f15364o = cursorO.getLong(i26);
                    int i27 = iA23;
                    oVar.f15365p = cursorO.getLong(i27);
                    int i28 = iA24;
                    oVar.f15366q = cursorO.getInt(i28) != 0;
                    int i29 = iA25;
                    oVar.f15367r = u.d(cursorO.getInt(i29));
                    oVar.f15359j = cVar;
                    arrayList.add(oVar);
                    iA25 = i29;
                    iA2 = i14;
                    iA13 = i18;
                    iA15 = i17;
                    iA16 = i19;
                    iA18 = i22;
                    iA23 = i27;
                    iA9 = i11;
                    iA11 = i12;
                    iA = i13;
                    iA24 = i28;
                    iA22 = i26;
                    iA3 = i15;
                    iA20 = i24;
                    iA4 = i20;
                    iA19 = i23;
                }
                cursorO.close();
                f0Var.g0();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorO.close();
                f0Var.g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f0Var = f0VarF0;
        }
    }

    public final List<o> e() {
        f0 f0Var;
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "required_network_type");
            int iA2 = a1.b.a(cursorO, "requires_charging");
            int iA3 = a1.b.a(cursorO, "requires_device_idle");
            int iA4 = a1.b.a(cursorO, "requires_battery_not_low");
            int iA5 = a1.b.a(cursorO, "requires_storage_not_low");
            int iA6 = a1.b.a(cursorO, "trigger_content_update_delay");
            int iA7 = a1.b.a(cursorO, "trigger_max_content_delay");
            int iA8 = a1.b.a(cursorO, "content_uri_triggers");
            int iA9 = a1.b.a(cursorO, "id");
            int iA10 = a1.b.a(cursorO, "state");
            int iA11 = a1.b.a(cursorO, "worker_class_name");
            int iA12 = a1.b.a(cursorO, "input_merger_class_name");
            int iA13 = a1.b.a(cursorO, "input");
            int iA14 = a1.b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = a1.b.a(cursorO, "initial_delay");
                int iA16 = a1.b.a(cursorO, "interval_duration");
                int iA17 = a1.b.a(cursorO, "flex_duration");
                int iA18 = a1.b.a(cursorO, "run_attempt_count");
                int iA19 = a1.b.a(cursorO, "backoff_policy");
                int iA20 = a1.b.a(cursorO, "backoff_delay_duration");
                int iA21 = a1.b.a(cursorO, "period_start_time");
                int iA22 = a1.b.a(cursorO, "minimum_retention_duration");
                int iA23 = a1.b.a(cursorO, "schedule_requested_at");
                int iA24 = a1.b.a(cursorO, "run_in_foreground");
                int iA25 = a1.b.a(cursorO, "out_of_quota_policy");
                int i10 = iA14;
                ArrayList arrayList = new ArrayList(cursorO.getCount());
                while (cursorO.moveToNext()) {
                    String string = cursorO.getString(iA9);
                    int i11 = iA9;
                    String string2 = cursorO.getString(iA11);
                    int i12 = iA11;
                    k1.c cVar = new k1.c();
                    int i13 = iA;
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    int i14 = iA2;
                    int i15 = iA3;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    o oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    int i16 = i10;
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(i16));
                    i10 = i16;
                    int i17 = iA15;
                    oVar.f15356g = cursorO.getLong(i17);
                    int i18 = iA13;
                    int i19 = iA16;
                    oVar.f15357h = cursorO.getLong(i19);
                    int i20 = iA4;
                    int i21 = iA17;
                    oVar.f15358i = cursorO.getLong(i21);
                    int i22 = iA18;
                    oVar.f15360k = cursorO.getInt(i22);
                    int i23 = iA19;
                    oVar.f15361l = u.b(cursorO.getInt(i23));
                    iA17 = i21;
                    int i24 = iA20;
                    oVar.f15362m = cursorO.getLong(i24);
                    int i25 = iA21;
                    oVar.f15363n = cursorO.getLong(i25);
                    iA21 = i25;
                    int i26 = iA22;
                    oVar.f15364o = cursorO.getLong(i26);
                    int i27 = iA23;
                    oVar.f15365p = cursorO.getLong(i27);
                    int i28 = iA24;
                    oVar.f15366q = cursorO.getInt(i28) != 0;
                    int i29 = iA25;
                    oVar.f15367r = u.d(cursorO.getInt(i29));
                    oVar.f15359j = cVar;
                    arrayList.add(oVar);
                    iA25 = i29;
                    iA2 = i14;
                    iA13 = i18;
                    iA15 = i17;
                    iA16 = i19;
                    iA18 = i22;
                    iA23 = i27;
                    iA9 = i11;
                    iA11 = i12;
                    iA = i13;
                    iA24 = i28;
                    iA22 = i26;
                    iA3 = i15;
                    iA20 = i24;
                    iA4 = i20;
                    iA19 = i23;
                }
                cursorO.close();
                f0Var.g0();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorO.close();
                f0Var.g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f0Var = f0VarF0;
        }
    }

    public final k1.p f(String str) {
        f0 f0VarF0 = f0.f0("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            return cursorO.moveToFirst() ? u.e(cursorO.getInt(0)) : null;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    public final List<String> g(String str) {
        f0 f0VarF0 = f0.f0("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(cursorO.getString(0));
            }
            cursorO.close();
            f0VarF0.g0();
            return arrayList;
        } catch (Throwable th) {
            cursorO.close();
            f0VarF0.g0();
            throw th;
        }
    }

    public final o h(String str) {
        f0 f0Var;
        o oVar;
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "required_network_type");
            int iA2 = a1.b.a(cursorO, "requires_charging");
            int iA3 = a1.b.a(cursorO, "requires_device_idle");
            int iA4 = a1.b.a(cursorO, "requires_battery_not_low");
            int iA5 = a1.b.a(cursorO, "requires_storage_not_low");
            int iA6 = a1.b.a(cursorO, "trigger_content_update_delay");
            int iA7 = a1.b.a(cursorO, "trigger_max_content_delay");
            int iA8 = a1.b.a(cursorO, "content_uri_triggers");
            int iA9 = a1.b.a(cursorO, "id");
            int iA10 = a1.b.a(cursorO, "state");
            int iA11 = a1.b.a(cursorO, "worker_class_name");
            int iA12 = a1.b.a(cursorO, "input_merger_class_name");
            int iA13 = a1.b.a(cursorO, "input");
            int iA14 = a1.b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = a1.b.a(cursorO, "initial_delay");
                int iA16 = a1.b.a(cursorO, "interval_duration");
                int iA17 = a1.b.a(cursorO, "flex_duration");
                int iA18 = a1.b.a(cursorO, "run_attempt_count");
                int iA19 = a1.b.a(cursorO, "backoff_policy");
                int iA20 = a1.b.a(cursorO, "backoff_delay_duration");
                int iA21 = a1.b.a(cursorO, "period_start_time");
                int iA22 = a1.b.a(cursorO, "minimum_retention_duration");
                int iA23 = a1.b.a(cursorO, "schedule_requested_at");
                int iA24 = a1.b.a(cursorO, "run_in_foreground");
                int iA25 = a1.b.a(cursorO, "out_of_quota_policy");
                if (cursorO.moveToFirst()) {
                    String string = cursorO.getString(iA9);
                    String string2 = cursorO.getString(iA11);
                    k1.c cVar = new k1.c();
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(iA14));
                    oVar.f15356g = cursorO.getLong(iA15);
                    oVar.f15357h = cursorO.getLong(iA16);
                    oVar.f15358i = cursorO.getLong(iA17);
                    oVar.f15360k = cursorO.getInt(iA18);
                    oVar.f15361l = u.b(cursorO.getInt(iA19));
                    oVar.f15362m = cursorO.getLong(iA20);
                    oVar.f15363n = cursorO.getLong(iA21);
                    oVar.f15364o = cursorO.getLong(iA22);
                    oVar.f15365p = cursorO.getLong(iA23);
                    oVar.f15366q = cursorO.getInt(iA24) != 0;
                    oVar.f15367r = u.d(cursorO.getInt(iA25));
                    oVar.f15359j = cVar;
                } else {
                    oVar = null;
                }
                cursorO.close();
                f0Var.g0();
                return oVar;
            } catch (Throwable th) {
                th = th;
                cursorO.close();
                f0Var.g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f0Var = f0VarF0;
        }
    }

    public final List<o.a> i(String str) {
        f0 f0VarF0 = f0.f0("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15370a.b();
        Cursor cursorO = this.f15370a.o(f0VarF0);
        try {
            int iA = a1.b.a(cursorO, "id");
            int iA2 = a1.b.a(cursorO, "state");
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                o.a aVar = new o.a();
                aVar.f15368a = cursorO.getString(iA);
                aVar.f15369b = u.e(cursorO.getInt(iA2));
                arrayList.add(aVar);
            }
            cursorO.close();
            f0VarF0.g0();
            return arrayList;
        } catch (Throwable th) {
            cursorO.close();
            f0VarF0.g0();
            throw th;
        }
    }

    public final int j(String str) {
        this.f15370a.b();
        d1.g gVarA = this.f15375f.a();
        if (str == null) {
            gVarA.t(1);
        } else {
            gVarA.l(1, str);
        }
        this.f15370a.c();
        try {
            int iP = gVarA.p();
            this.f15370a.p();
            return iP;
        } finally {
            this.f15370a.l();
            this.f15375f.d(gVarA);
        }
    }

    public final int k(String str, long j10) {
        this.f15370a.b();
        d1.g gVarA = this.f15377h.a();
        gVarA.K(1, j10);
        if (str == null) {
            gVarA.t(2);
        } else {
            gVarA.l(2, str);
        }
        this.f15370a.c();
        try {
            int iP = gVarA.p();
            this.f15370a.p();
            return iP;
        } finally {
            this.f15370a.l();
            this.f15377h.d(gVarA);
        }
    }

    public final int l(String str) {
        this.f15370a.b();
        d1.g gVarA = this.f15376g.a();
        if (str == null) {
            gVarA.t(1);
        } else {
            gVarA.l(1, str);
        }
        this.f15370a.c();
        try {
            int iP = gVarA.p();
            this.f15370a.p();
            return iP;
        } finally {
            this.f15370a.l();
            this.f15376g.d(gVarA);
        }
    }

    public final void m(String str, androidx.work.b bVar) throws Throwable {
        this.f15370a.b();
        d1.g gVarA = this.f15373d.a();
        byte[] bArrB = androidx.work.b.b(bVar);
        if (bArrB == null) {
            gVarA.t(1);
        } else {
            gVarA.R(1, bArrB);
        }
        if (str == null) {
            gVarA.t(2);
        } else {
            gVarA.l(2, str);
        }
        this.f15370a.c();
        try {
            gVarA.p();
            this.f15370a.p();
        } finally {
            this.f15370a.l();
            this.f15373d.d(gVarA);
        }
    }

    public final void n(String str, long j10) {
        this.f15370a.b();
        d1.g gVarA = this.f15374e.a();
        gVarA.K(1, j10);
        if (str == null) {
            gVarA.t(2);
        } else {
            gVarA.l(2, str);
        }
        this.f15370a.c();
        try {
            gVarA.p();
            this.f15370a.p();
        } finally {
            this.f15370a.l();
            this.f15374e.d(gVarA);
        }
    }

    public final int o(k1.p pVar, String... strArr) {
        this.f15370a.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("UPDATE workspec SET state=");
        sb2.append("?");
        sb2.append(" WHERE id IN (");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append("?");
            if (i10 < length - 1) {
                sb2.append(",");
            }
        }
        sb2.append(")");
        String string = sb2.toString();
        d0 d0Var = this.f15370a;
        d0Var.a();
        d0Var.b();
        d1.g gVarQ = d0Var.f18157c.X().q(string);
        gVarQ.K(1, u.f(pVar));
        int i11 = 2;
        for (String str : strArr) {
            if (str == null) {
                gVarQ.t(i11);
            } else {
                gVarQ.l(i11, str);
            }
            i11++;
        }
        this.f15370a.c();
        try {
            int iP = gVarQ.p();
            this.f15370a.p();
            return iP;
        } finally {
            this.f15370a.l();
        }
    }
}
