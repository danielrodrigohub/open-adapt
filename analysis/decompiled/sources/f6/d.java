package f6;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Objects;
import m6.f;
import m6.i;

/* JADX INFO: compiled from: FloatingActionButtonImplLollipop.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends com.google.android.material.floatingactionbutton.d {

    /* JADX INFO: compiled from: FloatingActionButtonImplLollipop.java */
    public static class a extends f {
        public a(i iVar) {
            super(iVar);
        }

        @Override // m6.f, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    public d(FloatingActionButton floatingActionButton, l6.b bVar) {
        super(floatingActionButton, bVar);
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final float e() {
        return this.f5329w.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void f(Rect rect) {
        if (FloatingActionButton.this.f5287s) {
            super.f(rect);
            return;
        }
        if (!this.f5312f || this.f5329w.getSizeDimension() >= this.f5317k) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f5317k - this.f5329w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable layerDrawable;
        i iVar = this.f5307a;
        Objects.requireNonNull(iVar);
        a aVar = new a(iVar);
        this.f5308b = aVar;
        aVar.setTintList(colorStateList);
        if (mode != null) {
            this.f5308b.setTintMode(mode);
        }
        this.f5308b.m(this.f5329w.getContext());
        if (i10 > 0) {
            Context context = this.f5329w.getContext();
            i iVar2 = this.f5307a;
            Objects.requireNonNull(iVar2);
            f6.a aVar2 = new f6.a(iVar2);
            int i11 = R.color.design_fab_stroke_top_outer_color;
            Object obj = y.a.f18143a;
            int iA = y.a.c.a(context, i11);
            int iA2 = y.a.c.a(context, R.color.design_fab_stroke_top_inner_color);
            int iA3 = y.a.c.a(context, R.color.design_fab_stroke_end_inner_color);
            int iA4 = y.a.c.a(context, R.color.design_fab_stroke_end_outer_color);
            aVar2.f7076i = iA;
            aVar2.f7077j = iA2;
            aVar2.f7078k = iA3;
            aVar2.f7079l = iA4;
            float f10 = i10;
            if (aVar2.f7075h != f10) {
                aVar2.f7075h = f10;
                aVar2.f7069b.setStrokeWidth(f10 * 1.3333f);
                aVar2.f7081n = true;
                aVar2.invalidateSelf();
            }
            aVar2.b(colorStateList);
            this.f5310d = aVar2;
            f6.a aVar3 = this.f5310d;
            Objects.requireNonNull(aVar3);
            f fVar = this.f5308b;
            Objects.requireNonNull(fVar);
            layerDrawable = new LayerDrawable(new Drawable[]{aVar3, fVar});
        } else {
            this.f5310d = null;
            layerDrawable = this.f5308b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(k6.a.b(colorStateList2), layerDrawable, null);
        this.f5309c = rippleDrawable;
        this.f5311e = rippleDrawable;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void j() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void k() {
        v();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void l(int[] iArr) {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void m(float f10, float f11, float f12) {
        int i10 = Build.VERSION.SDK_INT;
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.E, x(f10, f12));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.F, x(f10, f11));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.G, x(f10, f11));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.H, x(f10, f11));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f5329w, "elevation", f10).setDuration(0L));
        if (i10 <= 24) {
            FloatingActionButton floatingActionButton = this.f5329w;
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
        }
        arrayList.add(ObjectAnimator.ofFloat(this.f5329w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.d.D);
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.I, animatorSet);
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.d.J, x(0.0f, 0.0f));
        this.f5329w.setStateListAnimator(stateListAnimator);
        if (s()) {
            v();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void q(ColorStateList colorStateList) {
        Drawable drawable = this.f5309c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(k6.a.b(colorStateList));
        } else if (drawable != null) {
            b0.a.b.h(drawable, k6.a.b(colorStateList));
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final boolean s() {
        if (!FloatingActionButton.this.f5287s) {
            if (!this.f5312f || this.f5329w.getSizeDimension() >= this.f5317k) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public final void u() {
    }

    public final Animator x(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f5329w, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f5329w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.d.D);
        return animatorSet;
    }
}
