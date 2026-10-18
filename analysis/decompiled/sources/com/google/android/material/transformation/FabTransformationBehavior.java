package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.appcompat.widget.o;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import d3.e;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import p5.g;
import p5.h;
import y5.d;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f5612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RectF f5613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f5614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f5615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5616g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5617h;

    public class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f5618a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f5619b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f5620c;

        public a(boolean z10, View view, View view2) {
            this.f5618a = z10;
            this.f5619b = view;
            this.f5620c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f5618a) {
                return;
            }
            this.f5619b.setVisibility(4);
            this.f5620c.setAlpha(1.0f);
            this.f5620c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (this.f5618a) {
                this.f5619b.setVisibility(0);
                this.f5620c.setAlpha(0.0f);
                this.f5620c.setVisibility(4);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public g f5621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public g7.c f5622b;
    }

    public FabTransformationBehavior() {
        this.f5612c = new Rect();
        this.f5613d = new RectF();
        this.f5614e = new RectF();
        this.f5615f = new int[2];
    }

    public abstract b A(Context context, boolean z10);

    public final ViewGroup B(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean b(View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void c(CoordinatorLayout.f fVar) {
        if (fVar.f1751h == 0) {
            fVar.f1751h = 80;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x03cf A[LOOP:0: B:116:0x03cd->B:117:0x03cf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x018c  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet t(View view, View view2, boolean z10, boolean z11) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ArrayList arrayList;
        b bVar;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Animator animatorA;
        h hVar;
        ArrayList arrayList4;
        boolean z12;
        ObjectAnimator objectAnimatorOfInt;
        b bVar2;
        ViewGroup viewGroupB;
        int i10;
        ObjectAnimator objectAnimatorOfFloat4;
        AnimatorSet animatorSet;
        int size;
        ObjectAnimator objectAnimatorOfInt2;
        b bVarA = A(view2.getContext(), z10);
        if (z10) {
            this.f5616g = view.getTranslationX();
            this.f5617h = view.getTranslationY();
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        float fI = a0.i.i(view2) - a0.i.i(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-fI);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fI);
        }
        bVarA.f5621a.d("elevation").a(objectAnimatorOfFloat);
        arrayList5.add(objectAnimatorOfFloat);
        RectF rectF = this.f5613d;
        float fW = w(view, view2, bVarA.f5622b);
        float fX = x(view, view2, bVarA.f5622b);
        Pair<h, h> pairV = v(fW, fX, z10, bVarA);
        h hVar2 = (h) pairV.first;
        h hVar3 = (h) pairV.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fW);
                view2.setTranslationY(-fX);
            }
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float fY = y(bVarA, hVar2, -fW);
            float fY2 = y(bVarA, hVar3, -fX);
            Rect rect = this.f5612c;
            view2.getWindowVisibleDisplayFrame(rect);
            RectF rectF2 = this.f5613d;
            rectF2.set(rect);
            RectF rectF3 = this.f5614e;
            z(view2, rectF3);
            rectF3.offset(fY, fY2);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
            objectAnimatorOfFloat3 = objectAnimatorOfFloat6;
            objectAnimatorOfFloat2 = objectAnimatorOfFloat5;
        } else {
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fW);
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fX);
        }
        hVar2.a(objectAnimatorOfFloat2);
        hVar3.a(objectAnimatorOfFloat3);
        arrayList5.add(objectAnimatorOfFloat2);
        arrayList5.add(objectAnimatorOfFloat3);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float fW2 = w(view, view2, bVarA.f5622b);
        float fX2 = x(view, view2, bVarA.f5622b);
        Pair<h, h> pairV2 = v(fW2, fX2, z10, bVarA);
        h hVar4 = (h) pairV2.first;
        h hVar5 = (h) pairV2.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z10) {
            fW2 = this.f5616g;
        }
        fArr[0] = fW2;
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z10) {
            fX2 = this.f5617h;
        }
        fArr2[0] = fX2;
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        hVar4.a(objectAnimatorOfFloat7);
        hVar5.a(objectAnimatorOfFloat8);
        arrayList5.add(objectAnimatorOfFloat7);
        arrayList5.add(objectAnimatorOfFloat8);
        boolean z13 = view2 instanceof d;
        if (z13 && (view instanceof ImageView)) {
            d dVar = (d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                arrayList = arrayList6;
            } else {
                drawable.mutate();
                if (z10) {
                    if (!z11) {
                        drawable.setAlpha(255);
                    }
                    objectAnimatorOfInt2 = ObjectAnimator.ofInt(drawable, p5.d.f13259a, 0);
                } else {
                    objectAnimatorOfInt2 = ObjectAnimator.ofInt(drawable, p5.d.f13259a, 255);
                }
                objectAnimatorOfInt2.addUpdateListener(new com.google.android.material.transformation.a(view2));
                bVarA.f5621a.d("iconFade").a(objectAnimatorOfInt2);
                arrayList5.add(objectAnimatorOfInt2);
                com.google.android.material.transformation.b bVar3 = new com.google.android.material.transformation.b(dVar, drawable);
                arrayList = arrayList6;
                arrayList.add(bVar3);
            }
        } else {
            arrayList = arrayList6;
        }
        if (z13) {
            d dVar2 = (d) view2;
            g7.c cVar = bVarA.f5622b;
            RectF rectF4 = this.f5613d;
            RectF rectF5 = this.f5614e;
            u(view, rectF4);
            z(view2, rectF5);
            rectF5.offset(-w(view, view2, cVar), 0.0f);
            float fCenterX = rectF4.centerX() - rectF5.left;
            g7.c cVar2 = bVarA.f5622b;
            RectF rectF6 = this.f5613d;
            RectF rectF7 = this.f5614e;
            u(view, rectF6);
            z(view2, rectF7);
            rectF7.offset(0.0f, -x(view, view2, cVar2));
            float fCenterY = rectF6.centerY() - rectF7.top;
            ((FloatingActionButton) view).g(this.f5612c);
            float fWidth2 = this.f5612c.width() / 2.0f;
            h hVarD = bVarA.f5621a.d("expansion");
            if (z10) {
                if (!z11) {
                    dVar2.setRevealInfo(new d.C0322d(fCenterX, fCenterY, fWidth2));
                }
                if (z11) {
                    fWidth2 = dVar2.getRevealInfo().f18657c;
                }
                float fH = e.h(fCenterX, fCenterY, 0.0f, 0.0f);
                float fH2 = e.h(fCenterX, fCenterY, fWidth, 0.0f);
                float fH3 = e.h(fCenterX, fCenterY, fWidth, fHeight);
                float fH4 = e.h(fCenterX, fCenterY, 0.0f, fHeight);
                if (fH > fH2 && fH > fH3 && fH > fH4) {
                    fH3 = fH;
                } else if (fH2 > fH3 && fH2 > fH4) {
                    fH3 = fH2;
                } else if (fH3 <= fH4) {
                    fH3 = fH4;
                }
                animatorA = y5.b.a(dVar2, fCenterX, fCenterY, fH3);
                animatorA.addListener(new c(dVar2));
                long j10 = hVarD.f13266a;
                int i11 = (int) fCenterX;
                int i12 = (int) fCenterY;
                if (j10 > 0) {
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i11, i12, fWidth2, fWidth2);
                    animatorCreateCircularReveal.setStartDelay(0L);
                    animatorCreateCircularReveal.setDuration(j10);
                    arrayList5.add(animatorCreateCircularReveal);
                }
                arrayList3 = arrayList5;
                arrayList2 = arrayList;
                hVar = hVarD;
                bVar = bVarA;
            } else {
                float f10 = dVar2.getRevealInfo().f18657c;
                Animator animatorA2 = y5.b.a(dVar2, fCenterX, fCenterY, fWidth2);
                long j11 = hVarD.f13266a;
                int i13 = (int) fCenterX;
                int i14 = (int) fCenterY;
                ArrayList arrayList7 = arrayList;
                if (j11 > 0) {
                    Animator animatorCreateCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, i13, i14, f10, f10);
                    animatorCreateCircularReveal2.setStartDelay(0L);
                    animatorCreateCircularReveal2.setDuration(j11);
                    arrayList5.add(animatorCreateCircularReveal2);
                }
                long j12 = hVarD.f13266a;
                long j13 = hVarD.f13267b;
                g gVar = bVarA.f5621a;
                int i15 = gVar.f13264a.f12614j;
                bVar = bVarA;
                arrayList2 = arrayList7;
                int i16 = 0;
                long jMax = 0;
                while (i16 < i15) {
                    int i17 = i15;
                    h hVarM = gVar.f13264a.m(i16);
                    jMax = Math.max(jMax, hVarM.f13266a + hVarM.f13267b);
                    i16++;
                    i15 = i17;
                    hVarD = hVarD;
                    gVar = gVar;
                    arrayList5 = arrayList5;
                }
                ArrayList arrayList8 = arrayList5;
                h hVar6 = hVarD;
                long j14 = j12 + j13;
                if (j14 < jMax) {
                    Animator animatorCreateCircularReveal3 = ViewAnimationUtils.createCircularReveal(view2, i13, i14, fWidth2, fWidth2);
                    animatorCreateCircularReveal3.setStartDelay(j14);
                    animatorCreateCircularReveal3.setDuration(jMax - j14);
                    arrayList3 = arrayList8;
                    arrayList3.add(animatorCreateCircularReveal3);
                } else {
                    arrayList3 = arrayList8;
                }
                animatorA = animatorA2;
                hVar = hVar6;
            }
            hVar.a(animatorA);
            arrayList3.add(animatorA);
            arrayList4 = arrayList2;
            arrayList4.add(new y5.a(dVar2));
        } else {
            bVar = bVarA;
            arrayList3 = arrayList5;
            arrayList4 = arrayList;
        }
        if (z13) {
            d dVar3 = (d) view2;
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            ColorStateList colorStateListG = a0.i.g(view);
            int colorForState = colorStateListG != null ? colorStateListG.getColorForState(view.getDrawableState(), colorStateListG.getDefaultColor()) : 0;
            int i18 = 16777215 & colorForState;
            z12 = z10;
            if (z12) {
                if (!z11) {
                    dVar3.setCircularRevealScrimColor(colorForState);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar3, d.c.f18654a, i18);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar3, d.c.f18654a, colorForState);
            }
            objectAnimatorOfInt.setEvaluator(p5.b.f13257a);
            bVar2 = bVar;
            bVar2.f5621a.d("color").a(objectAnimatorOfInt);
            arrayList3.add(objectAnimatorOfInt);
        } else {
            z12 = z10;
            bVar2 = bVar;
        }
        if (view2 instanceof ViewGroup) {
            View viewFindViewById = view2.findViewById(R.id.mtrl_child_content_container);
            if (viewFindViewById != null) {
                viewGroupB = B(viewFindViewById);
            } else {
                viewGroupB = ((view2 instanceof s6.c) || (view2 instanceof s6.b)) ? B(((ViewGroup) view2).getChildAt(0)) : B(view2);
            }
            if (viewGroupB != null) {
                if (z12) {
                    if (!z11) {
                        p5.c.f13258a.set(viewGroupB, Float.valueOf(0.0f));
                    }
                    i10 = 0;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroupB, p5.c.f13258a, 1.0f);
                } else {
                    i10 = 0;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroupB, p5.c.f13258a, 0.0f);
                }
                bVar2.f5621a.d("contentFade").a(objectAnimatorOfFloat4);
                arrayList3.add(objectAnimatorOfFloat4);
            }
            animatorSet = new AnimatorSet();
            g7.c.f(animatorSet, arrayList3);
            animatorSet.addListener(new a(z12, view2, view));
            size = arrayList4.size();
            while (i10 < size) {
                animatorSet.addListener((Animator.AnimatorListener) arrayList4.get(i10));
                i10++;
            }
            return animatorSet;
        }
        i10 = 0;
        animatorSet = new AnimatorSet();
        g7.c.f(animatorSet, arrayList3);
        animatorSet.addListener(new a(z12, view2, view));
        size = arrayList4.size();
        while (i10 < size) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList4.get(i10));
            i10++;
        }
        return animatorSet;
    }

    public final void u(View view, RectF rectF) {
        z(view, rectF);
        rectF.offset(this.f5616g, this.f5617h);
    }

    public final Pair<h, h> v(float f10, float f11, boolean z10, b bVar) {
        h hVarD;
        h hVarD2;
        if (f10 == 0.0f || f11 == 0.0f) {
            hVarD = bVar.f5621a.d("translationXLinear");
            hVarD2 = bVar.f5621a.d("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            hVarD = bVar.f5621a.d("translationXCurveDownwards");
            hVarD2 = bVar.f5621a.d("translationYCurveDownwards");
        } else {
            hVarD = bVar.f5621a.d("translationXCurveUpwards");
            hVarD2 = bVar.f5621a.d("translationYCurveUpwards");
        }
        return new Pair<>(hVarD, hVarD2);
    }

    public final float w(View view, View view2, g7.c cVar) {
        RectF rectF = this.f5613d;
        RectF rectF2 = this.f5614e;
        u(view, rectF);
        z(view2, rectF2);
        Objects.requireNonNull(cVar);
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public final float x(View view, View view2, g7.c cVar) {
        RectF rectF = this.f5613d;
        RectF rectF2 = this.f5614e;
        u(view, rectF);
        z(view2, rectF2);
        Objects.requireNonNull(cVar);
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final float y(b bVar, h hVar, float f10) {
        long j10 = hVar.f13266a;
        long j11 = hVar.f13267b;
        h hVarD = bVar.f5621a.d("expansion");
        float interpolation = hVar.b().getInterpolation((((hVarD.f13266a + hVarD.f13267b) + 17) - j10) / j11);
        LinearInterpolator linearInterpolator = p5.a.f13252a;
        return o.c(0.0f, f10, interpolation, f10);
    }

    public final void z(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f5615f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5612c = new Rect();
        this.f5613d = new RectF();
        this.f5614e = new RectF();
        this.f5615f = new int[2];
    }
}
