package p4;

import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class z implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f13247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f13248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f13249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f13250k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Object f13251l;

    public /* synthetic */ z(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f13247h = i10;
        this.f13248i = obj;
        this.f13249j = obj2;
        this.f13250k = obj3;
        this.f13251l = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x8.q0 q0Var;
        switch (this.f13247h) {
            case 0:
                e0.a aVar = (e0.a) this.f13248i;
                ((e0) this.f13249j).O(aVar.f12968a, aVar.f12969b, (r) this.f13250k, (u) this.f13251l);
                return;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f13248i;
                DeviceControllerResult deviceControllerResult = (DeviceControllerResult) this.f13249j;
                x8.q0 q0Var2 = (x8.q0) this.f13250k;
                f8.b bVar = (f8.b) this.f13251l;
                int i10 = ShoeControllerActivity.f5872s0;
                h.j(shoeControllerActivity, "this$0");
                h.j(deviceControllerResult, "$result");
                h.j(q0Var2, "$shoeControllerUiHelper");
                h.j(bVar, "$state");
                GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
                shoeControllerActivity.f5885n0.d(false, getLacingPercentResult.getShoe());
                q0Var2.k(getLacingPercentResult.getRelativePercent(), true);
                Shoe shoe = getLacingPercentResult.getShoe();
                o7.x xVar = o7.x.f12420a;
                o7.x.f12420a.h("ShoeControllerActivity", "updateControllerBasedOnState\t" + shoe.name() + "\t" + bVar, (120 & 4) != 0 ? o7.u.DEBUG : o7.u.DEBUG, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : true);
                if (shoe.isRight()) {
                    q0Var = shoeControllerActivity.M;
                    if (q0Var == null) {
                        h.C("rightShoeControllerUiHelper");
                        throw null;
                    }
                } else {
                    q0Var = shoeControllerActivity.N;
                    if (q0Var == null) {
                        h.C("leftShoeControllerUiHelper");
                        throw null;
                    }
                }
                if (bVar instanceof x8.i0) {
                    if (shoe.isRight()) {
                        shoeControllerActivity.A0(shoeControllerActivity.s0(Shoe.RIGHT));
                    } else {
                        shoeControllerActivity.A0(shoeControllerActivity.s0(Shoe.LEFT));
                    }
                    shoeControllerActivity.C0();
                    if (shoe.isRight()) {
                        q0Var.t(InMemoryCache.INSTANCE.getRightDevice());
                    } else {
                        q0Var.t(InMemoryCache.INSTANCE.getLeftDevice());
                    }
                    shoeControllerActivity.t0(false);
                    return;
                }
                return;
        }
    }
}
