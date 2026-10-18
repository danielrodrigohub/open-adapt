package u8;

import android.view.View;
import o7.x;
import rd.u;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f16051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f16052i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f16053j;

    public /* synthetic */ i(Object obj, Object obj2, int i10) {
        this.f16051h = i10;
        this.f16052i = obj;
        this.f16053j = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16051h) {
            case 0:
                u uVar = (u) this.f16052i;
                q qVar = (q) this.f16053j;
                p4.h.j(uVar, "$userClosed");
                p4.h.j(qVar, "this$0");
                x.f12420a.a("Pressed: Dismissed");
                uVar.f14793h = true;
                androidx.appcompat.app.d dVar = qVar.f16074l;
                if (dVar != null) {
                    dVar.dismiss();
                }
                qVar.f16067e.invoke();
                break;
            default:
                qd.l lVar = (qd.l) this.f16052i;
                androidx.appcompat.app.d dVar2 = (androidx.appcompat.app.d) this.f16053j;
                p4.h.j(lVar, "$positiveAction");
                p4.h.j(dVar2, "$dialog");
                lVar.invoke(dVar2);
                break;
        }
    }
}
