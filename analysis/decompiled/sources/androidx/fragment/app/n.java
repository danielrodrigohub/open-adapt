package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: compiled from: FragmentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements b1.b.InterfaceC0051b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f2001a;

    public n(p pVar) {
        this.f2001a = pVar;
    }

    @Override // b1.b.InterfaceC0051b
    public final Bundle a() {
        Bundle bundle = new Bundle();
        while (p.e0(this.f2001a.d0())) {
        }
        this.f2001a.f2008v.f(androidx.lifecycle.i.b.ON_STOP);
        Parcelable parcelableY = this.f2001a.f2007u.f2034a.f2039k.Y();
        if (parcelableY != null) {
            bundle.putParcelable("android:support:fragments", parcelableY);
        }
        return bundle;
    }
}
