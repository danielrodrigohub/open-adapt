package m1;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import k1.l;
import k1.p;
import l1.e;
import l1.k;
import p1.d;
import t1.o;
import u1.h;
import u1.j;

/* JADX INFO: compiled from: GreedyScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements e, p1.c, l1.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f10274p = l.e("GreedyScheduler");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f10275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k f10276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f10277j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f10279l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f10280m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Boolean f10282o;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Set<o> f10278k = new HashSet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f10281n = new Object();

    public c(Context context, androidx.work.a aVar, w1.a aVar2, k kVar) {
        this.f10275h = context;
        this.f10276i = kVar;
        this.f10277j = new d(context, aVar2, this);
        this.f10279l = new b(this, aVar.f3044e);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<t1.o>] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.HashSet, java.util.Set<t1.o>] */
    @Override // l1.b
    public final void a(String str, boolean z10) {
        synchronized (this.f10281n) {
            for (o oVar : this.f10278k) {
                if (oVar.f15350a.equals(str)) {
                    l.c().a(f10274p, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f10278k.remove(oVar);
                    this.f10277j.b(this.f10278k);
                    break;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Runnable>] */
    @Override // l1.e
    public final void b(String str) {
        Runnable runnable;
        if (this.f10282o == null) {
            this.f10282o = Boolean.valueOf(h.a(this.f10275h, this.f10276i.f9854b));
        }
        if (!this.f10282o.booleanValue()) {
            l.c().d(f10274p, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        if (!this.f10280m) {
            this.f10276i.f9858f.b(this);
            this.f10280m = true;
        }
        l.c().a(f10274p, String.format("Cancelling work ID %s", str), new Throwable[0]);
        b bVar = this.f10279l;
        if (bVar != null && (runnable = (Runnable) bVar.f10273c.remove(str)) != null) {
            bVar.f10272b.f9818a.removeCallbacks(runnable);
        }
        this.f10276i.e(str);
    }

    @Override // p1.c
    public final void c(List<String> list) {
        for (String str : list) {
            l.c().a(f10274p, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f10276i.e(str);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // l1.e
    public final void d(o... oVarArr) {
        if (this.f10282o == null) {
            this.f10282o = Boolean.valueOf(h.a(this.f10275h, this.f10276i.f9854b));
        }
        if (!this.f10282o.booleanValue()) {
            l.c().d(f10274p, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        if (!this.f10280m) {
            this.f10276i.f9858f.b(this);
            this.f10280m = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (o oVar : oVarArr) {
            long jA = oVar.a();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (oVar.f15351b == p.ENQUEUED) {
                if (jCurrentTimeMillis < jA) {
                    b bVar = this.f10279l;
                    if (bVar != null) {
                        Runnable runnableRemove = bVar.f10273c.remove(oVar.f15350a);
                        if (runnableRemove != null) {
                            bVar.f10272b.f9818a.removeCallbacks(runnableRemove);
                        }
                        a aVar = new a(bVar, oVar);
                        bVar.f10273c.put(oVar.f15350a, aVar);
                        bVar.f10272b.f9818a.postDelayed(aVar, oVar.a() - System.currentTimeMillis());
                    }
                } else if (oVar.b()) {
                    k1.c cVar = oVar.f15359j;
                    if (cVar.f9576c) {
                        l.c().a(f10274p, String.format("Ignoring WorkSpec %s, Requires device idle.", oVar), new Throwable[0]);
                    } else if (cVar.a()) {
                        l.c().a(f10274p, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", oVar), new Throwable[0]);
                    } else {
                        hashSet.add(oVar);
                        hashSet2.add(oVar.f15350a);
                    }
                } else {
                    l.c().a(f10274p, String.format("Starting work for %s", oVar.f15350a), new Throwable[0]);
                    k kVar = this.f10276i;
                    ((w1.b) kVar.f9856d).a(new j(kVar, oVar.f15350a, null));
                }
            }
        }
        synchronized (this.f10281n) {
            if (!hashSet.isEmpty()) {
                l.c().a(f10274p, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f10278k.addAll(hashSet);
                this.f10277j.b(this.f10278k);
            }
        }
    }

    @Override // p1.c
    public final void e(List<String> list) {
        for (String str : (ArrayList) list) {
            l.c().a(f10274p, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            k kVar = this.f10276i;
            ((w1.b) kVar.f9856d).a(new j(kVar, str, null));
        }
    }

    @Override // l1.e
    public final boolean f() {
        return false;
    }
}
