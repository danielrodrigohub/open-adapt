package w9;

import android.os.Handler;
import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c1 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v9.o f17263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ fa.d f17264i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(v9.o oVar, fa.d dVar) {
        super(0);
        this.f17263h = oVar;
        this.f17264i = dVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        v9.o oVar = this.f17263h;
        fa.d dVar = this.f17264i;
        Objects.requireNonNull(oVar);
        p4.h.j(dVar, "states");
        qd.l<? super fa.d, fd.o> lVar = oVar.f16742b;
        if (lVar != null) {
            Handler handler = oVar.f16741a;
            if (handler != null) {
                handler.post(new n5.m(lVar, dVar, 1));
            } else {
                lVar.invoke(dVar);
            }
        }
        return fd.o.f7408a;
    }
}
