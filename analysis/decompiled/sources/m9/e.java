package m9;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetFirmwareVersionResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import org.greenrobot.eventbus.ThreadMode;
import q7.t0;

/* JADX INFO: compiled from: FirmwareCheckForUpdatesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends p8.b {

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final a f10852q0 = new a();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public o.b f10855j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public IDeviceController f10856k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public IAdaptRequester f10857l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public t0 f10858m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f10859n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Job f10860o0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f10853h0 = "FirmwareCheckForUpdatesFragment";

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final String f10854i0 = ((rd.g) rd.x.a(e.class)).a();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final fd.h f10861p0 = (fd.h) androidx.lifecycle.o.x(new b());

    /* JADX INFO: compiled from: FirmwareCheckForUpdatesFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: FirmwareCheckForUpdatesFragment.kt */
    public static final class b extends rd.o implements qd.a<ArrayList<u8.q>> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final ArrayList<u8.q> invoke() {
            return androidx.lifecycle.o.e(new u8.q(e.this.d0(), new f(e.this), 10000L, 12));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        this.f10855j0 = (o.b) context;
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f10857l0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
        this.f10856k0 = ((o7.f) androidx.lifecycle.o.m()).b(this, this.d0);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        t0 t0VarA = t0.a(layoutInflater, viewGroup);
        this.f10858m0 = t0VarA;
        return t0VarA.f14008a;
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        t0 t0Var = this.f10858m0;
        if (t0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        t0Var.f14010c.setText(w().getString(R.string.adapt_settings_firmware_update_copy));
        t0 t0Var2 = this.f10858m0;
        if (t0Var2 != null) {
            t0Var2.f14009b.setVisibility(4);
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    @Override // p8.b
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.d0)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.f13309e0.b(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        Shoe shoe = adaptConnectionStatusResult.getShoe();
        ea.m device = adaptConnectionStatusResult.getDevice();
        IDeviceController iDeviceController = this.f10856k0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(device);
        if (this.f13309e0.a()) {
            IDeviceController iDeviceController2 = this.f10856k0;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(shoe, p8.k.f13336a);
        }
        if (this.f10860o0 == null) {
            this.f10860o0 = BuildersKt__Builders_commonKt.launch$default(this.f13342b0, null, null, new g(this, null), 3, null);
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.d0) || !(deviceControllerResult instanceof GetFirmwareVersionResult) || this.f10859n0) {
            return;
        }
        if (InMemoryCache.INSTANCE.getHasShoeUpdates() && !s9.g.f15195a.e()) {
            this.f10859n0 = true;
            Job job = this.f10860o0;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            u0(s9.z.UPDATE_AVAILABLE);
            return;
        }
        if (this.f10859n0) {
            return;
        }
        Job job2 = this.f10860o0;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, null, 1, null);
        }
        u0(s9.z.UP_TO_DATE);
    }

    @Override // p8.h
    public final String p0() {
        return this.f10853h0;
    }

    @Override // p8.b
    public final List<u8.g> t0() {
        return (List) this.f10861p0.getValue();
    }

    public final void u0(s9.z zVar) {
        o7.x.f12420a.a("FirmwareUpdateCrumb " + this.f10854i0 + " launchNextFrag: " + zVar);
        int iOrdinal = zVar.ordinal();
        if (iOrdinal == 0) {
            o.b bVar = this.f10855j0;
            if (bVar != null) {
                bVar.G(s9.z.UP_TO_DATE);
                return;
            } else {
                p4.h.C("listener");
                throw null;
            }
        }
        if (iOrdinal == 1) {
            o.b bVar2 = this.f10855j0;
            if (bVar2 != null) {
                bVar2.G(s9.z.UPDATE_AVAILABLE);
                return;
            } else {
                p4.h.C("listener");
                throw null;
            }
        }
        if (iOrdinal != 7) {
            return;
        }
        o.b bVar3 = this.f10855j0;
        if (bVar3 != null) {
            bVar3.G(s9.z.NO_NETWORK);
        } else {
            p4.h.C("listener");
            throw null;
        }
    }
}
