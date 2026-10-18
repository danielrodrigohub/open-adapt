package h3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import androidx.fragment.app.r0;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import l3.l;
import r2.m;
import r2.r;
import r2.w;
import v2.k;

/* JADX INFO: compiled from: SingleRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class i<R> implements d, i3.h, h {
    public static final boolean D = Log.isLoggable("GlideRequest", 2);
    public int A;
    public boolean B;
    public RuntimeException C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m3.d.a f8141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f<R> f8143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f8144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f8145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.bumptech.glide.e f8146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f8147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class<R> f8148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a<?> f8149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f8151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.g f8152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final i3.i<R> f8153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<f<R>> f8154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final j3.b<? super R> f8155p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Executor f8156q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public w<R> f8157r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public m.d f8158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f8159t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile m f8160u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f8161v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Drawable f8162w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f8163x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Drawable f8164y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f8165z;

    public i(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class cls, a aVar, int i10, int i11, com.bumptech.glide.g gVar, i3.i iVar, List list, e eVar2, m mVar) {
        j3.b<? super R> bVar = (j3.b<? super R>) j3.a.f9260b;
        l3.e.a aVar2 = l3.e.f9930a;
        this.f8140a = D ? String.valueOf(hashCode()) : null;
        this.f8141b = new m3.d.a();
        this.f8142c = obj;
        this.f8145f = context;
        this.f8146g = eVar;
        this.f8147h = obj2;
        this.f8148i = cls;
        this.f8149j = aVar;
        this.f8150k = i10;
        this.f8151l = i11;
        this.f8152m = gVar;
        this.f8153n = iVar;
        this.f8143d = null;
        this.f8154o = list;
        this.f8144e = eVar2;
        this.f8160u = mVar;
        this.f8155p = bVar;
        this.f8156q = aVar2;
        this.f8161v = 1;
        if (this.C == null && eVar.f4452h.a(com.bumptech.glide.d.C0079d.class)) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00fc */
    @Override // i3.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i10, int i11) throws Throwable {
        Object obj;
        int iRound = i10;
        this.f8141b.a();
        Object obj2 = this.f8142c;
        synchronized (obj2) {
            try {
                boolean z10 = D;
                if (z10) {
                    n("Got onSizeReady in " + l3.h.a(this.f8159t));
                }
                if (this.f8161v == 3) {
                    this.f8161v = 2;
                    float f10 = this.f8149j.f8116i;
                    if (iRound != Integer.MIN_VALUE) {
                        iRound = Math.round(iRound * f10);
                    }
                    this.f8165z = iRound;
                    this.A = i11 == Integer.MIN_VALUE ? i11 : Math.round(f10 * i11);
                    if (z10) {
                        n("finished setup for calling load in " + l3.h.a(this.f8159t));
                    }
                    m mVar = this.f8160u;
                    com.bumptech.glide.e eVar = this.f8146g;
                    Object obj3 = this.f8147h;
                    a<?> aVar = this.f8149j;
                    try {
                        obj = obj2;
                        try {
                            try {
                                this.f8158s = mVar.b(eVar, obj3, aVar.f8126s, this.f8165z, this.A, aVar.f8133z, this.f8148i, this.f8152m, aVar.f8117j, aVar.f8132y, aVar.f8127t, aVar.F, aVar.f8131x, aVar.f8123p, aVar.D, aVar.G, aVar.E, this, this.f8156q);
                                if (this.f8161v != 2) {
                                    this.f8158s = null;
                                }
                                if (z10) {
                                    n("finished onSizeReady in " + l3.h.a(this.f8159t));
                                }
                            } catch (Throwable th) {
                                th = th;
                                while (true) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        obj = obj2;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    public final void b() {
        if (this.B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @Override // h3.d
    public final void c() {
        synchronized (this.f8142c) {
            if (isRunning()) {
                clear();
            }
        }
    }

    @Override // h3.d
    public final void clear() {
        synchronized (this.f8142c) {
            b();
            this.f8141b.a();
            if (this.f8161v == 6) {
                return;
            }
            g();
            w<R> wVar = this.f8157r;
            if (wVar != null) {
                this.f8157r = null;
            } else {
                wVar = null;
            }
            e eVar = this.f8144e;
            if (eVar == null || eVar.k(this)) {
                this.f8153n.f(k());
            }
            this.f8161v = 6;
            if (wVar != null) {
                this.f8160u.f(wVar);
            }
        }
    }

    @Override // h3.d
    public final boolean d() {
        boolean z10;
        synchronized (this.f8142c) {
            z10 = this.f8161v == 4;
        }
        return z10;
    }

    @Override // h3.d
    public final boolean e() {
        boolean z10;
        synchronized (this.f8142c) {
            z10 = this.f8161v == 6;
        }
        return z10;
    }

    @Override // h3.d
    public final void f() {
        synchronized (this.f8142c) {
            b();
            this.f8141b.a();
            int i10 = l3.h.f9935b;
            this.f8159t = SystemClock.elapsedRealtimeNanos();
            if (this.f8147h == null) {
                if (l.j(this.f8150k, this.f8151l)) {
                    this.f8165z = this.f8150k;
                    this.A = this.f8151l;
                }
                o(new r("Received null model"), j() == null ? 5 : 3);
                return;
            }
            int i11 = this.f8161v;
            if (i11 == 2) {
                throw new IllegalArgumentException("Cannot restart a running request");
            }
            if (i11 == 4) {
                q(this.f8157r, p2.a.MEMORY_CACHE, false);
                return;
            }
            List<f<R>> list = this.f8154o;
            if (list != null) {
                for (f<R> fVar : list) {
                    if (fVar instanceof c) {
                        Objects.requireNonNull((c) fVar);
                    }
                }
            }
            this.f8161v = 3;
            if (l.j(this.f8150k, this.f8151l)) {
                a(this.f8150k, this.f8151l);
            } else {
                this.f8153n.b(this);
            }
            int i12 = this.f8161v;
            if (i12 == 2 || i12 == 3) {
                e eVar = this.f8144e;
                if (eVar == null || eVar.a(this)) {
                    this.f8153n.d(k());
                }
            }
            if (D) {
                n("finished run method in " + l3.h.a(this.f8159t));
            }
        }
    }

    public final void g() {
        b();
        this.f8141b.a();
        this.f8153n.c(this);
        m.d dVar = this.f8158s;
        if (dVar != null) {
            synchronized (m.this) {
                dVar.f14327a.g(dVar.f14328b);
            }
            this.f8158s = null;
        }
    }

    @Override // h3.d
    public final boolean h(d dVar) {
        int i10;
        int i11;
        Object obj;
        Class<R> cls;
        a<?> aVar;
        com.bumptech.glide.g gVar;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class<R> cls2;
        a<?> aVar2;
        com.bumptech.glide.g gVar2;
        int size2;
        boolean zA;
        if (!(dVar instanceof i)) {
            return false;
        }
        synchronized (this.f8142c) {
            i10 = this.f8150k;
            i11 = this.f8151l;
            obj = this.f8147h;
            cls = this.f8148i;
            aVar = this.f8149j;
            gVar = this.f8152m;
            List<f<R>> list = this.f8154o;
            size = list != null ? list.size() : 0;
        }
        i iVar = (i) dVar;
        synchronized (iVar.f8142c) {
            i12 = iVar.f8150k;
            i13 = iVar.f8151l;
            obj2 = iVar.f8147h;
            cls2 = iVar.f8148i;
            aVar2 = iVar.f8149j;
            gVar2 = iVar.f8152m;
            List<f<R>> list2 = iVar.f8154o;
            size2 = list2 != null ? list2.size() : 0;
        }
        if (i10 == i12 && i11 == i13) {
            char[] cArr = l.f9945a;
            if (obj == null) {
                zA = obj2 == null;
            } else {
                zA = obj instanceof k ? ((k) obj).a() : obj.equals(obj2);
            }
            if (zA && cls.equals(cls2) && aVar.equals(aVar2) && gVar == gVar2 && size == size2) {
                return true;
            }
        }
        return false;
    }

    @Override // h3.d
    public final boolean i() {
        boolean z10;
        synchronized (this.f8142c) {
            z10 = this.f8161v == 4;
        }
        return z10;
    }

    @Override // h3.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f8142c) {
            int i10 = this.f8161v;
            z10 = i10 == 2 || i10 == 3;
        }
        return z10;
    }

    public final Drawable j() {
        int i10;
        if (this.f8164y == null) {
            a<?> aVar = this.f8149j;
            Drawable drawable = aVar.f8129v;
            this.f8164y = drawable;
            if (drawable == null && (i10 = aVar.f8130w) > 0) {
                this.f8164y = m(i10);
            }
        }
        return this.f8164y;
    }

    public final Drawable k() {
        int i10;
        if (this.f8163x == null) {
            a<?> aVar = this.f8149j;
            Drawable drawable = aVar.f8121n;
            this.f8163x = drawable;
            if (drawable == null && (i10 = aVar.f8122o) > 0) {
                this.f8163x = m(i10);
            }
        }
        return this.f8163x;
    }

    public final boolean l() {
        e eVar = this.f8144e;
        return eVar == null || !eVar.b().d();
    }

    public final Drawable m(int i10) {
        Resources.Theme theme = this.f8149j.B;
        if (theme == null) {
            theme = this.f8145f.getTheme();
        }
        com.bumptech.glide.e eVar = this.f8146g;
        return a3.b.a(eVar, eVar, i10, theme);
    }

    public final void n(String str) {
        StringBuilder sbH = r0.h(str, " this: ");
        sbH.append(this.f8140a);
        Log.v("GlideRequest", sbH.toString());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007f  */
    public final void o(r rVar, int i10) {
        boolean zB;
        this.f8141b.a();
        synchronized (this.f8142c) {
            Objects.requireNonNull(rVar);
            int i11 = this.f8146g.f4453i;
            if (i11 <= i10) {
                Log.w("Glide", "Load failed for " + this.f8147h + " with size [" + this.f8165z + "x" + this.A + "]", rVar);
                if (i11 <= 4) {
                    rVar.e();
                }
            }
            this.f8158s = null;
            this.f8161v = 5;
            boolean z10 = true;
            this.B = true;
            try {
                List<f<R>> list = this.f8154o;
                if (list != null) {
                    zB = false;
                    for (f<R> fVar : list) {
                        l();
                        zB |= fVar.b();
                    }
                } else {
                    zB = false;
                }
                f<R> fVar2 = this.f8143d;
                if (fVar2 != null) {
                    l();
                    if (!fVar2.b()) {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                if (!(z10 | zB)) {
                    r();
                }
                this.B = false;
                e eVar = this.f8144e;
                if (eVar != null) {
                    eVar.l(this);
                }
            } catch (Throwable th) {
                this.B = false;
                throw th;
            }
        }
    }

    public final void p(w wVar, Object obj, p2.a aVar) {
        boolean zA;
        l();
        this.f8161v = 4;
        this.f8157r = wVar;
        if (this.f8146g.f4453i <= 3) {
            StringBuilder sbC = a0.b.c("Finished loading ");
            sbC.append(obj.getClass().getSimpleName());
            sbC.append(" from ");
            sbC.append(aVar);
            sbC.append(" for ");
            sbC.append(this.f8147h);
            sbC.append(" with size [");
            sbC.append(this.f8165z);
            sbC.append("x");
            sbC.append(this.A);
            sbC.append("] in ");
            sbC.append(l3.h.a(this.f8159t));
            sbC.append(" ms");
            Log.d("Glide", sbC.toString());
        }
        boolean z10 = true;
        this.B = true;
        try {
            List<f<R>> list = this.f8154o;
            if (list != null) {
                Iterator<f<R>> it = list.iterator();
                zA = false;
                while (it.hasNext()) {
                    zA |= it.next().a();
                }
            } else {
                zA = false;
            }
            f<R> fVar = this.f8143d;
            if (fVar == null || !fVar.a()) {
                z10 = false;
            }
            if (!(z10 | zA)) {
                Objects.requireNonNull(this.f8155p);
                this.f8153n.j(obj);
            }
            this.B = false;
            e eVar = this.f8144e;
            if (eVar != null) {
                eVar.g(this);
            }
        } catch (Throwable th) {
            this.B = false;
            throw th;
        }
    }

    public final void q(w<?> wVar, p2.a aVar, boolean z10) {
        i<R> iVar;
        Throwable th;
        this.f8141b.a();
        w<?> wVar2 = null;
        try {
            synchronized (this.f8142c) {
                try {
                    this.f8158s = null;
                    if (wVar == null) {
                        o(new r("Expected to receive a Resource<R> with an object of " + this.f8148i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = wVar.get();
                    try {
                        if (obj == null || !this.f8148i.isAssignableFrom(obj.getClass())) {
                            this.f8157r = null;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Expected to receive an object of ");
                            sb2.append(this.f8148i);
                            sb2.append(" but instead got ");
                            sb2.append(obj != null ? obj.getClass() : "");
                            sb2.append("{");
                            sb2.append(obj);
                            sb2.append("} inside Resource{");
                            sb2.append(wVar);
                            sb2.append("}.");
                            sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            o(new r(sb2.toString()), 5);
                        } else {
                            e eVar = this.f8144e;
                            if (eVar == null || eVar.j(this)) {
                                p(wVar, obj, aVar);
                                return;
                            } else {
                                this.f8157r = null;
                                this.f8161v = 4;
                            }
                        }
                        this.f8160u.f(wVar);
                    } catch (Throwable th2) {
                        th = th2;
                        wVar2 = wVar;
                        iVar = this;
                        while (true) {
                            try {
                                try {
                                    throw th;
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (wVar2 != null) {
                                        iVar.f8160u.f(wVar2);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                iVar = iVar;
                            }
                            th = th4;
                            iVar = iVar;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    iVar = this;
                }
            }
        } catch (Throwable th6) {
            th = th6;
            iVar = this;
        }
    }

    public final void r() {
        int i10;
        e eVar = this.f8144e;
        if (eVar == null || eVar.a(this)) {
            Drawable drawableJ = this.f8147h == null ? j() : null;
            if (drawableJ == null) {
                if (this.f8162w == null) {
                    a<?> aVar = this.f8149j;
                    Drawable drawable = aVar.f8119l;
                    this.f8162w = drawable;
                    if (drawable == null && (i10 = aVar.f8120m) > 0) {
                        this.f8162w = m(i10);
                    }
                }
                drawableJ = this.f8162w;
            }
            if (drawableJ == null) {
                drawableJ = k();
            }
            this.f8153n.a(drawableJ);
        }
    }

    public final String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.f8142c) {
            obj = this.f8147h;
            cls = this.f8148i;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
