package y0;

import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.lighting.LightingEffectsActivity;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import com.nike.adapt.ui.util.AdjustLacingActivity;
import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
import m9.p0;
import o3.r0;
import p4.i0;
import q7.o0;
import x8.n0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class s implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18274i;

    public /* synthetic */ s(Object obj, int i10) {
        this.f18273h = i10;
        this.f18274i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18273h) {
            case 0:
                androidx.room.c cVar = (androidx.room.c) this.f18274i;
                synchronized (cVar) {
                    cVar.f2859f = false;
                    androidx.room.c.b bVar = cVar.f2861h;
                    synchronized (bVar) {
                        Arrays.fill(bVar.f2867b, false);
                        bVar.f2869d = true;
                        break;
                    }
                }
                return;
            case 1:
                r0 r0Var = (r0) this.f18274i;
                o3.b.a aVarQ0 = r0Var.q0();
                r0Var.x0(aVarQ0, 1028, new n3.w(aVarQ0, 2));
                r0Var.f12181m.c();
                return;
            case 2:
                ((i0) this.f18274i).M = true;
                return;
            case 3:
                u4.n nVar = (u4.n) this.f18274i;
                Set<Integer> set = u4.n.f15811f0;
                nVar.D();
                return;
            case 4:
                TextView textView = (TextView) this.f18274i;
                int i10 = LightingEffectsActivity.f5764k0;
                p4.h.j(textView, "$this_apply");
                textView.setTextColor(androidx.lifecycle.o.o(R.color.white));
                return;
            case 5:
                i9.g gVar = (i9.g) this.f18274i;
                i9.g.a aVar = i9.g.K0;
                p4.h.j(gVar, "this$0");
                x8.g0 g0Var = gVar.f8897p0;
                if (g0Var == null) {
                    p4.h.C("leftShoeScaleControllerUiHelper");
                    throw null;
                }
                g0Var.d(InMemoryCache.INSTANCE.getLeftDevice().getMaxTightness());
                o0 o0Var = gVar.f8890i0;
                if (o0Var != null) {
                    o0Var.f13953g.f13927a.f13919b.post(new androidx.activity.g(gVar, 4));
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            case 6:
                SupportDeleteAccountActivity supportDeleteAccountActivity = (SupportDeleteAccountActivity) this.f18274i;
                int i11 = SupportDeleteAccountActivity.E;
                Objects.requireNonNull(supportDeleteAccountActivity);
                TrackManager.INSTANCE.settingsDeleteAccountServiceErrorPresented();
                s9.y.f15252a.j(supportDeleteAccountActivity, R.string.adapt_support_delete_account_service_error_title, R.string.adapt_support_delete_account_service_error_description, androidx.lifecycle.o.r(R.string.adapt_support_delete_account_service_error_title), p0.f10906h).setCancelable(true);
                return;
            default:
                AdjustLacingActivity adjustLacingActivity = (AdjustLacingActivity) this.f18274i;
                int i12 = AdjustLacingActivity.Q;
                p4.h.j(adjustLacingActivity, "this$0");
                n0 n0Var = adjustLacingActivity.L;
                if (n0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                n0Var.p(false);
                n0 n0Var2 = adjustLacingActivity.L;
                if (n0Var2 != null) {
                    n0Var2.e();
                    return;
                } else {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
        }
    }
}
