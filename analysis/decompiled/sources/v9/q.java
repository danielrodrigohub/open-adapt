package v9;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: AdaptKitFitListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q implements fb.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f16772a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public qd.l<? super ba.v, fd.o> f16773b;

    /* JADX INFO: compiled from: AdaptKitFitListener.kt */
    public static final class a extends rd.o implements qd.l<qd.l<? super ba.v, ? extends fd.o>, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ba.v f16774h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ba.v vVar) {
            super(1);
            this.f16774h = vVar;
        }

        @Override // qd.l
        public final fd.o invoke(qd.l<? super ba.v, ? extends fd.o> lVar) {
            qd.l<? super ba.v, ? extends fd.o> lVar2 = lVar;
            p4.h.j(lVar2, "$this$post");
            lVar2.invoke(this.f16774h);
            return fd.o.f7408a;
        }
    }

    @Override // fb.d
    public final void a(ba.v vVar) {
        p4.h.j(vVar, "fitCalibrateState");
        qd.l<? super ba.v, fd.o> lVar = this.f16773b;
        if (lVar != null) {
            Handler handler = this.f16772a;
            a aVar = new a(vVar);
            if (handler != null) {
                handler.post(new aa.b(aVar, lVar));
            } else {
                aVar.invoke(lVar);
            }
        }
    }
}
