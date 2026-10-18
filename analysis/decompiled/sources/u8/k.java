package u8;

import android.view.View;
import h9.g0;
import i9.y;
import o7.x;
import rd.u;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f16057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f16058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f16059j;

    public /* synthetic */ k(Object obj, Object obj2, int i10) {
        this.f16057h = i10;
        this.f16058i = obj;
        this.f16059j = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16057h) {
            case 0:
                u uVar = (u) this.f16058i;
                q qVar = (q) this.f16059j;
                p4.h.j(uVar, "$userClosed");
                p4.h.j(qVar, "this$0");
                x.f12420a.a("Pressed: Get Help");
                uVar.f14793h = true;
                androidx.appcompat.app.d dVar = qVar.f16074l;
                if (dVar != null) {
                    dVar.dismiss();
                }
                new g0(g0.f8326f.a(), false).e(qVar.f16066d);
                return;
            case 1:
                y yVar = (y) this.f16058i;
                s9.r rVar = (s9.r) this.f16059j;
                y.b bVar = y.f8952h0;
                p4.h.j(yVar, "this$0");
                p4.h.j(rVar, "$shoeType");
                x.f12420a.a("Choose Your Shoes - Pressed: Next");
                yVar.s0().e(rVar);
                yVar.f8957f0 = rVar;
                yVar.s0().j();
                s9.p pVar = s9.p.f15222a;
                String strB = pVar.b(rVar);
                if (strB != null) {
                    o8.d dVar2 = yVar.d0;
                    if (dVar2 == null) {
                        p4.h.C("stateListener");
                        throw null;
                    }
                    dVar2.m(strB);
                }
                yVar.s0().a(pVar.b(rVar));
                yVar.q0(rVar);
                return;
            default:
                qd.l lVar = (qd.l) this.f16058i;
                androidx.appcompat.app.d dVar3 = (androidx.appcompat.app.d) this.f16059j;
                p4.h.j(lVar, "$neutralAction");
                p4.h.j(dVar3, "$dialog");
                lVar.invoke(dVar3);
                return;
        }
    }
}
