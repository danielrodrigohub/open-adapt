package androidx.work.impl.workers;

import a1.b;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import k1.c;
import k1.l;
import t1.g;
import t1.h;
import t1.i;
import t1.k;
import t1.o;
import t1.p;
import t1.q;
import t1.s;
import t1.t;
import t1.u;
import y0.f0;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f3154n = l.e("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public static String i(k kVar, s sVar, h hVar, List<o> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", "Job Id"));
        for (o oVar : list) {
            g gVarA = ((i) hVar).a(oVar.f15350a);
            Integer numValueOf = gVarA != null ? Integer.valueOf(gVarA.f15339b) : null;
            String str = oVar.f15350a;
            t1.l lVar = (t1.l) kVar;
            Objects.requireNonNull(lVar);
            f0 f0VarF0 = f0.f0("SELECT name FROM workname WHERE work_spec_id=?", 1);
            if (str == null) {
                f0VarF0.t(1);
            } else {
                f0VarF0.l(1, str);
            }
            lVar.f15345a.b();
            Cursor cursorO = lVar.f15345a.o(f0VarF0);
            try {
                ArrayList arrayList = new ArrayList(cursorO.getCount());
                while (cursorO.moveToNext()) {
                    arrayList.add(cursorO.getString(0));
                }
                cursorO.close();
                f0VarF0.g0();
                sb2.append(String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", oVar.f15350a, oVar.f15352c, numValueOf, oVar.f15351b.name(), TextUtils.join(",", arrayList), TextUtils.join(",", ((t) sVar).a(oVar.f15350a))));
            } catch (Throwable th) {
                cursorO.close();
                f0VarF0.g0();
                throw th;
            }
        }
        return sb2.toString();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a h() throws Throwable {
        f0 f0Var;
        ArrayList arrayList;
        h hVar;
        k kVar;
        s sVar;
        int i10;
        WorkDatabase workDatabase = l1.k.a(this.f3023h).f9855c;
        p pVarW = workDatabase.w();
        k kVarU = workDatabase.u();
        s sVarX = workDatabase.x();
        h hVarT = workDatabase.t();
        long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L);
        q qVar = (q) pVarW;
        Objects.requireNonNull(qVar);
        f0 f0VarF0 = f0.f0("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        f0VarF0.K(1, jCurrentTimeMillis);
        qVar.f15370a.b();
        Cursor cursorO = qVar.f15370a.o(f0VarF0);
        try {
            int iA = b.a(cursorO, "required_network_type");
            int iA2 = b.a(cursorO, "requires_charging");
            int iA3 = b.a(cursorO, "requires_device_idle");
            int iA4 = b.a(cursorO, "requires_battery_not_low");
            int iA5 = b.a(cursorO, "requires_storage_not_low");
            int iA6 = b.a(cursorO, "trigger_content_update_delay");
            int iA7 = b.a(cursorO, "trigger_max_content_delay");
            int iA8 = b.a(cursorO, "content_uri_triggers");
            int iA9 = b.a(cursorO, "id");
            int iA10 = b.a(cursorO, "state");
            int iA11 = b.a(cursorO, "worker_class_name");
            int iA12 = b.a(cursorO, "input_merger_class_name");
            int iA13 = b.a(cursorO, "input");
            int iA14 = b.a(cursorO, "output");
            f0Var = f0VarF0;
            try {
                int iA15 = b.a(cursorO, "initial_delay");
                int iA16 = b.a(cursorO, "interval_duration");
                int iA17 = b.a(cursorO, "flex_duration");
                int iA18 = b.a(cursorO, "run_attempt_count");
                int iA19 = b.a(cursorO, "backoff_policy");
                int iA20 = b.a(cursorO, "backoff_delay_duration");
                int iA21 = b.a(cursorO, "period_start_time");
                int iA22 = b.a(cursorO, "minimum_retention_duration");
                int iA23 = b.a(cursorO, "schedule_requested_at");
                int iA24 = b.a(cursorO, "run_in_foreground");
                int iA25 = b.a(cursorO, "out_of_quota_policy");
                int i11 = iA14;
                ArrayList arrayList2 = new ArrayList(cursorO.getCount());
                while (true) {
                    arrayList = arrayList2;
                    if (!cursorO.moveToNext()) {
                        break;
                    }
                    String string = cursorO.getString(iA9);
                    String string2 = cursorO.getString(iA11);
                    int i12 = iA11;
                    c cVar = new c();
                    int i13 = iA;
                    cVar.f9574a = u.c(cursorO.getInt(iA));
                    cVar.f9575b = cursorO.getInt(iA2) != 0;
                    cVar.f9576c = cursorO.getInt(iA3) != 0;
                    cVar.f9577d = cursorO.getInt(iA4) != 0;
                    cVar.f9578e = cursorO.getInt(iA5) != 0;
                    int i14 = iA9;
                    int i15 = iA2;
                    cVar.f9579f = cursorO.getLong(iA6);
                    cVar.f9580g = cursorO.getLong(iA7);
                    cVar.f9581h = u.a(cursorO.getBlob(iA8));
                    o oVar = new o(string, string2);
                    oVar.f15351b = u.e(cursorO.getInt(iA10));
                    oVar.f15353d = cursorO.getString(iA12);
                    oVar.f15354e = androidx.work.b.a(cursorO.getBlob(iA13));
                    int i16 = i11;
                    oVar.f15355f = androidx.work.b.a(cursorO.getBlob(i16));
                    int i17 = iA10;
                    i11 = i16;
                    int i18 = iA15;
                    oVar.f15356g = cursorO.getLong(i18);
                    int i19 = iA12;
                    int i20 = iA16;
                    oVar.f15357h = cursorO.getLong(i20);
                    int i21 = iA13;
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
                    iA22 = i27;
                    int i28 = iA23;
                    oVar.f15365p = cursorO.getLong(i28);
                    int i29 = iA24;
                    oVar.f15366q = cursorO.getInt(i29) != 0;
                    int i30 = iA25;
                    oVar.f15367r = u.d(cursorO.getInt(i30));
                    oVar.f15359j = cVar;
                    arrayList.add(oVar);
                    iA25 = i30;
                    iA10 = i17;
                    iA12 = i19;
                    iA23 = i28;
                    iA9 = i14;
                    iA24 = i29;
                    iA2 = i15;
                    iA15 = i18;
                    iA = i13;
                    arrayList2 = arrayList;
                    iA11 = i12;
                    iA20 = i25;
                    iA13 = i21;
                    iA16 = i20;
                    iA18 = i23;
                    iA19 = i24;
                }
                cursorO.close();
                f0Var.g0();
                List<o> listD = qVar.d();
                List listB = qVar.b();
                if (arrayList.isEmpty()) {
                    hVar = hVarT;
                    kVar = kVarU;
                    sVar = sVarX;
                    i10 = 0;
                } else {
                    l lVarC = l.c();
                    String str = f3154n;
                    i10 = 0;
                    lVarC.d(str, "Recently completed work:\n\n", new Throwable[0]);
                    hVar = hVarT;
                    kVar = kVarU;
                    sVar = sVarX;
                    l.c().d(str, i(kVar, sVar, hVar, arrayList), new Throwable[0]);
                }
                if (!((ArrayList) listD).isEmpty()) {
                    l lVarC2 = l.c();
                    String str2 = f3154n;
                    lVarC2.d(str2, "Running work:\n\n", new Throwable[i10]);
                    l.c().d(str2, i(kVar, sVar, hVar, listD), new Throwable[i10]);
                }
                if (!((ArrayList) listB).isEmpty()) {
                    l lVarC3 = l.c();
                    String str3 = f3154n;
                    lVarC3.d(str3, "Enqueued work:\n\n", new Throwable[i10]);
                    l.c().d(str3, i(kVar, sVar, hVar, listB), new Throwable[i10]);
                }
                return new ListenableWorker.a.c();
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
}
