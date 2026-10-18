package l1;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: Processor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements b, s1.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f9821s = k1.l.e("Processor");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f9823i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public androidx.work.a f9824j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public w1.a f9825k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WorkDatabase f9826l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List<e> f9829o;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, n> f9828n = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<String, n> f9827m = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Set<String> f9830p = new HashSet();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final List<b> f9831q = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PowerManager.WakeLock f9822h = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Object f9832r = new Object();

    /* JADX INFO: compiled from: Processor.java */
    public static class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public b f9833h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f9834i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public x6.a<Boolean> f9835j;

        public a(b bVar, String str, x6.a<Boolean> aVar) {
            this.f9833h = bVar;
            this.f9834i = str;
            this.f9835j = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = this.f9835j.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.f9833h.a(this.f9834i, zBooleanValue);
        }
    }

    public d(Context context, androidx.work.a aVar, w1.a aVar2, WorkDatabase workDatabase, List<e> list) {
        this.f9823i = context;
        this.f9824j = aVar;
        this.f9825k = aVar2;
        this.f9826l = workDatabase;
        this.f9829o = list;
    }

    public static boolean c(String str, n nVar) {
        boolean zIsDone;
        if (nVar == null) {
            k1.l.c().a(f9821s, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        nVar.f9886z = true;
        nVar.i();
        x6.a<ListenableWorker.a> aVar = nVar.f9885y;
        if (aVar != null) {
            zIsDone = aVar.isDone();
            nVar.f9885y.cancel(true);
        } else {
            zIsDone = false;
        }
        ListenableWorker listenableWorker = nVar.f9873m;
        if (listenableWorker == null || zIsDone) {
            k1.l.c().a(n.A, String.format("WorkSpec %s is already done. Not interrupting.", nVar.f9872l), new Throwable[0]);
        } else {
            listenableWorker.f3025j = true;
            listenableWorker.d();
        }
        k1.l.c().a(f9821s, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<l1.b>] */
    @Override // l1.b
    public final void a(String str, boolean z10) {
        synchronized (this.f9832r) {
            this.f9828n.remove(str);
            k1.l.c().a(f9821s, String.format("%s %s executed; reschedule = %s", d.class.getSimpleName(), str, Boolean.valueOf(z10)), new Throwable[0]);
            Iterator it = this.f9831q.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(str, z10);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<l1.b>] */
    public final void b(b bVar) {
        synchronized (this.f9832r) {
            this.f9831q.add(bVar);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final boolean d(String str) {
        boolean z10;
        synchronized (this.f9832r) {
            z10 = this.f9828n.containsKey(str) || this.f9827m.containsKey(str);
        }
        return z10;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<l1.b>] */
    public final void e(b bVar) {
        synchronized (this.f9832r) {
            this.f9831q.remove(bVar);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final void f(String str, k1.f fVar) {
        synchronized (this.f9832r) {
            k1.l.c().d(f9821s, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            n nVar = (n) this.f9828n.remove(str);
            if (nVar != null) {
                if (this.f9822h == null) {
                    PowerManager.WakeLock wakeLockA = u1.l.a(this.f9823i, "ProcessorForegroundLck");
                    this.f9822h = wakeLockA;
                    wakeLockA.acquire();
                }
                this.f9827m.put(str, nVar);
                Intent intentD = androidx.work.impl.foreground.a.d(this.f9823i, str, fVar);
                Context context = this.f9823i;
                Object obj = y.a.f18143a;
                if (Build.VERSION.SDK_INT >= 26) {
                    y.a.d.a(context, intentD);
                } else {
                    context.startService(intentD);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final boolean g(String str, WorkerParameters.a aVar) {
        synchronized (this.f9832r) {
            if (d(str)) {
                k1.l.c().a(f9821s, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            n.a aVar2 = new n.a(this.f9823i, this.f9824j, this.f9825k, this, this.f9826l, str);
            aVar2.f9893g = this.f9829o;
            if (aVar != null) {
                aVar2.f9894h = aVar;
            }
            n nVar = new n(aVar2);
            v1.c<Boolean> cVar = nVar.f9884x;
            cVar.a(new a(this, str, cVar), ((w1.b) this.f9825k).f17059c);
            this.f9828n.put(str, nVar);
            ((w1.b) this.f9825k).f17057a.execute(nVar);
            k1.l.c().a(f9821s, String.format("%s: processing %s", d.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final void h() {
        synchronized (this.f9832r) {
            if (!(!this.f9827m.isEmpty())) {
                Context context = this.f9823i;
                String str = androidx.work.impl.foreground.a.f3130r;
                Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                intent.setAction("ACTION_STOP_FOREGROUND");
                try {
                    this.f9823i.startService(intent);
                } catch (Throwable th) {
                    k1.l.c().b(f9821s, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.f9822h;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f9822h = null;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final boolean i(String str) {
        boolean zC;
        synchronized (this.f9832r) {
            k1.l.c().a(f9821s, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            zC = c(str, (n) this.f9827m.remove(str));
        }
        return zC;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final boolean j(String str) {
        boolean zC;
        synchronized (this.f9832r) {
            k1.l.c().a(f9821s, String.format("Processor stopping background work %s", str), new Throwable[0]);
            zC = c(str, (n) this.f9828n.remove(str));
        }
        return zC;
    }
}
