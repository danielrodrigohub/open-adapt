package p4;

import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.ui.util.AdjustLacingActivity;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f12925j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f12926k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Object f12927l;

    public /* synthetic */ a0(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f12923h = i10;
        this.f12924i = obj;
        this.f12925j = obj2;
        this.f12926k = obj3;
        this.f12927l = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x8.q0 q0Var;
        switch (this.f12923h) {
            case 0:
                ((e0) this.f12925j).M(((e0.a) this.f12924i).f12968a, (x.b) this.f12926k, (u) this.f12927l);
                return;
            default:
                AdjustLacingActivity adjustLacingActivity = (AdjustLacingActivity) this.f12924i;
                DeviceControllerResult deviceControllerResult = (DeviceControllerResult) this.f12925j;
                x8.q0 q0Var2 = (x8.q0) this.f12926k;
                f8.b bVar = (f8.b) this.f12927l;
                int i10 = AdjustLacingActivity.Q;
                h.j(adjustLacingActivity, "this$0");
                h.j(deviceControllerResult, "$result");
                h.j(q0Var2, "$shoeControllerUiHelper");
                h.j(bVar, "$state");
                GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
                adjustLacingActivity.P.d(false, getLacingPercentResult.getShoe());
                adjustLacingActivity.t0(adjustLacingActivity.P.c());
                q0Var2.k(getLacingPercentResult.getRelativePercent(), false);
                Shoe shoe = getLacingPercentResult.getShoe();
                if (bVar instanceof x8.i0) {
                    adjustLacingActivity.s0(adjustLacingActivity.p0(shoe));
                    adjustLacingActivity.u0(shoe);
                    if (shoe.isRight()) {
                        q0Var = adjustLacingActivity.L;
                        if (q0Var == null) {
                            h.C("rightShoeControllerUiHelper");
                            throw null;
                        }
                    } else {
                        q0Var = adjustLacingActivity.M;
                        if (q0Var == null) {
                            h.C("leftShoeControllerUiHelper");
                            throw null;
                        }
                    }
                    q0Var.t(shoe.isRight() ? InMemoryCache.INSTANCE.getRightDevice() : InMemoryCache.INSTANCE.getLeftDevice());
                    return;
                }
                return;
        }
    }
}
