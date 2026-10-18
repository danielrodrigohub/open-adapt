package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: compiled from: FragmentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f2004a;

    public o(p pVar) {
        this.f2004a = pVar;
    }

    @Override // d.b
    public final void a() {
        u<?> uVar = this.f2004a.f2007u.f2034a;
        uVar.f2039k.b(uVar, uVar, null);
        Bundle bundleA = this.f2004a.f663l.f3165b.a("android:support:fragments");
        if (bundleA != null) {
            Parcelable parcelable = bundleA.getParcelable("android:support:fragments");
            u<?> uVar2 = this.f2004a.f2007u.f2034a;
            if (!(uVar2 instanceof androidx.lifecycle.o0)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            uVar2.f2039k.X(parcelable);
        }
    }
}
