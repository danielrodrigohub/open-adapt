package v9;

import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitPairedDevicesListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 implements p0<ea.p, ea.o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f16501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public qd.l<? super ea.x, fd.o> f16502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public qd.l<? super ea.o, fd.o> f16503c;

    public d0(boolean z10) {
        this.f16501a = z10 ? new Handler(Looper.getMainLooper()) : null;
    }

    @Override // v9.p0
    public final void a(Parcelable parcelable) {
        ea.p pVar = (ea.p) parcelable;
        p4.h.j(pVar, "result");
        if (!(pVar instanceof ea.x)) {
            if (pVar instanceof ea.y) {
                return;
            }
            boolean z10 = pVar instanceof ea.z;
        } else {
            qd.l<? super ea.x, fd.o> lVar = this.f16502b;
            if (lVar != null) {
                c(new c0(lVar, pVar));
            }
        }
    }

    @Override // v9.p0
    public final void b(m mVar) {
        ea.o oVar = (ea.o) mVar;
        p4.h.j(oVar, "error");
        qd.l<? super ea.o, fd.o> lVar = this.f16503c;
        if (lVar != null) {
            c(new b0(lVar, oVar));
        }
    }

    public final void c(qd.a<fd.o> aVar) {
        Handler handler = this.f16501a;
        if (handler != null) {
            handler.post(new a0(aVar, 0));
        } else {
            aVar.invoke();
        }
    }
}
