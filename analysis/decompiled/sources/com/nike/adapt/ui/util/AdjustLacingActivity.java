package com.nike.adapt.ui.util;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.DeviceFoundAndReadyToConnect;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.ui.util.AdjustLacingActivity;
import ea.m;
import fe.k;
import java.util.List;
import java.util.Vector;
import o7.f;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p4.a0;
import p4.h;
import p8.a;
import p8.d0;
import p8.n;
import q7.h0;
import q7.l1;
import q7.m1;
import t9.c;
import v7.b;
import x8.f0;
import x8.i0;
import x8.n0;
import x8.q0;
import x8.t;
import y0.y;

/* JADX INFO: compiled from: AdjustLacingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdjustLacingActivity extends a implements q0.a {
    public static final /* synthetic */ int Q = 0;
    public h0 I;
    public IAdaptRequester J;
    public IDeviceController K;
    public n0 L;
    public f0 M;
    public Animator O;
    public final List<b9.a> N = new Vector();
    public final c P = new c();

    @Override // x8.q0.a
    public final void W(Shoe shoe) {
        h.j(shoe, "shoe");
        this.P.d(true, shoe);
        t0(this.P.c());
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        q0 q0Var;
        q0 q0Var2;
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        u0(adaptConnectionStatusResult.getShoe());
        if (adaptConnectionStatusResult instanceof DeviceFoundAndReadyToConnect) {
            if (adaptConnectionStatusResult.getShoe().isRight()) {
                q0Var2 = this.L;
                if (q0Var2 == null) {
                    h.C("rightShoeControllerUiHelper");
                    throw null;
                }
            } else {
                q0Var2 = this.M;
                if (q0Var2 == null) {
                    h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            }
            if (!q0Var2.w()) {
                q0Var2.q();
            }
            q0Var2.l();
            return;
        }
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair)) {
            if (adaptConnectionStatusResult instanceof Disconnected) {
                if (adaptConnectionStatusResult.getShoe().isRight()) {
                    q0Var = this.L;
                    if (q0Var == null) {
                        h.C("rightShoeControllerUiHelper");
                        throw null;
                    }
                } else {
                    q0Var = this.M;
                    if (q0Var == null) {
                        h.C("leftShoeControllerUiHelper");
                        throw null;
                    }
                }
                q0Var.l();
                r0(adaptConnectionStatusResult.getShoe(), false);
                return;
            }
            return;
        }
        m device = adaptConnectionStatusResult.getDevice();
        if (device != null) {
            IDeviceController iDeviceController = this.K;
            if (iDeviceController == null) {
                h.C("deviceController");
                throw null;
            }
            iDeviceController.subscribe(device);
        }
        IDeviceController iDeviceController2 = this.K;
        if (iDeviceController2 == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), n.f13339a);
        g9.k kVar = g9.k.f7894a;
        b bVarA = g9.k.a();
        int i10 = adaptConnectionStatusResult.getShoe().isRight() ? bVarA.f16364b : bVarA.f16363a;
        IDeviceController iDeviceController3 = this.K;
        if (iDeviceController3 == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController3.requestTo(adaptConnectionStatusResult.getShoe(), new d0(i10, 1));
        this.P.d(true, adaptConnectionStatusResult.getShoe());
        t0(this.P.b(adaptConnectionStatusResult.getShoe().isLeft()));
        r0(adaptConnectionStatusResult.getShoe(), true);
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        q0 q0Var;
        q0 q0Var2;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetLacingPercentResult) {
            GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
            if (getLacingPercentResult.getShoe().isLeft()) {
                q0Var2 = this.M;
                if (q0Var2 == null) {
                    h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            } else {
                n0 n0Var = this.L;
                if (n0Var == null) {
                    h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                q0Var2 = n0Var;
            }
            a0 a0Var = new a0(this, deviceControllerResult, q0Var2, getLacingPercentResult.getRelativePercent() > -1 ? new i0(getLacingPercentResult.getRelativePercent()) : t.f18008a, 1);
            q0Var2.B = a0Var;
            if (!q0Var2.A || q0Var2.f17967h == null) {
                return;
            }
            a0Var.run();
            return;
        }
        if (!(deviceControllerResult instanceof ServoMoveCompleteBroadcastResult)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                p7.b bVar = p7.b.f13281a;
                h0 h0Var = this.I;
                if (h0Var == null) {
                    h.C("binding");
                    throw null;
                }
                ConstraintLayout constraintLayout = h0Var.f13836a;
                h.i(constraintLayout, "binding.adjustLacingActivityParent");
                p7.b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                return;
            }
            return;
        }
        ServoMoveCompleteBroadcastResult servoMoveCompleteBroadcastResult = (ServoMoveCompleteBroadcastResult) deviceControllerResult;
        this.P.d(false, servoMoveCompleteBroadcastResult.getShoe());
        t0(this.P.c());
        if (servoMoveCompleteBroadcastResult.getShoe().isRight()) {
            q0Var = this.L;
            if (q0Var == null) {
                h.C("rightShoeControllerUiHelper");
                throw null;
            }
        } else {
            q0Var = this.M;
            if (q0Var == null) {
                h.C("leftShoeControllerUiHelper");
                throw null;
            }
        }
        q0Var.k(servoMoveCompleteBroadcastResult.getRelativePercent(), true);
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        setResult(0, new Intent());
        finish();
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.adjust_lacing_activity, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        int i10 = R.id.adjust_lacing_container;
        View viewD = g7.b.d(viewInflate, R.id.adjust_lacing_container);
        if (viewD != null) {
            m1 m1VarA = m1.a(viewD);
            i10 = R.id.adjust_lacing_cta;
            Button button = (Button) g7.b.d(viewInflate, R.id.adjust_lacing_cta);
            if (button != null) {
                i10 = R.id.adjust_lacing_subtitle;
                if (((TextView) g7.b.d(viewInflate, R.id.adjust_lacing_subtitle)) != null) {
                    i10 = R.id.adjust_lacing_title;
                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.adjust_lacing_title);
                    if (textView != null) {
                        this.I = new h0(constraintLayout, constraintLayout, m1VarA, button, textView);
                        setContentView(constraintLayout);
                        p7.b bVar = p7.b.f13281a;
                        h0 h0Var = this.I;
                        if (h0Var == null) {
                            h.C("binding");
                            throw null;
                        }
                        ConstraintLayout constraintLayout2 = h0Var.f13836a;
                        h.i(constraintLayout2, "binding.adjustLacingActivityParent");
                        p7.b.f13281a.e(constraintLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                        c cVar = this.P;
                        cVar.f15579a = true;
                        cVar.f15580b = true;
                        this.J = ((f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                        IDeviceController iDeviceControllerB = ((f) o.m()).b(this, this.B);
                        this.K = iDeviceControllerB;
                        if (iDeviceControllerB == null) {
                            h.C("deviceController");
                            throw null;
                        }
                        h0 h0Var2 = this.I;
                        if (h0Var2 == null) {
                            h.C("binding");
                            throw null;
                        }
                        m1 m1Var = h0Var2.f13837b;
                        h.i(m1Var, "binding.adjustLacingContainer");
                        this.M = new f0(iDeviceControllerB, m1Var, this, false, null, 56);
                        IDeviceController iDeviceController = this.K;
                        if (iDeviceController == null) {
                            h.C("deviceController");
                            throw null;
                        }
                        h0 h0Var3 = this.I;
                        if (h0Var3 == null) {
                            h.C("binding");
                            throw null;
                        }
                        m1 m1Var2 = h0Var3.f13837b;
                        h.i(m1Var2, "binding.adjustLacingContainer");
                        this.L = new n0(iDeviceController, m1Var2, this, false, null, 56);
                        f0 f0Var = this.M;
                        if (f0Var == null) {
                            h.C("leftShoeControllerUiHelper");
                            throw null;
                        }
                        f0Var.n(this);
                        n0 n0Var = this.L;
                        if (n0Var == null) {
                            h.C("rightShoeControllerUiHelper");
                            throw null;
                        }
                        n0Var.n(this);
                        h0 h0Var4 = this.I;
                        if (h0Var4 == null) {
                            h.C("binding");
                            throw null;
                        }
                        h0Var4.f13837b.f13927a.f13919b.post(new y(this, 6));
                        h0 h0Var5 = this.I;
                        if (h0Var5 == null) {
                            h.C("binding");
                            throw null;
                        }
                        h0Var5.f13837b.f13928b.f13919b.post(new y0.s(this, 7));
                        h0 h0Var6 = this.I;
                        if (h0Var6 == null) {
                            h.C("binding");
                            throw null;
                        }
                        h0Var6.f13838c.setOnClickListener(new o8.k(this, 4));
                        h0 h0Var7 = this.I;
                        if (h0Var7 != null) {
                            j0.a0.q(h0Var7.f13839d, true);
                            return;
                        } else {
                            h.C("binding");
                            throw null;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final b9.a p0(Shoe shoe) {
        l1 l1Var;
        if (shoe.isRight()) {
            h0 h0Var = this.I;
            if (h0Var == null) {
                h.C("binding");
                throw null;
            }
            l1Var = h0Var.f13837b.f13928b;
        } else {
            h0 h0Var2 = this.I;
            if (h0Var2 == null) {
                h.C("binding");
                throw null;
            }
            l1Var = h0Var2.f13837b.f13927a;
        }
        ImageView imageView = l1Var.f13918a;
        h.i(imageView, "if (shoe.isRight()) bind…rContainer.shoeController");
        return new b9.a(shoe, imageView);
    }

    public final void q0(ImageView imageView) {
        imageView.setScaleX(1.0f);
        imageView.setScaleY(1.0f);
        imageView.setImageTintList(ColorStateList.valueOf(-1));
        imageView.setAlpha(1.0f);
    }

    public final void r0(Shoe shoe, boolean z10) {
        if (shoe.isLeft()) {
            f0 f0Var = this.M;
            if (f0Var != null) {
                f0Var.s(z10);
                return;
            } else {
                h.C("leftShoeControllerUiHelper");
                throw null;
            }
        }
        n0 n0Var = this.L;
        if (n0Var != null) {
            n0Var.s(z10);
        } else {
            h.C("rightShoeControllerUiHelper");
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<b9.a>, java.util.Vector] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<b9.a>, java.util.Vector] */
    public final void s0(b9.a aVar) {
        this.N.remove(aVar);
        if (this.N.isEmpty()) {
            Animator animator = this.O;
            if (animator != null) {
                animator.cancel();
            }
            this.O = null;
        }
        q0(aVar.f3577b);
    }

    public final void t0(boolean z10) {
        h0 h0Var = this.I;
        if (h0Var == null) {
            h.C("binding");
            throw null;
        }
        h0Var.f13838c.setEnabled(!z10);
        h0 h0Var2 = this.I;
        if (h0Var2 != null) {
            h0Var2.f13838c.setAlpha(!z10 ? 1.0f : 0.5f);
        } else {
            h.C("binding");
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<b9.a>, java.util.Vector] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List<b9.a>, java.util.Vector] */
    public final void u0(Shoe shoe) {
        boolean zIsConnected = (shoe.isRight() ? InMemoryCache.INSTANCE.getRightDevice() : InMemoryCache.INSTANCE.getLeftDevice()).isConnected();
        b9.a aVarP0 = p0(shoe.isRight() ? Shoe.RIGHT : Shoe.LEFT);
        if (zIsConnected) {
            s0(aVarP0);
            return;
        }
        Animator animator = this.O;
        if (animator == null) {
            final float f10 = 0.13f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.1f);
            h.i(valueAnimatorOfFloat, "");
            valueAnimatorOfFloat.addListener(new q9.b(valueAnimatorOfFloat));
            valueAnimatorOfFloat.setRepeatMode(2);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(1.2f));
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: q9.a
                /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<b9.a>, java.util.Vector] */
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AdjustLacingActivity adjustLacingActivity = this.f14168a;
                    float f11 = f10;
                    int i10 = AdjustLacingActivity.Q;
                    h.j(adjustLacingActivity, "this$0");
                    h.j(valueAnimator, "animator");
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    h.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    for (b9.a aVar : adjustLacingActivity.N) {
                        ColorStateList imageTintList = aVar.f3577b.getImageTintList();
                        Context context = aVar.f3577b.getContext();
                        Object obj = y.a.f18143a;
                        if (!h.c(imageTintList, ColorStateList.valueOf(y.a.c.a(context, R.color.lacing_controller_default)))) {
                            ImageView imageView = aVar.f3577b;
                            imageView.setImageTintList(ColorStateList.valueOf(y.a.c.a(imageView.getContext(), R.color.lacing_controller_default)));
                        }
                        if (!(aVar.f3577b.getAlpha() == f11)) {
                            aVar.f3577b.setAlpha(f11);
                        }
                        aVar.f3577b.setScaleX(fFloatValue);
                        aVar.f3577b.setScaleY(fFloatValue);
                    }
                }
            });
            animator = valueAnimatorOfFloat;
        }
        if (!this.N.contains(aVarP0)) {
            this.N.add(aVarP0);
        }
        if (!animator.isRunning()) {
            animator.start();
        }
        this.O = animator;
    }
}
