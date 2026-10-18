package o9;

import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import java.util.Locale;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import n3.x1;
import x8.d0;
import x8.f0;
import x8.n0;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12515h;

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12516a;

        static {
            int[] iArr = new int[q.g.b(3).length];
            iArr[1] = 1;
            f12516a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(ShoeControllerActivity shoeControllerActivity) {
        super(0);
        this.f12515h = shoeControllerActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        ShoeControllerActivity shoeControllerActivity = this.f12515h;
        int i10 = ShoeControllerActivity.f5872s0;
        int iV = shoeControllerActivity.u0().v();
        boolean zC = p4.h.c(Locale.getDefault(), Locale.US);
        if (iV >= 0 && zC) {
            h8.a aVarU0 = shoeControllerActivity.u0();
            aVarU0.d(aVarU0.v() + 1);
            if (aVarU0.v() == 4) {
                TrackManager.INSTANCE.googleVoiceInfoPrompt();
                h9.r.f8353c.e(shoeControllerActivity);
            }
        }
        g9.k kVar = g9.k.f7894a;
        if (g9.k.d()) {
            TrackManager.INSTANCE.autoLaceUnlacedToastShown();
            this.f12515h.v0().f13761c.a();
        }
        ImageView imageView = this.f12515h.v0().D;
        p4.h.i(imageView, "binding.unlaceOrLaceUpImageView");
        ShoeControllerActivity shoeControllerActivity2 = this.f12515h;
        d0 d0Var = shoeControllerActivity2.J;
        int iV2 = d0Var != null ? androidx.lifecycle.o.v(d0Var, shoeControllerActivity2.K) : 0;
        if ((iV2 == 0 ? -1 : a.f12516a[q.g.a(iV2)]) == 1) {
            n0 n0Var = this.f12515h.M;
            if (n0Var == null) {
                p4.h.C("rightShoeControllerUiHelper");
                throw null;
            }
            d0 d0Var2 = d0.MIN;
            n0Var.m(d0Var2);
            f0 f0Var = this.f12515h.N;
            if (f0Var == null) {
                p4.h.C("leftShoeControllerUiHelper");
                throw null;
            }
            f0Var.m(d0Var2);
            ShoeControllerActivity shoeControllerActivity3 = this.f12515h;
            s sVar = shoeControllerActivity3.f5881j0;
            if (sVar != null) {
                x1 x1Var = shoeControllerActivity3.f5880i0;
                sVar.b(x1Var, false);
                sVar.b(x1Var, true);
            }
            ShoeControllerActivity shoeControllerActivity4 = this.f12515h;
            BuildersKt__Builders_commonKt.launch$default(shoeControllerActivity4.A, null, null, new l(shoeControllerActivity4, null), 3, null);
            imageView.setImageResource(R.drawable.unlacing_animation);
            imageView.setTag(Integer.valueOf(R.drawable.unlacing_animation));
            Drawable drawable = imageView.getDrawable();
            p4.h.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            animationDrawable.setOneShot(true);
            animationDrawable.start();
        }
        return fd.o.f7408a;
    }
}
