package z8;

import android.view.View;
import androidx.recyclerview.widget.e0;
import com.nike.adapt.ui.lighting.lightpacks.LightPackLayoutManager;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;

/* JADX INFO: compiled from: View.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ LightPacksActivity f19414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f19415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ e0 f19416j;

    public k(View view, LightPacksActivity lightPacksActivity, int i10, e0 e0Var) {
        this.f19414h = lightPacksActivity;
        this.f19415i = i10;
        this.f19416j = e0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LightPackLayoutManager lightPackLayoutManager = this.f19414h.P;
        if (lightPackLayoutManager == null) {
            p4.h.C("lightPackLayoutManager");
            throw null;
        }
        View viewU = lightPackLayoutManager.u(this.f19415i);
        if (viewU == null) {
            return;
        }
        e0 e0Var = this.f19416j;
        LightPackLayoutManager lightPackLayoutManager2 = this.f19414h.P;
        if (lightPackLayoutManager2 == null) {
            p4.h.C("lightPackLayoutManager");
            throw null;
        }
        int[] iArrB = e0Var.b(lightPackLayoutManager2, viewU);
        LightPackLayoutManager lightPackLayoutManager3 = this.f19414h.P;
        if (lightPackLayoutManager3 != null) {
            lightPackLayoutManager3.k1(this.f19415i, -iArrB[0]);
        } else {
            p4.h.C("lightPackLayoutManager");
            throw null;
        }
    }
}
