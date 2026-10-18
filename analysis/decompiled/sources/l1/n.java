package l1;

import android.content.Context;
import android.database.Cursor;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import t1.o;
import t1.p;
import t1.q;
import t1.s;
import t1.t;
import y0.f0;

/* JADX INFO: compiled from: WorkerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Runnable {
    public static final String A = k1.l.e("WorkerWrapper");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f9868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f9869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List<e> f9870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public WorkerParameters.a f9871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o f9872l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public w1.a f9874n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public androidx.work.a f9876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public s1.a f9877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public WorkDatabase f9878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public p f9879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public t1.b f9880t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public s f9881u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public List<String> f9882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f9883w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile boolean f9886z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ListenableWorker.a f9875o = new ListenableWorker.a.C0043a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public v1.c<Boolean> f9884x = new v1.c<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public x6.a<ListenableWorker.a> f9885y = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ListenableWorker f9873m = null;

    /* JADX INFO: compiled from: WorkerWrapper.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f9887a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public s1.a f9888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public w1.a f9889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public androidx.work.a f9890d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public WorkDatabase f9891e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f9892f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public List<e> f9893g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public WorkerParameters.a f9894h = new WorkerParameters.a();

        public a(Context context, androidx.work.a aVar, w1.a aVar2, s1.a aVar3, WorkDatabase workDatabase, String str) {
            this.f9887a = context.getApplicationContext();
            this.f9889c = aVar2;
            this.f9888b = aVar3;
            this.f9890d = aVar;
            this.f9891e = workDatabase;
            this.f9892f = str;
        }
    }

    public n(a aVar) {
        this.f9868h = aVar.f9887a;
        this.f9874n = aVar.f9889c;
        this.f9877q = aVar.f9888b;
        this.f9869i = aVar.f9892f;
        this.f9870j = aVar.f9893g;
        this.f9871k = aVar.f9894h;
        this.f9876p = aVar.f9890d;
        WorkDatabase workDatabase = aVar.f9891e;
        this.f9878r = workDatabase;
        this.f9879s = workDatabase.w();
        this.f9880t = this.f9878r.r();
        this.f9881u = this.f9878r.x();
    }

    public final void a(ListenableWorker.a aVar) {
        if (!(aVar instanceof ListenableWorker.a.c)) {
            if (aVar instanceof ListenableWorker.a.b) {
                k1.l.c().d(A, String.format("Worker result RETRY for %s", this.f9883w), new Throwable[0]);
                d();
                return;
            }
            k1.l.c().d(A, String.format("Worker result FAILURE for %s", this.f9883w), new Throwable[0]);
            if (this.f9872l.c()) {
                e();
                return;
            } else {
                h();
                return;
            }
        }
        k1.l.c().d(A, String.format("Worker result SUCCESS for %s", this.f9883w), new Throwable[0]);
        if (this.f9872l.c()) {
            e();
            return;
        }
        this.f9878r.c();
        try {
            ((q) this.f9879s).o(k1.p.SUCCEEDED, this.f9869i);
            ((q) this.f9879s).m(this.f9869i, ((ListenableWorker.a.c) this.f9875o).f3029a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (String str : (ArrayList) ((t1.c) this.f9880t).a(this.f9869i)) {
                if (((q) this.f9879s).f(str) == k1.p.BLOCKED && ((t1.c) this.f9880t).b(str)) {
                    k1.l.c().d(A, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    ((q) this.f9879s).o(k1.p.ENQUEUED, str);
                    ((q) this.f9879s).n(str, jCurrentTimeMillis);
                }
            }
            this.f9878r.p();
        } finally {
            this.f9878r.l();
            f(false);
        }
    }

    public final void b(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (((q) this.f9879s).f(str2) != k1.p.CANCELLED) {
                ((q) this.f9879s).o(k1.p.FAILED, str2);
            }
            linkedList.addAll(((t1.c) this.f9880t).a(str2));
        }
    }

    public final void c() {
        if (!i()) {
            this.f9878r.c();
            try {
                k1.p pVarF = ((q) this.f9879s).f(this.f9869i);
                ((t1.n) this.f9878r.v()).a(this.f9869i);
                if (pVarF == null) {
                    f(false);
                } else if (pVarF == k1.p.RUNNING) {
                    a(this.f9875o);
                } else if (!pVarF.b()) {
                    d();
                }
                this.f9878r.p();
                this.f9878r.l();
            } catch (Throwable th) {
                this.f9878r.l();
                throw th;
            }
        }
        List<e> list = this.f9870j;
        if (list != null) {
            Iterator<e> it = list.iterator();
            while (it.hasNext()) {
                it.next().b(this.f9869i);
            }
            f.a(this.f9876p, this.f9878r, this.f9870j);
        }
    }

    public final void d() {
        this.f9878r.c();
        try {
            ((q) this.f9879s).o(k1.p.ENQUEUED, this.f9869i);
            ((q) this.f9879s).n(this.f9869i, System.currentTimeMillis());
            ((q) this.f9879s).k(this.f9869i, -1L);
            this.f9878r.p();
        } finally {
            this.f9878r.l();
            f(true);
        }
    }

    public final void e() {
        this.f9878r.c();
        try {
            ((q) this.f9879s).n(this.f9869i, System.currentTimeMillis());
            ((q) this.f9879s).o(k1.p.ENQUEUED, this.f9869i);
            ((q) this.f9879s).l(this.f9869i);
            ((q) this.f9879s).k(this.f9869i, -1L);
            this.f9878r.p();
        } finally {
            this.f9878r.l();
            f(false);
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final void f(boolean z10) {
        ListenableWorker listenableWorker;
        this.f9878r.c();
        try {
            q qVar = (q) this.f9878r.w();
            Objects.requireNonNull(qVar);
            f0 f0VarF0 = f0.f0("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
            qVar.f15370a.b();
            Cursor cursorO = qVar.f15370a.o(f0VarF0);
            try {
                boolean z11 = cursorO.moveToFirst() && cursorO.getInt(0) != 0;
                cursorO.close();
                f0VarF0.g0();
                if (!z11) {
                    u1.f.a(this.f9868h, RescheduleReceiver.class, false);
                }
                if (z10) {
                    ((q) this.f9879s).o(k1.p.ENQUEUED, this.f9869i);
                    ((q) this.f9879s).k(this.f9869i, -1L);
                }
                if (this.f9872l != null && (listenableWorker = this.f9873m) != null && listenableWorker.b()) {
                    s1.a aVar = this.f9877q;
                    String str = this.f9869i;
                    d dVar = (d) aVar;
                    synchronized (dVar.f9832r) {
                        dVar.f9827m.remove(str);
                        dVar.h();
                    }
                }
                this.f9878r.p();
                this.f9878r.l();
                this.f9884x.j(Boolean.valueOf(z10));
            } catch (Throwable th) {
                cursorO.close();
                f0VarF0.g0();
                throw th;
            }
        } catch (Throwable th2) {
            this.f9878r.l();
            throw th2;
        }
    }

    public final void g() {
        k1.p pVarF = ((q) this.f9879s).f(this.f9869i);
        if (pVarF == k1.p.RUNNING) {
            k1.l.c().a(A, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f9869i), new Throwable[0]);
            f(true);
        } else {
            k1.l.c().a(A, String.format("Status for %s is %s; not doing any work", this.f9869i, pVarF), new Throwable[0]);
            f(false);
        }
    }

    public final void h() {
        this.f9878r.c();
        try {
            b(this.f9869i);
            androidx.work.b bVar = ((ListenableWorker.a.C0043a) this.f9875o).f3028a;
            ((q) this.f9879s).m(this.f9869i, bVar);
            this.f9878r.p();
        } finally {
            this.f9878r.l();
            f(false);
        }
    }

    public final boolean i() {
        if (!this.f9886z) {
            return false;
        }
        k1.l.c().a(A, String.format("Work interrupted for %s", this.f9883w), new Throwable[0]);
        k1.p pVarF = ((q) this.f9879s).f(this.f9869i);
        if (pVarF == null) {
            f(false);
        } else {
            f(!pVarF.b());
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00c3 A[Catch: all -> 0x02d7, TryCatch #1 {all -> 0x02d7, blocks: (B:14:0x0059, B:16:0x0067, B:17:0x0088, B:19:0x008c, B:20:0x00ae, B:22:0x00b4, B:24:0x00ba, B:38:0x0106, B:29:0x00c3, B:34:0x00d6, B:36:0x00de), top: B:95:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d3  */
    @Override // java.lang.Runnable
    public final void run() {
        o oVar;
        boolean z10;
        androidx.work.b bVarA;
        ArrayList<String> arrayList = (ArrayList) ((t) this.f9881u).a(this.f9869i);
        this.f9882v = arrayList;
        StringBuilder sb2 = new StringBuilder("Work [ id=");
        sb2.append(this.f9869i);
        sb2.append(", tags={ ");
        boolean z11 = true;
        boolean z12 = true;
        for (String str : arrayList) {
            if (z12) {
                z12 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        sb2.append(" } ]");
        this.f9883w = sb2.toString();
        k1.p pVar = k1.p.ENQUEUED;
        if (i()) {
            return;
        }
        this.f9878r.c();
        try {
            o oVarH = ((q) this.f9879s).h(this.f9869i);
            this.f9872l = oVarH;
            if (oVarH == null) {
                k1.l.c().b(A, String.format("Didn't find WorkSpec for id %s", this.f9869i), new Throwable[0]);
                f(false);
                this.f9878r.p();
            } else {
                if (oVarH.f15351b == pVar) {
                    if (oVarH.c()) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        oVar = this.f9872l;
                        if (oVar.f15363n == 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z10) {
                            k1.l.c().a(A, String.format("Delaying execution for %s because it is being executed before schedule.", this.f9872l.f15352c), new Throwable[0]);
                            f(true);
                            this.f9878r.p();
                        }
                    } else {
                        o oVar2 = this.f9872l;
                        if (oVar2.f15351b == pVar && oVar2.f15360k > 0) {
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            oVar = this.f9872l;
                            if (oVar.f15363n == 0) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (!z10 && jCurrentTimeMillis2 < oVar.a()) {
                                k1.l.c().a(A, String.format("Delaying execution for %s because it is being executed before schedule.", this.f9872l.f15352c), new Throwable[0]);
                                f(true);
                                this.f9878r.p();
                            }
                        }
                    }
                    this.f9878r.p();
                    this.f9878r.l();
                    if (this.f9872l.c()) {
                        bVarA = this.f9872l.f15354e;
                    } else {
                        k1.i iVar = this.f9876p.f3043d;
                        String str2 = this.f9872l.f15353d;
                        Objects.requireNonNull(iVar);
                        String str3 = k1.h.f9593a;
                        k1.h hVar = null;
                        try {
                            hVar = (k1.h) Class.forName(str2).newInstance();
                        } catch (Exception e10) {
                            k1.l.c().b(k1.h.f9593a, androidx.recyclerview.widget.d.c("Trouble instantiating + ", str2), e10);
                        }
                        if (hVar == null) {
                            k1.l.c().b(A, String.format("Could not create Input Merger %s", this.f9872l.f15353d), new Throwable[0]);
                            h();
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(this.f9872l.f15354e);
                        p pVar2 = this.f9879s;
                        String str4 = this.f9869i;
                        q qVar = (q) pVar2;
                        Objects.requireNonNull(qVar);
                        f0 f0VarF0 = f0.f0("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
                        if (str4 == null) {
                            f0VarF0.t(1);
                        } else {
                            f0VarF0.l(1, str4);
                        }
                        qVar.f15370a.b();
                        Cursor cursorO = qVar.f15370a.o(f0VarF0);
                        try {
                            ArrayList arrayList3 = new ArrayList(cursorO.getCount());
                            while (cursorO.moveToNext()) {
                                arrayList3.add(androidx.work.b.a(cursorO.getBlob(0)));
                            }
                            cursorO.close();
                            f0VarF0.g0();
                            arrayList2.addAll(arrayList3);
                            bVarA = hVar.a(arrayList2);
                        } catch (Throwable th) {
                            cursorO.close();
                            f0VarF0.g0();
                            throw th;
                        }
                    }
                    androidx.work.b bVar = bVarA;
                    UUID uuidFromString = UUID.fromString(this.f9869i);
                    List<String> list = this.f9882v;
                    int i10 = this.f9872l.f15360k;
                    androidx.work.a aVar = this.f9876p;
                    WorkerParameters workerParameters = new WorkerParameters(uuidFromString, bVar, list, aVar.f3040a, this.f9874n, aVar.f3042c, new u1.o(this.f9878r, this.f9877q, this.f9874n));
                    if (this.f9873m == null) {
                        this.f9873m = this.f9876p.f3042c.b(this.f9868h, this.f9872l.f15352c, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.f9873m;
                    if (listenableWorker == null) {
                        k1.l.c().b(A, String.format("Could not create Worker %s", this.f9872l.f15352c), new Throwable[0]);
                        h();
                        return;
                    }
                    if (listenableWorker.f3026k) {
                        k1.l.c().b(A, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f9872l.f15352c), new Throwable[0]);
                        h();
                        return;
                    }
                    listenableWorker.f3026k = true;
                    this.f9878r.c();
                    try {
                        if (((q) this.f9879s).f(this.f9869i) == pVar) {
                            ((q) this.f9879s).o(k1.p.RUNNING, this.f9869i);
                            ((q) this.f9879s).j(this.f9869i);
                        } else {
                            z11 = false;
                        }
                        this.f9878r.p();
                        this.f9878r.l();
                        if (!z11) {
                            g();
                            return;
                        }
                        if (i()) {
                            return;
                        }
                        v1.c cVar = new v1.c();
                        u1.m mVar = new u1.m(this.f9868h, this.f9872l, this.f9873m, workerParameters.f3037f, this.f9874n);
                        ((w1.b) this.f9874n).f17059c.execute(mVar);
                        v1.c<Void> cVar2 = mVar.f15648h;
                        cVar2.a(new l(this, cVar2, cVar), ((w1.b) this.f9874n).f17059c);
                        cVar.a(new m(this, cVar, this.f9883w), ((w1.b) this.f9874n).f17057a);
                        return;
                    } catch (Throwable th2) {
                        this.f9878r.l();
                        throw th2;
                    }
                }
                g();
                this.f9878r.p();
                k1.l.c().a(A, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f9872l.f15352c), new Throwable[0]);
            }
            this.f9878r.l();
        } catch (Throwable th3) {
            this.f9878r.l();
            throw th3;
        }
    }
}
