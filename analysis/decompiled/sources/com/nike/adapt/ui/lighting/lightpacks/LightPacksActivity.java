package com.nike.adapt.ui.lighting.lightpacks;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.e0;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.SetLedResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StartAnimationResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.StopAnimationResult;
import com.nike.adapt.adk.model.AdaptCustomAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.view.RoundedImageButtonView;
import j0.t;
import java.util.List;
import java.util.Objects;
import o7.x;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.greenrobot.eventbus.ThreadMode;
import p8.i0;
import p8.j0;
import p8.w;
import q7.b2;
import s9.y;
import u8.q;
import x8.i1;
import x8.p;
import x8.s;

/* JADX INFO: compiled from: LightPacksActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LightPacksActivity extends p8.a implements s.a, z8.m.a, LightPackLayoutManager.a {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final a f5779g0 = new a();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final z8.a f5780h0 = z8.a.NIKE_MAG;
    public q7.j I;
    public IAdaptRequester J;
    public IDeviceController K;
    public z8.m L;
    public z8.n M;
    public z8.b O;
    public LightPackLayoutManager P;
    public z8.c Q;
    public z8.a T;
    public z8.a U;
    public boolean V;
    public boolean W;
    public boolean X;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public ViewPropertyAnimator f5782b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f5783c0;
    public boolean d0;
    public final List<u8.g> N = androidx.lifecycle.o.e(new q(this, null, 0, 30), new u8.c(R.id.light_packs_parent, this));
    public final fd.d R = androidx.lifecycle.o.w(3, n.f5799h);
    public final s S = new s(this);
    public final t9.c Y = new t9.c();
    public final t9.c Z = new t9.c();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final t9.c f5781a0 = new t9.c();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final fd.d f5784e0 = androidx.lifecycle.o.w(3, m.f5798h);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final o f5785f0 = new o();

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class a {
        public static final int a(z8.a aVar) {
            a aVar2 = LightPacksActivity.f5779g0;
            int iOrdinal = aVar.ordinal();
            if (iOrdinal == 0) {
                return 0;
            }
            if (iOrdinal == 1) {
                return 1;
            }
            if (iOrdinal == 2) {
                return 2;
            }
            if (iOrdinal == 3) {
                return 3;
            }
            if (iOrdinal == 4) {
                return 4;
            }
            throw new j2.a();
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class b extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5786a;

        public b(int i10) {
            this.f5786a = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public final void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
            p4.h.j(rect, "rect");
            p4.h.j(view, "view");
            p4.h.j(recyclerView, "recyclerView");
            p4.h.j(yVar, "state");
            ((RecyclerView.n) view.getLayoutParams()).a();
            rect.set(0, 0, 0, 0);
            RecyclerView.b0 b0VarK = RecyclerView.K(view);
            int iG = b0VarK != null ? b0VarK.g() : -1;
            rect.left = iG == 0 ? 0 : this.f5786a / 2;
            rect.right = iG != yVar.b() + (-1) ? this.f5786a / 2 : 0;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class c extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p9.d f5787h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ qd.a<fd.o> f5788i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(p9.d dVar, qd.a<fd.o> aVar) {
            super(0);
            this.f5787h = dVar;
            this.f5788i = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f5787h.c();
            this.f5788i.invoke();
            TrackManager.INSTANCE.lightPacksTooltipTwoGotItSelected();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ qd.a<fd.o> f5789h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(qd.a<fd.o> aVar) {
            super(0);
            this.f5789h = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f5789h.invoke();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class e extends rd.o implements qd.a<fd.o> {
        public e() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            LightPacksActivity.this.r0().f13867i.animate().alpha(1.0f).setDuration(300L).start();
            LightPacksActivity.this.t0().b();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class f extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public f() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            LightPacksActivity.this.d0 = false;
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class g extends rd.o implements qd.a<fd.o> {
        public g() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            z8.m mVar = LightPacksActivity.this.L;
            if (mVar != null) {
                z8.m.b bVar = mVar.f19420c;
                if (bVar != null) {
                    bVar.f19427d = false;
                }
                mVar.a();
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class h extends rd.o implements qd.a<fd.o> {
        public h() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            z8.m mVar = LightPacksActivity.this.L;
            if (mVar != null) {
                z8.m.b bVar = mVar.f19420c;
                if (bVar != null) {
                    bVar.f19428e = false;
                }
                mVar.a();
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class i extends rd.o implements qd.a<fd.o> {
        public i() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            z8.m mVar = LightPacksActivity.this.L;
            if (mVar != null) {
                z8.m.b bVar = mVar.f19420c;
                if (bVar != null) {
                    bVar.f19429f = false;
                }
                mVar.a();
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class j extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public j() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            try {
                LightPacksActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.nike.adapt")));
            } catch (ActivityNotFoundException unused) {
                LightPacksActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.nike.adapt")));
            }
            k9.a aVarP0 = LightPacksActivity.p0(LightPacksActivity.this);
            aVarP0.f9751b.c();
            aVarP0.f9751b.f(1);
            dVar2.dismiss();
            x.f12420a.a("App Rated");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class k extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public k() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            k9.a aVarP0 = LightPacksActivity.p0(LightPacksActivity.this);
            aVarP0.f9751b.a();
            aVarP0.f9751b.f(2);
            dVar2.dismiss();
            x.f12420a.a("Rate App: Later");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class l extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public l() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            LightPacksActivity.p0(LightPacksActivity.this).f9751b.h();
            dVar2.dismiss();
            x.f12420a.a("Rate App: Cancelled");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class m extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final m f5798h = new m();

        public m() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class n extends rd.o implements qd.a<k9.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final n f5799h = new n();

        public n() {
            super(0);
        }

        @Override // qd.a
        public final k9.a invoke() {
            return new k9.a(null, null, 3, null);
        }
    }

    /* JADX INFO: compiled from: LightPacksActivity.kt */
    public static final class o extends RecyclerView.r {
        public o() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public final void a(RecyclerView recyclerView, int i10) {
            p4.h.j(recyclerView, "recyclerView");
            if (i10 == 0) {
                LightPacksActivity lightPacksActivity = LightPacksActivity.this;
                z8.a aVar = lightPacksActivity.U;
                if (aVar == null) {
                    p4.h.C("displayedLightPack");
                    throw null;
                }
                z8.a aVar2 = lightPacksActivity.T;
                if (aVar2 == null) {
                    p4.h.C("selectedLightPack");
                    throw null;
                }
                if (aVar != aVar2) {
                    lightPacksActivity.r0().f13862d.performHapticFeedback(3);
                    LightPacksActivity lightPacksActivity2 = LightPacksActivity.this;
                    if (lightPacksActivity2.V) {
                        boolean z10 = false;
                        lightPacksActivity2.W = false;
                        z8.a aVar3 = lightPacksActivity2.T;
                        if (aVar3 == null) {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                        z8.a aVar4 = z8.a.MY_LIGHTS;
                        if (aVar3 == aVar4 && !lightPacksActivity2.t0().N()) {
                            LightPacksActivity.this.q0();
                        }
                        LightPacksActivity lightPacksActivity3 = LightPacksActivity.this;
                        z8.a aVar5 = lightPacksActivity3.T;
                        if (aVar5 == null) {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                        lightPacksActivity3.w0(aVar5, false);
                        z8.a aVar6 = LightPacksActivity.this.T;
                        if (aVar6 == null) {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                        if (aVar6 != aVar4) {
                            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                            if (inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20) {
                                z10 = true;
                            }
                            if (!z10) {
                                LightPacksActivity.this.u0();
                                return;
                            }
                        }
                        LightPacksActivity lightPacksActivity4 = LightPacksActivity.this;
                        z8.m mVar = lightPacksActivity4.L;
                        if (mVar != null) {
                            z8.a aVar7 = lightPacksActivity4.T;
                            if (aVar7 != null) {
                                mVar.b(aVar7);
                            } else {
                                p4.h.C("selectedLightPack");
                                throw null;
                            }
                        }
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public final void b(RecyclerView recyclerView, int i10, int i11) {
            p4.h.j(recyclerView, "recyclerView");
            LightPacksActivity lightPacksActivity = LightPacksActivity.this;
            LightPackLayoutManager lightPackLayoutManager = lightPacksActivity.P;
            if (lightPackLayoutManager == null) {
                p4.h.C("lightPackLayoutManager");
                throw null;
            }
            z8.a aVar = lightPackLayoutManager.G;
            if (aVar != null) {
                z8.a aVar2 = lightPacksActivity.T;
                if (aVar2 == null) {
                    p4.h.C("selectedLightPack");
                    throw null;
                }
                if (aVar != aVar2) {
                    lightPacksActivity.T = aVar;
                    lightPacksActivity.y0();
                    if (!lightPacksActivity.V) {
                        z8.n nVar = lightPacksActivity.M;
                        if (nVar == null) {
                            p4.h.C("subtitleManager");
                            throw null;
                        }
                        nVar.a();
                        lightPacksActivity.r0().f13869k.setVisibility(lightPacksActivity.s0() ? 8 : 0);
                        if (lightPacksActivity.s0()) {
                            return;
                        }
                        if (lightPacksActivity.t0().e()) {
                            NotificationToast notificationToast = lightPacksActivity.r0().f13866h;
                            notificationToast.d(new z8.l(lightPacksActivity));
                            notificationToast.a();
                            return;
                        }
                        BottomSheet bottomSheet = lightPacksActivity.r0().f13865g;
                        x8.q.c cVar = x8.q.f17956d;
                        Objects.requireNonNull(bottomSheet);
                        bottomSheet.B = cVar;
                        bottomSheet.x();
                        lightPacksActivity.r0().f13869k.setOnClickListener(new r9.a(new w8.c(lightPacksActivity, 2), HttpStatusCodesKt.HTTP_OK));
                        lightPacksActivity.t0().Z();
                        return;
                    }
                    z8.n nVar2 = lightPacksActivity.M;
                    if (nVar2 == null) {
                        p4.h.C("subtitleManager");
                        throw null;
                    }
                    z8.a aVar3 = lightPacksActivity.T;
                    if (aVar3 == null) {
                        p4.h.C("selectedLightPack");
                        throw null;
                    }
                    if (aVar3 == z8.a.MY_LIGHTS) {
                        nVar2.a();
                        return;
                    }
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    if (inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20) {
                        z8.a aVar4 = lightPacksActivity.T;
                        if (aVar4 != null) {
                            nVar2.i(aVar4);
                            return;
                        } else {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                    }
                    z8.a aVar5 = lightPacksActivity.T;
                    if (aVar5 != null) {
                        nVar2.g(aVar5);
                    } else {
                        p4.h.C("selectedLightPack");
                        throw null;
                    }
                }
            }
        }
    }

    public static final k9.a p0(LightPacksActivity lightPacksActivity) {
        return (k9.a) lightPacksActivity.R.getValue();
    }

    @Override // z8.m.a
    public final void E() {
        v0(false, false);
    }

    @Override // z8.m.a
    public final void F(z8.a aVar) {
        AdaptCustomAnimation adaptCustomAnimationA = y8.b.f18683a.a(this, "lightpacks/light_pack_" + aVar.f19394k);
        if (adaptCustomAnimationA != null) {
            IDeviceController iDeviceController = this.K;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.requestTo(Shoe.BOTH, new i0(AdaptCustomAnimation.copy$default(adaptCustomAnimationA, aVar.f19391h, false, null, false, 0, 0, 62, null), 3600));
            t9.c cVar = this.f5781a0;
            cVar.f15579a = true;
            cVar.f15580b = true;
        }
    }

    @Override // z8.m.a
    public final void K(z8.a aVar) {
        z8.n nVar = this.M;
        if (nVar == null) {
            p4.h.C("subtitleManager");
            throw null;
        }
        nVar.f(aVar);
        if (aVar == z8.a.MY_LIGHTS) {
            this.S.e(2);
            z0();
        } else {
            TrackManager.INSTANCE.lightPackActivated(aVar);
        }
        v0(false, false);
    }

    @Override // z8.m.a
    public final void X(z8.a aVar) {
        z8.n nVar = this.M;
        if (nVar == null) {
            p4.h.C("subtitleManager");
            throw null;
        }
        nVar.f(aVar);
        v0(false, false);
        TrackManager.INSTANCE.lightPackActivated(aVar);
    }

    @Override // x8.s.a
    public final void d(boolean z10) {
    }

    @Override // z8.m.a
    public final void k(boolean z10) {
        if (z10) {
            z8.n nVar = this.M;
            if (nVar == null) {
                p4.h.C("subtitleManager");
                throw null;
            }
            nVar.h(z8.a.MY_LIGHTS);
            this.S.e(2);
            z0();
        } else {
            z8.n nVar2 = this.M;
            if (nVar2 == null) {
                p4.h.C("subtitleManager");
                throw null;
            }
            nVar2.a();
        }
        v0(false, false);
    }

    @Override // z8.m.a
    public final void o() {
        z8.n nVar = this.M;
        if (nVar == null) {
            p4.h.C("subtitleManager");
            throw null;
        }
        z8.a aVar = this.T;
        if (aVar == null) {
            p4.h.C("selectedLightPack");
            throw null;
        }
        nVar.h(aVar);
        v0(false, false);
        TrackManager trackManager = TrackManager.INSTANCE;
        z8.a aVar2 = this.T;
        if (aVar2 != null) {
            trackManager.lightPackTurnedOff(aVar2);
        } else {
            p4.h.C("selectedLightPack");
            throw null;
        }
    }

    @Override // p8.a
    public final List<u8.g> o0() {
        return this.N;
    }

    @Override // p8.a
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.K;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.K;
        if (iDeviceController2 != null) {
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            if ((getAnimationResult.getAnimation().isRunning() ? z8.a.f19384l.a(getAnimationResult.getAnimation().getId()) : z8.a.MY_LIGHTS) == z8.a.MY_LIGHTS) {
                this.S.f(getAnimationResult.getAnimation());
                z0();
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof SetLedResult) {
            t9.c.a(this.Y, ((SetLedResult) deviceControllerResult).getShoe().isLeft(), new g());
            return;
        }
        if (deviceControllerResult instanceof StopAnimationResult) {
            t9.c.a(this.Z, ((StopAnimationResult) deviceControllerResult).getShoe().isLeft(), new h());
            return;
        }
        if (deviceControllerResult instanceof StartAnimationResult) {
            if (!this.f5781a0.c()) {
                z8.n nVar = this.M;
                if (nVar == null) {
                    p4.h.C("subtitleManager");
                    throw null;
                }
                z8.a activeLightPack = InMemoryCache.INSTANCE.getActiveLightPack();
                z8.a aVar = this.T;
                if (aVar == null) {
                    p4.h.C("selectedLightPack");
                    throw null;
                }
                nVar.e(activeLightPack, aVar);
                this.S.e(3);
                z0();
            }
            t9.c.a(this.f5781a0, ((StartAnimationResult) deviceControllerResult).getShoe().isLeft(), new i());
            return;
        }
        if (deviceControllerResult instanceof StopAnimationNotificationResult) {
            if (s0() && this.S.b()) {
                z8.n nVar2 = this.M;
                if (nVar2 == null) {
                    p4.h.C("subtitleManager");
                    throw null;
                }
                z8.a aVar2 = this.T;
                if (aVar2 == null) {
                    p4.h.C("selectedLightPack");
                    throw null;
                }
                nVar2.f(aVar2);
                this.S.e(2);
                z0();
                return;
            }
            if (s0() || this.W) {
                return;
            }
            z8.n nVar3 = this.M;
            if (nVar3 == null) {
                p4.h.C("subtitleManager");
                throw null;
            }
            z8.a aVar3 = this.T;
            if (aVar3 == null) {
                p4.h.C("selectedLightPack");
                throw null;
            }
            nVar3.h(aVar3);
            p7.b bVar = p7.b.f13281a;
            CoordinatorLayout coordinatorLayout = r0().f13864f;
            p4.h.i(coordinatorLayout, "binding.lightPacksParent");
            p7.b.f13281a.e(coordinatorLayout, InMemoryCache.INSTANCE.getActiveLightPack());
            x0(true);
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        boolean z10 = false;
        if (!t0().E() && this.V && !s0()) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if ((inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20) && !this.W) {
                z10 = true;
            }
        }
        if (r0().f13863e.u()) {
            TrackManager.INSTANCE.lightPacksActivatedActionSheetDismissButtonSelected();
            return;
        }
        if (r0().f13865g.u()) {
            return;
        }
        if (!z10) {
            super.onBackPressed();
            return;
        }
        BottomSheet bottomSheet = r0().f13863e;
        x8.q.d dVar = x8.q.f17955c;
        Objects.requireNonNull(bottomSheet);
        bottomSheet.B = dVar;
        bottomSheet.x();
        t0().k();
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        z8.a activeLightPack;
        boolean z10;
        super.onCreate(bundle);
        int i10 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_light_packs, (ViewGroup) null, false);
        int i11 = R.id.colors_button;
        RoundedImageButtonView roundedImageButtonView = (RoundedImageButtonView) g7.b.d(viewInflate, R.id.colors_button);
        if (roundedImageButtonView != null) {
            i11 = R.id.effects_button;
            RoundedImageButtonView roundedImageButtonView2 = (RoundedImageButtonView) g7.b.d(viewInflate, R.id.effects_button);
            if (roundedImageButtonView2 != null) {
                i11 = R.id.light_pack_recycler_view;
                RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.light_pack_recycler_view);
                if (recyclerView != null) {
                    i11 = R.id.light_packs_activated_bottom_sheet;
                    BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.light_packs_activated_bottom_sheet);
                    if (bottomSheet != null) {
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                        i11 = R.id.light_packs_update_firmware_bottom_sheet;
                        BottomSheet bottomSheet2 = (BottomSheet) g7.b.d(viewInflate, R.id.light_packs_update_firmware_bottom_sheet);
                        if (bottomSheet2 != null) {
                            i11 = R.id.light_packs_update_firmware_notification_toast;
                            NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.light_packs_update_firmware_notification_toast);
                            if (notificationToast != null) {
                                i11 = R.id.main_content;
                                if (((ConstraintLayout) g7.b.d(viewInflate, R.id.main_content)) != null) {
                                    i11 = R.id.my_lights_buttons_container;
                                    LinearLayout linearLayout = (LinearLayout) g7.b.d(viewInflate, R.id.my_lights_buttons_container);
                                    if (linearLayout != null) {
                                        i11 = R.id.my_lights_y_adjustment;
                                        View viewD = g7.b.d(viewInflate, R.id.my_lights_y_adjustment);
                                        if (viewD != null) {
                                            i11 = R.id.not_supported_shaded_background;
                                            View viewD2 = g7.b.d(viewInflate, R.id.not_supported_shaded_background);
                                            if (viewD2 != null) {
                                                i11 = R.id.off_button;
                                                ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.off_button);
                                                if (imageView != null) {
                                                    i11 = R.id.screen_subtitle;
                                                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.screen_subtitle);
                                                    if (textView != null) {
                                                        i11 = R.id.screen_title;
                                                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.screen_title);
                                                        if (textView2 != null) {
                                                            i11 = R.id.selection_ring;
                                                            ImageView imageView2 = (ImageView) g7.b.d(viewInflate, R.id.selection_ring);
                                                            if (imageView2 != null) {
                                                                int i12 = R.id.tooltip1_highlight_view;
                                                                View viewD3 = g7.b.d(viewInflate, R.id.tooltip1_highlight_view);
                                                                if (viewD3 != null) {
                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewD3;
                                                                    ImageView imageView3 = (ImageView) g7.b.d(viewD3, R.id.selection_ring);
                                                                    if (imageView3 != null) {
                                                                        i11 = R.id.tooltip1_light_pack_image;
                                                                        ImageView imageView4 = (ImageView) g7.b.d(viewD3, R.id.tooltip1_light_pack_image);
                                                                        if (imageView4 != null) {
                                                                            i11 = R.id.tooltip1_light_pack_title;
                                                                            TextView textView3 = (TextView) g7.b.d(viewD3, R.id.tooltip1_light_pack_title);
                                                                            if (textView3 != null) {
                                                                                b2 b2Var = new b2(constraintLayout, imageView3, imageView4, textView3);
                                                                                i12 = R.id.tooltip1_shaded_background;
                                                                                View viewD4 = g7.b.d(viewInflate, R.id.tooltip1_shaded_background);
                                                                                if (viewD4 != null) {
                                                                                    this.I = new q7.j(coordinatorLayout, roundedImageButtonView, roundedImageButtonView2, recyclerView, bottomSheet, coordinatorLayout, bottomSheet2, notificationToast, linearLayout, viewD, viewD2, imageView, textView, textView2, imageView2, b2Var, viewD4);
                                                                                    setContentView(r0().f13859a);
                                                                                    Object systemService = getSystemService("window");
                                                                                    p4.h.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
                                                                                    Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
                                                                                    p4.h.i(defaultDisplay, "windowManager.defaultDisplay");
                                                                                    Point point = new Point();
                                                                                    defaultDisplay.getSize(point);
                                                                                    int iL = f1.b.l(Math.max(point.x, point.y) / Resources.getSystem().getDisplayMetrics().density) - 746;
                                                                                    if (iL > 0) {
                                                                                        iL = 0;
                                                                                    }
                                                                                    int i13 = iL < -73 ? -73 : iL;
                                                                                    if (i13 != 0) {
                                                                                        ImageView imageView5 = r0().f13873o;
                                                                                        p4.h.i(imageView5, "binding.selectionRing");
                                                                                        i1.a(this, imageView5, i13);
                                                                                        LinearLayout linearLayout2 = r0().f13867i;
                                                                                        p4.h.i(linearLayout2, "binding.myLightsButtonsContainer");
                                                                                        i1.a(this, linearLayout2, i13);
                                                                                        ImageView imageView6 = r0().f13874p.f13728c;
                                                                                        p4.h.i(imageView6, "binding.tooltip1Highligh…ew.tooltip1LightPackImage");
                                                                                        i1.a(this, imageView6, i13);
                                                                                        TextView textView4 = r0().f13874p.f13729d;
                                                                                        p4.h.i(textView4, "binding.tooltip1Highligh…ew.tooltip1LightPackTitle");
                                                                                        i1.a(this, textView4, i13);
                                                                                        ImageView imageView7 = r0().f13874p.f13727b;
                                                                                        p4.h.i(imageView7, "binding.tooltip1HighlightView.selectionRing");
                                                                                        i1.a(this, imageView7, i13);
                                                                                    }
                                                                                    this.J = ((o7.f) androidx.lifecycle.o.m()).a(this, this.B, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
                                                                                    this.K = ((o7.f) androidx.lifecycle.o.m()).b(this, this.B);
                                                                                    this.L = new z8.m(this, androidx.activity.k.m(this));
                                                                                    TextView textView5 = r0().f13871m;
                                                                                    p4.h.i(textView5, "binding.screenSubtitle");
                                                                                    this.M = new z8.n(textView5, t0());
                                                                                    boolean zH = s9.g.f15195a.h();
                                                                                    this.V = zH;
                                                                                    if (zH) {
                                                                                        activeLightPack = !t0().u() ? f5780h0 : InMemoryCache.INSTANCE.getActiveLightPack();
                                                                                    } else {
                                                                                        activeLightPack = z8.a.MY_LIGHTS;
                                                                                    }
                                                                                    this.T = activeLightPack;
                                                                                    y0();
                                                                                    z8.c cVar = new z8.c(this);
                                                                                    this.Q = cVar;
                                                                                    cVar.setColors(ShoeColor.Companion.valueOf(t0().S()));
                                                                                    RoundedImageButtonView roundedImageButtonView3 = r0().f13860b;
                                                                                    z8.c cVar2 = this.Q;
                                                                                    if (cVar2 == null) {
                                                                                        p4.h.C("lightPackColorChipView");
                                                                                        throw null;
                                                                                    }
                                                                                    roundedImageButtonView3.setCustomView(cVar2);
                                                                                    int i14 = 2;
                                                                                    r0().f13860b.setOnClickListener(new r9.a(new z8.f(this, i10), HttpStatusCodesKt.HTTP_OK));
                                                                                    r0().f13861c.setOnClickListener(new r9.a(new z8.e(this, i10), HttpStatusCodesKt.HTTP_OK));
                                                                                    if (s0()) {
                                                                                        r0().f13867i.setAlpha(1.0f);
                                                                                        r0().f13867i.setVisibility(0);
                                                                                    }
                                                                                    this.O = new z8.b(gd.i.v(z8.a.values()), i13);
                                                                                    LightPackLayoutManager lightPackLayoutManager = new LightPackLayoutManager(this);
                                                                                    this.P = lightPackLayoutManager;
                                                                                    if (!lightPackLayoutManager.H.contains(this)) {
                                                                                        lightPackLayoutManager.H.add(this);
                                                                                    }
                                                                                    z8.b bVar = this.O;
                                                                                    if (bVar == null) {
                                                                                        p4.h.C("lightPackAdapter");
                                                                                        throw null;
                                                                                    }
                                                                                    z8.a aVar = this.T;
                                                                                    if (aVar == null) {
                                                                                        p4.h.C("selectedLightPack");
                                                                                        throw null;
                                                                                    }
                                                                                    int iA = (bVar.f19398f / 2) + a.a(aVar);
                                                                                    e0 e0Var = new e0();
                                                                                    RecyclerView recyclerView2 = r0().f13862d;
                                                                                    LightPackLayoutManager lightPackLayoutManager2 = this.P;
                                                                                    if (lightPackLayoutManager2 == null) {
                                                                                        p4.h.C("lightPackLayoutManager");
                                                                                        throw null;
                                                                                    }
                                                                                    recyclerView2.setLayoutManager(lightPackLayoutManager2);
                                                                                    z8.b bVar2 = this.O;
                                                                                    if (bVar2 == null) {
                                                                                        p4.h.C("lightPackAdapter");
                                                                                        throw null;
                                                                                    }
                                                                                    recyclerView2.setAdapter(bVar2);
                                                                                    int i15 = 1;
                                                                                    recyclerView2.setHasFixedSize(true);
                                                                                    recyclerView2.g(new b(recyclerView2.getResources().getDimensionPixelSize(R.dimen.light_pack_image_spacing)));
                                                                                    recyclerView2.h(this.f5785f0);
                                                                                    recyclerView2.setImportantForAccessibility(2);
                                                                                    e0Var.a(recyclerView2);
                                                                                    t.a(recyclerView2, new z8.k(recyclerView2, this, iA, e0Var));
                                                                                    LightPackLayoutManager lightPackLayoutManager3 = this.P;
                                                                                    if (lightPackLayoutManager3 == null) {
                                                                                        p4.h.C("lightPackLayoutManager");
                                                                                        throw null;
                                                                                    }
                                                                                    lightPackLayoutManager3.w0(iA);
                                                                                    r0().f13870l.setOnClickListener(new r9.a(new p(this, i15), HttpStatusCodesKt.HTTP_OK));
                                                                                    k9.a aVar2 = (k9.a) this.R.getValue();
                                                                                    if (aVar2.f9751b.b() >= 1 || aVar2.f9751b.g() >= 1 || !aVar2.f9750a.N() || !aVar2.f9750a.E()) {
                                                                                        z10 = false;
                                                                                    } else {
                                                                                        int iD = aVar2.f9751b.d();
                                                                                        if (iD != 0) {
                                                                                            k9.b bVar3 = aVar2.f9751b;
                                                                                            int i16 = iD - 1;
                                                                                            if (i16 < 0) {
                                                                                                i16 = 0;
                                                                                            }
                                                                                            bVar3.f(i16);
                                                                                        } else if (!aVar2.f9751b.e()) {
                                                                                            z10 = true;
                                                                                        }
                                                                                        z10 = false;
                                                                                    }
                                                                                    if (z10) {
                                                                                        j jVar = new j();
                                                                                        k kVar = new k();
                                                                                        final l lVar = new l();
                                                                                        b6.b bVar4 = new b6.b(this, R.style.MyThemeOverlay_MaterialComponents_MaterialAlertDialog);
                                                                                        bVar4.g(R.layout.three_button_dialog);
                                                                                        bVar4.f793a.f771k = false;
                                                                                        final androidx.appcompat.app.d dVarCreate = bVar4.create();
                                                                                        if (!isFinishing()) {
                                                                                            dVarCreate.show();
                                                                                        }
                                                                                        Button button = (Button) dVarCreate.findViewById(R.id.positive_button);
                                                                                        Button button2 = (Button) dVarCreate.findViewById(R.id.neutral_button);
                                                                                        Button button3 = (Button) dVarCreate.findViewById(R.id.negative_button);
                                                                                        TextView textView6 = (TextView) dVarCreate.findViewById(R.id.title);
                                                                                        if (textView6 != null) {
                                                                                            textView6.setText(androidx.lifecycle.o.r(R.string.adapt_rate_app_prompt_title));
                                                                                        }
                                                                                        TextView textView7 = (TextView) dVarCreate.findViewById(R.id.description);
                                                                                        if (textView7 != null) {
                                                                                            textView7.setText(androidx.lifecycle.o.r(R.string.adapt_rate_app_prompt_message));
                                                                                        }
                                                                                        if (button != null) {
                                                                                            button.setText(androidx.lifecycle.o.r(R.string.adapt_rate_app_prompt_ok_cta));
                                                                                        }
                                                                                        if (button2 != null) {
                                                                                            button2.setText(androidx.lifecycle.o.r(R.string.adapt_rate_app_prompt_later_cta));
                                                                                        }
                                                                                        if (button3 != null) {
                                                                                            button3.setText(androidx.lifecycle.o.r(R.string.adapt_rate_app_prompt_no_cta));
                                                                                        }
                                                                                        if (button != null) {
                                                                                            button.setOnClickListener(new u8.i(jVar, dVarCreate, i15));
                                                                                        }
                                                                                        if (button2 != null) {
                                                                                            button2.setOnClickListener(new u8.k(kVar, dVarCreate, i14));
                                                                                        }
                                                                                        if (button3 != null) {
                                                                                            button3.setOnClickListener(new View.OnClickListener() { // from class: s9.t
                                                                                                @Override // android.view.View.OnClickListener
                                                                                                public final void onClick(View view) {
                                                                                                    qd.l lVar2 = lVar;
                                                                                                    androidx.appcompat.app.d dVar = dVarCreate;
                                                                                                    p4.h.j(lVar2, "$negativeAction");
                                                                                                    p4.h.j(dVar, "$dialog");
                                                                                                    lVar2.invoke(dVar);
                                                                                                }
                                                                                            });
                                                                                        }
                                                                                    }
                                                                                    if (this.V) {
                                                                                        z8.a aVar3 = this.T;
                                                                                        if (aVar3 == null) {
                                                                                            p4.h.C("selectedLightPack");
                                                                                            throw null;
                                                                                        }
                                                                                        z8.a aVar4 = z8.a.MY_LIGHTS;
                                                                                        if (aVar3 == aVar4 || t0().u()) {
                                                                                            z8.a aVar5 = this.T;
                                                                                            if (aVar5 == null) {
                                                                                                p4.h.C("selectedLightPack");
                                                                                                throw null;
                                                                                            }
                                                                                            if (aVar5 == aVar4 && !t0().N()) {
                                                                                                r0().f13864f.post(new l8.a(this, i14));
                                                                                            }
                                                                                        } else {
                                                                                            r0().f13875q.setVisibility(0);
                                                                                            TextView textView8 = r0().f13874p.f13729d;
                                                                                            z8.a aVar6 = f5780h0;
                                                                                            textView8.setText(androidx.lifecycle.o.r(aVar6.f19393j));
                                                                                            try {
                                                                                                com.bumptech.glide.c.b(this).f4425m.c(this).p(aVar6.f19392i).k().r(getResources().getDimensionPixelSize(R.dimen.light_pack_image_width), getResources().getDimensionPixelSize(R.dimen.light_pack_image_height)).I(r0().f13874p.f13728c);
                                                                                            } catch (Throwable unused) {
                                                                                                x.f12420a.a("Glide exception");
                                                                                            }
                                                                                            r0().f13864f.post(new i8.f(this, 3));
                                                                                        }
                                                                                    }
                                                                                    TrackManager.INSTANCE.lightPacksCarouselPresented();
                                                                                    return;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    throw new NullPointerException("Missing required view with ID: ".concat(viewD3.getResources().getResourceName(i11)));
                                                                }
                                                                i11 = i12;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onDestroy() {
        this.L = null;
        LightPackLayoutManager lightPackLayoutManager = this.P;
        if (lightPackLayoutManager == null) {
            p4.h.C("lightPackLayoutManager");
            throw null;
        }
        Objects.requireNonNull(lightPackLayoutManager);
        lightPackLayoutManager.H.remove(this);
        ViewPropertyAnimator viewPropertyAnimator = this.f5782b0;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        super.onDestroy();
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        z8.b bVar = this.O;
        if (bVar == null) {
            p4.h.C("lightPackAdapter");
            throw null;
        }
        bVar.d();
        boolean z10 = false;
        if (!t0().u()) {
            w0(f5780h0, false);
            return;
        }
        z8.a activeLightPack = InMemoryCache.INSTANCE.getActiveLightPack();
        z8.a aVar = this.T;
        if (aVar == null) {
            p4.h.C("selectedLightPack");
            throw null;
        }
        z8.a aVar2 = z8.a.MY_LIGHTS;
        if (aVar != aVar2 && activeLightPack == aVar2) {
            z10 = true;
        }
        w0(activeLightPack, z10);
        z8.n nVar = this.M;
        if (nVar == null) {
            p4.h.C("subtitleManager");
            throw null;
        }
        z8.a aVar3 = this.T;
        if (aVar3 != null) {
            nVar.e(activeLightPack, aVar3);
        } else {
            p4.h.C("selectedLightPack");
            throw null;
        }
    }

    public final void q0() {
        String strR = androidx.lifecycle.o.r(R.string.light_pack_tooltip_2_title);
        String strR2 = androidx.lifecycle.o.r(R.string.light_pack_tooltip_2_message);
        String strR3 = androidx.lifecycle.o.r(R.string.adapt_got_it_cta_button);
        boolean z10 = this.f5783c0;
        p9.d dVar = new p9.d(new p9.a(strR, strR2, strR3, z10 ? "2/2" : null, z10 ? androidx.lifecycle.o.r(R.string.light_pack_tooltip_two_of_two_content_description) : null, false, -35, 1, 0.0f, 10.0d, 0L, 245536), this);
        e eVar = new e();
        dVar.setCtaAction(new c(dVar, eVar));
        dVar.setOverlayDismiss(new d(eVar));
        CoordinatorLayout coordinatorLayout = r0().f13864f;
        p4.h.i(coordinatorLayout, "binding.lightPacksParent");
        LinearLayout linearLayout = r0().f13867i;
        p4.h.i(linearLayout, "binding.myLightsButtonsContainer");
        p9.d.d(dVar, coordinatorLayout, linearLayout);
        if (this.f5783c0) {
            TrackManager.INSTANCE.lightPacksTooltipTwoPresented();
        } else {
            TrackManager.INSTANCE.lightPacksTooltipAlternatePresented();
        }
    }

    public final q7.j r0() {
        q7.j jVar = this.I;
        if (jVar != null) {
            return jVar;
        }
        p4.h.C("binding");
        throw null;
    }

    public final boolean s0() {
        z8.a aVar = this.T;
        if (aVar != null) {
            return aVar == z8.a.MY_LIGHTS;
        }
        p4.h.C("selectedLightPack");
        throw null;
    }

    @Override // z8.m.a
    public final void t() {
        IDeviceController iDeviceController = this.K;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.requestTo(Shoe.BOTH, j0.f13335a);
        t9.c cVar = this.Z;
        cVar.f15579a = true;
        cVar.f15580b = true;
    }

    public final h8.a t0() {
        return (h8.a) this.f5784e0.getValue();
    }

    public final void u0() {
        if (this.d0) {
            return;
        }
        this.d0 = true;
        y yVar = y.f15252a;
        f fVar = new f();
        h8.c.f8298b.n0(true);
        y.c(yVar, this, R.string.adapt_light_packs_failed_dialog_title, R.string.adapt_pulsing_lights_failed_low_battery_dialog_body, fVar, new y.a("LIGHT_PACKS_LOW_BATTERY", "OK", null, 12));
    }

    public final void v0(boolean z10, boolean z11) {
        this.X = z10;
        if (z11) {
            return;
        }
        r0().f13870l.setAlpha(z10 ? 0.45f : 1.0f);
    }

    @Override // com.nike.adapt.ui.lighting.lightpacks.LightPackLayoutManager.a
    public final void w(z8.a aVar, float f10, int i10) {
        boolean z10 = aVar == z8.a.MY_LIGHTS;
        if (!z10 || (!t0().N() && this.V)) {
            f10 = 0.0f;
        }
        LinearLayout linearLayout = r0().f13867i;
        linearLayout.setAlpha(f10);
        linearLayout.setVisibility(z10 ? 0 : 8);
        ViewGroup.LayoutParams layoutParams = r0().f13868j.getLayoutParams();
        p4.h.i(layoutParams, "binding.myLightsYAdjustment.layoutParams");
        if (z10 && layoutParams.height == 0) {
            layoutParams.height = i10;
            r0().f13868j.setLayoutParams(layoutParams);
        }
    }

    public final void w0(z8.a aVar, boolean z10) {
        p7.b bVar = p7.b.f13281a;
        CoordinatorLayout coordinatorLayout = r0().f13864f;
        p4.h.i(coordinatorLayout, "binding.lightPacksParent");
        bVar.e(coordinatorLayout, aVar);
        if (s0()) {
            z8.c cVar = this.Q;
            if (cVar == null) {
                p4.h.C("lightPackColorChipView");
                throw null;
            }
            cVar.setColors(ShoeColor.Companion.valueOf(t0().c()));
            x0(t0().S().isOff());
        } else {
            x0(z10);
        }
        z8.a aVar2 = this.T;
        if (aVar2 != null) {
            this.U = aVar2;
        } else {
            p4.h.C("selectedLightPack");
            throw null;
        }
    }

    public final void x0(boolean z10) {
        ImageView imageView = r0().f13870l;
        int i10 = z10 ? R.drawable.ic_lights_off_active : R.drawable.ic_lights_off_inactive;
        Object obj = y.a.f18143a;
        imageView.setImageDrawable(y.a.b.b(this, i10));
        r0().f13870l.setContentDescription(androidx.lifecycle.o.r(z10 ? R.string.adapt_lights_on : R.string.adapt_lights_off));
        if (s0()) {
            return;
        }
        this.W = z10;
    }

    @Override // z8.m.a
    public final void y(boolean z10) {
        v0(true, z10);
    }

    public final void y0() {
        r0().f13872n.setText(s0() ? androidx.lifecycle.o.r(R.string.adapt_lighting_screen_title) : androidx.lifecycle.o.r(R.string.light_packs_title));
    }

    @Override // z8.m.a
    public final void z(AdaptShoeColor adaptShoeColor) {
        IDeviceController iDeviceController = this.K;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.requestTo(Shoe.LEFT, new p8.j(new AdaptDeviceColor(adaptShoeColor.getLeftAdaptPreset(), null, 2, null)));
        IDeviceController iDeviceController2 = this.K;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(Shoe.RIGHT, new p8.j(new AdaptDeviceColor(adaptShoeColor.getRightAdaptPreset(), null, 2, null)));
        t9.c cVar = this.Y;
        cVar.f15579a = true;
        cVar.f15580b = true;
    }

    public final void z0() {
        r0().f13861c.setImageResource(this.S.b() ? R.drawable.ic_light_effect_on : R.drawable.ic_light_effect_off);
    }
}
