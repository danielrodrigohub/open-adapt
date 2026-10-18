package i9;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceLEDIntensityADK;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.adk.model.BatteryState;
import com.nike.adapt.analytics.TrackManager;
import h9.v0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import q7.u0;

/* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends p8.b {

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final a f8833q0 = new a();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final String f8834r0 = b0.class.getSimpleName();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public u0 f8836i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public o8.d f8837j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public IAdaptRequester f8838k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public IDeviceController f8839l0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f8841n0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f8835h0 = "PutOnShoesOnBoardingFragment";

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final t9.b f8840m0 = new t9.b();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final fd.d f8842o0 = androidx.lifecycle.o.w(3, e.f8847h);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final fd.h f8843p0 = (fd.h) androidx.lifecycle.o.x(new b());

    /* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
    public static final class b extends rd.o implements qd.a<ArrayList<u8.g>> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final ArrayList<u8.g> invoke() {
            return androidx.lifecycle.o.e(new u8.q(b0.this.d0(), null, 0L, 30), new u8.c(R.id.fragment_put_on_shoes_onboarding_container, b0.this));
        }
    }

    /* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
    public static final class c extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            p4.h.j(dVar, "it");
            b0 b0Var = b0.this;
            a aVar = b0.f8833q0;
            b0Var.u0().h(v7.g.COMPLETED);
            b0.this.u0().i(v7.h.NORMAL);
            new v0(false, 1, null).e(b0.this.d0());
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
    public static final class d extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f8846h = new d();

        public d() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: PutOnShoesOnBoardingFragment.kt */
    public static final class e extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f8847h = new e();

        public e() {
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
            this.f8837j0 = (o8.d) context;
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
        this.f8838k0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, d0.f8857h, new c0(this));
        this.f8839l0 = ((o7.f) androidx.lifecycle.o.m()).b(this, this.d0);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String strR;
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_put_on_shoes_onboarding, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        int i10 = R.id.put_on_shoes_begin_button;
        Button button = (Button) g7.b.d(viewInflate, R.id.put_on_shoes_begin_button);
        if (button != null) {
            i10 = R.id.put_on_shoes_constraint_layout;
            if (((ConstraintLayout) g7.b.d(viewInflate, R.id.put_on_shoes_constraint_layout)) != null) {
                i10 = R.id.put_on_shoes_description_one;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.put_on_shoes_description_one);
                if (textView != null) {
                    i10 = R.id.put_on_shoes_image_view;
                    ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.put_on_shoes_image_view);
                    if (imageView != null) {
                        i10 = R.id.put_on_shoes_secondary_button;
                        Button button2 = (Button) g7.b.d(viewInflate, R.id.put_on_shoes_secondary_button);
                        if (button2 != null) {
                            i10 = R.id.put_on_shoes_title;
                            TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.put_on_shoes_title);
                            if (textView2 != null) {
                                i10 = R.id.put_on_your_shoes_tertiary_button;
                                Button button3 = (Button) g7.b.d(viewInflate, R.id.put_on_your_shoes_tertiary_button);
                                if (button3 != null) {
                                    i10 = R.id.space_when_no_secondary_button;
                                    Space space = (Space) g7.b.d(viewInflate, R.id.space_when_no_secondary_button);
                                    if (space != null) {
                                        this.f8836i0 = new u0(frameLayout, button, textView, imageView, button2, textView2, button3, space);
                                        int i11 = 1;
                                        boolean z10 = u0().k() != v7.g.COMPLETED;
                                        u0 u0Var = this.f8836i0;
                                        if (u0Var == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        u0Var.f14024d.setVisibility(z10 ? 0 : 8);
                                        u0 u0Var2 = this.f8836i0;
                                        if (u0Var2 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        u0Var2.f14027g.setVisibility(z10 ? 8 : 0);
                                        u0 u0Var3 = this.f8836i0;
                                        if (u0Var3 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        u0Var3.f14024d.setOnClickListener(new i9.b(this, i11));
                                        u0 u0Var4 = this.f8836i0;
                                        if (u0Var4 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        u0Var4.f14026f.setOnClickListener(new w8.b(this, 3));
                                        u0 u0Var5 = this.f8836i0;
                                        if (u0Var5 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        TextView textView3 = u0Var5.f14022b;
                                        s9.p pVar = s9.p.f15222a;
                                        s9.r rVarD = u0().d();
                                        switch (rVarD == null ? -1 : s9.p.b.f15227a[rVarD.ordinal()]) {
                                            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                                                strR = "";
                                                break;
                                            case 0:
                                            default:
                                                throw new j2.a();
                                            case 1:
                                            case 3:
                                                strR = androidx.lifecycle.o.r(R.string.put_on_your_shoes_body_bb);
                                                break;
                                            case 2:
                                            case 4:
                                                strR = androidx.lifecycle.o.r(R.string.put_on_your_shoes_body_nsw);
                                                break;
                                            case 5:
                                            case 6:
                                                strR = androidx.lifecycle.o.r(R.string.put_on_your_shoes_body_jordan);
                                                break;
                                        }
                                        textView3.setText(strR);
                                        u0 u0Var6 = this.f8836i0;
                                        if (u0Var6 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        ImageView imageView2 = u0Var6.f14023c;
                                        p4.h.i(imageView2, "binding.putOnShoesImageView");
                                        pVar.o(imageView2, u0().f(), 2);
                                        u0 u0Var7 = this.f8836i0;
                                        if (u0Var7 == null) {
                                            p4.h.C("binding");
                                            throw null;
                                        }
                                        u0Var7.f14021a.setOnClickListener(new w8.c(this, 4));
                                        u0 u0Var8 = this.f8836i0;
                                        if (u0Var8 != null) {
                                            j0.a0.q(u0Var8.f14025e, true);
                                            return frameLayout;
                                        }
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.b
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        AdaptMarshaller.AdaptPreset adaptPresetM;
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.d0)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.f8839l0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        v7.h hVarC = u0().c();
        Objects.requireNonNull(hVarC);
        if ((hVarC == v7.h.MODES_CALIBRATE || hVarC == v7.h.MODES_CALIBRATE_WITH_ORTHOTICS) || u0().c().b() || (adaptPresetM = s9.p.f15222a.m(u0().f())) == null) {
            return;
        }
        AdaptDeviceColor adaptDeviceColor = new AdaptDeviceColor(adaptPresetM, AdaptDeviceLEDIntensityADK.HIGHEST);
        IDeviceController iDeviceController2 = this.f8839l0;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(Shoe.LEFT, new p8.j(adaptDeviceColor));
        IDeviceController iDeviceController3 = this.f8839l0;
        if (iDeviceController3 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController3.requestTo(Shoe.RIGHT, new p8.j(adaptDeviceColor));
        int i10 = h8.a.f8296a;
        h8.c.f8298b.b0(AdaptShoeColor.Companion.create(adaptDeviceColor, adaptDeviceColor));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        boolean z10;
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.d0)) {
            return;
        }
        this.f8840m0.d(deviceControllerResult);
        if ((deviceControllerResult instanceof GetBatteryPercentResult) && this.f8840m0.b()) {
            t9.b bVar = this.f8840m0;
            Battery battery = bVar.f15572c;
            BatteryState state = battery != null ? battery.getState() : null;
            BatteryState batteryState = BatteryState.OFF_CHARGER;
            if (state != batteryState) {
                z10 = false;
            } else {
                Battery battery2 = bVar.f15573d;
                if ((battery2 != null ? battery2.getState() : null) == batteryState) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (!z10) {
                TrackManager.INSTANCE.onChargerErrorPresentedFindYourFit();
                s9.y yVar = s9.y.f15252a;
                androidx.fragment.app.p pVarD0 = d0();
                c cVar = new c();
                d dVar = d.f8846h;
                p4.h.j(dVar, "ok");
                s9.y.d(yVar, pVarD0, R.string.adapt_shoes_detected_on_charger_title, null, R.string.adapt_shoes_detected_on_charger_body, 0, R.string.adapt_shoes_detected_on_charger_cta, R.string.adapt_shoes_detected_on_charger_skip, true, dVar, cVar, new s9.y.a("TAKE_SHOES_OFF_CHARGER_DIALOG", "OK", "SKIP", 8), 20);
                return;
            }
            boolean z11 = this.f8841n0;
            String str = z11 ? "Put On Shoes - Pressed: Orthotics" : "Put On Shoes - Pressed: Begin";
            o8.a aVar = z11 ? o8.a.INSERT_ORTHOTICS : o8.a.ADAPT_SHOE;
            o7.x.f12420a.a(str);
            o8.d dVar2 = this.f8837j0;
            if (dVar2 != null) {
                dVar2.O(aVar);
            } else {
                p4.h.C("stateListener");
                throw null;
            }
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f8835h0;
    }

    @Override // p8.b
    public final List<u8.g> t0() {
        return (List) this.f8843p0.getValue();
    }

    public final h8.d u0() {
        return (h8.d) this.f8842o0.getValue();
    }
}
