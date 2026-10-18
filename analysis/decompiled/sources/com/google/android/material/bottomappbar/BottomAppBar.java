package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.google.android.material.R;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import g6.s;
import j0.a0;
import j0.g0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import s5.b;
import s5.c;
import s5.d;
import s5.f;
import s5.g;

/* JADX INFO: loaded from: classes.dex */
public final class BottomAppBar extends Toolbar implements CoordinatorLayout.b {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final /* synthetic */ int f5022k0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Integer f5023b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Animator f5024c0;
    public Animator d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f5025e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5026f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f5027g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5028h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f5029i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Behavior f5030j0;

    public static class a extends p0.a {
        public static final Parcelable.Creator<a> CREATOR = new C0086a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f5036j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f5037k;

        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$a$a, reason: collision with other inner class name */
        public class C0086a implements Parcelable.ClassLoaderCreator<a> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new a[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new a(parcel, null);
            }
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f5036j);
            parcel.writeInt(this.f5037k ? 1 : 0);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5036j = parcel.readInt();
            this.f5037k = parcel.readInt() != 0;
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return 0;
    }

    private float getFabTranslationX() {
        return D(this.f5025e0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().f15145k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return 0;
    }

    private g getTopEdgeTreatment() {
        throw null;
    }

    public final FloatingActionButton A() {
        View viewB = B();
        if (viewB instanceof FloatingActionButton) {
            return (FloatingActionButton) viewB;
        }
        return null;
    }

    public final View B() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : (ArrayList) ((CoordinatorLayout) getParent()).f(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public final int C(ActionMenuView actionMenuView, int i10, boolean z10) {
        if (i10 != 1 || !z10) {
            return 0;
        }
        boolean zB = s.b(this);
        int measuredWidth = zB ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.e) && (((Toolbar.e) childAt.getLayoutParams()).f6800a & 8388615) == 8388611) {
                measuredWidth = zB ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zB ? actionMenuView.getRight() : actionMenuView.getLeft()) + 0);
    }

    public final float D(int i10) {
        boolean zB = s.b(this);
        if (i10 == 1) {
            return ((getMeasuredWidth() / 2) + 0) * (zB ? -1 : 1);
        }
        return 0.0f;
    }

    public final boolean E() {
        FloatingActionButton floatingActionButtonA = A();
        return floatingActionButtonA != null && floatingActionButtonA.k();
    }

    public final void F() {
        getTopEdgeTreatment().f15146l = getFabTranslationX();
        B();
        if (this.f5029i0) {
            E();
        }
        throw null;
    }

    public final void G(int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().f15144j) {
            return;
        }
        getTopEdgeTreatment().f15144j = f10;
        throw null;
    }

    public ColorStateList getBackgroundTint() {
        throw null;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().f15145k;
    }

    public int getFabAlignmentMode() {
        return this.f5025e0;
    }

    public int getFabAnimationMode() {
        return this.f5026f0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f15143i;
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f15142h;
    }

    public boolean getHideOnScroll() {
        return this.f5027g0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o.K(this, null);
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            Animator animator = this.d0;
            if (animator != null) {
                animator.cancel();
            }
            Animator animator2 = this.f5024c0;
            if (animator2 != null) {
                animator2.cancel();
            }
            F();
            throw null;
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.d0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (E()) {
            actionMenuView.setTranslationX(C(actionMenuView, this.f5025e0, this.f5029i0));
        } else {
            actionMenuView.setTranslationX(C(actionMenuView, 0, false));
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f12620h);
        this.f5025e0 = aVar.f5036j;
        this.f5029i0 = aVar.f5037k;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f5036j = this.f5025e0;
        aVar.f5037k = this.f5029i0;
        return aVar;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        b0.a.b.h(null, colorStateList);
    }

    public void setCradleVerticalOffset(float f10) {
        if (f10 != getCradleVerticalOffset()) {
            g topEdgeTreatment = getTopEdgeTreatment();
            Objects.requireNonNull(topEdgeTreatment);
            if (f10 < 0.0f) {
                throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
            }
            topEdgeTreatment.f15145k = f10;
            throw null;
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        throw null;
    }

    public void setFabAlignmentMode(int i10) {
        int i11;
        this.f5028h0 = 0;
        boolean z10 = this.f5029i0;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.g.c(this)) {
            Animator animator = this.d0;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (E()) {
                i11 = i10;
            } else {
                z10 = false;
                i11 = 0;
            }
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                if (Math.abs(actionMenuView.getTranslationX() - C(actionMenuView, i11, z10)) > 1.0f) {
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    objectAnimatorOfFloat2.addListener(new d(this, actionMenuView, i11, z10));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.setDuration(150L);
                    animatorSet.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
                    arrayList.add(animatorSet);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList.add(objectAnimatorOfFloat);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            this.d0 = animatorSet2;
            animatorSet2.addListener(new c(this));
            this.d0.start();
        } else {
            int i12 = this.f5028h0;
            if (i12 != 0) {
                this.f5028h0 = 0;
                getMenu().clear();
                n(i12);
            }
        }
        if (this.f5025e0 != i10 && a0.g.c(this)) {
            Animator animator2 = this.f5024c0;
            if (animator2 != null) {
                animator2.cancel();
            }
            ArrayList arrayList2 = new ArrayList();
            if (this.f5026f0 == 1) {
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(A(), "translationX", D(i10));
                objectAnimatorOfFloat3.setDuration(300L);
                arrayList2.add(objectAnimatorOfFloat3);
            } else {
                FloatingActionButton floatingActionButtonA = A();
                if (floatingActionButtonA != null && !floatingActionButtonA.j()) {
                    floatingActionButtonA.i(new b(this, i10), true);
                }
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(arrayList2);
            this.f5024c0 = animatorSet3;
            animatorSet3.addListener(new s5.a(this));
            this.f5024c0.start();
        }
        this.f5025e0 = i10;
    }

    public void setFabAnimationMode(int i10) {
        this.f5026f0 = i10;
    }

    public void setFabCornerSize(float f10) {
        if (f10 == getTopEdgeTreatment().f15147m) {
            return;
        }
        getTopEdgeTreatment().f15147m = f10;
        throw null;
    }

    public void setFabCradleMargin(float f10) {
        if (f10 == getFabCradleMargin()) {
            return;
        }
        getTopEdgeTreatment().f15143i = f10;
        throw null;
    }

    public void setFabCradleRoundedCornerRadius(float f10) {
        if (f10 == getFabCradleRoundedCornerRadius()) {
            return;
        }
        getTopEdgeTreatment().f15142h = f10;
        throw null;
    }

    public void setHideOnScroll(boolean z10) {
        this.f5027g0 = z10;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f5023b0 != null) {
            drawable = drawable.mutate();
            b0.a.b.g(drawable, this.f5023b0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i10) {
        this.f5023b0 = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Behavior getBehavior() {
        if (this.f5030j0 == null) {
            this.f5030j0 = new Behavior();
        }
        return this.f5030j0;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Rect f5031e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public WeakReference<BottomAppBar> f5032f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f5033g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final a f5034h;

        public class a implements View.OnLayoutChangeListener {
            public a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = Behavior.this.f5032f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                Rect rect = Behavior.this.f5031e;
                rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                floatingActionButton.l(rect);
                int iHeight = Behavior.this.f5031e.height();
                bottomAppBar.G(iHeight);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().f10542e.a(new RectF(Behavior.this.f5031e)));
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.f5033g == 0) {
                    ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (s.b(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += 0;
                    }
                }
            }
        }

        public Behavior() {
            this.f5034h = new a();
            this.f5031e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.f5032f = new WeakReference<>(bottomAppBar);
            int i11 = BottomAppBar.f5022k0;
            View viewB = bottomAppBar.B();
            if (viewB != null) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                if (!a0.g.c(viewB)) {
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) viewB.getLayoutParams();
                    fVar.f1747d = 49;
                    this.f5033g = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    if (viewB instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) viewB;
                        if (floatingActionButton.getShowMotionSpec() == null) {
                            floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                        }
                        if (floatingActionButton.getHideMotionSpec() == null) {
                            floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                        }
                        floatingActionButton.addOnLayoutChangeListener(this.f5034h);
                        floatingActionButton.d();
                        floatingActionButton.e(new f(bottomAppBar));
                        floatingActionButton.f();
                    }
                    bottomAppBar.F();
                    throw null;
                }
            }
            coordinatorLayout.s(bottomAppBar, i10);
            this.f5002a = bottomAppBar.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) bottomAppBar.getLayoutParams()).bottomMargin;
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11) {
            if (((BottomAppBar) view).getHideOnScroll()) {
                if (i10 == 2) {
                    return true;
                }
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5034h = new a();
            this.f5031e = new Rect();
        }
    }
}
