package x8;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import android.widget.Space;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ShoeScaleControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinearLayout f17888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f17889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ValueAnimator f17891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f17892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final fd.h f17894g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fd.h f17895h;

    /* JADX INFO: compiled from: ShoeScaleControllerUiHelper.kt */
    public static final class a extends rd.o implements qd.a<LinearLayout> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final LinearLayout invoke() {
            return e1.this.f17888a;
        }
    }

    /* JADX INFO: compiled from: ShoeScaleControllerUiHelper.kt */
    public static final class b extends rd.o implements qd.a<Integer> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final Integer invoke() {
            Context context = e1.this.c().getContext();
            p4.h.i(context, "indicators.context");
            return Integer.valueOf(i1.b(context, 50));
        }
    }

    public e1(LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.f17888a = linearLayout2;
        Context context = linearLayout.getContext();
        this.f17889b = context;
        this.f17890c = 19;
        this.f17892e = new float[0];
        Object obj = y.a.f18143a;
        this.f17893f = y.a.c.a(context, R.color.indicator_inactive);
        this.f17894g = (fd.h) androidx.lifecycle.o.x(new a());
        this.f17895h = (fd.h) androidx.lifecycle.o.x(new b());
    }

    public static void f(e1 e1Var, boolean z10, int i10, Object obj) {
        f1.b.o(e1Var.c(), false, 1);
    }

    public final void a() {
        ValueAnimator valueAnimator = this.f17891d;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f17891d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f17891d;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
        }
    }

    public final LinearLayout c() {
        return (LinearLayout) this.f17894g.getValue();
    }

    public final void d(int i10) {
        float f10;
        int i11 = this.f17890c;
        float[] fArr = new float[i11];
        int i12 = 0;
        while (i12 < i11) {
            if (i12 == 0) {
                f10 = i12;
            } else {
                f10 = i12 == i11 + (-1) ? i10 : (float) ((((double) i10) / (((double) i11) - 1.0d)) * ((double) i12));
            }
            fArr[i12] = f10;
            i12++;
        }
        this.f17892e = fArr;
        e(c());
        final LinearLayout linearLayoutC = c();
        final int length = this.f17892e.length;
        p4.h.j(linearLayoutC, "viewGroup");
        final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, length);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: x8.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ValueAnimator valueAnimator2 = valueAnimatorOfInt;
                int i13 = length;
                ViewGroup viewGroup = linearLayoutC;
                p4.h.j(viewGroup, "$viewGroup");
                p4.h.j(valueAnimator, "it");
                Object animatedValue = valueAnimator2.getAnimatedValue();
                p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = (((Integer) animatedValue).intValue() * 2) + 1;
                for (int i14 = 0; i14 < i13; i14++) {
                    int i15 = (i14 * 2) + 1;
                    View childAt = viewGroup.getChildAt(i15);
                    if (childAt == null) {
                        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index: ", i15, ", Size: ");
                        sbC.append(viewGroup.getChildCount());
                        throw new IndexOutOfBoundsException(sbC.toString());
                    }
                    if (i15 == iIntValue) {
                        Context context = childAt.getContext();
                        Object obj = y.a.f18143a;
                        childAt.setBackgroundColor(y.a.c.a(context, R.color.indicator_active));
                    } else {
                        Context context2 = childAt.getContext();
                        Object obj2 = y.a.f18143a;
                        childAt.setBackgroundColor(y.a.c.a(context2, R.color.indicator_inactive));
                    }
                }
            }
        });
        valueAnimatorOfInt.setRepeatCount(-1);
        valueAnimatorOfInt.setDuration(length * 100);
        valueAnimatorOfInt.setInterpolator(new LinearInterpolator());
        this.f17891d = valueAnimatorOfInt;
    }

    public final void e(LinearLayout linearLayout) {
        linearLayout.removeAllViews();
        Context context = linearLayout.getContext();
        p4.h.i(context, "context");
        int iB = i1.b(context, 3);
        Context context2 = linearLayout.getContext();
        p4.h.i(context2, "context");
        int iB2 = i1.b(context2, 20);
        linearLayout.addView(new Space(new j.c(linearLayout.getContext(), R.style.ControllerIndicatorSpacer)), new LinearLayout.LayoutParams(-1, ((Number) this.f17895h.getValue()).intValue()));
        int length = this.f17892e.length;
        for (int i10 = 0; i10 < length; i10++) {
            View view = new View(linearLayout.getContext());
            view.setBackgroundColor(this.f17893f);
            view.setVisibility(0);
            linearLayout.addView(view, new LinearLayout.LayoutParams(iB2, iB));
            if (i10 != this.f17892e.length - 1) {
                linearLayout.addView(new Space(new j.c(linearLayout.getContext(), R.style.ControllerIndicatorSpacer)), new LinearLayout.LayoutParams(-1, 0, 1.0f));
            }
        }
        linearLayout.addView(new Space(new j.c(linearLayout.getContext(), R.style.ControllerIndicatorSpacer)), new LinearLayout.LayoutParams(-1, ((Number) this.f17895h.getValue()).intValue()));
    }
}
