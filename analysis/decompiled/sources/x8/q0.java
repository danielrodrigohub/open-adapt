package x8;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.adk.IDeviceCacheADK;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import q7.l1;
import q7.m1;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ClickableViewAccessibility"})
public abstract class q0 {
    public boolean A;
    public Runnable B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IDeviceController f17960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Shoe f17961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m1 f17962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f17963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f17965f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final qd.p<d0, k0, fd.o> f17966g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f17967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f17968i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f17969j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f17970k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f17971l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f17972m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f17973n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final fd.h f17974o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final fd.h f17975p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final fd.h f17976q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final fd.h f17977r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final fd.h f17978s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final fd.h f17979t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final fd.h f17980u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final AnimatorSet f17981v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f17982w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f17983x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Integer f17984y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float[] f17985z;

    /* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
    public interface a {
        void W(Shoe shoe);
    }

    /* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
    public static final class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            p4.h.j(animator, "animation");
            super.onAnimationEnd(animator);
            w wVarI = q0.this.i();
            ImageView imageViewJ = q0.this.j();
            p4.h.i(imageViewJ, "shoeController");
            wVarI.h(imageViewJ, q0.this.f17985z);
        }
    }

    /* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
    @ld.e(c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$laceTo$1", f = "ShoeControllerUiHelper.kt", l = {227}, m = "invokeSuspend")
    public static final class c extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17987h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ int f17989j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i10, jd.d<? super c> dVar) {
            super(2, dVar);
            this.f17989j = i10;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return q0.this.new c(this.f17989j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17987h;
            if (i10 == 0) {
                d3.e.p(obj);
                this.f17987h = 1;
                if (DelayKt.delay(10L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            int iQ = p4.h.q(q0.this.f17985z, this.f17989j);
            if (this.f17989j > 0 && iQ == 0) {
                iQ = 1;
            }
            w.e(q0.this.i(), iQ, true, 4);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Lcom/nike/adapt/adk/IDeviceController;Lcom/nike/adapt/adk/Shoe;Lq7/m1;Lx8/q0$a;Ljava/lang/Object;ZILqd/p<-Lx8/d0;-Lx8/k0;Lfd/o;>;)V */
    public q0(IDeviceController iDeviceController, Shoe shoe, m1 m1Var, a aVar, int i10, boolean z10, int i11, qd.p pVar) {
        p4.h.j(shoe, "shoe");
        androidx.appcompat.widget.o.d(i10, "uiState");
        this.f17960a = iDeviceController;
        this.f17961b = shoe;
        this.f17962c = m1Var;
        this.f17963d = aVar;
        this.f17964e = i10;
        this.f17965f = z10;
        this.f17966g = pVar;
        Context context = m1Var.f13929c.getContext();
        this.f17967h = context;
        this.f17969j = 200L;
        this.f17970k = shoe.isRight();
        Object obj = y.a.f18143a;
        this.f17971l = y.a.c.a(context, R.color.indicator_active);
        this.f17972m = y.a.c.a(context, R.color.indicator_inactive);
        this.f17973n = y.a.c.a(context, R.color.lacing_controller_lace_engaged);
        this.f17974o = (fd.h) androidx.lifecycle.o.x(new s0(this));
        this.f17975p = (fd.h) androidx.lifecycle.o.x(new z0(this));
        this.f17976q = (fd.h) androidx.lifecycle.o.x(new t0(this));
        this.f17977r = (fd.h) androidx.lifecycle.o.x(new b1(this));
        this.f17978s = (fd.h) androidx.lifecycle.o.x(new v0(this));
        this.f17979t = (fd.h) androidx.lifecycle.o.x(new c1(this));
        this.f17980u = (fd.h) androidx.lifecycle.o.x(new x0(this));
        this.f17981v = new AnimatorSet();
        p4.h.i(context, "context");
        this.f17982w = i1.b(context, 10);
        this.f17983x = i1.b(context, 16);
        float[] fArr = new float[21];
        for (int i12 = 0; i12 < 21; i12++) {
            fArr[i12] = i12 * 5.0f;
        }
        this.f17985z = fArr;
        Context context2 = this.f17967h;
        p4.h.i(context2, "context");
        final int iB = i1.b(context2, 80);
        Context context3 = this.f17967h;
        p4.h.i(context3, "context");
        final int iB2 = i1.b(context3, 140);
        j().setImageResource(i11);
        g().setOnTouchListener(new View.OnTouchListener() { // from class: x8.p0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                q0 q0Var = this.f17950h;
                int i13 = iB;
                int i14 = iB2;
                p4.h.j(q0Var, "this$0");
                Rect rect = new Rect();
                float rawY = motionEvent.getRawY();
                q0Var.g().getHitRect(rect);
                if (new Rect(rect.left, rect.top + i13, rect.right, rect.bottom + i14).contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                    int[] iArr = new int[2];
                    q0Var.j().getLocationInWindow(iArr);
                    int i15 = iArr[1];
                    if (rawY < i15) {
                        q0Var.i().f(true);
                    } else if (rawY > q0Var.j().getMeasuredHeight() + i15) {
                        q0Var.i().f(false);
                    }
                }
                return false;
            }
        });
    }

    public static final void a(q0 q0Var, d1 d1Var, int i10, View view, long j10, long j11) {
        if (d1Var.f17882d == i10) {
            f1.b.a(view, q0Var.f17972m, q0Var.f17971l, j10, j11, false, true, 16);
        } else {
            f1.b.a(view, q0Var.f17972m, q0Var.f17971l, j10, j11, i10 != d1Var.f17880b, false, 32);
        }
    }

    public static final void b(q0 q0Var) {
        ImageView imageViewJ = q0Var.j();
        p4.h.i(imageViewJ, "shoeController");
        ColorStateList imageTintList = imageViewJ.getImageTintList();
        int defaultColor = imageTintList != null ? imageTintList.getDefaultColor() : 0;
        int i10 = q0Var.f17964e != 1 ? q0Var.f17973n : defaultColor;
        if (defaultColor != i10) {
            final ImageView imageViewJ2 = q0Var.j();
            p4.h.i(imageViewJ2, "shoeController");
            long j10 = q0Var.f17969j;
            ValueAnimator valueAnimatorH = f1.b.h(false, defaultColor, i10);
            valueAnimatorH.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: x8.e
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ImageView imageView = imageViewJ2;
                    p4.h.j(imageView, "$this_animateTint");
                    p4.h.j(valueAnimator, "it");
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                    imageView.setImageTintList(ColorStateList.valueOf(((Integer) animatedValue).intValue()));
                }
            });
            valueAnimatorH.setDuration(j10);
            valueAnimatorH.start();
        }
    }

    public static final l1 c(q0 q0Var) {
        return (l1) q0Var.f17974o.getValue();
    }

    public final void d() {
        ImageView imageViewJ = j();
        p4.h.i(imageViewJ, "shoeController");
        Animator animatorD = f1.b.d(imageViewJ, this.f17968i);
        animatorD.addListener(new b());
        animatorD.start();
    }

    public final void e() {
        Runnable runnable;
        this.A = true;
        if (this.f17967h == null || (runnable = this.B) == null) {
            return;
        }
        runnable.run();
    }

    public final void f(boolean z10) {
        LinearLayout linearLayoutH = h();
        p4.h.i(linearLayoutH, "indicators");
        f1.b.o(linearLayoutH, z10, 1);
    }

    public final LinearLayout g() {
        return (LinearLayout) this.f17976q.getValue();
    }

    public final LinearLayout h() {
        return (LinearLayout) this.f17978s.getValue();
    }

    public final w i() {
        return (w) this.f17980u.getValue();
    }

    public final ImageView j() {
        return (ImageView) this.f17977r.getValue();
    }

    public final void k(int i10, boolean z10) {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new c(i10, null), 2, null);
        this.f17984y = Integer.valueOf(i10);
        if (j().getContentDescription() != null) {
            o();
        }
        if (z10) {
            j().announceForAccessibility(s9.e.b(androidx.lifecycle.o.r(this.f17970k ? R.string.adapt_accessibility_right_tightness_set_to_percent : R.string.adapt_accessibility_left_tightness_set_to_percent), new Pair("percentage", String.valueOf(this.f17984y))));
        }
    }

    public final void l() {
        if (this.f17964e != 1) {
            j().setTag(h0.LOCK);
            this.f17966g.invoke(d0.IGNORE, k0.DISABLE);
        }
    }

    public final void m(d0 d0Var) {
        int iOrdinal = d0Var.ordinal();
        if (iOrdinal == 0) {
            u(this.f17985z.length - 1);
            w.e(i(), this.f17985z.length - 1, false, 6);
        } else if (iOrdinal == 1) {
            u(0);
            w.e(i(), 0, false, 6);
        } else {
            if (iOrdinal != 2) {
                return;
            }
            u(2);
            w.e(i(), 2, false, 6);
        }
    }

    public final void n(Context context) {
        i().f18046z = context;
    }

    public final void o() {
        String strR;
        StringBuilder sb2;
        StringBuilder sb3 = new StringBuilder();
        if (this.f17970k) {
            strR = androidx.lifecycle.o.r(R.string.adapt_accessibility_right_slider);
            sb2 = new StringBuilder();
        } else {
            strR = androidx.lifecycle.o.r(R.string.adapt_accessibility_left_slider);
            sb2 = new StringBuilder();
        }
        sb2.append(strR);
        sb2.append(". ");
        sb3.append(sb2.toString());
        Integer num = this.f17984y;
        if (num != null) {
            num.intValue();
            sb3.append(s9.e.b(androidx.lifecycle.o.r(R.string.adapt_accessibility_tightness_set_to_percent), new Pair("percentage", String.valueOf(this.f17984y))) + " ");
        }
        sb3.append(androidx.lifecycle.o.r(R.string.adapt_accessibility_lacing_hint));
        j().setContentDescription(sb3.toString());
    }

    public final void p(boolean z10) {
        boolean z11 = this instanceof n0;
        v();
        double measuredWidth = ((double) g().getMeasuredWidth()) * 0.6666666666666666d;
        int i10 = (int) (1.353678571428571d * measuredWidth);
        j().setLayoutParams(new LinearLayout.LayoutParams((int) measuredWidth, i10));
        this.f17968i = (float) (((double) 0.17f) * measuredWidth * ((double) (z11 ? -1 : 1)));
        if (z11) {
            measuredWidth = -measuredWidth;
        }
        float f10 = (float) measuredWidth;
        ImageView imageViewJ = j();
        if (!z10) {
            f10 = this.f17968i;
        }
        imageViewJ.setTranslationX(f10);
        Object parent = j().getParent();
        p4.h.h(parent, "null cannot be cast to non-null type android.view.View");
        int paddingTop = ((View) parent).getPaddingTop();
        Object parent2 = j().getParent();
        p4.h.h(parent2, "null cannot be cast to non-null type android.view.View");
        int paddingBottom = ((View) parent2).getPaddingBottom();
        Object parent3 = j().getParent();
        p4.h.h(parent3, "null cannot be cast to non-null type android.view.View");
        float f11 = paddingTop;
        j().setY(f11 + (((((View) parent3).getHeight() - f11) - paddingBottom) / 2) + (i10 / 2));
    }

    public final void q() {
        w wVarI = i();
        ImageView imageViewJ = j();
        p4.h.i(imageViewJ, "shoeController");
        wVarI.h(imageViewJ, this.f17985z);
    }

    public final void r() {
        if (this.f17964e != 1) {
            j().setTag(h0.UNLOCK);
            i().f18044x = false;
            this.f17966g.invoke(d0.IGNORE, k0.ENABLE);
        }
    }

    public final void s(boolean z10) {
        if (z10) {
            o();
        } else {
            j().setContentDescription(null);
        }
    }

    public final void t(IDeviceCacheADK iDeviceCacheADK) {
        p4.h.j(iDeviceCacheADK, "deviceCache");
        int lastKnownRelativeTightness = (iDeviceCacheADK.getLastKnownAbsoluteTightness() > 100 || iDeviceCacheADK.getLastKnownAbsoluteTightness() < 0) ? 0 : iDeviceCacheADK.getLastKnownRelativeTightness();
        if (iDeviceCacheADK.getMaxTightness() != 101) {
            r();
        } else {
            o7.x xVar = o7.x.f12420a;
            o7.x.f12420a.h("ShoeControllerUiHelper", "At Impossible Maximum, " + iDeviceCacheADK, (120 & 4) != 0 ? o7.u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
        }
        r();
        LinearLayout linearLayoutH = h();
        linearLayoutH.removeAllViews();
        linearLayoutH.setWeightSum(21.0f);
        linearLayoutH.addView(new Space(new j.c(linearLayoutH.getContext(), R.style.ControllerIndicatorSpacer)), new LinearLayout.LayoutParams(-1, ((Number) this.f17975p.getValue()).intValue()));
        int length = this.f17985z.length;
        for (int i10 = 0; i10 < length; i10++) {
            View viewInflate = View.inflate(linearLayoutH.getContext(), this.f17970k ? R.layout.right_shoe_indicator : R.layout.left_shoe_indicator, null);
            View viewFindViewById = viewInflate.findViewById(R.id.view_indicator);
            viewFindViewById.setBackgroundColor(this.f17972m);
            viewFindViewById.setVisibility(0);
            TextView textView = (TextView) viewInflate.findViewById(R.id.view_indicator_percent);
            textView.setText(String.valueOf(100 - (i10 * 5)));
            textView.setVisibility(8);
            linearLayoutH.addView(viewInflate, new LinearLayout.LayoutParams(-2, 0, 1.0f));
        }
        linearLayoutH.addView(new Space(new j.c(linearLayoutH.getContext(), R.style.ControllerIndicatorSpacer)), new LinearLayout.LayoutParams(-1, ((Number) this.f17975p.getValue()).intValue()));
        if (this.f17964e == 1) {
            j().setTag(h0.LOCK);
            l();
            ImageView imageViewJ = j();
            p4.h.i(imageViewJ, "shoeController");
            i1.d(imageViewJ, R.color.lacing_controller_default);
            j().setAlpha(0.13f);
        } else {
            r();
            ImageView imageViewJ2 = j();
            p4.h.i(imageViewJ2, "shoeController");
            i1.d(imageViewJ2, R.color.lacing_controller_lace_engaged);
            j().setAlpha(1.0f);
        }
        v();
        w wVarI = i();
        ImageView imageViewJ3 = j();
        p4.h.i(imageViewJ3, "shoeController");
        wVarI.h(imageViewJ3, this.f17985z);
        k(lastKnownRelativeTightness, false);
    }

    public final void u(int i10) {
        d0 d0Var;
        qd.p<d0, k0, fd.o> pVar = this.f17966g;
        if (i10 == 0) {
            d0Var = d0.MIN;
        } else {
            d0Var = i10 == this.f17985z.length + (-1) ? d0.MAX : d0.IN_BETWEEN;
        }
        pVar.invoke(d0Var, k0.ENABLE);
    }

    public final void v() {
        if (this instanceof n0) {
            g().removeView(h());
            g().removeView((Space) this.f17979t.getValue());
            g().addView((Space) this.f17979t.getValue());
            g().addView(h());
            h().setGravity(8388613);
        }
    }

    public final boolean w() {
        return i().f18035o != null;
    }
}
