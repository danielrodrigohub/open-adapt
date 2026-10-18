package v9;

import android.os.Handler;

/* JADX INFO: compiled from: AdaptKitPairingListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k0 implements p0<ha.b, ha.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16665a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final fd.d f16666b = androidx.lifecycle.o.w(1, new j0(this));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public qd.l<? super ha.u, fd.o> f16667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public qd.l<? super ha.r, fd.o> f16668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public qd.l<? super ha.s, fd.o> f16669e;

    public final Handler c() {
        return (Handler) this.f16666b.getValue();
    }

    @Override // v9.p0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void b(ha.a aVar) {
        qd.l<? super ha.s, fd.o> lVar;
        p4.h.j(aVar, "error");
        if (aVar instanceof ha.r) {
            qd.l<? super ha.r, fd.o> lVar2 = this.f16668d;
            if (lVar2 != null) {
                Handler handlerC = c();
                if (handlerC != null) {
                    handlerC.post(new y0.u(lVar2, aVar, 5));
                    return;
                } else {
                    lVar2.invoke(aVar);
                    return;
                }
            }
            return;
        }
        if (!(aVar instanceof ha.s) || (lVar = this.f16669e) == null) {
            return;
        }
        Handler handlerC2 = c();
        if (handlerC2 != null) {
            handlerC2.post(new n5.m(lVar, aVar, 2));
        } else {
            lVar.invoke(aVar);
        }
    }

    @Override // v9.p0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final void a(ha.b bVar) {
        p4.h.j(bVar, "result");
        qd.l<? super ha.u, fd.o> lVar = this.f16667c;
        if (lVar != null) {
            Handler handlerC = c();
            if (handlerC != null) {
                handlerC.post(new p3.h(lVar, bVar, 2));
            } else {
                lVar.invoke(bVar.f8374h);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k0) && this.f16665a == ((k0) obj).f16665a;
    }

    public final int hashCode() {
        boolean z10 = this.f16665a;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "AdaptKitPairingListener(postToMainThread=" + this.f16665a + ")";
    }
}
