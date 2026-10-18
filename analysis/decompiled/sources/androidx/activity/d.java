package androidx.activity;

import android.widget.TextView;
import androidx.lifecycle.o;
import com.nike.adapt.ui.lighting.LightingEffectsActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import java.util.Collections;
import u4.n;
import y0.d0;
import y0.w;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f694i;

    public /* synthetic */ d(Object obj, int i10) {
        this.f693h = i10;
        this.f694i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f693h) {
            case 0:
                ((ComponentActivity) this.f694i).invalidateOptionsMenu();
                break;
            case 1:
                d0.d dVar = ((w) this.f694i).f18283h;
                Collections.emptyList();
                dVar.a();
                break;
            case 2:
                n nVar = (n) this.f694i;
                nVar.J = true;
                nVar.D();
                break;
            case 3:
                com.google.android.exoplayer2.ui.d dVar2 = (com.google.android.exoplayer2.ui.d) this.f694i;
                int i10 = com.google.android.exoplayer2.ui.d.f4897m0;
                dVar2.m();
                break;
            case 4:
                TextView textView = (TextView) this.f694i;
                int i11 = LightingEffectsActivity.f5764k0;
                p4.h.j(textView, "$this_apply");
                textView.setTextColor(o.o(com.nike.adapt.R.color.text_color_black));
                break;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f694i;
                int i12 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                shoeControllerActivity.u0().s(false);
                break;
        }
    }
}
