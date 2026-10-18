package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import k1.l;
import l1.k;
import u1.i;
import u1.q;

/* JADX INFO: compiled from: SystemAlarmDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements l1.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f3101r = l.e("SystemAlarmDispatcher");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f3102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w1.a f3103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final q f3104j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l1.d f3105k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k f3106l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final androidx.work.impl.background.systemalarm.a f3107m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f3108n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<Intent> f3109o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Intent f3110p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public c f3111q;

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
        @Override // java.lang.Runnable
        public final void run() {
            d dVar;
            RunnableC0046d runnableC0046d;
            synchronized (d.this.f3109o) {
                d dVar2 = d.this;
                dVar2.f3110p = (Intent) dVar2.f3109o.get(0);
            }
            Intent intent = d.this.f3110p;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = d.this.f3110p.getIntExtra("KEY_START_ID", 0);
                l lVarC = l.c();
                String str = d.f3101r;
                lVarC.a(str, String.format("Processing command %s, %s", d.this.f3110p, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock wakeLockA = u1.l.a(d.this.f3102h, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    l.c().a(str, String.format("Acquiring operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                    wakeLockA.acquire();
                    d dVar3 = d.this;
                    dVar3.f3107m.e(dVar3.f3110p, intExtra, dVar3);
                    l.c().a(str, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                    wakeLockA.release();
                    dVar = d.this;
                    runnableC0046d = new RunnableC0046d(dVar);
                } catch (Throwable th) {
                    try {
                        l lVarC2 = l.c();
                        String str2 = d.f3101r;
                        lVarC2.b(str2, "Unexpected error in onHandleIntent", th);
                        l.c().a(str2, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                        wakeLockA.release();
                        dVar = d.this;
                        runnableC0046d = new RunnableC0046d(dVar);
                    } catch (Throwable th2) {
                        l.c().a(d.f3101r, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                        wakeLockA.release();
                        d dVar4 = d.this;
                        dVar4.e(new RunnableC0046d(dVar4));
                        throw th2;
                    }
                }
                dVar.e(runnableC0046d);
            }
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public static class b implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final d f3113h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Intent f3114i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f3115j;

        public b(d dVar, Intent intent, int i10) {
            this.f3113h = dVar;
            this.f3114i = intent;
            this.f3115j = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f3113h.b(this.f3114i, this.f3115j);
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public interface c {
    }

    /* JADX INFO: renamed from: androidx.work.impl.background.systemalarm.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public static class RunnableC0046d implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final d f3116h;

        public RunnableC0046d(d dVar) {
            this.f3116h = dVar;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x0098 A[Catch: all -> 0x00a8, TryCatch #2 {, blocks: (B:4:0x0019, B:6:0x001e, B:8:0x0043, B:9:0x0047, B:10:0x004e, B:11:0x004f, B:12:0x0059, B:19:0x0068, B:21:0x0070, B:22:0x0072, B:29:0x0080, B:31:0x008f, B:39:0x00a3, B:35:0x0097, B:36:0x0098, B:38:0x00a0, B:43:0x00a7, B:23:0x0073, B:27:0x007d, B:13:0x005a, B:17:0x0065), top: B:51:0x0019, inners: #0, #1 }] */
        /* JADX WARN: Code duplicated, block: B:38:0x00a0 A[Catch: all -> 0x00a8, TryCatch #2 {, blocks: (B:4:0x0019, B:6:0x001e, B:8:0x0043, B:9:0x0047, B:10:0x004e, B:11:0x004f, B:12:0x0059, B:19:0x0068, B:21:0x0070, B:22:0x0072, B:29:0x0080, B:31:0x008f, B:39:0x00a3, B:35:0x0097, B:36:0x0098, B:38:0x00a0, B:43:0x00a7, B:23:0x0073, B:27:0x007d, B:13:0x005a, B:17:0x0065), top: B:51:0x0019, inners: #0, #1 }] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
        /* JADX WARN: Type inference failed for: r3v9, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.b>] */
        /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
        @Override // java.lang.Runnable
        public final void run() {
            boolean z10;
            d dVar = this.f3116h;
            Objects.requireNonNull(dVar);
            l lVarC = l.c();
            String str = d.f3101r;
            lVarC.a(str, "Checking if commands are complete.", new Throwable[0]);
            dVar.c();
            synchronized (dVar.f3109o) {
                boolean z11 = true;
                if (dVar.f3110p != null) {
                    l.c().a(str, String.format("Removing command %s", dVar.f3110p), new Throwable[0]);
                    if (!((Intent) dVar.f3109o.remove(0)).equals(dVar.f3110p)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    dVar.f3110p = null;
                }
                i iVar = ((w1.b) dVar.f3103i).f17057a;
                androidx.work.impl.background.systemalarm.a aVar = dVar.f3107m;
                synchronized (aVar.f3085j) {
                    z10 = !aVar.f3084i.isEmpty();
                }
                if (!z10 && dVar.f3109o.isEmpty()) {
                    synchronized (iVar.f15634j) {
                        if (iVar.f15632h.isEmpty()) {
                            z11 = false;
                        }
                    }
                    if (!z11) {
                        l.c().a(str, "No more commands & intents.", new Throwable[0]);
                        c cVar = dVar.f3111q;
                        if (cVar != null) {
                            ((SystemAlarmService) cVar).c();
                        }
                    } else if (!dVar.f3109o.isEmpty()) {
                        dVar.f();
                    }
                } else if (!dVar.f3109o.isEmpty()) {
                    dVar.f();
                }
            }
        }
    }

    public d(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f3102h = applicationContext;
        this.f3107m = new androidx.work.impl.background.systemalarm.a(applicationContext);
        this.f3104j = new q();
        k kVarA = k.a(context);
        this.f3106l = kVarA;
        l1.d dVar = kVarA.f9858f;
        this.f3105k = dVar;
        this.f3103i = kVarA.f9856d;
        dVar.b(this);
        this.f3109o = new ArrayList();
        this.f3110p = null;
        this.f3108n = new Handler(Looper.getMainLooper());
    }

    @Override // l1.b
    public final void a(String str, boolean z10) {
        Context context = this.f3102h;
        String str2 = androidx.work.impl.background.systemalarm.a.f3082k;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z10);
        e(new b(this, intent, 0));
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<android.content.Intent>] */
    public final boolean b(Intent intent, int i10) {
        boolean z10;
        l lVarC = l.c();
        String str = f3101r;
        lVarC.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i10)), new Throwable[0]);
        c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            l.c().f(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            c();
            synchronized (this.f3109o) {
                Iterator it = this.f3109o.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    }
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                        z10 = true;
                        break;
                    }
                }
            }
            if (z10) {
                return false;
            }
        }
        intent.putExtra("KEY_START_ID", i10);
        synchronized (this.f3109o) {
            boolean z11 = !this.f3109o.isEmpty();
            this.f3109o.add(intent);
            if (!z11) {
                f();
            }
        }
        return true;
    }

    public final void c() {
        if (this.f3108n.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public final void d() {
        l.c().a(f3101r, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f3105k.e(this);
        q qVar = this.f3104j;
        if (!qVar.f15668b.isShutdown()) {
            qVar.f15668b.shutdownNow();
        }
        this.f3111q = null;
    }

    public final void e(Runnable runnable) {
        this.f3108n.post(runnable);
    }

    public final void f() {
        c();
        PowerManager.WakeLock wakeLockA = u1.l.a(this.f3102h, "ProcessCommand");
        try {
            wakeLockA.acquire();
            ((w1.b) this.f3106l.f9856d).a(new a());
        } finally {
            wakeLockA.release();
        }
    }
}
