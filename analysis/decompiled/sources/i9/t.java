package i9;

import android.animation.Animator;
import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import q7.g1;
import q7.i1;
import q7.l0;
import q7.p0;

/* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t extends p8.b implements View.OnClickListener {

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final a f8929u0 = new a();

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final String f8930v0 = t.class.getSimpleName();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public p0 f8932i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public l0 f8933j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public i1 f8934k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public g1 f8935l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public o8.d f8936m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public IDeviceController f8937n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public IAdaptRequester f8938o0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f8940q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f8941r0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f8931h0 = "CalibrateOrthoticsFragment";

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f8939p0 = 1;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final fd.d f8942s0 = androidx.lifecycle.o.w(3, d.f8946h);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final fd.h f8943t0 = (fd.h) androidx.lifecycle.o.x(new c());

    /* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8944a;

        static {
            int[] iArr = new int[q.g.b(4).length];
            iArr[1] = 1;
            iArr[2] = 2;
            iArr[3] = 3;
            int[] iArr2 = new int[Shoe.values().length];
            iArr2[Shoe.LEFT.ordinal()] = 1;
            iArr2[Shoe.RIGHT.ordinal()] = 2;
            f8944a = iArr2;
        }
    }

    /* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
    public static final class c extends rd.o implements qd.a<ArrayList<u8.g>> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final ArrayList<u8.g> invoke() {
            return androidx.lifecycle.o.e(new u8.q(t.this.d0(), null, 0L, 30), new u8.c(R.id.fragment_calibrate_orthotics_container, t.this));
        }
    }

    /* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
    public static final class d extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f8946h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        fd.o oVar = null;
        if ((context instanceof o8.d ? (o8.d) context : null) != null) {
            this.f8936m0 = (o8.d) context;
            oVar = fd.o.f7408a;
        }
        if (oVar != null) {
            return;
        }
        throw new IllegalStateException("Activity must implement " + o8.d.class);
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f8938o0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, w.f8949h, new u(this));
        this.f8937n0 = ((o7.f) androidx.lifecycle.o.m()).b(this, this.d0);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String strR;
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_calibrate_orthotics, viewGroup, false);
        Objects.requireNonNull(viewInflate, "rootView");
        LinearLayout linearLayout = (LinearLayout) viewInflate;
        this.f8932i0 = new p0(linearLayout);
        this.f8933j0 = l0.a(linearLayout);
        p0 p0Var = this.f8932i0;
        if (p0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        this.f8934k0 = i1.a(p0Var.f13967a);
        p0 p0Var2 = this.f8932i0;
        if (p0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        this.f8935l0 = g1.a(p0Var2.f13967a);
        p0 p0Var3 = this.f8932i0;
        if (p0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        LinearLayout linearLayout2 = p0Var3.f13967a;
        i1 i1Var = this.f8934k0;
        if (i1Var == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var.f13858c.setText(R.string.adapt_orthotics_insert_title);
        i1 i1Var2 = this.f8934k0;
        if (i1Var2 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        j0.a0.q(i1Var2.f13858c, true);
        i1 i1Var3 = this.f8934k0;
        if (i1Var3 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var3.f13858c.setTextColor(androidx.lifecycle.o.o(R.color.text_color_black));
        i1 i1Var4 = this.f8934k0;
        if (i1Var4 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        TextView textView = i1Var4.f13856a;
        Context context = linearLayout2.getContext();
        Pair[] pairArr = new Pair[1];
        s9.p pVar = s9.p.f15222a;
        s9.r rVarD = ((h8.d) this.f8942s0.getValue()).d();
        switch (rVarD == null ? -1 : s9.p.b.f15227a[rVarD.ordinal()]) {
            case 1:
                strR = androidx.lifecycle.o.r(R.string.shoes_model_name_adapt_bb);
                break;
            case 2:
                strR = androidx.lifecycle.o.r(R.string.shoes_model_name_adapt_huarache);
                break;
            case 3:
                strR = androidx.lifecycle.o.r(R.string.adapt_bb2_alternate_shorter_name);
                break;
            case 4:
                strR = androidx.lifecycle.o.r(R.string.shoes_model_name_adapt_automax);
                break;
            case 5:
            case 6:
                strR = androidx.lifecycle.o.r(R.string.adapt_air_jordan_XI_alternate_shorter_name);
                break;
            default:
                strR = androidx.lifecycle.o.r(R.string.shoes_model_name_adapt_bb);
                break;
        }
        pairArr[0] = new Pair("shoe_model", strR);
        textView.setText(s9.e.a(context, R.string.adapt_orthotics_insert_body, pairArr));
        i1 i1Var5 = this.f8934k0;
        if (i1Var5 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var5.f13856a.setTextColor(androidx.lifecycle.o.o(R.color.text_color_black));
        g1 g1Var = this.f8935l0;
        if (g1Var == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var.f13825a.setText(R.string.adapt_onboarding_next_button);
        g1 g1Var2 = this.f8935l0;
        if (g1Var2 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var2.f13825a.setTextColor(androidx.lifecycle.o.o(R.color.text_color_white));
        g1 g1Var3 = this.f8935l0;
        if (g1Var3 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var3.f13825a.setOnClickListener(this);
        g1 g1Var4 = this.f8935l0;
        if (g1Var4 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var4.f13825a.setBackground(linearLayout2.getResources().getDrawable(R.drawable.background_dark_pill_button, null));
        g1 g1Var5 = this.f8935l0;
        if (g1Var5 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var5.f13825a.setAlpha(0.0f);
        g1 g1Var6 = this.f8935l0;
        if (g1Var6 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var6.f13825a.setClickable(false);
        g1 g1Var7 = this.f8935l0;
        if (g1Var7 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var7.f13826b.setText(R.string.adapt_cancel_title);
        g1 g1Var8 = this.f8935l0;
        if (g1Var8 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var8.f13826b.setTextColor(androidx.lifecycle.o.o(R.color.text_color_black));
        g1 g1Var9 = this.f8935l0;
        if (g1Var9 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var9.f13826b.setOnClickListener(this);
        g1 g1Var10 = this.f8935l0;
        if (g1Var10 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var10.f13826b.setVisibility(0);
        l0 l0Var = this.f8933j0;
        if (l0Var == null) {
            p4.h.C("contentMessagingHeadlineWithCtaBinding");
            throw null;
        }
        l0Var.f13916b.setAlpha(0.0f);
        ImageView imageView = new ImageView(linearLayout2.getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        l0 l0Var2 = this.f8933j0;
        if (l0Var2 == null) {
            p4.h.C("contentMessagingHeadlineWithCtaBinding");
            throw null;
        }
        l0Var2.f13916b.addView(imageView);
        pVar.o(imageView, ((h8.d) this.f8942s0.getValue()).f(), 2);
        return linearLayout2;
    }

    @Override // p8.b, p8.r, p8.h, androidx.fragment.app.m
    public final void S() {
        super.S();
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.ORTHOTICS);
    }

    @Override // p8.b, p8.h, androidx.fragment.app.m
    public final void T() {
        super.T();
        IDeviceController iDeviceController = this.f8937n0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        Shoe shoe = Shoe.BOTH;
        g9.k kVar = g9.k.f7894a;
        iDeviceController.requestTo(shoe, new p8.f0(g9.k.d()));
    }

    @Override // p8.b
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.d0)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.f8937n0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.f8937n0;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(Shoe.BOTH, new p8.f0(false));
        IDeviceController iDeviceController3 = this.f8937n0;
        if (iDeviceController3 != null) {
            iDeviceController3.requestTo(adaptConnectionStatusResult.getShoe(), new p8.d0(5, 2));
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (!AdaptEventResponderKt.block(deviceControllerResult, this.d0) && (deviceControllerResult instanceof ServoMoveCompleteBroadcastResult)) {
            int i10 = b.f8944a[((ServoMoveCompleteBroadcastResult) deviceControllerResult).getShoe().ordinal()];
            if (i10 == 1) {
                this.f8941r0 = true;
            } else if (i10 == 2) {
                this.f8940q0 = true;
            }
            if (this.f8941r0 && this.f8940q0) {
                g1 g1Var = this.f8935l0;
                if (g1Var == null) {
                    p4.h.C("itemMessagingCtaBinding");
                    throw null;
                }
                g1Var.f13825a.setAlpha(1.0f);
                g1 g1Var2 = this.f8935l0;
                if (g1Var2 != null) {
                    g1Var2.f13825a.setClickable(true);
                } else {
                    p4.h.C("itemMessagingCtaBinding");
                    throw null;
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        p4.h.j(view, TracePayload.VERSION_KEY);
        switch (view.getId()) {
            case R.id.messaging_cta_primary /* 2131362536 */:
                int i10 = this.f8939p0;
                androidx.appcompat.widget.o.d(i10, "<this>");
                int[] iArrB = q.g.b(4);
                int i11 = iArrB[(q.g.a(i10) + 1) % iArrB.length];
                this.f8939p0 = i11;
                int iA = q.g.a(i11);
                if (iA == 1) {
                    i1 i1Var = this.f8934k0;
                    if (i1Var == null) {
                        p4.h.C("itemMessagingHeadlineBinding");
                        throw null;
                    }
                    TextView textView = i1Var.f13858c;
                    p4.h.i(textView, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
                    f1.b.p(textView, androidx.lifecycle.o.r(R.string.adapt_orthotics_shoes_down_title));
                    i1 i1Var2 = this.f8934k0;
                    if (i1Var2 == null) {
                        p4.h.C("itemMessagingHeadlineBinding");
                        throw null;
                    }
                    j0.a0.q(i1Var2.f13858c, true);
                    i1 i1Var3 = this.f8934k0;
                    if (i1Var3 == null) {
                        p4.h.C("itemMessagingHeadlineBinding");
                        throw null;
                    }
                    TextView textView2 = i1Var3.f13856a;
                    p4.h.i(textView2, "itemMessagingHeadlineBin…messagingHeadlineMessage1");
                    f1.b.p(textView2, androidx.lifecycle.o.r(R.string.adapt_orthotics_shoes_down_body));
                    o7.x.f12420a.a("Orthotics - Pressed: Next");
                    return;
                }
                if (iA != 2) {
                    if (iA != 3) {
                        return;
                    }
                    TrackManager.INSTANCE.isCalibrateOrthoticsCompleted();
                    o8.d dVar = this.f8936m0;
                    if (dVar == null) {
                        p4.h.C("stateListener");
                        throw null;
                    }
                    dVar.O(o8.a.ADAPT_SHOE);
                    o7.x.f12420a.a("Orthotics - Pressed: Finish");
                    return;
                }
                TrackManager.INSTANCE.isCalibrateOrthoticsStarted();
                g1 g1Var = this.f8935l0;
                if (g1Var == null) {
                    p4.h.C("itemMessagingCtaBinding");
                    throw null;
                }
                g1Var.f13825a.setClickable(false);
                this.f8941r0 = false;
                this.f8940q0 = false;
                IDeviceController iDeviceController = this.f8937n0;
                if (iDeviceController == null) {
                    p4.h.C("deviceController");
                    throw null;
                }
                iDeviceController.requestTo(Shoe.BOTH, new p8.d0(0, 2));
                l0 l0Var = this.f8933j0;
                if (l0Var == null) {
                    p4.h.C("contentMessagingHeadlineWithCtaBinding");
                    throw null;
                }
                LinearLayout linearLayout = l0Var.f13917c;
                p4.h.i(linearLayout, "contentMessagingHeadline….messagingCenterContainer");
                Animator animatorG = f1.b.g(linearLayout, false, 6);
                animatorG.addListener(new v(this));
                animatorG.start();
                o7.x.f12420a.a("Orthotics - Pressed: Next (Floor & Calibrate)");
                return;
            case R.id.messaging_cta_secondary /* 2131362537 */:
                o8.d dVar2 = this.f8936m0;
                if (dVar2 == null) {
                    p4.h.C("stateListener");
                    throw null;
                }
                dVar2.O(o8.a.PUT_SHOES_ON);
                o7.x.f12420a.a("Orthotics - Pressed: Cancel");
                return;
            default:
                return;
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f8931h0;
    }

    @Override // p8.b
    public final List<u8.g> t0() {
        return (List) this.f8943t0.getValue();
    }
}
