package o1;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import k1.l;
import k1.p;
import l1.e;
import l1.k;
import t1.g;
import t1.i;
import t1.o;
import t1.q;

/* JADX INFO: compiled from: SystemJobScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f12066l = l.e("SystemJobScheduler");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f12067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final JobScheduler f12068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final k f12069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f12070k;

    public b(Context context, k kVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        a aVar = new a(context);
        this.f12067h = context;
        this.f12069j = kVar;
        this.f12068i = jobScheduler;
        this.f12070k = aVar;
    }

    public static void a(JobScheduler jobScheduler, int i10) {
        try {
            jobScheduler.cancel(i10);
        } catch (Throwable th) {
            l.c().b(f12066l, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i10)), th);
        }
    }

    public static List<Integer> c(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> listE = e(context, jobScheduler);
        if (listE == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : (ArrayList) listE) {
            if (str.equals(g(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static List<JobInfo> e(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            l.c().b(f12066l, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static String g(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // l1.e
    public final void b(String str) {
        List<Integer> listC = c(this.f12067h, this.f12068i, str);
        if (listC != null) {
            ArrayList arrayList = (ArrayList) listC;
            if (arrayList.isEmpty()) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a(this.f12068i, ((Integer) it.next()).intValue());
            }
            ((i) this.f12069j.f9855c.t()).c(str);
        }
    }

    @Override // l1.e
    public final void d(o... oVarArr) {
        int iB;
        WorkDatabase workDatabase = this.f12069j.f9855c;
        u1.e eVar = new u1.e(workDatabase);
        for (o oVar : oVarArr) {
            workDatabase.c();
            try {
                o oVarH = ((q) workDatabase.w()).h(oVar.f15350a);
                if (oVarH == null) {
                    l.c().f(f12066l, "Skipping scheduling " + oVar.f15350a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.p();
                } else if (oVarH.f15351b != p.ENQUEUED) {
                    l.c().f(f12066l, "Skipping scheduling " + oVar.f15350a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.p();
                } else {
                    g gVarA = ((i) workDatabase.t()).a(oVar.f15350a);
                    if (gVarA != null) {
                        iB = gVarA.f15339b;
                    } else {
                        Objects.requireNonNull(this.f12069j.f9854b);
                        iB = eVar.b(this.f12069j.f9854b.f3046g);
                    }
                    if (gVarA == null) {
                        ((i) this.f12069j.f9855c.t()).b(new g(oVar.f15350a, iB));
                    }
                    h(oVar, iB);
                    workDatabase.p();
                }
                workDatabase.l();
            } catch (Throwable th) {
                workDatabase.l();
                throw th;
            }
        }
    }

    @Override // l1.e
    public final boolean f() {
        return true;
    }

    public final void h(o oVar, int i10) {
        JobInfo jobInfoA = this.f12070k.a(oVar, i10);
        l lVarC = l.c();
        String str = f12066l;
        lVarC.a(str, String.format("Scheduling work ID %s Job ID %s", oVar.f15350a, Integer.valueOf(i10)), new Throwable[0]);
        try {
            if (this.f12068i.schedule(jobInfoA) == 0) {
                l.c().f(str, String.format("Unable to schedule work ID %s", oVar.f15350a), new Throwable[0]);
                if (oVar.f15366q && oVar.f15367r == 1) {
                    oVar.f15366q = false;
                    l.c().a(str, String.format("Scheduling a non-expedited job (work ID %s)", oVar.f15350a), new Throwable[0]);
                    h(oVar, i10);
                }
            }
        } catch (IllegalStateException e10) {
            List<JobInfo> listE = e(this.f12067h, this.f12068i);
            String str2 = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(listE != null ? ((ArrayList) listE).size() : 0), Integer.valueOf(((ArrayList) ((q) this.f12069j.f9855c.w()).e()).size()), Integer.valueOf(this.f12069j.f9854b.f3047h));
            l.c().b(f12066l, str2, new Throwable[0]);
            throw new IllegalStateException(str2, e10);
        } catch (Throwable th) {
            l.c().b(f12066l, String.format("Unable to schedule %s", oVar), th);
        }
    }
}
