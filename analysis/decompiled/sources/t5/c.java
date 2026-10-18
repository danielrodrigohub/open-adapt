package t5;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import k0.j;

/* JADX INFO: compiled from: BottomSheetBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f15530b;

    public c(BottomSheetBehavior bottomSheetBehavior, int i10) {
        this.f15530b = bottomSheetBehavior;
        this.f15529a = i10;
    }

    @Override // k0.j
    public final boolean a(View view) {
        this.f15530b.B(this.f15529a);
        return true;
    }
}
