package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.impl.WorkDatabase;
import f0.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import k1.l;
import l1.j;
import l1.k;
import o1.b;
import t1.d;
import t1.f;
import t1.i;
import t1.m;
import t1.n;
import t1.o;
import t1.p;
import t1.q;
import u1.g;
import u1.h;
import y0.f0;

/* JADX INFO: loaded from: classes.dex */
public final class ForceStopRunnable implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3141k = l.e("ForceStopRunnable");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final long f3142l = TimeUnit.DAYS.toMillis(3650);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f3143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k f3144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3145j = 0;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f3146a = l.e("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            l lVarC = l.c();
            String str = f3146a;
            if (((l.a) lVarC).f9598b <= 2) {
                Log.v(str, "Rescheduling alarm that keeps track of force-stops.");
            }
            ForceStopRunnable.d(context);
        }
    }

    public ForceStopRunnable(Context context, k kVar) {
        this.f3143h = context.getApplicationContext();
        this.f3144i = kVar;
    }

    public static PendingIntent b(Context context, int i10) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i10);
    }

    @SuppressLint({"ClassVerificationFailure"})
    public static void d(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent pendingIntentB = b(context, a.a() ? 167772160 : 134217728);
        long jCurrentTimeMillis = System.currentTimeMillis() + f3142l;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntentB);
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x01d9 A[EDGE_INSN: B:86:0x01d9->B:91:0x01ed BREAK  A[LOOP:5: B:77:0x01b9->B:82:0x01ce]] */
    public final void a() {
        boolean z10;
        boolean z11;
        Context context = this.f3143h;
        k kVar = this.f3144i;
        String str = b.f12066l;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> listE = b.e(context, jobScheduler);
        i iVar = (i) kVar.f9855c.t();
        Objects.requireNonNull(iVar);
        f0 f0VarF0 = f0.f0("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        iVar.f15340a.b();
        Cursor cursorO = iVar.f15340a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(cursorO.getString(0));
            }
            cursorO.close();
            f0VarF0.g0();
            HashSet hashSet = new HashSet(listE != null ? ((ArrayList) listE).size() : 0);
            if (listE != null) {
                ArrayList<JobInfo> arrayList2 = (ArrayList) listE;
                if (!arrayList2.isEmpty()) {
                    for (JobInfo jobInfo : arrayList2) {
                        String strG = b.g(jobInfo);
                        if (TextUtils.isEmpty(strG)) {
                            b.a(jobScheduler, jobInfo.getId());
                        } else {
                            hashSet.add(strG);
                        }
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                z10 = true;
                if (it.hasNext()) {
                    if (!hashSet.contains((String) it.next())) {
                        l.c().a(b.f12066l, "Reconciling jobs", new Throwable[0]);
                        z11 = true;
                        break;
                    }
                } else {
                    z11 = false;
                    break;
                }
            }
            if (z11) {
                WorkDatabase workDatabase = kVar.f9855c;
                workDatabase.c();
                try {
                    p pVarW = workDatabase.w();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((q) pVarW).k((String) it2.next(), -1L);
                    }
                    workDatabase.p();
                    workDatabase.l();
                } catch (Throwable th) {
                    workDatabase.l();
                    throw th;
                }
            }
            WorkDatabase workDatabase2 = this.f3144i.f9855c;
            p pVarW2 = workDatabase2.w();
            m mVarV = workDatabase2.v();
            workDatabase2.c();
            try {
                q qVar = (q) pVarW2;
                List<o> listD = qVar.d();
                boolean z12 = !((ArrayList) listD).isEmpty();
                if (z12) {
                    for (o oVar : (ArrayList) listD) {
                        qVar.o(k1.p.ENQUEUED, oVar.f15350a);
                        qVar.k(oVar.f15350a, -1L);
                    }
                }
                ((n) mVarV).b();
                workDatabase2.p();
                workDatabase2.l();
                boolean z13 = z12 || z11;
                Long lA = ((f) this.f3144i.f9859g.f15630a.s()).a("reschedule_needed");
                if (lA != null && lA.longValue() == 1) {
                    l.c().a(f3141k, "Rescheduling Workers.", new Throwable[0]);
                    this.f3144i.d();
                    g gVar = this.f3144i.f9859g;
                    Objects.requireNonNull(gVar);
                    ((f) gVar.f15630a.s()).b(new d());
                    return;
                }
                try {
                    PendingIntent pendingIntentB = b(this.f3143h, a.a() ? 570425344 : 536870912);
                    if (Build.VERSION.SDK_INT >= 30) {
                        if (pendingIntentB != null) {
                            pendingIntentB.cancel();
                        }
                        List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.f3143h.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                        if (historicalProcessExitReasons == null || historicalProcessExitReasons.isEmpty()) {
                            z10 = false;
                            break;
                        }
                        int i10 = 0;
                        while (true) {
                            if (i10 >= historicalProcessExitReasons.size()) {
                                z10 = false;
                                break;
                            } else if (historicalProcessExitReasons.get(i10).getReason() == 10) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                    } else {
                        if (pendingIntentB != null) {
                            z10 = false;
                            break;
                        }
                        d(this.f3143h);
                    }
                } catch (IllegalArgumentException | SecurityException e10) {
                    l.c().f(f3141k, "Ignoring exception", e10);
                }
                if (z10) {
                    l.c().a(f3141k, "Application was force-stopped, rescheduling.", new Throwable[0]);
                    this.f3144i.d();
                } else if (z13) {
                    l.c().a(f3141k, "Found unfinished work, scheduling it.", new Throwable[0]);
                    k kVar2 = this.f3144i;
                    l1.f.a(kVar2.f9854b, kVar2.f9855c, kVar2.f9857e);
                }
            } catch (Throwable th2) {
                workDatabase2.l();
                throw th2;
            }
        } catch (Throwable th3) {
            cursorO.close();
            f0VarF0.g0();
            throw th3;
        }
    }

    public final boolean c() {
        androidx.work.a aVar = this.f3144i.f9854b;
        Objects.requireNonNull(aVar);
        if (TextUtils.isEmpty(null)) {
            l.c().a(f3141k, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean zA = h.a(this.f3143h, aVar);
        l.c().a(f3141k, String.format("Is default app process = %s", Boolean.valueOf(zA)), new Throwable[0]);
        return zA;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!c()) {
                this.f3144i.c();
                return;
            }
            while (true) {
                j.a(this.f3143h);
                l.c().a(f3141k, "Performing cleanup operations.", new Throwable[0]);
                try {
                    a();
                    this.f3144i.c();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e10) {
                    int i10 = this.f3145j + 1;
                    this.f3145j = i10;
                    if (i10 >= 3) {
                        l.c().b(f3141k, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                        Objects.requireNonNull(this.f3144i.f9854b);
                        throw illegalStateException;
                    }
                    l.c().a(f3141k, String.format("Retrying after %s", Long.valueOf(((long) i10) * 300)), e10);
                    try {
                        Thread.sleep(((long) this.f3145j) * 300);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            this.f3144i.c();
            throw th;
        }
    }
}
