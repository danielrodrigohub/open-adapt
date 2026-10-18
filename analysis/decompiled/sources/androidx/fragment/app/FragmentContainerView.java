package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.fragment.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<View> f1809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<View> f1810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f1811j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1812k;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        String str;
        super(context, attributeSet, 0);
        this.f1812k = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute != null && !isInEditMode()) {
                throw new UnsupportedOperationException(a0.b.a("FragmentContainerView must be within a FragmentActivity to use ", str, "=\"", classAttribute, "\""));
            }
        }
    }

    public final void a(View view) {
        ArrayList<View> arrayList = this.f1810i;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f1809h == null) {
            this.f1809h = new ArrayList<>();
        }
        this.f1809h.add(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof m ? (m) tag : null) != null) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof m ? (m) tag : null) != null) {
            return super.addViewInLayout(view, i10, layoutParams, z10);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        j0.l0 l0VarL = j0.l0.l(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f1811j;
        j0.l0 l0VarL2 = onApplyWindowInsetsListener != null ? j0.l0.l(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets), null) : j0.a0.k(this, l0VarL);
        if (!l0VarL2.h()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                j0.a0.c(getChildAt(i10), l0VarL2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f1812k && this.f1809h != null) {
            for (int i10 = 0; i10 < this.f1809h.size(); i10++) {
                super.drawChild(canvas, this.f1809h.get(i10), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        ArrayList<View> arrayList;
        if (!this.f1812k || (arrayList = this.f1809h) == null || arrayList.size() <= 0 || !this.f1809h.contains(view)) {
            return super.drawChild(canvas, view, j10);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f1810i;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f1809h;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f1812k = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z10) {
        if (z10) {
            a(view);
        }
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i10) {
        a(getChildAt(i10));
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViewsInLayout(i10, i11);
    }

    public void setDrawDisappearingViewsLast(boolean z10) {
        this.f1812k = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f1811j = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f1810i == null) {
                this.f1810i = new ArrayList<>();
            }
            this.f1810i.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, x xVar) {
        View view;
        super(context, attributeSet);
        this.f1812k = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id2 = getId();
        m mVarE = xVar.E(id2);
        if (classAttribute != null && mVarE == null) {
            if (id2 <= 0) {
                throw new IllegalStateException(a0.d.c("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? androidx.recyclerview.widget.d.c(" with tag ", string) : ""));
            }
            m mVarA = xVar.H().a(context.getClassLoader(), classAttribute);
            mVarA.N();
            a aVar = new a(xVar);
            aVar.f1903p = true;
            mVarA.L = this;
            aVar.e(getId(), mVarA, string, 1);
            aVar.d();
        }
        for (e0 e0Var : (ArrayList) xVar.f2047c.f()) {
            m mVar = e0Var.f1874c;
            if (mVar.E == getId() && (view = mVar.M) != null && view.getParent() == null) {
                mVar.L = this;
                e0Var.b();
            }
        }
    }
}
