package y8;

import android.view.View;
import androidx.fragment.app.c0;
import androidx.fragment.app.x;
import com.nike.adapt.adk.model.ShoeColor;

/* JADX INFO: compiled from: LightNavigationFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends c0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f18687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f18688h;

    public c(x xVar) {
        super(xVar);
    }

    @Override // j1.a
    public final void c() {
    }

    public final void k(ShoeColor shoeColor) {
        p4.h.j(shoeColor, "shoeColor");
        if (shoeColor.isDuo()) {
            d dVar = this.f18688h;
            if (dVar != null) {
                View viewFindViewById = dVar.d0().findViewById(k.f18716a.a(shoeColor));
                p4.h.i(viewFindViewById, "it.requireActivity().fin…ingIconViewId(shoeColor))");
                dVar.r0(viewFindViewById);
                return;
            }
            return;
        }
        d dVar2 = this.f18687g;
        if (dVar2 != null) {
            View viewFindViewById2 = dVar2.d0().findViewById(k.f18716a.a(shoeColor));
            p4.h.i(viewFindViewById2, "it.requireActivity().fin…ingIconViewId(shoeColor))");
            dVar2.r0(viewFindViewById2);
        }
    }
}
