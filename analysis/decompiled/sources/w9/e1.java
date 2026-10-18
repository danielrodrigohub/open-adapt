package w9;

import android.os.Parcelable;
import v9.z6;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e1 implements v9.p0<ka.b, ka.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f17274a;

    public e1(x xVar) {
        this.f17274a = xVar;
    }

    @Override // v9.p0
    public final void a(Parcelable parcelable) {
        ka.b bVar = (ka.b) parcelable;
        p4.h.j(bVar, "result");
        if (p4.h.c(this.f17274a.f17392l.f6668l.f6611i, bVar.f9756h.f9759j)) {
            v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", androidx.recyclerview.widget.d.c("right after scan BEFORE changing address ", this.f17274a.f17392l.f6668l.f6613k), null, 4, null);
            x xVar = this.f17274a;
            ea.m mVar = xVar.f17392l;
            xVar.G0(ea.m.a(mVar, null, false, null, ea.b.a(mVar.f6668l, bVar.f9756h.f9758i, null, 0, true, 55), null, null, null, System.currentTimeMillis(), false, 6127));
            ya.a aVar = ya.a.f18735a;
            ea.m mVar2 = this.f17274a.f17392l;
            aVar.b(mVar2.f6664h, mVar2.f6668l);
            x xVar2 = this.f17274a;
            xVar2.updatePair(xVar2.f17392l);
            ya.b bVarB0 = this.f17274a.B0();
            v9.a.C0295a c0295a = v9.a.f16441i;
            bVarB0.s(v9.a.f16444l);
            v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesController", androidx.recyclerview.widget.d.c("right after scan and AFTER changing address ", this.f17274a.f17392l.f6668l.f6613k), null, 4, null);
            this.f17274a.C0().c(x.p0(this.f17274a));
        }
    }

    @Override // v9.p0
    public final void b(v9.m mVar) {
        ka.a aVar = (ka.a) mVar;
        p4.h.j(aVar, "error");
        this.f17274a.E.b(new z6(this.f17274a.f17392l.f6668l.f6612j, aVar.f16708h, aVar));
    }
}
