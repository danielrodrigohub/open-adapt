package com.nike.adapt.ui.myshoes;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.airbnb.lottie.LottieAnimationView;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.newrelic.agent.android.payload.PayloadController;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetLedResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.Battery;
import ea.m;
import f9.i;
import fd.h;
import fe.k;
import h9.v0;
import java.util.ArrayList;
import java.util.List;
import o7.f;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p8.x;
import q7.e2;
import q7.t;
import s9.e;
import s9.p;
import s9.y;
import u8.g;
import u8.q;

/* JADX INFO: compiled from: SelectShoesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SelectShoesActivity extends p8.a implements View.OnClickListener {
    public static final /* synthetic */ int U = 0;
    public t I;
    public IDeviceController J;
    public IAdaptRequester K;
    public Handler L;
    public m M;
    public AdaptDeviceColor O;
    public AdaptDeviceColor P;
    public boolean Q;
    public t9.d N = t9.d.DISCONNECTED;
    public final h R = (h) o.x(new b());
    public final fd.d S = o.w(3, a.f5815h);
    public final d T = new d();

    /* JADX INFO: compiled from: SelectShoesActivity.kt */
    public static final class a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5815h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: SelectShoesActivity.kt */
    public static final class b extends rd.o implements qd.a<ArrayList<q>> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final ArrayList<q> invoke() {
            SelectShoesActivity selectShoesActivity = SelectShoesActivity.this;
            return o.e(new q(selectShoesActivity, new com.nike.adapt.ui.myshoes.a(selectShoesActivity), 0L, 28));
        }
    }

    /* JADX INFO: compiled from: SelectShoesActivity.kt */
    public static final class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            p4.h.j(animator, "animation");
            super.onAnimationEnd(animator);
            new v0(false, 1, null).e(SelectShoesActivity.this);
            SelectShoesActivity.this.finish();
        }
    }

    /* JADX INFO: compiled from: SelectShoesActivity.kt */
    public static final class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SelectShoesActivity.this.isFinishing()) {
                return;
            }
            SelectShoesActivity selectShoesActivity = SelectShoesActivity.this;
            if (selectShoesActivity.M != null) {
                IAdaptRequester iAdaptRequester = selectShoesActivity.K;
                if (iAdaptRequester == null) {
                    p4.h.C("adaptRequester");
                    throw null;
                }
                if (iAdaptRequester.connectIfNotConnected()) {
                    Handler handler = selectShoesActivity.L;
                    if (handler != null) {
                        handler.postDelayed(this, PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
                    } else {
                        p4.h.C("handler");
                        throw null;
                    }
                }
            }
        }
    }

    @Override // p8.a
    public final List<g> o0() {
        return (List) this.R.getValue();
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.F.b(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        if (p4.h.c(adaptConnectionStatusResult.getDevice(), this.M) && this.F.a() && this.Q) {
            IDeviceController iDeviceController2 = this.J;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), x.f13349a);
            t tVar = this.I;
            if (tVar == null) {
                p4.h.C("binding");
                throw null;
            }
            tVar.f14007d.setAnimation("lottie_ic_check.json");
            t tVar2 = this.I;
            if (tVar2 == null) {
                p4.h.C("binding");
                throw null;
            }
            tVar2.f14007d.setRepeatCount(0);
            t tVar3 = this.I;
            if (tVar3 == null) {
                p4.h.C("binding");
                throw null;
            }
            tVar3.f14007d.e();
            t tVar4 = this.I;
            if (tVar4 != null) {
                tVar4.f14007d.c(new c());
            } else {
                p4.h.C("binding");
                throw null;
            }
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        AdaptDeviceColor adaptDeviceColor;
        p4.h.j(deviceControllerResult, "result");
        if (!AdaptEventResponderKt.block(deviceControllerResult, this.B) && (deviceControllerResult instanceof GetLedResult)) {
            GetLedResult getLedResult = (GetLedResult) deviceControllerResult;
            boolean zIsRight = getLedResult.getShoe().isRight();
            AdaptDeviceColor shoeLed = getLedResult.getShoeLed();
            if (zIsRight) {
                this.P = shoeLed;
            } else {
                this.O = shoeLed;
            }
            AdaptDeviceColor adaptDeviceColor2 = this.O;
            if (adaptDeviceColor2 == null || (adaptDeviceColor = this.P) == null) {
                return;
            }
            p0().b0(AdaptShoeColor.Companion.create(adaptDeviceColor2, adaptDeviceColor));
            this.O = null;
            this.P = null;
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (this.N == t9.d.CONNECTING) {
            new v0(false, 1, null).e(this);
        } else {
            super.onBackPressed();
            overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        p4.h.j(view, TracePayload.VERSION_KEY);
        switch (view.getId()) {
            case R.id.messaging_cta_primary /* 2131362536 */:
                Handler handler = this.L;
                if (handler == null) {
                    p4.h.C("handler");
                    throw null;
                }
                handler.postDelayed(this.T, PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
                this.Q = true;
                p0().C(true);
                p0().g(true);
                p0().g0(true);
                InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                inMemoryCache.setHasShoeUpdates(false);
                this.N = t9.d.CONNECTING;
                inMemoryCache.getRightDevice().setBattery(new Battery(0, null, 3, null));
                inMemoryCache.getLeftDevice().setBattery(new Battery(0, null, 3, null));
                t tVar = this.I;
                if (tVar == null) {
                    p4.h.C("binding");
                    throw null;
                }
                tVar.f14007d.setVisibility(0);
                t tVar2 = this.I;
                if (tVar2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                tVar2.f14007d.setRepeatCount(-1);
                t tVar3 = this.I;
                if (tVar3 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                tVar3.f14007d.e();
                t tVar4 = this.I;
                if (tVar4 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                tVar4.f14005b.setVisibility(8);
                t tVar5 = this.I;
                if (tVar5 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                tVar5.f14006c.setVisibility(8);
                IAdaptRequester iAdaptRequester = this.K;
                if (iAdaptRequester == null) {
                    p4.h.C("adaptRequester");
                    throw null;
                }
                iAdaptRequester.disconnect();
                m mVar = this.M;
                if (mVar != null) {
                    IAdaptRequester iAdaptRequester2 = this.K;
                    if (iAdaptRequester2 != null) {
                        iAdaptRequester2.connect(mVar);
                        return;
                    } else {
                        p4.h.C("adaptRequester");
                        throw null;
                    }
                }
                return;
            case R.id.messaging_cta_secondary /* 2131362537 */:
                y yVar = y.f15252a;
                m mVar2 = this.M;
                String strValueOf = String.valueOf(mVar2 != null ? mVar2.f6665i : null);
                f9.g gVar = f9.g.f7111h;
                i iVar = new i(this);
                p4.h.j(gVar, "cancel");
                String strB = e.b(getString(R.string.adapt_myshoes_remove_headline), new Pair("nickname", strValueOf));
                p4.h.i(strB, "format(activity, R.strin…ir(\"nickname\", nickName))");
                y.d(yVar, this, 0, strB, R.string.adapt_myshoes_remove_body_notconnected, 0, R.string.adapt_dismiss_button_title, R.string.adapt_settings_title, false, gVar, iVar, new y.a("REMOVE PAIRED SHOES", "DISMISS", "CANCEL", 8), 146);
                return;
            default:
                return;
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_select_shoes, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        int i10 = R.id.activity_select_shoes_icon;
        ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.activity_select_shoes_icon);
        if (imageView != null) {
            i10 = R.id.messaging_cta_primary;
            Button button = (Button) g7.b.d(viewInflate, R.id.messaging_cta_primary);
            if (button != null) {
                i10 = R.id.messaging_cta_secondary;
                Button button2 = (Button) g7.b.d(viewInflate, R.id.messaging_cta_secondary);
                if (button2 != null) {
                    i10 = R.id.select_shoe_lottie;
                    LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewInflate, R.id.select_shoe_lottie);
                    if (lottieAnimationView != null) {
                        i10 = R.id.view_toolbar;
                        View viewD = g7.b.d(viewInflate, R.id.view_toolbar);
                        if (viewD != null) {
                            e2.a(viewD);
                            this.I = new t(constraintLayout, imageView, button, button2, lottieAnimationView);
                            setContentView(constraintLayout);
                            CharSequence charSequenceR = o.r(R.string.adapt_myshoes_index_headline);
                            View viewFindViewById = findViewById(R.id.bgf_toolbar);
                            p4.h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                            k0((Toolbar) viewFindViewById);
                            f.a aVarI0 = i0();
                            if (aVarI0 != null) {
                                aVarI0.o(charSequenceR);
                                aVarI0.m(true);
                            }
                            this.L = new Handler();
                            this.M = (m) (bundle == null ? getIntent().getParcelableExtra("PARAM_SELECTED_PAIR") : bundle.getParcelable("PARAM_SELECTED_PAIR"));
                            p pVar = p.f15222a;
                            t tVar = this.I;
                            if (tVar == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            ImageView imageView2 = tVar.f14004a;
                            p4.h.i(imageView2, "binding.activitySelectShoesIcon");
                            m mVar = this.M;
                            pVar.o(imageView2, mVar != null ? mVar.f6670n : null, 1);
                            this.K = ((f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                            this.J = ((f) o.m()).b(this, this.B);
                            t tVar2 = this.I;
                            if (tVar2 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            tVar2.f14005b.setOnClickListener(this);
                            t tVar3 = this.I;
                            if (tVar3 != null) {
                                tVar3.f14006c.setOnClickListener(this);
                                return;
                            } else {
                                p4.h.C("binding");
                                throw null;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        p4.h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        p4.h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("PARAM_SELECTED_PAIR", this.M);
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        Handler handler = this.L;
        if (handler == null) {
            p4.h.C("handler");
            throw null;
        }
        handler.removeCallbacks(this.T);
        super.onStop();
    }

    public final h8.a p0() {
        return (h8.a) this.S.getValue();
    }
}
