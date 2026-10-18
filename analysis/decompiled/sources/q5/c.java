package q5;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import j0.a0;
import j0.g0;
import j0.l0;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: HeaderScrollingViewBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends d<View> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f13635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f13636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13638f;

    public c() {
        this.f13635c = new Rect();
        this.f13636d = new Rect();
        this.f13637e = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        View viewV;
        l0 lastWindowInsets;
        int i13 = view.getLayoutParams().height;
        if ((i13 != -1 && i13 != -2) || (viewV = v(coordinatorLayout.e(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size > 0) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.d.b(viewV) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.c() + lastWindowInsets.f();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.t(view, i10, i11, View.MeasureSpec.makeMeasureSpec((x(viewV) + size) - viewV.getMeasuredHeight(), i13 == -1 ? 1073741824 : Integer.MIN_VALUE));
        return true;
    }

    @Override // q5.d
    public final void t(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View viewV = v(coordinatorLayout.e(view));
        int iG = 0;
        if (viewV == null) {
            coordinatorLayout.s(view, i10);
            this.f13637e = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.f13635c;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewV.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((viewV.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        l0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.d.b(coordinatorLayout) && !a0.d.b(view)) {
                rect.left = lastWindowInsets.d() + rect.left;
                rect.right -= lastWindowInsets.e();
            }
        }
        Rect rect2 = this.f13636d;
        int i11 = fVar.f1746c;
        if (i11 == 0) {
            i11 = 8388659;
        }
        j0.f.b(i11, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        if (this.f13638f != 0) {
            float fW = w(viewV);
            int i12 = this.f13638f;
            iG = o.g((int) (fW * i12), 0, i12);
        }
        view.layout(rect2.left, rect2.top - iG, rect2.right, rect2.bottom - iG);
        this.f13637e = rect2.top - viewV.getBottom();
    }

    public abstract View v(List<View> list);

    public float w(View view) {
        return 1.0f;
    }

    public int x(View view) {
        return view.getMeasuredHeight();
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13635c = new Rect();
        this.f13636d = new Rect();
        this.f13637e = 0;
    }
}
