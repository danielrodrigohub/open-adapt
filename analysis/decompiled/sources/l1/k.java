package l1;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.work.R;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import k1.q;
import y0.a0;
import y0.d0;

/* JADX INFO: compiled from: WorkManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static k f9850j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static k f9851k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Object f9852l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f9853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.work.a f9854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WorkDatabase f9855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w1.a f9856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<e> f9857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f9858f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public u1.g f9859g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9860h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BroadcastReceiver.PendingResult f9861i;

    static {
        k1.l.e("WorkManagerImpl");
        f9850j = null;
        f9851k = null;
        f9852l = new Object();
    }

    public k(Context context, androidx.work.a aVar, w1.a aVar2) {
        d0.a aVarA;
        boolean z10 = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        u1.i iVar = ((w1.b) aVar2).f17057a;
        int i10 = WorkDatabase.f3054n;
        if (z10) {
            aVarA = new d0.a(applicationContext, WorkDatabase.class, null);
            aVarA.f18174h = true;
        } else {
            String str = j.f9848a;
            aVarA = a0.a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            aVarA.f18173g = new h(applicationContext);
        }
        aVarA.f18171e = iVar;
        i iVar2 = new i();
        if (aVarA.f18170d == null) {
            aVarA.f18170d = new ArrayList<>();
        }
        aVarA.f18170d.add(iVar2);
        aVarA.a(androidx.work.impl.a.f3064a);
        aVarA.a(new androidx.work.impl.a.h(applicationContext, 2, 3));
        aVarA.a(androidx.work.impl.a.f3065b);
        aVarA.a(androidx.work.impl.a.f3066c);
        aVarA.a(new androidx.work.impl.a.h(applicationContext, 5, 6));
        aVarA.a(androidx.work.impl.a.f3067d);
        aVarA.a(androidx.work.impl.a.f3068e);
        aVarA.a(androidx.work.impl.a.f3069f);
        aVarA.a(new androidx.work.impl.a.i(applicationContext));
        aVarA.a(new androidx.work.impl.a.h(applicationContext, 10, 11));
        aVarA.a(androidx.work.impl.a.f3070g);
        aVarA.f18176j = false;
        aVarA.f18177k = true;
        WorkDatabase workDatabase = (WorkDatabase) aVarA.b();
        Context applicationContext2 = context.getApplicationContext();
        k1.l.a aVar3 = new k1.l.a(aVar.f3045f);
        synchronized (k1.l.class) {
            k1.l.f9597a = aVar3;
        }
        String str2 = f.f9836a;
        o1.b bVar = new o1.b(applicationContext2, this);
        u1.f.a(applicationContext2, SystemJobService.class, true);
        k1.l.c().a(f.f9836a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        List<e> listAsList = Arrays.asList(bVar, new m1.c(applicationContext2, aVar, aVar2, this));
        d dVar = new d(context, aVar, aVar2, workDatabase, listAsList);
        Context applicationContext3 = context.getApplicationContext();
        this.f9853a = applicationContext3;
        this.f9854b = aVar;
        this.f9856d = aVar2;
        this.f9855c = workDatabase;
        this.f9857e = listAsList;
        this.f9858f = dVar;
        this.f9859g = new u1.g(workDatabase);
        this.f9860h = false;
        if (applicationContext3.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        ((w1.b) this.f9856d).a(new ForceStopRunnable(applicationContext3, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static k a(Context context) {
        k kVarA;
        Object obj = f9852l;
        synchronized (obj) {
            synchronized (obj) {
                kVarA = f9850j;
                if (kVarA == null) {
                    kVarA = f9851k;
                }
            }
            return kVarA;
        }
        if (kVarA == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof androidx.work.a.b)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            b(applicationContext, ((androidx.work.a.b) applicationContext).b());
            kVarA = a(applicationContext);
        }
        return kVarA;
    }

    public static void b(Context context, androidx.work.a aVar) {
        synchronized (f9852l) {
            k kVar = f9850j;
            if (kVar != null && f9851k != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (kVar == null) {
                Context applicationContext = context.getApplicationContext();
                if (f9851k == null) {
                    f9851k = new k(applicationContext, aVar, new w1.b(aVar.f3041b));
                }
                f9850j = f9851k;
            }
        }
    }

    public final void c() {
        synchronized (f9852l) {
            this.f9860h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f9861i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f9861i = null;
            }
        }
    }

    public final void d() {
        List<JobInfo> listE;
        Context context = this.f9853a;
        String str = o1.b.f12066l;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null && (listE = o1.b.e(context, jobScheduler)) != null) {
            ArrayList arrayList = (ArrayList) listE;
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o1.b.a(jobScheduler, ((JobInfo) it.next()).getId());
                }
            }
        }
        t1.q qVar = (t1.q) this.f9855c.w();
        qVar.f15370a.b();
        d1.g gVarA = qVar.f15378i.a();
        qVar.f15370a.c();
        try {
            gVarA.p();
            qVar.f15370a.p();
            qVar.f15370a.l();
            qVar.f15378i.d(gVarA);
            f.a(this.f9854b, this.f9855c, this.f9857e);
        } catch (Throwable th) {
            qVar.f15370a.l();
            qVar.f15378i.d(gVarA);
            throw th;
        }
    }

    public final void e(String str) {
        ((w1.b) this.f9856d).a(new u1.k(this, str, false));
    }
}
