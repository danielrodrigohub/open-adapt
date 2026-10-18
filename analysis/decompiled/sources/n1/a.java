package n1;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import k1.l;
import l1.k;
import t1.d;
import t1.f;
import t1.g;
import t1.i;
import u1.e;

/* JADX INFO: compiled from: Alarms.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f11171a = l.e("Alarms");

    public static void a(Context context, String str, int i10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i10, androidx.work.impl.background.systemalarm.a.c(context, str), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        l.c().a(f11171a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i10)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    public static void b(Context context, k kVar, String str, long j10) {
        int iIntValue;
        WorkDatabase workDatabase = kVar.f9855c;
        i iVar = (i) workDatabase.t();
        g gVarA = iVar.a(str);
        if (gVarA != null) {
            a(context, str, gVarA.f15339b);
            c(context, str, gVarA.f15339b, j10);
            return;
        }
        synchronized (e.class) {
            workDatabase.c();
            try {
                Long lA = ((f) workDatabase.s()).a("next_alarm_manager_id");
                int i10 = 0;
                iIntValue = lA != null ? lA.intValue() : 0;
                if (iIntValue != Integer.MAX_VALUE) {
                    i10 = iIntValue + 1;
                }
                ((f) workDatabase.s()).b(new d("next_alarm_manager_id", i10));
                workDatabase.p();
                workDatabase.l();
            } catch (Throwable th) {
                workDatabase.l();
                throw th;
            }
        }
        iVar.b(new g(str, iIntValue));
        c(context, str, iIntValue, j10);
    }

    public static void c(Context context, String str, int i10, long j10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i10, androidx.work.impl.background.systemalarm.a.c(context, str), 201326592);
        if (alarmManager != null) {
            alarmManager.setExact(0, j10, service);
        }
    }
}
