package v9;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: AdaptKitModeListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s implements p0<ea.l, ea.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f16810a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public qd.l<? super ea.r, fd.o> f16811b;

    /* JADX INFO: compiled from: AdaptKitModeListener.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ qd.l<ea.r, fd.o> f16812h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ea.l f16813i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(qd.l<? super ea.r, fd.o> lVar, ea.l lVar2) {
            super(0);
            this.f16812h = lVar;
            this.f16813i = lVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f16812h.invoke((ea.r) this.f16813i);
            return fd.o.f7408a;
        }
    }

    public s() {
        v9.a.C0295a c0295a = v9.a.f16441i;
        v9.a aVar = v9.a.f16442j;
    }

    @Override // v9.p0
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void b(ea.k kVar) {
        p4.h.j(kVar, "error");
    }

    @Override // v9.p0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void a(ea.l lVar) {
        p4.h.j(lVar, "result");
        if (!(lVar instanceof ea.r)) {
            boolean z10 = lVar instanceof ea.q;
            return;
        }
        qd.l<? super ea.r, fd.o> lVar2 = this.f16811b;
        if (lVar2 != null) {
            e(new a(lVar2, lVar));
        }
    }

    public final void e(qd.a<fd.o> aVar) {
        Handler handler = this.f16810a;
        if (handler != null) {
            handler.post(new w8.j(aVar, 2));
        } else {
            ((a) aVar).invoke();
        }
    }
}
