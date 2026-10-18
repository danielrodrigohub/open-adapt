package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import java.util.Collections;
import java.util.List;
import k1.l;
import l1.k;
import p1.c;
import p1.d;
import t1.o;
import t1.q;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements c {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f3147r = l.e("ConstraintTrkngWrkr");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public WorkerParameters f3148m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f3149n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f3150o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public v1.c<ListenableWorker.a> f3151p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ListenableWorker f3152q;

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
        @Override // java.lang.Runnable
        public final void run() {
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            Object obj = constraintTrackingWorker.f3024i.f3033b.f3051a.get("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            String str = obj instanceof String ? (String) obj : null;
            if (TextUtils.isEmpty(str)) {
                l.c().b(ConstraintTrackingWorker.f3147r, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.h();
                return;
            }
            ListenableWorker listenableWorkerB = constraintTrackingWorker.f3024i.f3036e.b(constraintTrackingWorker.f3023h, str, constraintTrackingWorker.f3148m);
            constraintTrackingWorker.f3152q = listenableWorkerB;
            if (listenableWorkerB == null) {
                l.c().a(ConstraintTrackingWorker.f3147r, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.h();
                return;
            }
            o oVarH = ((q) k.a(constraintTrackingWorker.f3023h).f9855c.w()).h(constraintTrackingWorker.f3024i.f3032a.toString());
            if (oVarH == null) {
                constraintTrackingWorker.h();
                return;
            }
            Context context = constraintTrackingWorker.f3023h;
            d dVar = new d(context, k.a(context).f9856d, constraintTrackingWorker);
            dVar.b(Collections.singletonList(oVarH));
            if (!dVar.a(constraintTrackingWorker.f3024i.f3032a.toString())) {
                l.c().a(ConstraintTrackingWorker.f3147r, String.format("Constraints not met for delegate %s. Requesting retry.", str), new Throwable[0]);
                constraintTrackingWorker.i();
                return;
            }
            l.c().a(ConstraintTrackingWorker.f3147r, String.format("Constraints met for delegate %s", str), new Throwable[0]);
            try {
                x6.a<ListenableWorker.a> aVarF = constraintTrackingWorker.f3152q.f();
                aVarF.a(new x1.a(constraintTrackingWorker, aVarF), constraintTrackingWorker.f3024i.f3034c);
            } catch (Throwable th) {
                l lVarC = l.c();
                String str2 = ConstraintTrackingWorker.f3147r;
                lVarC.a(str2, String.format("Delegated worker %s threw exception in startWork.", str), th);
                synchronized (constraintTrackingWorker.f3149n) {
                    if (constraintTrackingWorker.f3150o) {
                        l.c().a(str2, "Constraints were unmet, Retrying.", new Throwable[0]);
                        constraintTrackingWorker.i();
                    } else {
                        constraintTrackingWorker.h();
                    }
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f3148m = workerParameters;
        this.f3149n = new Object();
        this.f3150o = false;
        this.f3151p = new v1.c<>();
    }

    @Override // androidx.work.ListenableWorker
    public final boolean b() {
        ListenableWorker listenableWorker = this.f3152q;
        return listenableWorker != null && listenableWorker.b();
    }

    @Override // p1.c
    public final void c(List<String> list) {
        l.c().a(f3147r, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f3149n) {
            this.f3150o = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public final void d() {
        ListenableWorker listenableWorker = this.f3152q;
        if (listenableWorker == null || listenableWorker.f3025j) {
            return;
        }
        this.f3152q.g();
    }

    @Override // p1.c
    public final void e(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public final x6.a<ListenableWorker.a> f() {
        this.f3024i.f3034c.execute(new a());
        return this.f3151p;
    }

    public final void h() {
        this.f3151p.j(new ListenableWorker.a.C0043a());
    }

    public final void i() {
        this.f3151p.j(new ListenableWorker.a.b());
    }
}
