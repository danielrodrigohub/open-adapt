package ya;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends d.AbstractC0326d<Boolean, byte[], fd.o> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f18748m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f18749n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f18750o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final qd.a<fd.o> f18751p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f18752q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final byte[] f18753r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ d f18754s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final /* synthetic */ fa.g.b f18755t;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f18756h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ c0 f18757i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, c0 c0Var) {
            super(0);
            this.f18756h = dVar;
            this.f18757i = c0Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            d dVar = this.f18756h;
            dVar.f18761d = dVar.A.g(this.f18757i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(d dVar, v9.a aVar, fa.g.b bVar) {
        super();
        this.f18754s = dVar;
        this.f18755t = bVar;
        this.f18748m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tfirmwareUpdateStart");
        this.f18749n = aVar;
        this.f18750o = TimeUnit.MINUTES.toSeconds(60L);
        this.f18751p = new a(dVar, this);
        this.f18752q = -1.0f;
        this.f18753r = bVar.f7161b;
    }

    @Override // lc.a
    public final void g() {
        d dVar = this.f18754s;
        da.a aVar = da.a.FIRMWARE_UPLOAD_IN_PROGRESS;
        Objects.requireNonNull(dVar);
        dVar.f18777t = aVar;
        y(0.0f);
    }

    @Override // nc.c
    public final Object getValue() {
        return this.f18753r;
    }

    @Override // lc.a
    public final void i(float f10, float f11) {
        d dVar = this.f18754s;
        da.a aVar = da.a.FIRMWARE_UPLOAD_IN_PROGRESS;
        Objects.requireNonNull(dVar);
        dVar.f18777t = aVar;
        y(((int) ((f10 / f11) * 1000)) / 10.0f);
    }

    @Override // ya.h0
    public final boolean m(Throwable th) {
        p4.h.j(th, "throwable");
        this.f18754s.f18760c = null;
        boolean zH0 = d.this.h0(th);
        if (zH0 || (th instanceof d.e)) {
            d dVar = this.f18754s;
            fa.c cVar = dVar.f18771n;
            dVar.m0(fa.c.a(cVar, null, null, new fa.k.h(cVar), 3));
        }
        return zH0;
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f18749n;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f18751p;
    }

    @Override // ya.h0
    public final String p() {
        return this.f18748m;
    }

    @Override // ya.h0
    public final long q() {
        return this.f18750o;
    }

    @Override // ya.h0
    public final void s(Throwable th) {
        fa.k bVar;
        fa.l.c eVar;
        fa.o e0Var;
        p4.h.j(th, "throwable");
        if (th instanceof kc.c) {
            kc.c cVar = (kc.c) th;
            if (cVar instanceof kc.c.e.a ? true : cVar instanceof kc.c.e.C0191c ? true : cVar instanceof kc.c.e.b) {
                kc.c.e eVar2 = (kc.c.e) th;
                if (eVar2 instanceof kc.c.e.a) {
                    kc.c.e.a aVar = (kc.c.e.a) eVar2;
                    eVar = new fa.l.c.a(aVar.f9788j, aVar.f9789k);
                } else if (eVar2 instanceof kc.c.e.b) {
                    eVar = new fa.l.c.d("NOT_READY");
                } else {
                    if (!(eVar2 instanceof kc.c.e.C0191c)) {
                        throw new j2.a();
                    }
                    kc.c.e.C0191c c0191c = (kc.c.e.C0191c) eVar2;
                    eVar = new fa.l.c.e(new fb.c(c0191c.f9792j), new fb.c(c0191c.f9793k));
                }
                int iA = q.g.a(eVar2.a());
                if (iA == 0) {
                    e0Var = new e0(eVar);
                } else if (iA == 1) {
                    e0Var = new f0(eVar);
                } else {
                    if (iA != 2) {
                        throw new j2.a();
                    }
                    e0Var = new g0(eVar);
                }
                bVar = new fa.k.a0.a(e0Var.y(), e0Var.p(), e0Var.o());
            } else {
                if (!(cVar instanceof kc.c.a ? true : cVar instanceof kc.c.b ? true : cVar instanceof kc.c.C0190c ? true : cVar instanceof kc.c.d ? true : cVar instanceof kc.c.f ? true : cVar instanceof kc.c.h ? true : cVar instanceof kc.c.g)) {
                    throw new j2.a();
                }
                bVar = new fa.k.a0.b(this.f18752q, cVar.f9786h);
            }
            d dVar = this.f18754s;
            dVar.m0(fa.c.a(dVar.f18771n, null, null, bVar, 3));
        }
    }

    @Override // ya.d.AbstractC0326d
    public final void x() {
        Objects.requireNonNull(this.f18754s);
        y(100.0f);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new d0(this.f18754s, this.f18755t, null), 3, null);
    }

    public final void y(float f10) {
        this.f18752q = f10;
        d dVar = this.f18754s;
        fa.c cVar = dVar.f18771n;
        fa.k kVar = cVar.f7136j;
        fa.p pVar = kVar instanceof fa.p ? (fa.p) kVar : null;
        fa.e.a aVar = fa.e.f7141h;
        fa.e eVarW = pVar != null ? pVar.w() : null;
        if (eVarW instanceof fa.e.b) {
            float f11 = ((fa.e.b) eVarW).f7144k;
            if ((f10 >= 1.73f + f11 || f10 >= 90.0f) && f10 > f11 + 0.865f) {
                eVarW = aVar.a(f10, eVarW);
            }
        } else if (!(eVarW instanceof fa.e.d)) {
            if (!(eVarW instanceof fa.e.C0130e)) {
                eVarW = new fa.e.C0130e(f10, 0.0f, 0.0f, System.currentTimeMillis());
            } else if (f10 >= 3.46f) {
                eVarW = aVar.a(f10, eVarW);
            }
        }
        dVar.m0(fa.c.a(cVar, null, new fa.n.d(this.f18755t.f7160a), new fa.k.b0(f10, eVarW), 1));
    }
}
