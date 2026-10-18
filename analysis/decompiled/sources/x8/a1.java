package x8;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.Space;
import com.nike.adapt.R;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$ratchetAction$1", f = "ShoeControllerUiHelper.kt", l = {496, 499}, m = "invokeSuspend")
public final class a1 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q0 f17860h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0 f17861i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d1 f17862j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17863k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ q0 f17864l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ d1 f17865m;

    /* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
    public static final class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f17866a;

        public a(View view) {
            this.f17866a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            View view = this.f17866a;
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, 5.0f, 1.0f, 0.0f, this.f17866a.getMeasuredHeight());
            scaleAnimation.setDuration(150L);
            scaleAnimation.setAnimationListener(null);
            scaleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
            scaleAnimation.start();
            view.startAnimation(scaleAnimation);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(q0 q0Var, d1 d1Var, jd.d<? super a1> dVar) {
        super(2, dVar);
        this.f17864l = q0Var;
        this.f17865m = d1Var;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new a1(this.f17864l, this.f17865m, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((a1) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q0 q0Var;
        d1 d1Var;
        q0 q0Var2;
        q0 q0Var3;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f17863k;
        if (i10 != 0) {
            if (i10 == 1) {
                d1 d1Var2 = this.f17862j;
                q0Var2 = this.f17861i;
                q0 q0Var4 = this.f17860h;
                d3.e.p(obj);
                d1Var = d1Var2;
                q0Var = q0Var4;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                q0Var3 = this.f17860h;
                d3.e.p(obj);
            }
            q0Var3.r();
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        q0 q0Var5 = this.f17864l;
        q0Var5.f17960a.requestTo(q0Var5.f17961b, p8.k0.f13337a);
        q0Var = this.f17864l;
        d1Var = this.f17865m;
        q0Var.l();
        Context context = q0Var.f17967h;
        p4.h.i(context, "context");
        c3.d.r(context, 50L);
        LinearLayout linearLayoutH = q0Var.h();
        p4.h.i(linearLayoutH, "indicators");
        int childCount = linearLayoutH.getChildCount();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = linearLayoutH.getChildAt(i12);
            p4.h.i(childAt, "getChildAt(index)");
            if (!(childAt instanceof Space)) {
                i11++;
            }
        }
        int i13 = i11 - 1;
        int i14 = i13 <= 0 ? 1 : -1;
        int childCount2 = linearLayoutH.getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            View childAt2 = linearLayoutH.getChildAt(i15);
            p4.h.i(childAt2, "getChildAt(index)");
            if (!(childAt2 instanceof Space)) {
                if (i13 == d1Var.f17882d) {
                    View viewFindViewById = childAt2.findViewById(R.id.view_indicator);
                    ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, 1.0f, 5.0f, 0.0f, viewFindViewById.getMeasuredHeight());
                    scaleAnimation.setDuration(150L);
                    scaleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
                    scaleAnimation.setAnimationListener(new a(viewFindViewById));
                    viewFindViewById.startAnimation(scaleAnimation);
                }
                i13 += i14;
            }
        }
        this.f17860h = q0Var;
        this.f17861i = q0Var;
        this.f17862j = d1Var;
        this.f17863k = 1;
        if (DelayKt.delay(300L, this) == aVar) {
            return aVar;
        }
        q0Var2 = q0Var;
        LinearLayout linearLayoutH2 = q0Var2.h();
        p4.h.i(linearLayoutH2, "indicators");
        f1.b.e(linearLayoutH2, false, d1Var.f17882d, q0Var2.f17965f, 100L, 16);
        q0Var2.u(d1Var.f17882d);
        this.f17860h = q0Var;
        this.f17861i = null;
        this.f17862j = null;
        this.f17863k = 2;
        if (DelayKt.delay(110L, this) == aVar) {
            return aVar;
        }
        q0Var3 = q0Var;
        q0Var3.r();
        return fd.o.f7408a;
    }
}
