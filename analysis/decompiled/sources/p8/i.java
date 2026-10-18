package p8;

import android.os.Bundle;

/* JADX INFO: compiled from: BreadCrumbPreferenceFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class i extends androidx.preference.c {
    @Override // androidx.preference.c, androidx.fragment.app.m
    public void H(Bundle bundle) {
        super.H(bundle);
        a1.d.d(s0(), " onCreate()", o7.x.f12420a);
    }

    @Override // androidx.fragment.app.m
    public final void J() {
        a1.d.d(s0(), " onDestroy()", o7.x.f12420a);
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public void O() {
        a1.d.d(s0(), " onPause()", o7.x.f12420a);
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public void Q() {
        this.K = true;
        a1.d.d(s0(), " onResume()", o7.x.f12420a);
    }

    @Override // androidx.preference.c, androidx.fragment.app.m
    public void S() {
        this.K = true;
        androidx.preference.f fVar = this.f2320b0;
        fVar.f2352i = this;
        fVar.f2353j = this;
        a1.d.d(s0(), " onStart()", o7.x.f12420a);
    }

    @Override // androidx.preference.c, androidx.fragment.app.m
    public void T() {
        a1.d.d(s0(), " onStop()", o7.x.f12420a);
        this.K = true;
        androidx.preference.f fVar = this.f2320b0;
        fVar.f2352i = null;
        fVar.f2353j = null;
    }

    public abstract String s0();
}
