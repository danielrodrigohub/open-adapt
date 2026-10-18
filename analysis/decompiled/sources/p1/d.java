package p1;

import android.content.Context;
import k1.l;
import q1.e;
import q1.f;
import q1.g;
import q1.h;
import t1.o;

/* JADX INFO: compiled from: WorkConstraintsTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements q1.c.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f12625d = l.e("WorkConstraintsTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f12626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q1.c<?>[] f12627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f12628c;

    public d(Context context, w1.a aVar, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f12626a = cVar;
        this.f12627b = new q1.c[]{new q1.a(applicationContext, aVar), new q1.b(applicationContext, aVar), new h(applicationContext, aVar), new q1.d(applicationContext, aVar), new g(applicationContext, aVar), new f(applicationContext, aVar), new e(applicationContext, aVar)};
        this.f12628c = new Object();
    }

    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public final boolean a(String str) {
        synchronized (this.f12628c) {
            for (q1.c<?> cVar : this.f12627b) {
                Object obj = cVar.f13539b;
                if (obj != null && cVar.c(obj) && cVar.f13538a.contains(str)) {
                    l.c().a(f12625d, String.format("Work %s constrained by %s", str, cVar.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public final void b(Iterable<o> iterable) {
        synchronized (this.f12628c) {
            for (q1.c<?> cVar : this.f12627b) {
                if (cVar.f13541d != null) {
                    cVar.f13541d = null;
                    cVar.e(null, cVar.f13539b);
                }
            }
            for (q1.c<?> cVar2 : this.f12627b) {
                cVar2.d(iterable);
            }
            for (q1.c<?> cVar3 : this.f12627b) {
                if (cVar3.f13541d != this) {
                    cVar3.f13541d = this;
                    cVar3.e(this, cVar3.f13539b);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public final void c() {
        synchronized (this.f12628c) {
            for (q1.c<?> cVar : this.f12627b) {
                if (!cVar.f13538a.isEmpty()) {
                    cVar.f13538a.clear();
                    cVar.f13540c.b(cVar);
                }
            }
        }
    }
}
