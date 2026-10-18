package j1;

import android.graphics.Rect;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import j0.a0;
import j0.l0;
import j0.q;

/* JADX INFO: compiled from: ViewPager.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f9240a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager f9241b;

    public b(ViewPager viewPager) {
        this.f9241b = viewPager;
    }

    @Override // j0.q
    public final l0 a(View view, l0 l0Var) {
        l0 l0VarK = a0.k(view, l0Var);
        if (l0VarK.h()) {
            return l0VarK;
        }
        Rect rect = this.f9240a;
        rect.left = l0VarK.d();
        rect.top = l0VarK.f();
        rect.right = l0VarK.e();
        rect.bottom = l0VarK.c();
        int childCount = this.f9241b.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            l0 l0VarC = a0.c(this.f9241b.getChildAt(i10), l0VarK);
            rect.left = Math.min(l0VarC.d(), rect.left);
            rect.top = Math.min(l0VarC.f(), rect.top);
            rect.right = Math.min(l0VarC.e(), rect.right);
            rect.bottom = Math.min(l0VarC.c(), rect.bottom);
        }
        return l0VarK.i(rect.left, rect.top, rect.right, rect.bottom);
    }
}
