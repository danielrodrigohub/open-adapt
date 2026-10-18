package p8;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptPairPreferenceFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends s {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final List<u8.g> f13314k0 = new ArrayList();

    @Override // p8.i, androidx.preference.c, androidx.fragment.app.m
    public void S() {
        super.S();
        m6.e.d(t0());
    }

    @Override // p8.i, androidx.preference.c, androidx.fragment.app.m
    public final void T() {
        List<u8.g> listT0 = t0();
        p4.h.j(listT0, "errorDisplays");
        Iterator<T> it = listT0.iterator();
        while (it.hasNext()) {
            ((u8.g) it.next()).a();
        }
        super.T();
    }

    public List<u8.g> t0() {
        return this.f13314k0;
    }
}
