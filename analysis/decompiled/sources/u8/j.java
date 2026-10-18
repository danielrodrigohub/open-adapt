package u8;

import android.view.View;
import i9.y;
import o7.x;
import rd.u;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f16054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f16055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f16056j;

    public /* synthetic */ j(Object obj, Object obj2, int i10) {
        this.f16054h = i10;
        this.f16055i = obj;
        this.f16056j = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16054h) {
            case 0:
                u uVar = (u) this.f16055i;
                q qVar = (q) this.f16056j;
                p4.h.j(uVar, "$userClosed");
                p4.h.j(qVar, "this$0");
                x.f12420a.a("Pressed: Try Again");
                uVar.f14793h = true;
                qVar.f16068f.invoke();
                androidx.appcompat.app.d dVar = qVar.f16074l;
                if (dVar != null) {
                    dVar.dismiss();
                    return;
                }
                return;
            case 1:
                y yVar = (y) this.f16055i;
                s9.r rVar = (s9.r) this.f16056j;
                y.b bVar = y.f8952h0;
                p4.h.j(yVar, "this$0");
                p4.h.j(rVar, "$shoeType");
                if (yVar.f8956e0) {
                    return;
                }
                x.f12420a.a("Choose Your Shoes - Pressed: Next");
                String strF = yVar.s0().f();
                if (strF != null) {
                    o8.d dVar2 = yVar.d0;
                    if (dVar2 == null) {
                        p4.h.C("stateListener");
                        throw null;
                    }
                    dVar2.m(strF);
                }
                yVar.q0(rVar);
                return;
            default:
                qd.l lVar = (qd.l) this.f16055i;
                androidx.appcompat.app.d dVar3 = (androidx.appcompat.app.d) this.f16056j;
                p4.h.j(lVar, "$action");
                p4.h.j(dVar3, "$dialog");
                lVar.invoke(dVar3);
                return;
        }
    }
}
