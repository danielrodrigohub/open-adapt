package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import k1.l;
import l1.b;
import l1.d;
import l1.k;
import u1.j;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f3117j = l.e("SystemJobService");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k f3118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map<String, JobParameters> f3119i = new HashMap();

    public static String b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return extras.getString("EXTRA_WORK_SPEC_ID");
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, android.app.job.JobParameters>] */
    @Override // l1.b
    public final void a(String str, boolean z10) {
        JobParameters jobParameters;
        l.c().a(f3117j, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f3119i) {
            jobParameters = (JobParameters) this.f3119i.remove(str);
        }
        if (jobParameters != null) {
            jobFinished(jobParameters, z10);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            k kVarA = k.a(getApplicationContext());
            this.f3118h = kVarA;
            kVarA.f9858f.b(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            l.c().f(f3117j, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        k kVar = this.f3118h;
        if (kVar != null) {
            kVar.f9858f.e(this);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashMap, java.util.Map<java.lang.String, android.app.job.JobParameters>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.HashMap, java.util.Map<java.lang.String, android.app.job.JobParameters>] */
    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        if (this.f3118h == null) {
            l.c().a(f3117j, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String strB = b(jobParameters);
        if (TextUtils.isEmpty(strB)) {
            l.c().b(f3117j, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f3119i) {
            if (this.f3119i.containsKey(strB)) {
                l.c().a(f3117j, String.format("Job is already being executed by SystemJobService: %s", strB), new Throwable[0]);
                return false;
            }
            l.c().a(f3117j, String.format("onStartJob for %s", strB), new Throwable[0]);
            this.f3119i.put(strB, jobParameters);
            int i10 = Build.VERSION.SDK_INT;
            WorkerParameters.a aVar = new WorkerParameters.a();
            if (jobParameters.getTriggeredContentUris() != null) {
                aVar.f3039b = Arrays.asList(jobParameters.getTriggeredContentUris());
            }
            if (jobParameters.getTriggeredContentAuthorities() != null) {
                aVar.f3038a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
            }
            if (i10 >= 28) {
                jobParameters.getNetwork();
            }
            k kVar = this.f3118h;
            ((w1.b) kVar.f9856d).a(new j(kVar, strB, aVar));
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashMap, java.util.Map<java.lang.String, android.app.job.JobParameters>] */
    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean zContains;
        if (this.f3118h == null) {
            l.c().a(f3117j, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String strB = b(jobParameters);
        if (TextUtils.isEmpty(strB)) {
            l.c().b(f3117j, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        l.c().a(f3117j, String.format("onStopJob for %s", strB), new Throwable[0]);
        synchronized (this.f3119i) {
            this.f3119i.remove(strB);
        }
        this.f3118h.e(strB);
        d dVar = this.f3118h.f9858f;
        synchronized (dVar.f9832r) {
            zContains = dVar.f9830p.contains(strB);
        }
        return !zContains;
    }
}
