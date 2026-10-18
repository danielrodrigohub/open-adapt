package q5;

import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import j0.a0;
import j0.g0;
import j0.l0;
import j0.q;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppBarLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f13624a;

    public a(AppBarLayout appBarLayout) {
        this.f13624a = appBarLayout;
    }

    @Override // j0.q
    public final l0 a(View view, l0 l0Var) {
        AppBarLayout appBarLayout = this.f13624a;
        Objects.requireNonNull(appBarLayout);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        l0 l0Var2 = a0.d.b(appBarLayout) ? l0Var : null;
        if (!i0.c.a(appBarLayout.f4955n, l0Var2)) {
            appBarLayout.f4955n = l0Var2;
            appBarLayout.setWillNotDraw(!(appBarLayout.f4965x != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return l0Var;
    }
}
