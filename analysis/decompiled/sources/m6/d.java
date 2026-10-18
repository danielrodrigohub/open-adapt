package m6;

import androidx.lifecycle.k0;

/* JADX INFO: compiled from: CutCornerTreatment.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends k0 {
    @Override // androidx.lifecycle.k0
    public final void h(k kVar, float f10, float f11) {
        kVar.f(f11 * f10, 180.0f, 90.0f);
        double d10 = f11;
        double d11 = f10;
        kVar.e((float) (Math.sin(Math.toRadians(90.0f)) * d10 * d11), (float) (Math.sin(Math.toRadians(0.0f)) * d10 * d11));
    }
}
