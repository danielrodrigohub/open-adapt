package com.nike.adapt.ui.shoecontroller;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.BLEConnectionError;
import com.nike.adapt.adk.BatteryUpdateBroadCastNotificationResult;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.ConnectingToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.DeviceFoundAndReadyToConnect;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.GestureStatsNotificationResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.GetAutoLaceResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.GetCurrentFirmwareVersionsResult;
import com.nike.adapt.adk.GetDeviceStatsResult;
import com.nike.adapt.adk.GetFirmwareVersionResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.GetLedResult;
import com.nike.adapt.adk.GetSerialNumberResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.NotInitiated;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.SetLedResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StartAnimationResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.StopAnimationResult;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceMode;
import com.nike.adapt.adk.model.AdaptGestureAction;
import com.nike.adapt.adk.model.AdaptGestureClassification;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.adk.model.BatteryState;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import com.nike.adapt.ui.view.DuoColorView;
import h9.k;
import h9.p0;
import j0.a0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Vector;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import l5.g0;
import n3.m1;
import n3.x1;
import n3.y0;
import o7.m;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.greenrobot.eventbus.ThreadMode;
import p4.z;
import p8.b0;
import p8.j0;
import p8.x;
import p8.y;
import q7.e0;
import q7.u1;
import qd.l;
import rd.w;
import s9.r;
import u8.q;
import v9.p;
import x8.c0;
import x8.d0;
import x8.f0;
import x8.i0;
import x8.k0;
import x8.n;
import x8.n0;
import x8.q0;
import x8.s;
import x8.t;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShoeControllerActivity extends p8.a implements m, c0, s.a, q0.a {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final /* synthetic */ int f5872s0 = 0;
    public e0 I;
    public d0 J;
    public d0 K;
    public IDeviceController L;
    public n0 M;
    public f0 N;
    public IAdaptRequester O;
    public AnimationDrawable P;
    public long S;
    public Animator U;
    public n W;
    public n X;
    public boolean Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f5873a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f5874b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public AdaptDeviceColor f5875c0;
    public AdaptDeviceColor d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public AdaptDeviceColor f5876e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public AdaptDeviceColor f5877f0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public x1 f5880i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public o9.s f5881j0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f5884m0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f5886o0;
    public final o9.a Q = new o9.a(null, null, null, null, null, null, null, null, null, HttpStatusCodesKt.HTTP_NETWORK_AUTHENTICATION_REQUIRED, null);
    public s9.a R = new s9.a();
    public final List<b9.a> T = new Vector();
    public final s V = new s(this);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public t9.a f5878g0 = new t9.a();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public t9.b f5879h0 = new t9.b();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Handler f5882k0 = new Handler();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final androidx.activity.g f5883l0 = new androidx.activity.g(this, 6);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final t9.c f5885n0 = new t9.c();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final fd.d f5887p0 = o.w(3, b.f5893h);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final l<p, fd.o> f5888q0 = c.f5894h;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final List<u8.g> f5889r0 = new ArrayList();

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5890a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f5891b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f5892c;

        static {
            int[] iArr = new int[q.g.b(3).length];
            iArr[1] = 1;
            iArr[0] = 2;
            f5890a = iArr;
            int[] iArr2 = new int[AdaptCurrentAnimation.AnimationEndingState.values().length];
            iArr2[AdaptCurrentAnimation.AnimationEndingState.CRITICAL_BATTERY.ordinal()] = 1;
            iArr2[AdaptCurrentAnimation.AnimationEndingState.BATTERY_OVERTEMP.ordinal()] = 2;
            f5891b = iArr2;
            int[] iArr3 = new int[r.values().length];
            iArr3[2] = 1;
            f5892c = iArr3;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5893h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class c extends rd.o implements l<p, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5894h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(p pVar) {
            p4.h.j(pVar, "$this$null");
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            inMemoryCache.setActiveLightPack(z8.a.MY_LIGHTS);
            inMemoryCache.setActiveLightEffect(v7.c.d.f16370c);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$4", f = "ShoeControllerActivity.kt", l = {888, 891}, m = "invokeSuspend")
    public static final class d extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public w f5895h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f5896i;

        /* JADX INFO: compiled from: ShoeControllerActivity.kt */
        @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$4$1", f = "ShoeControllerActivity.kt", l = {889}, m = "invokeSuspend")
        public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public w f5898h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f5899i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f5900j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(w<Boolean> wVar, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f5900j = wVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f5900j, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                w<Boolean> wVar;
                T t10;
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5899i;
                if (i10 == 0) {
                    d3.e.p(obj);
                    w<Boolean> wVar2 = this.f5900j;
                    m8.c cVar = m8.c.f10812b;
                    this.f5898h = wVar2;
                    this.f5899i = 1;
                    Object objA = cVar.a(this);
                    if (objA == aVar) {
                        return aVar;
                    }
                    wVar = wVar2;
                    t10 = objA;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    wVar = this.f5898h;
                    d3.e.p(obj);
                    t10 = obj;
                }
                wVar.f14795h = t10;
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: compiled from: ShoeControllerActivity.kt */
        @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$4$2", f = "ShoeControllerActivity.kt", l = {}, m = "invokeSuspend")
        public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f5901h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ ShoeControllerActivity f5902i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(w<Boolean> wVar, ShoeControllerActivity shoeControllerActivity, jd.d<? super b> dVar) {
                super(2, dVar);
                this.f5901h = wVar;
                this.f5902i = shoeControllerActivity;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new b(this.f5901h, this.f5902i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                d3.e.p(obj);
                Boolean bool = this.f5901h.f14795h;
                if (bool == null) {
                    return fd.o.f7408a;
                }
                boolean zBooleanValue = bool.booleanValue();
                ShoeControllerActivity shoeControllerActivity = this.f5902i;
                int i10 = ShoeControllerActivity.f5872s0;
                shoeControllerActivity.u0().w(zBooleanValue);
                if (!zBooleanValue) {
                    k.f8338c.e(this.f5902i);
                    return fd.o.f7408a;
                }
                t8.a aVar = t8.a.f15561a;
                aVar.a().j0(aVar.a().y() - 1);
                return fd.o.f7408a;
            }
        }

        public d(jd.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return ShoeControllerActivity.this.new d(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((d) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0076  */
        /* JADX WARN: Code duplicated, block: B:43:0x00d2 A[RETURN] */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
        
            if (r1 != false) goto L38;
         */
        @Override // ld.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            boolean z10;
            w wVar;
            MainCoroutineDispatcher main;
            b bVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5896i;
            if (i10 == 0) {
                d3.e.p(obj);
                if (!g0.n.f7519b) {
                    ShoeControllerActivity shoeControllerActivity = ShoeControllerActivity.this;
                    p4.h.j(shoeControllerActivity, "context");
                    Object systemService = shoeControllerActivity.getSystemService("connectivity");
                    p4.h.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    boolean z11 = false;
                    if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                        t8.a aVar2 = t8.a.f15561a;
                        if (aVar2.a().T() || aVar2.a().y() > 0) {
                            z10 = false;
                        } else {
                            int i11 = t8.a.f15562b + 1;
                            t8.a.f15562b = i11;
                            if (i11 >= 4) {
                                aVar2.a().j0(1);
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                        if (!z10) {
                            if (!aVar2.a().T() && aVar2.a().y() == 1 && aVar2.a().G() >= 30) {
                                aVar2.a().j0(2);
                                z11 = true;
                            }
                        }
                        wVar = new w();
                        CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
                        a aVar3 = new a(wVar, null);
                        this.f5895h = wVar;
                        this.f5896i = 1;
                        if (BuildersKt.withContext(coroutineDispatcher, aVar3, this) == aVar) {
                            return aVar;
                        }
                        main = Dispatchers.getMain();
                        bVar = new b(wVar, ShoeControllerActivity.this, null);
                        this.f5895h = null;
                        this.f5896i = 2;
                        if (BuildersKt.withContext(main, bVar, this) == aVar) {
                            return aVar;
                        }
                    }
                }
            } else if (i10 == 1) {
                wVar = this.f5895h;
                d3.e.p(obj);
                main = Dispatchers.getMain();
                bVar = new b(wVar, ShoeControllerActivity.this, null);
                this.f5895h = null;
                this.f5896i = 2;
                if (BuildersKt.withContext(main, bVar, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$5", f = "ShoeControllerActivity.kt", l = {995}, m = "invokeSuspend")
    public static final class e extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5903h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ DeviceControllerResult f5904i;

        /* JADX INFO: compiled from: ShoeControllerActivity.kt */
        @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$5$1", f = "ShoeControllerActivity.kt", l = {996}, m = "invokeSuspend")
        public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f5905h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ DeviceControllerResult f5906i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DeviceControllerResult deviceControllerResult, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f5906i = deviceControllerResult;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f5906i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5905h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    m8.c cVar = m8.c.f10812b;
                    a8.d shoeStats = ((GetDeviceStatsResult) this.f5906i).getShoeStats();
                    this.f5905h = 1;
                    if (((z7.a) m8.c.f10814d.getValue()).a(shoeStats, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DeviceControllerResult deviceControllerResult, jd.d<? super e> dVar) {
            super(2, dVar);
            this.f5904i = deviceControllerResult;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new e(this.f5904i, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((e) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5903h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
                a aVar2 = new a(this.f5904i, null);
                this.f5903h = 1;
                if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class f extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final f f5907h = new f();

        public f() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class g extends rd.o implements qd.p<d0, k0, fd.o> {
        public g() {
            super(2);
        }

        @Override // qd.p
        public final fd.o invoke(d0 d0Var, k0 k0Var) {
            d0 d0Var2 = d0Var;
            k0 k0Var2 = k0Var;
            p4.h.j(d0Var2, "$this$$receiver");
            p4.h.j(k0Var2, "quickLacingAction");
            if (d0Var2 != d0.IGNORE) {
                ShoeControllerActivity.this.J = d0Var2;
            }
            ShoeControllerActivity.q0(ShoeControllerActivity.this, k0Var2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class h extends rd.o implements qd.p<d0, k0, fd.o> {
        public h() {
            super(2);
        }

        @Override // qd.p
        public final fd.o invoke(d0 d0Var, k0 k0Var) {
            d0 d0Var2 = d0Var;
            k0 k0Var2 = k0Var;
            p4.h.j(d0Var2, "$this$$receiver");
            p4.h.j(k0Var2, "quickLacingAction");
            if (d0Var2 != d0.IGNORE) {
                ShoeControllerActivity.this.K = d0Var2;
            }
            ShoeControllerActivity.q0(ShoeControllerActivity.this, k0Var2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class i extends rd.o implements l<androidx.appcompat.app.d, fd.o> {
        public i() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            dVar2.dismiss();
            ShoeControllerActivity shoeControllerActivity = ShoeControllerActivity.this;
            int i10 = ShoeControllerActivity.f5872s0;
            shoeControllerActivity.u0().f0();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class j extends rd.o implements l<androidx.appcompat.app.d, fd.o> {
        public j() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            p4.h.j(dVar, "it");
            new p0(v7.m.DECOMMISSION).e(ShoeControllerActivity.this);
            ShoeControllerActivity shoeControllerActivity = ShoeControllerActivity.this;
            int i10 = ShoeControllerActivity.f5872s0;
            shoeControllerActivity.u0().f0();
            return fd.o.f7408a;
        }
    }

    public static final void p0(ShoeControllerActivity shoeControllerActivity, View view) {
        Objects.requireNonNull(shoeControllerActivity);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.start();
    }

    public static final void q0(final ShoeControllerActivity shoeControllerActivity, k0 k0Var) {
        Objects.requireNonNull(shoeControllerActivity);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        boolean z10 = (inMemoryCache.getLeftDevice().isConnected() && inMemoryCache.getRightDevice().isConnected()) ? false : true;
        boolean z11 = k0Var == k0.DISABLE;
        Integer numValueOf = null;
        if (z10 || z11) {
            shoeControllerActivity.v0().C.setOnClickListener(null);
            shoeControllerActivity.v0().C.setOnLongClickListener(new View.OnLongClickListener() { // from class: o9.d
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    int i10 = ShoeControllerActivity.f5872s0;
                    return false;
                }
            });
            return;
        }
        d0 d0Var = shoeControllerActivity.J;
        int iV = d0Var != null ? o.v(d0Var, shoeControllerActivity.K) : 0;
        int i10 = iV == 0 ? -1 : a.f5890a[q.g.a(iV)];
        if (i10 == 1) {
            numValueOf = Integer.valueOf(R.drawable.lacing_animation);
        } else if (i10 == 2) {
            numValueOf = Integer.valueOf(R.drawable.unlacing_animation);
        }
        ImageView imageView = shoeControllerActivity.v0().D;
        p4.h.i(imageView, "binding.unlaceOrLaceUpImageView");
        if (!p4.h.c(imageView.getTag(), numValueOf) && numValueOf != null) {
            imageView.setImageResource(numValueOf.intValue());
            imageView.setTag(numValueOf);
            Drawable drawable = imageView.getDrawable();
            p4.h.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            animationDrawable.setOneShot(true);
            animationDrawable.start();
        }
        shoeControllerActivity.v0().C.setOnClickListener(new r9.a(new i9.b(shoeControllerActivity, 4), HttpStatusCodesKt.HTTP_OK));
        shoeControllerActivity.v0().C.setOnLongClickListener(new View.OnLongClickListener() { // from class: o9.c
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                ShoeControllerActivity shoeControllerActivity2 = this.f12498h;
                int i11 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity2, "this$0");
                p4.h.i(view, "view");
                f1.b.c(view, new n(shoeControllerActivity2));
                return true;
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<b9.a>, java.util.Vector] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<b9.a>, java.util.Vector] */
    public final void A0(b9.a aVar) {
        this.T.remove(aVar);
        if (this.T.isEmpty()) {
            Animator animator = this.U;
            if (animator != null) {
                animator.cancel();
            }
            this.U = null;
        }
        x0(aVar.f3577b);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa  */
    public final void B0(Shoe shoe, Battery battery) {
        boolean z10;
        boolean z11;
        Drawable drawableB;
        AnimationDrawable animationDrawable;
        (shoe.isRight() ? InMemoryCache.INSTANCE.getRightDevice() : InMemoryCache.INSTANCE.getLeftDevice()).setBattery(battery);
        boolean z12 = this.Y;
        boolean z13 = false;
        boolean z14 = (z12 && this.Z) ? false : true;
        if (z12 && this.Z) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if (inMemoryCache.getRightDevice().getBattery().getState().isCharging() && inMemoryCache.getLeftDevice().getBattery().getState().isCharging()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        o9.s sVar = this.f5881j0;
        if (sVar != null) {
            x1 x1Var = this.f5880i0;
            boolean z15 = this.Y;
            boolean z16 = this.Z;
            ImageView imageView = v0().A;
            p4.h.i(imageView, "binding.staticGradientView");
            if (x1Var != null) {
                if (z10) {
                    sVar.c(x1Var, false, imageView);
                    sVar.c(x1Var, true, imageView);
                } else if (z15 && z16 && !z10 && !sVar.g(x1Var)) {
                    sVar.f(x1Var, false, imageView);
                    sVar.f(x1Var, true, imageView);
                }
            }
        }
        if (!this.Y || !this.Z || !this.f5873a0 || (animationDrawable = this.P) == null) {
            z11 = false;
        } else {
            if (animationDrawable == null) {
                p4.h.C("batteryAnimation");
                throw null;
            }
            if (animationDrawable.isRunning()) {
                z11 = false;
            } else {
                z11 = true;
            }
        }
        if (!z14) {
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            if (!inMemoryCache2.getRightDevice().getBattery().getState().isError() && !inMemoryCache2.getLeftDevice().getBattery().getState().isError()) {
                if (z10 || z11) {
                    ImageView imageView2 = v0().f13770l;
                    Battery battery2 = inMemoryCache2.getLeftDevice().getBattery();
                    Battery battery3 = inMemoryCache2.getRightDevice().getBattery();
                    p4.h.j(battery2, "left");
                    p4.h.j(battery3, "right");
                    int iMin = Math.min(battery2.getPercent(), battery3.getPercent());
                    if (battery2.getState().isError()) {
                        iMin = battery3.getPercent();
                    } else if (battery3.getState().isError()) {
                        iMin = battery2.getPercent();
                    }
                    if (battery2.getState().isCharging() && battery3.getState().isCharging()) {
                        z13 = true;
                    }
                    if (battery2.getState().isError() || battery3.getState().isError()) {
                        Object obj = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_0_percent);
                    } else if (z13) {
                        Object obj2 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_percent_charging);
                    } else if (iMin < 5) {
                        Object obj3 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_0_percent);
                    } else if (iMin < 10) {
                        Object obj4 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_5_percent_red);
                    } else if (iMin < 15) {
                        Object obj5 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_10_percent_red);
                    } else if (iMin < 20) {
                        Object obj6 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_15_percent_red);
                    } else if (iMin < 25) {
                        Object obj7 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_20_percent);
                    } else if (iMin < 30) {
                        Object obj8 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_25_percent);
                    } else if (iMin < 35) {
                        Object obj9 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_30_percent);
                    } else if (iMin < 40) {
                        Object obj10 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_35_percent);
                    } else if (iMin < 45) {
                        Object obj11 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_40_percent);
                    } else if (iMin < 50) {
                        Object obj12 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_45_percent);
                    } else if (iMin < 55) {
                        Object obj13 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_50_percent);
                    } else if (iMin < 60) {
                        Object obj14 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_55_percent);
                    } else if (iMin < 65) {
                        Object obj15 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_60_percent);
                    } else if (iMin < 70) {
                        Object obj16 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_65_percent);
                    } else if (iMin < 75) {
                        Object obj17 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_70_percent);
                    } else if (iMin < 80) {
                        Object obj18 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_75_percent);
                    } else if (iMin < 85) {
                        Object obj19 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_80_percent);
                    } else if (iMin < 90) {
                        Object obj20 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_85_percent);
                    } else if (iMin < 95) {
                        Object obj21 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_90_percent);
                    } else if (iMin < 100) {
                        Object obj22 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_95_percent);
                    } else {
                        Object obj23 = y.a.f18143a;
                        drawableB = y.a.b.b(this, R.drawable.ic_battery_100_percent);
                    }
                    imageView2.setImageDrawable(drawableB);
                    return;
                }
                o9.a aVar = this.Q;
                if (aVar.f12492f == null || aVar.f12493g == null) {
                    return;
                }
                this.f5873a0 = true;
                if (this.P == null) {
                    Battery battery4 = inMemoryCache2.getLeftDevice().getBattery();
                    Battery battery5 = inMemoryCache2.getRightDevice().getBattery();
                    p4.h.j(battery4, "left");
                    p4.h.j(battery5, "right");
                    AnimationDrawable animationDrawable2 = new AnimationDrawable();
                    animationDrawable2.setOneShot(true);
                    int iMin2 = Math.min(battery4.getPercent(), battery5.getPercent());
                    if (battery4.getState().isError()) {
                        iMin2 = battery5.getPercent();
                    } else if (battery5.getState().isError()) {
                        iMin2 = battery4.getPercent();
                    }
                    boolean z17 = battery4.getState().isCharging() && battery5.getState().isCharging();
                    if (battery4.getState().isError() && battery5.getState().isError()) {
                        Object obj24 = y.a.f18143a;
                        Drawable drawableB2 = y.a.b.b(this, R.drawable.ic_battery_0_percent);
                        if (drawableB2 != null) {
                            animationDrawable2.addFrame(drawableB2, 0);
                        }
                    } else if (z17) {
                        Object obj25 = y.a.f18143a;
                        Drawable drawableB3 = y.a.b.b(this, R.drawable.ic_battery_percent_charging);
                        if (drawableB3 != null) {
                            animationDrawable2.addFrame(drawableB3, 0);
                        }
                    } else {
                        if (iMin2 >= 0) {
                            Object obj26 = y.a.f18143a;
                            Drawable drawableB4 = y.a.b.b(this, R.drawable.ic_battery_0_percent);
                            if (drawableB4 != null) {
                                animationDrawable2.addFrame(drawableB4, 40);
                            }
                        }
                        if (iMin2 >= 20) {
                            if (iMin2 >= 5) {
                                Object obj27 = y.a.f18143a;
                                Drawable drawableB5 = y.a.b.b(this, R.drawable.ic_battery_5_percent);
                                if (drawableB5 != null) {
                                    animationDrawable2.addFrame(drawableB5, 40);
                                }
                            }
                            if (iMin2 >= 10) {
                                Object obj28 = y.a.f18143a;
                                Drawable drawableB6 = y.a.b.b(this, R.drawable.ic_battery_10_percent);
                                if (drawableB6 != null) {
                                    animationDrawable2.addFrame(drawableB6, 40);
                                }
                            }
                            if (iMin2 >= 15) {
                                Object obj29 = y.a.f18143a;
                                Drawable drawableB7 = y.a.b.b(this, R.drawable.ic_battery_15_percent);
                                if (drawableB7 != null) {
                                    animationDrawable2.addFrame(drawableB7, 40);
                                }
                            }
                        } else {
                            if (iMin2 >= 5) {
                                Object obj30 = y.a.f18143a;
                                Drawable drawableB8 = y.a.b.b(this, R.drawable.ic_battery_5_percent_red);
                                if (drawableB8 != null) {
                                    animationDrawable2.addFrame(drawableB8, 40);
                                }
                            }
                            if (iMin2 >= 10) {
                                Object obj31 = y.a.f18143a;
                                Drawable drawableB9 = y.a.b.b(this, R.drawable.ic_battery_10_percent_red);
                                if (drawableB9 != null) {
                                    animationDrawable2.addFrame(drawableB9, 40);
                                }
                            }
                            if (iMin2 >= 15) {
                                Object obj32 = y.a.f18143a;
                                Drawable drawableB10 = y.a.b.b(this, R.drawable.ic_battery_15_percent_red);
                                if (drawableB10 != null) {
                                    animationDrawable2.addFrame(drawableB10, 40);
                                }
                            }
                        }
                        if (iMin2 >= 20) {
                            Object obj33 = y.a.f18143a;
                            Drawable drawableB11 = y.a.b.b(this, R.drawable.ic_battery_20_percent);
                            if (drawableB11 != null) {
                                animationDrawable2.addFrame(drawableB11, 40);
                            }
                        }
                        if (iMin2 >= 25) {
                            Object obj34 = y.a.f18143a;
                            Drawable drawableB12 = y.a.b.b(this, R.drawable.ic_battery_25_percent);
                            if (drawableB12 != null) {
                                animationDrawable2.addFrame(drawableB12, 40);
                            }
                        }
                        if (iMin2 >= 30) {
                            Object obj35 = y.a.f18143a;
                            Drawable drawableB13 = y.a.b.b(this, R.drawable.ic_battery_30_percent);
                            if (drawableB13 != null) {
                                animationDrawable2.addFrame(drawableB13, 40);
                            }
                        }
                        if (iMin2 >= 35) {
                            Object obj36 = y.a.f18143a;
                            Drawable drawableB14 = y.a.b.b(this, R.drawable.ic_battery_35_percent);
                            if (drawableB14 != null) {
                                animationDrawable2.addFrame(drawableB14, 40);
                            }
                        }
                        if (iMin2 >= 40) {
                            Object obj37 = y.a.f18143a;
                            Drawable drawableB15 = y.a.b.b(this, R.drawable.ic_battery_40_percent);
                            if (drawableB15 != null) {
                                animationDrawable2.addFrame(drawableB15, 40);
                            }
                        }
                        if (iMin2 >= 45) {
                            Object obj38 = y.a.f18143a;
                            Drawable drawableB16 = y.a.b.b(this, R.drawable.ic_battery_45_percent);
                            if (drawableB16 != null) {
                                animationDrawable2.addFrame(drawableB16, 40);
                            }
                        }
                        if (iMin2 >= 50) {
                            Object obj39 = y.a.f18143a;
                            Drawable drawableB17 = y.a.b.b(this, R.drawable.ic_battery_50_percent);
                            if (drawableB17 != null) {
                                animationDrawable2.addFrame(drawableB17, 40);
                            }
                        }
                        if (iMin2 >= 55) {
                            Object obj40 = y.a.f18143a;
                            Drawable drawableB18 = y.a.b.b(this, R.drawable.ic_battery_55_percent);
                            if (drawableB18 != null) {
                                animationDrawable2.addFrame(drawableB18, 40);
                            }
                        }
                        if (iMin2 >= 60) {
                            Object obj41 = y.a.f18143a;
                            Drawable drawableB19 = y.a.b.b(this, R.drawable.ic_battery_60_percent);
                            if (drawableB19 != null) {
                                animationDrawable2.addFrame(drawableB19, 40);
                            }
                        }
                        if (iMin2 >= 65) {
                            Object obj42 = y.a.f18143a;
                            Drawable drawableB20 = y.a.b.b(this, R.drawable.ic_battery_65_percent);
                            if (drawableB20 != null) {
                                animationDrawable2.addFrame(drawableB20, 40);
                            }
                        }
                        if (iMin2 >= 70) {
                            Object obj43 = y.a.f18143a;
                            Drawable drawableB21 = y.a.b.b(this, R.drawable.ic_battery_70_percent);
                            if (drawableB21 != null) {
                                animationDrawable2.addFrame(drawableB21, 40);
                            }
                        }
                        if (iMin2 >= 75) {
                            Object obj44 = y.a.f18143a;
                            Drawable drawableB22 = y.a.b.b(this, R.drawable.ic_battery_75_percent);
                            if (drawableB22 != null) {
                                animationDrawable2.addFrame(drawableB22, 40);
                            }
                        }
                        if (iMin2 >= 80) {
                            Object obj45 = y.a.f18143a;
                            Drawable drawableB23 = y.a.b.b(this, R.drawable.ic_battery_80_percent);
                            if (drawableB23 != null) {
                                animationDrawable2.addFrame(drawableB23, 40);
                            }
                        }
                        if (iMin2 >= 85) {
                            Object obj46 = y.a.f18143a;
                            Drawable drawableB24 = y.a.b.b(this, R.drawable.ic_battery_85_percent);
                            if (drawableB24 != null) {
                                animationDrawable2.addFrame(drawableB24, 40);
                            }
                        }
                        if (iMin2 >= 90) {
                            Object obj47 = y.a.f18143a;
                            Drawable drawableB25 = y.a.b.b(this, R.drawable.ic_battery_90_percent);
                            if (drawableB25 != null) {
                                animationDrawable2.addFrame(drawableB25, 40);
                            }
                        }
                        if (iMin2 >= 95) {
                            Object obj48 = y.a.f18143a;
                            Drawable drawableB26 = y.a.b.b(this, R.drawable.ic_battery_95_percent);
                            if (drawableB26 != null) {
                                animationDrawable2.addFrame(drawableB26, 40);
                            }
                        }
                        if (iMin2 >= 100) {
                            Object obj49 = y.a.f18143a;
                            Drawable drawableB27 = y.a.b.b(this, R.drawable.ic_battery_100_percent);
                            if (drawableB27 != null) {
                                animationDrawable2.addFrame(drawableB27, 40);
                            }
                        }
                    }
                    this.P = animationDrawable2;
                }
                ImageView imageView3 = v0().f13770l;
                AnimationDrawable animationDrawable3 = this.P;
                if (animationDrawable3 == null) {
                    p4.h.C("batteryAnimation");
                    throw null;
                }
                imageView3.setImageDrawable(animationDrawable3);
                AnimationDrawable animationDrawable4 = this.P;
                if (animationDrawable4 != null) {
                    if (animationDrawable4 == null) {
                        p4.h.C("batteryAnimation");
                        throw null;
                    }
                    if (animationDrawable4.isRunning()) {
                        return;
                    }
                    AnimationDrawable animationDrawable5 = this.P;
                    if (animationDrawable5 != null) {
                        animationDrawable5.start();
                        return;
                    } else {
                        p4.h.C("batteryAnimation");
                        throw null;
                    }
                }
                return;
            }
        }
        ImageView imageView4 = v0().f13770l;
        Object obj50 = y.a.f18143a;
        imageView4.setImageDrawable(y.a.b.b(this, R.drawable.ic_battery_0_percent));
    }

    public final void C0() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        boolean zIsConnected = inMemoryCache.getLeftDevice().isConnected();
        boolean zIsConnected2 = inMemoryCache.getRightDevice().isConnected();
        b9.a aVarS0 = s0(Shoe.LEFT);
        b9.a aVarS1 = s0(Shoe.RIGHT);
        if (zIsConnected) {
            A0(aVarS0);
        } else {
            z0(aVarS0);
        }
        if (zIsConnected2) {
            A0(aVarS1);
        } else {
            z0(aVarS1);
        }
    }

    public final void D0(AdaptShoeColor adaptShoeColor) {
        p7.b bVar = p7.b.f13281a;
        ImageView imageView = v0().A;
        p4.h.i(imageView, "binding.staticGradientView");
        p7.b.f13281a.e(imageView, InMemoryCache.INSTANCE.getActiveLightPack());
        r shoeType = u0().getShoeType();
        p4.h.j(shoeType, "<this>");
        boolean z10 = shoeType == r.JORDAN || shoeType == r.JORDAN_2;
        v0().f13781w.setVisibility(z10 ? 0 : 8);
        v0().f13784z.setVisibility(z10 ? 8 : 0);
        ImageView imageView2 = v0().f13775q;
        p4.h.i(imageView2, "binding.lightsOffHome");
        FrameLayout frameLayout = v0().f13765g;
        p4.h.i(frameLayout, "binding.colorWithEffectsContainer");
        FrameLayout frameLayout2 = v0().f13766h;
        p4.h.i(frameLayout2, "binding.colorWithoutEffectsContainer");
        imageView2.setVisibility(8);
        frameLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        ShoeColor shoeColorValueOf = ShoeColor.Companion.valueOf(adaptShoeColor);
        boolean zIsOff = adaptShoeColor.isOff();
        if (InMemoryCache.INSTANCE.getActiveLightPack() != z8.a.MY_LIGHTS) {
            DuoColorView duoColorView = v0().f13767i;
            Objects.requireNonNull(duoColorView);
            y8.b bVar2 = y8.b.f18683a;
            LightColor lightColorE = bVar2.e(Shoe.LEFT);
            LightColor lightColorE2 = bVar2.e(Shoe.RIGHT);
            duoColorView.a(true, lightColorE, true, false, false);
            duoColorView.a(false, lightColorE2, true, false, false);
            frameLayout.setVisibility(0);
            return;
        }
        if (zIsOff) {
            imageView2.setVisibility(0);
            return;
        }
        if (this.V.b()) {
            DuoColorView duoColorView2 = v0().f13767i;
            p4.h.i(duoColorView2, "binding.effectsLightColor");
            DuoColorView.c(duoColorView2, shoeColorValueOf, false, 12);
            frameLayout.setVisibility(0);
            return;
        }
        DuoColorView duoColorView3 = v0().f13776r;
        p4.h.i(duoColorView3, "binding.noEffectsLightColor");
        DuoColorView.c(duoColorView3, shoeColorValueOf, false, 12);
        frameLayout2.setVisibility(0);
    }

    @Override // x8.q0.a
    public final void W(Shoe shoe) {
        p4.h.j(shoe, "shoe");
        this.f5885n0.d(true, shoe);
    }

    @Override // x8.s.a
    public final void d(boolean z10) {
        if (z10) {
            this.R.b();
        } else {
            TrackManager.INSTANCE.pulsingLightsTurnedOff();
        }
        w0().requestTo(Shoe.BOTH, j0.f13335a);
    }

    @Override // x8.c0
    public final void g(boolean z10) {
        o9.s sVar = this.f5881j0;
        if (sVar != null) {
            sVar.b(this.f5880i0, z10);
        }
    }

    @Override // p8.q
    public final void n0() {
        u0().s(false);
        o9.s sVar = this.f5881j0;
        if (sVar != null) {
            Handler handler = this.f5882k0;
            androidx.activity.g gVar = this.f5883l0;
            p4.h.j(handler, "videoStartHandler");
            p4.h.j(gVar, "videoStartRunnable");
            sVar.f12524c = false;
            handler.removeCallbacks(gVar);
        }
        o9.s sVar2 = this.f5881j0;
        if (sVar2 != null) {
            x1 x1Var = this.f5880i0;
            sVar2.c(x1Var, false, null);
            sVar2.c(x1Var, true, null);
        }
        t9.a aVar = this.f5878g0;
        t9.d dVar = t9.d.DISCONNECTED;
        aVar.f15567a = dVar;
        aVar.f15568b = dVar;
    }

    @Override // p8.a
    public final List<u8.g> o0() {
        return this.f5889r0;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01c7  */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.ArrayList, java.util.List<u8.g>] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList, java.util.List<u8.g>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p8.a
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) throws g0.a {
        Object next;
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.f5878g0.b(adaptConnectionStatusResult);
        if (adaptConnectionStatusResult instanceof DeviceFoundAndReadyToConnect) {
            Iterator it = this.f5889r0.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((u8.g) next) instanceof q));
            if (((u8.g) next) == null) {
                q qVar = new q(this, null, 0L, 30);
                qVar.f16046b = true;
                qVar.f16047c = true;
                InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                qVar.c(false, inMemoryCache.getLeftDevice().getLastKnownConnectionState());
                qVar.c(true, inMemoryCache.getRightDevice().getLastKnownConnectionState());
                this.f5889r0.add(qVar);
            }
            if (adaptConnectionStatusResult.getShoe().isRight()) {
                n0 n0Var = this.M;
                if (n0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                if (!n0Var.w()) {
                    n0Var.q();
                }
                n0Var.l();
            } else {
                f0 f0Var = this.N;
                if (f0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
                if (!f0Var.w()) {
                    f0Var.q();
                }
                f0Var.l();
            }
            r0();
            C0();
            t0(false);
            return;
        }
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair)) {
            if (adaptConnectionStatusResult instanceof Disconnected) {
                if (adaptConnectionStatusResult.getShoe().isRight()) {
                    n0 n0Var2 = this.M;
                    if (n0Var2 == null) {
                        p4.h.C("rightShoeControllerUiHelper");
                        throw null;
                    }
                    n0Var2.l();
                } else {
                    f0 f0Var2 = this.N;
                    if (f0Var2 == null) {
                        p4.h.C("leftShoeControllerUiHelper");
                        throw null;
                    }
                    f0Var2.l();
                }
                Shoe shoe = adaptConnectionStatusResult.getShoe();
                BatteryState batteryState = BatteryState.ERROR;
                B0(shoe, new Battery(0, batteryState));
                C0();
                y0(adaptConnectionStatusResult.getShoe(), false);
                t0(false);
                r0();
                B0(adaptConnectionStatusResult.getShoe(), new Battery(0, batteryState));
                return;
            }
            if (adaptConnectionStatusResult instanceof ConnectingToPair) {
                C0();
                y0(adaptConnectionStatusResult.getShoe(), false);
                t0(false);
                r0();
                B0(adaptConnectionStatusResult.getShoe(), new Battery(0, BatteryState.ERROR));
                return;
            }
            if (adaptConnectionStatusResult instanceof NotInitiated) {
                C0();
                y0(adaptConnectionStatusResult.getShoe(), false);
                t0(false);
                r0();
                B0(adaptConnectionStatusResult.getShoe(), new Battery(0, BatteryState.ERROR));
                return;
            }
            if (adaptConnectionStatusResult instanceof BLEConnectionError) {
                Intent intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
                intent.addFlags(268435456);
                intent.addFlags(1073741824);
                intent.addFlags(8388608);
                startActivity(intent);
                return;
            }
            return;
        }
        y0(adaptConnectionStatusResult.getShoe(), true);
        t0(false);
        r0();
        ea.m device = adaptConnectionStatusResult.getDevice();
        if (device != null) {
            boolean z10 = (this.Y && this.Z) ? false : true;
            Shoe shoe2 = adaptConnectionStatusResult.getShoe();
            w0().subscribe(adaptConnectionStatusResult.getDevice());
            w0().requestTo(shoe2, p8.n.f13339a);
            w0().requestTo(shoe2, x.f13349a);
            w0().requestTo(shoe2, p8.g.f13328a);
            w0().requestTo(shoe2, new p8.w(this.f5888q0));
            w0().requestTo(shoe2, b0.f13313a);
            w0().requestTo(shoe2, p8.e.f13323a);
            if (this.Y && this.Z && !this.f5886o0) {
                this.f5886o0 = true;
                o7.x.f12420a.b("ShoeControllerActivity", "about to make the GetFirmwareVersionRequest for both shoes");
                IDeviceController iDeviceControllerW0 = w0();
                Shoe shoe3 = Shoe.BOTH;
                iDeviceControllerW0.requestTo(shoe3, y.f13350a);
                w0().requestTo(shoe3, p8.k.f13336a);
                v0().f13773o.post(new w4.h(this, 3));
            }
            boolean zIsRight = shoe2.isRight();
            if (z10) {
                if (zIsRight) {
                    o7.x.f12420a.i("Right Shoe fresh Re-Connection Time", System.currentTimeMillis() - this.S);
                } else {
                    o7.x.f12420a.i("Left Shoe fresh Re-Connection Time", System.currentTimeMillis() - this.S);
                }
            } else if (zIsRight) {
                o7.x.f12420a.i("Right Shoe Connection Time to current existing connection", System.currentTimeMillis() - this.S);
            } else {
                o7.x.f12420a.i("Left Shoe Connection Time to current existing connection", System.currentTimeMillis() - this.S);
            }
            if (z10 && u0().T()) {
                if (shoe2.isLeft()) {
                    t8.a aVar = t8.a.f15561a;
                    if (!t8.a.f15563c) {
                        BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o9.e(this, shoe2, null), 3, null);
                        t8.a.f15563c = true;
                    } else if (shoe2.isRight()) {
                        t8.a aVar2 = t8.a.f15561a;
                        if (!t8.a.f15564d) {
                            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o9.e(this, shoe2, null), 3, null);
                            t8.a.f15564d = true;
                        }
                    }
                } else if (shoe2.isRight()) {
                    t8.a aVar3 = t8.a.f15561a;
                    if (!t8.a.f15564d) {
                        BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o9.e(this, shoe2, null), 3, null);
                        t8.a.f15564d = true;
                    }
                }
            }
            r7.g.f14668a.c(this.Z, this.Y);
            boolean zIsRight2 = adaptConnectionStatusResult.getShoe().isRight();
            r rVarK = s9.p.f15222a.k(device.f6670n);
            if ((rVarK == null ? -1 : a.f5892c[rVarK.ordinal()]) == 1) {
                if (this.f5881j0 == null) {
                    o9.s sVar = new o9.s();
                    this.f5881j0 = sVar;
                    sVar.a(this.f5880i0);
                    n3.r.b bVar = new n3.r.b(this);
                    m5.a.e(!bVar.f11664r);
                    bVar.f11664r = true;
                    x1 x1Var = new x1(bVar);
                    this.f5880i0 = x1Var;
                    x1Var.E(2);
                    x1 x1Var2 = this.f5880i0;
                    if (x1Var2 != null) {
                        x1Var2.i0(new m1(0.4f));
                    }
                    g0 g0Var = new g0(this);
                    g0Var.l(new l5.m(g0.buildRawResourceUri(R.raw.nsw_category_lacing)));
                    Uri uri = g0Var.f10030g;
                    if (uri != null) {
                        x1Var.f0(y0.c(uri));
                        x1Var.b();
                    }
                    v0().f13762d.setPlayer(this.f5880i0);
                    v0().f13762d.d();
                }
                if (this.f5884m0) {
                    o9.s sVar2 = this.f5881j0;
                    if (sVar2 != null) {
                        x1 x1Var3 = this.f5880i0;
                        ImageView imageView = v0().A;
                        p4.h.i(imageView, "binding.staticGradientView");
                        sVar2.f(x1Var3, zIsRight2, imageView);
                    }
                } else {
                    o9.s sVar3 = this.f5881j0;
                    if (sVar3 != null) {
                        x1 x1Var4 = this.f5880i0;
                        ImageView imageView2 = v0().A;
                        p4.h.i(imageView2, "binding.staticGradientView");
                        Handler handler = this.f5882k0;
                        androidx.activity.g gVar = this.f5883l0;
                        p4.h.j(handler, "videoStartHandler");
                        p4.h.j(gVar, "videoStartRunnable");
                        if (x1Var4 != null) {
                            sVar3.e(zIsRight2, 2);
                            if (!sVar3.g(x1Var4) && sVar3.f12523b == 2 && sVar3.f12522a == 2) {
                                x1Var4.i0(new m1(0.8f));
                                x1Var4.i(true);
                                imageView2.animate().setDuration(1000L).alpha(0.65f);
                                if (!sVar3.f12524c) {
                                    handler.postDelayed(gVar, 3000L);
                                    sVar3.f12524c = true;
                                }
                            }
                        }
                    }
                    if (this.Y && this.Z) {
                        this.f5884m0 = true;
                    }
                }
            } else {
                o9.s sVar4 = this.f5881j0;
                if (sVar4 != null) {
                    sVar4.a(this.f5880i0);
                }
                this.f5881j0 = null;
                v0().A.setAlpha(1.0f);
            }
            o9.a aVar4 = this.Q;
            aVar4.f12487a = device.f6670n;
            TrackManager.INSTANCE.isHomeViewLoaded(aVar4);
        }
        if (this.f5878g0.a()) {
            s9.c.f15180a.g(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x021d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        Object next;
        q0 q0Var;
        Object[] objArr;
        AdaptDeviceColor adaptDeviceColor;
        AdaptDeviceColor adaptDeviceColor2;
        q0 q0Var2;
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        this.f5879h0.d(deviceControllerResult);
        if (deviceControllerResult instanceof GetBatteryPercentResult) {
            GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) deviceControllerResult;
            if (getBatteryPercentResult.getShoe().isRight()) {
                this.Q.f12493g = Integer.valueOf(getBatteryPercentResult.getBattery().getPercent());
            } else {
                this.Q.f12492f = Integer.valueOf(getBatteryPercentResult.getBattery().getPercent());
            }
            B0(getBatteryPercentResult.getShoe(), getBatteryPercentResult.getBattery());
            TrackManager.INSTANCE.isHomeViewLoaded(this.Q);
            return;
        }
        Object obj = null;
        if (deviceControllerResult instanceof GetLacingPercentResult) {
            GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
            if (getLacingPercentResult.getShoe().isLeft()) {
                q0Var2 = this.N;
                if (q0Var2 == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            } else {
                n0 n0Var = this.M;
                if (n0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                q0Var2 = n0Var;
            }
            z zVar = new z(this, deviceControllerResult, q0Var2, getLacingPercentResult.getRelativePercent() > -1 ? new i0(getLacingPercentResult.getRelativePercent()) : t.f18008a, 1);
            q0Var2.B = zVar;
            if (q0Var2.A && q0Var2.f17967h != null) {
                zVar.run();
            }
            if (getLacingPercentResult.getShoe().isRight()) {
                this.Q.f12489c = Integer.valueOf(getLacingPercentResult.getAbsolutePercent());
            } else {
                this.Q.f12488b = Integer.valueOf(getLacingPercentResult.getAbsolutePercent());
            }
            o9.a aVar = this.Q;
            boolean z10 = aVar.f12488b != null;
            boolean z11 = aVar.f12489c != null;
            r7.g gVar = r7.g.f14668a;
            r7.a aVar2 = r7.g.f14673f;
            int i10 = aVar2 != null ? r7.g.a.f14678a[aVar2.ordinal()] : -1;
            if (i10 == 4 || i10 == 5) {
                gVar.b(z10, z11);
            }
            if (this.Y && this.Z) {
                TrackManager.INSTANCE.isHomeViewLoaded(this.Q);
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof GetLedResult) {
            GetLedResult getLedResult = (GetLedResult) deviceControllerResult;
            boolean zIsRight = getLedResult.getShoe().isRight();
            AdaptDeviceColor shoeLed = getLedResult.getShoeLed();
            if (zIsRight) {
                this.d0 = shoeLed;
            } else {
                this.f5875c0 = shoeLed;
            }
            AdaptDeviceColor adaptDeviceColor3 = this.f5875c0;
            if (adaptDeviceColor3 == null || (adaptDeviceColor2 = this.d0) == null) {
                return;
            }
            AdaptShoeColor adaptShoeColorCreate = AdaptShoeColor.Companion.create(adaptDeviceColor3, adaptDeviceColor2);
            u0().b0(adaptShoeColorCreate);
            D0(adaptShoeColorCreate);
            this.f5875c0 = null;
            this.d0 = null;
            return;
        }
        if (deviceControllerResult instanceof SetLedResult) {
            SetLedResult setLedResult = (SetLedResult) deviceControllerResult;
            boolean zIsRight2 = setLedResult.getShoe().isRight();
            AdaptDeviceColor shoeLed2 = setLedResult.getShoeLed();
            if (zIsRight2) {
                this.f5877f0 = shoeLed2;
            } else {
                this.f5876e0 = shoeLed2;
            }
            AdaptDeviceColor adaptDeviceColor4 = this.f5876e0;
            if (adaptDeviceColor4 == null || (adaptDeviceColor = this.f5877f0) == null) {
                return;
            }
            D0(AdaptShoeColor.Companion.create(adaptDeviceColor4, adaptDeviceColor));
            this.f5876e0 = null;
            this.f5877f0 = null;
            return;
        }
        if (deviceControllerResult instanceof ServoMoveCompleteBroadcastResult) {
            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new d(null), 3, null);
            ServoMoveCompleteBroadcastResult servoMoveCompleteBroadcastResult = (ServoMoveCompleteBroadcastResult) deviceControllerResult;
            this.f5885n0.d(false, servoMoveCompleteBroadcastResult.getShoe());
            boolean zIsRight3 = servoMoveCompleteBroadcastResult.getShoe().isRight();
            o9.s sVar = this.f5881j0;
            if (sVar != null) {
                sVar.d(this.f5880i0, zIsRight3);
            }
            if (zIsRight3) {
                q0Var = this.M;
                if (q0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
            } else {
                q0Var = this.N;
                if (q0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            }
            q0Var.k(servoMoveCompleteBroadcastResult.getRelativePercent(), true);
            if (!u0().h() && u0().v() == -10) {
                h8.a aVarU0 = u0();
                aVarU0.o(aVarU0.P() + 1);
            }
            float f10 = 5;
            int iMin = Math.min((int) (((float) Math.rint(servoMoveCompleteBroadcastResult.getRelativePercent() / f10)) * f10), 100);
            s9.i iVar = s9.i.f15201a;
            if (p4.h.c(Locale.getDefault(), Locale.US)) {
                h8.c cVar = s9.i.f15202b;
                if (cVar.v() == -10 && !cVar.m0().getBoolean("PREF_GOOGLE_VOICE_LACING_NOTIFICATION", false) && cVar.m0().getInt("PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT", 0) >= 15) {
                    objArr = true;
                } else {
                    objArr = false;
                }
            } else {
                objArr = false;
            }
            if (objArr != false) {
                u0().x();
                String strB = s9.e.b(o.r(R.string.google_voice_lacing_notification_description), new Pair("percent", String.valueOf(iMin)));
                BottomSheet bottomSheet = v0().f13768j;
                x8.q.f fVar = x8.q.f17953a;
                Objects.requireNonNull(bottomSheet);
                bottomSheet.B = fVar;
                View view = v0().f13778t;
                p4.h.i(view, "binding.shadedBackground");
                bottomSheet.C = view;
                bottomSheet.D = true;
                p4.h.i(strB, "description");
                bottomSheet.w(strB);
                bottomSheet.x();
            }
            t0(true);
            return;
        }
        if (deviceControllerResult instanceof BatteryUpdateBroadCastNotificationResult) {
            BatteryUpdateBroadCastNotificationResult batteryUpdateBroadCastNotificationResult = (BatteryUpdateBroadCastNotificationResult) deviceControllerResult;
            B0(batteryUpdateBroadCastNotificationResult.getShoe(), batteryUpdateBroadCastNotificationResult.getBattery());
            return;
        }
        if (deviceControllerResult instanceof GetFirmwareVersionResult) {
            GetFirmwareVersionResult getFirmwareVersionResult = (GetFirmwareVersionResult) deviceControllerResult;
            this.Q.f12494h = getFirmwareVersionResult.getFirmwareStatus().getLeftStatus().getCurrentVersion().getVersion();
            this.Q.f12495i = getFirmwareVersionResult.getFirmwareStatus().getRightStatus().getCurrentVersion().getVersion();
            n nVar = this.W;
            if (nVar != null) {
                n.a(nVar, n.a.FirmwareUpdate);
            }
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if (inMemoryCache.getHasShoeUpdates()) {
                o7.x xVar = o7.x.f12420a;
                xVar.a("FW_UPDATE_AVAILABLE : FW_STATS ");
                n nVar2 = this.X;
                if (nVar2 != null) {
                    n.a(nVar2, n.a.JordanAppIcon);
                }
                xVar.a("Firmware Update Prompt in LnR Screen");
            }
            if (u0().f()) {
                o7.x xVar2 = o7.x.f12420a;
                xVar2.b("ShoeControllerActivity", "isConnectAttemptAfterFirmwareUpgrade=true logging success bread crumb");
                TrackManager.INSTANCE.softwareUpdateConnectionReEstablished(inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion(), inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion());
                v7.d dVarW = u0().W();
                if (dVarW != null) {
                    xVar2.a(dVarW.a());
                }
                u0().B(null);
                u0().I(false);
                xVar2.b("ShoeControllerActivity", "isConnectAttemptAfterFirmwareUpgrade=false");
            }
            if (!s9.g.f15195a.f() || u0().e0()) {
                return;
            }
            h9.p.f8348c.e(this);
            return;
        }
        if (deviceControllerResult instanceof GetCurrentFirmwareVersionsResult) {
            o7.x xVar3 = o7.x.f12420a;
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            xVar3.a("LEFT : Firmware version from LnR Screen is : " + inMemoryCache2.getLeftDevice().getAdaptFirmwareVersion() + " : FW_STATS");
            xVar3.a("RIGHT : Firmware version from LnR Screen is : " + inMemoryCache2.getRightDevice().getAdaptFirmwareVersion() + " : FW_STATS");
            v0().f13772n.setVisibility(0);
            if (s9.g.f15195a.h()) {
                v0().f13774p.setVisibility(u0().u() ? 8 : 0);
                if (u0().u()) {
                    return;
                }
                LottieAnimationView lottieAnimationView = v0().f13774p;
                lottieAnimationView.setAlpha(1.0f);
                lottieAnimationView.c(new o9.q(this));
                lottieAnimationView.e();
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof StartAnimationResult) {
            this.V.e(3);
            D0(u0().S());
            return;
        }
        if (deviceControllerResult instanceof StopAnimationResult) {
            this.R.c(((StopAnimationResult) deviceControllerResult).getShoe(), this.V, w0());
            return;
        }
        if (deviceControllerResult instanceof StopAnimationNotificationResult) {
            z8.a activeLightPack = InMemoryCache.INSTANCE.getActiveLightPack();
            z8.a aVar3 = z8.a.MY_LIGHTS;
            if (activeLightPack == aVar3 && this.V.b()) {
                this.V.e(2);
                D0(u0().S());
                return;
            } else {
                if (activeLightPack != aVar3) {
                    p7.b bVar = p7.b.f13281a;
                    ImageView imageView = v0().A;
                    p4.h.i(imageView, "binding.staticGradientView");
                    p7.b.f13281a.e(imageView, InMemoryCache.INSTANCE.getActiveLightPack());
                    return;
                }
                return;
            }
        }
        if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            int i11 = a.f5891b[getAnimationResult.getAnimation().getEndingState().ordinal()];
            if (i11 == 1 || i11 == 2) {
                w0().requestTo(Shoe.BOTH, j0.f13335a);
                return;
            } else {
                this.V.f(getAnimationResult.getAnimation());
                D0(u0().S());
                return;
            }
        }
        if (deviceControllerResult instanceof GetSerialNumberResult) {
            GetSerialNumberResult getSerialNumberResult = (GetSerialNumberResult) deviceControllerResult;
            if (getSerialNumberResult.getShoe().isRight()) {
                this.Q.f12491e = getSerialNumberResult.getSerialNumber();
            } else {
                this.Q.f12490d = getSerialNumberResult.getSerialNumber();
            }
            TrackManager.INSTANCE.isHomeViewLoaded(this.Q);
            return;
        }
        if (deviceControllerResult instanceof GetDeviceStatsResult) {
            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new e(deviceControllerResult, null), 3, null);
            return;
        }
        if (!(deviceControllerResult instanceof GetAutoLaceResult)) {
            if (deviceControllerResult instanceof GestureStatsNotificationResult) {
                AdaptGestureConfiguration gestureConfiguration = ((GestureStatsNotificationResult) deviceControllerResult).getGestureNotification().getGestureConfiguration();
                if (gestureConfiguration.getAction() == AdaptGestureAction.ACTION_UNLACE && gestureConfiguration.getClassification() == AdaptGestureClassification.CLASSIFICATION_DOUBLETAP) {
                    TrackManager trackManager = TrackManager.INSTANCE;
                    TrackManager.gestureSuccessToastShown$default(trackManager, null, "L R screen", 1, null);
                    TrackManager.gestureSecondShoeSuccess$default(trackManager, null, 1, null);
                    NotificationToast notificationToast = v0().f13760b;
                    notificationToast.e(R.string.adapt_unlace_gesture_toast_success_title);
                    notificationToast.c(R.string.adapt_unlace_gesture_toast_success_body);
                    notificationToast.d(f.f5907h);
                    notificationToast.a();
                    return;
                }
                return;
            }
            return;
        }
        t9.b bVar2 = this.f5879h0;
        if (((bVar2.f15570a == -1 || bVar2.f15571b == -1) ? false : true) == true) {
            g9.k kVar = g9.k.f7894a;
            String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
            ArrayList<v7.k> arrayListO = g9.k.f7895b.O();
            if (arrayListO == null) {
                arrayListO = new ArrayList<>();
            }
            Iterator<T> it = arrayListO.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!p4.h.c(((v7.k) next).f16419a, defaultAndConnectedId$default));
            v7.k kVar2 = (v7.k) next;
            if (kVar2 != null ? kVar2.f16424f : false) {
                g9.k kVar3 = g9.k.f7894a;
                String defaultAndConnectedId$default2 = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
                ArrayList<v7.k> arrayListO2 = g9.k.f7895b.O();
                if (arrayListO2 == null) {
                    arrayListO2 = new ArrayList<>();
                }
                for (Object obj2 : arrayListO2) {
                    if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default2)) {
                        obj = obj2;
                        break;
                    }
                }
                v7.k kVar4 = (v7.k) obj;
                if (kVar4 != null) {
                    kVar4.f16424f = false;
                }
                g9.k.f7895b.a(arrayListO2);
                g9.k kVar5 = g9.k.f7894a;
                t9.b bVar3 = this.f5879h0;
                g9.k.e(bVar3.f15570a, bVar3.f15571b);
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (v0().f13768j.u()) {
            return;
        }
        if (!v0().f13773o.u()) {
            super.onBackPressed();
            return;
        }
        TrackManager.INSTANCE.appIconBottomSheetMaybeLater();
        n nVar = this.X;
        if (nVar != null) {
            n.a(nVar, n.a.JordanAppIcon);
        }
        u0().i(true);
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z10 = false;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_shoe_controller, (ViewGroup) null, false);
        int i10 = R.id.activity_shoe_controller_notification_toast;
        NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.activity_shoe_controller_notification_toast);
        if (notificationToast != null) {
            i10 = R.id.auto_lace_unlaced_notification_toast;
            NotificationToast notificationToast2 = (NotificationToast) g7.b.d(viewInflate, R.id.auto_lace_unlaced_notification_toast);
            if (notificationToast2 != null) {
                i10 = R.id.background_video_player;
                PlayerView playerView = (PlayerView) g7.b.d(viewInflate, R.id.background_video_player);
                if (playerView != null) {
                    i10 = R.id.bigfoot_lacing_settings;
                    FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.bigfoot_lacing_settings);
                    if (frameLayout != null) {
                        i10 = R.id.bigfoot_lacing_settings_icon;
                        if (((ImageView) g7.b.d(viewInflate, R.id.bigfoot_lacing_settings_icon)) != null) {
                            i10 = R.id.bigfoot_lacing_shoe_preferences;
                            FrameLayout frameLayout2 = (FrameLayout) g7.b.d(viewInflate, R.id.bigfoot_lacing_shoe_preferences);
                            if (frameLayout2 != null) {
                                i10 = R.id.bigfoot_lacing_shoe_preferences_icon;
                                if (((ImageView) g7.b.d(viewInflate, R.id.bigfoot_lacing_shoe_preferences_icon)) != null) {
                                    i10 = R.id.center;
                                    if (g7.b.d(viewInflate, R.id.center) != null) {
                                        i10 = R.id.color_with_effects_container;
                                        FrameLayout frameLayout3 = (FrameLayout) g7.b.d(viewInflate, R.id.color_with_effects_container);
                                        if (frameLayout3 != null) {
                                            i10 = R.id.color_without_effects_container;
                                            FrameLayout frameLayout4 = (FrameLayout) g7.b.d(viewInflate, R.id.color_without_effects_container);
                                            if (frameLayout4 != null) {
                                                i10 = R.id.decommission_banner;
                                                if (((NotificationToast) g7.b.d(viewInflate, R.id.decommission_banner)) != null) {
                                                    i10 = R.id.effects_light_color;
                                                    DuoColorView duoColorView = (DuoColorView) g7.b.d(viewInflate, R.id.effects_light_color);
                                                    if (duoColorView != null) {
                                                        i10 = R.id.google_voice_bottom_sheet;
                                                        BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.google_voice_bottom_sheet);
                                                        if (bottomSheet != null) {
                                                            i10 = R.id.home_light_parent;
                                                            FrameLayout frameLayout5 = (FrameLayout) g7.b.d(viewInflate, R.id.home_light_parent);
                                                            if (frameLayout5 != null) {
                                                                i10 = R.id.icon_battery_lacing_screen;
                                                                ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.icon_battery_lacing_screen);
                                                                if (imageView != null) {
                                                                    i10 = R.id.icon_battery_lacing_screen_container;
                                                                    FrameLayout frameLayout6 = (FrameLayout) g7.b.d(viewInflate, R.id.icon_battery_lacing_screen_container);
                                                                    if (frameLayout6 != null) {
                                                                        i10 = R.id.icons_container;
                                                                        LinearLayout linearLayout = (LinearLayout) g7.b.d(viewInflate, R.id.icons_container);
                                                                        if (linearLayout != null) {
                                                                            i10 = R.id.jordan_app_icon_bottom_sheet;
                                                                            BottomSheet bottomSheet2 = (BottomSheet) g7.b.d(viewInflate, R.id.jordan_app_icon_bottom_sheet);
                                                                            if (bottomSheet2 != null) {
                                                                                i10 = R.id.lighting_halo;
                                                                                LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewInflate, R.id.lighting_halo);
                                                                                if (lottieAnimationView != null) {
                                                                                    i10 = R.id.lights_off_home;
                                                                                    ImageView imageView2 = (ImageView) g7.b.d(viewInflate, R.id.lights_off_home);
                                                                                    if (imageView2 != null) {
                                                                                        i10 = R.id.nike_swoosh;
                                                                                        if (((FrameLayout) g7.b.d(viewInflate, R.id.nike_swoosh)) != null) {
                                                                                            i10 = R.id.no_effects_light_color;
                                                                                            DuoColorView duoColorView2 = (DuoColorView) g7.b.d(viewInflate, R.id.no_effects_light_color);
                                                                                            if (duoColorView2 != null) {
                                                                                                i10 = R.id.presets_saved_animation;
                                                                                                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) g7.b.d(viewInflate, R.id.presets_saved_animation);
                                                                                                if (lottieAnimationView2 != null) {
                                                                                                    i10 = R.id.shaded_background;
                                                                                                    View viewD = g7.b.d(viewInflate, R.id.shaded_background);
                                                                                                    if (viewD != null) {
                                                                                                        i10 = R.id.shoe_controller;
                                                                                                        View viewD2 = g7.b.d(viewInflate, R.id.shoe_controller);
                                                                                                        if (viewD2 != null) {
                                                                                                            q7.m1 m1VarA = q7.m1.a(viewD2);
                                                                                                            i10 = R.id.shoe_controller_icon_mode;
                                                                                                            FrameLayout frameLayout7 = (FrameLayout) g7.b.d(viewInflate, R.id.shoe_controller_icon_mode);
                                                                                                            if (frameLayout7 != null) {
                                                                                                                i10 = R.id.shoe_controller_jumpman;
                                                                                                                ImageView imageView3 = (ImageView) g7.b.d(viewInflate, R.id.shoe_controller_jumpman);
                                                                                                                if (imageView3 != null) {
                                                                                                                    i10 = R.id.shoe_controller_my_shoe_badge;
                                                                                                                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.shoe_controller_my_shoe_badge);
                                                                                                                    if (textView != null) {
                                                                                                                        i10 = R.id.shoe_controller_settings_badge;
                                                                                                                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.shoe_controller_settings_badge);
                                                                                                                        if (textView2 != null) {
                                                                                                                            i10 = R.id.shoe_controller_swoosh;
                                                                                                                            ImageView imageView4 = (ImageView) g7.b.d(viewInflate, R.id.shoe_controller_swoosh);
                                                                                                                            if (imageView4 != null) {
                                                                                                                                i10 = R.id.static_gradient_view;
                                                                                                                                ImageView imageView5 = (ImageView) g7.b.d(viewInflate, R.id.static_gradient_view);
                                                                                                                                if (imageView5 != null) {
                                                                                                                                    i10 = R.id.text_view_dmc_content;
                                                                                                                                    View viewD3 = g7.b.d(viewInflate, R.id.text_view_dmc_content);
                                                                                                                                    if (viewD3 != null) {
                                                                                                                                        u1 u1Var = new u1((TextView) viewD3);
                                                                                                                                        int i11 = R.id.unlace_or_lace_up;
                                                                                                                                        FrameLayout frameLayout8 = (FrameLayout) g7.b.d(viewInflate, R.id.unlace_or_lace_up);
                                                                                                                                        if (frameLayout8 != null) {
                                                                                                                                            i11 = R.id.unlace_or_lace_up_image_view;
                                                                                                                                            ImageView imageView6 = (ImageView) g7.b.d(viewInflate, R.id.unlace_or_lace_up_image_view);
                                                                                                                                            if (imageView6 != null) {
                                                                                                                                                this.I = new e0((CoordinatorLayout) viewInflate, notificationToast, notificationToast2, playerView, frameLayout, frameLayout2, frameLayout3, frameLayout4, duoColorView, bottomSheet, frameLayout5, imageView, frameLayout6, linearLayout, bottomSheet2, lottieAnimationView, imageView2, duoColorView2, lottieAnimationView2, viewD, m1VarA, frameLayout7, imageView3, textView, textView2, imageView4, imageView5, u1Var, frameLayout8, imageView6);
                                                                                                                                                setContentView(v0().f13759a);
                                                                                                                                                t9.c cVar = this.f5885n0;
                                                                                                                                                cVar.f15579a = true;
                                                                                                                                                cVar.f15580b = true;
                                                                                                                                                Intent intent = getIntent();
                                                                                                                                                if (intent != null && intent.getBooleanExtra("extra_unlace_gesture_on", false)) {
                                                                                                                                                    z10 = true;
                                                                                                                                                }
                                                                                                                                                if (z10) {
                                                                                                                                                    Intent intent2 = getIntent();
                                                                                                                                                    if (intent2 != null) {
                                                                                                                                                        intent2.removeExtra("extra_unlace_gesture_on");
                                                                                                                                                    }
                                                                                                                                                    v0().f13760b.post(new x.a(this, 3));
                                                                                                                                                }
                                                                                                                                                this.S = System.currentTimeMillis();
                                                                                                                                                IAdaptRequester iAdaptRequesterA = ((o7.f) o.m()).a(this, this.B, o9.o.f12518h, new o9.f(this));
                                                                                                                                                p4.h.j(iAdaptRequesterA, "<set-?>");
                                                                                                                                                this.O = iAdaptRequesterA;
                                                                                                                                                IDeviceController iDeviceControllerB = ((o7.f) o.m()).b(this, this.B);
                                                                                                                                                p4.h.j(iDeviceControllerB, "<set-?>");
                                                                                                                                                this.L = iDeviceControllerB;
                                                                                                                                                v0().f13771m.setOnClickListener(new r9.a(new e9.f(this, 4), HttpStatusCodesKt.HTTP_OK));
                                                                                                                                                int i12 = 5;
                                                                                                                                                v0().f13780v.setOnClickListener(new r9.a(new o8.e(this, i12), HttpStatusCodesKt.HTTP_OK));
                                                                                                                                                v0().f13769k.setOnClickListener(new r9.a(new o8.f(this, i12), HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR));
                                                                                                                                                v0().f13763e.setOnClickListener(new r9.a(new x8.j0(this, 7), HttpStatusCodesKt.HTTP_OK));
                                                                                                                                                v0().f13764f.setOnClickListener(new r9.a(new o8.j(this, 2), HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR));
                                                                                                                                                r7.g.f14668a.d(getIntent(), w0());
                                                                                                                                                IDeviceController iDeviceControllerW0 = w0();
                                                                                                                                                q7.m1 m1Var = v0().f13779u;
                                                                                                                                                p4.h.i(m1Var, "binding.shoeController");
                                                                                                                                                this.N = new f0(iDeviceControllerW0, m1Var, this, false, new g(), 24);
                                                                                                                                                IDeviceController iDeviceControllerW1 = w0();
                                                                                                                                                q7.m1 m1Var2 = v0().f13779u;
                                                                                                                                                p4.h.i(m1Var2, "binding.shoeController");
                                                                                                                                                this.M = new n0(iDeviceControllerW1, m1Var2, this, false, new h(), 24);
                                                                                                                                                f0 f0Var = this.N;
                                                                                                                                                if (f0Var == null) {
                                                                                                                                                    p4.h.C("leftShoeControllerUiHelper");
                                                                                                                                                    throw null;
                                                                                                                                                }
                                                                                                                                                f0Var.n(this);
                                                                                                                                                n0 n0Var = this.M;
                                                                                                                                                if (n0Var == null) {
                                                                                                                                                    p4.h.C("rightShoeControllerUiHelper");
                                                                                                                                                    throw null;
                                                                                                                                                }
                                                                                                                                                n0Var.n(this);
                                                                                                                                                v0().f13779u.f13927a.f13919b.post(new y0.t(this, i12));
                                                                                                                                                v0().f13779u.f13928b.f13919b.post(new i8.f(this, i12));
                                                                                                                                                ImageView imageView7 = v0().f13779u.f13927a.f13918a;
                                                                                                                                                p4.h.i(imageView7, "binding.shoeController.l…rContainer.shoeController");
                                                                                                                                                Object obj = y.a.f18143a;
                                                                                                                                                imageView7.setImageTintList(ColorStateList.valueOf(y.a.c.a(this, R.color.lacing_controller_default)));
                                                                                                                                                if (u0().d0()) {
                                                                                                                                                    v0().f13777s.setAlpha(1.0f);
                                                                                                                                                    v0().f13777s.e();
                                                                                                                                                    v0().f13777s.c(new o9.r(this));
                                                                                                                                                }
                                                                                                                                                TextView textView3 = v0().f13782x;
                                                                                                                                                p4.h.i(textView3, "binding.shoeControllerMyShoeBadge");
                                                                                                                                                this.W = new n(textView3);
                                                                                                                                                TextView textView4 = v0().f13783y;
                                                                                                                                                p4.h.i(textView4, "binding.shoeControllerSettingsBadge");
                                                                                                                                                this.X = new n(textView4);
                                                                                                                                                ImageView imageView8 = v0().f13779u.f13927a.f13918a;
                                                                                                                                                p4.h.i(imageView8, "binding.shoeController.l…rContainer.shoeController");
                                                                                                                                                ImageView imageView9 = v0().f13779u.f13928b.f13918a;
                                                                                                                                                p4.h.i(imageView9, "binding.shoeController.r…rContainer.shoeController");
                                                                                                                                                FrameLayout frameLayout9 = v0().f13763e;
                                                                                                                                                p4.h.i(frameLayout9, "binding.bigfootLacingSettings");
                                                                                                                                                a0.p(imageView8, new x8.b(frameLayout9));
                                                                                                                                                a0.p(imageView9, new x8.b(imageView8));
                                                                                                                                                h8.e eVar = h8.e.f8306b;
                                                                                                                                                eVar.l().edit().remove("PREF_ON_BOARDING_SHOE_TYPE").apply();
                                                                                                                                                eVar.l().edit().remove("PREF_ON_BOARDING_COLORWAY_CODE").apply();
                                                                                                                                                eVar.l().edit().remove("PREF_ON_BOARDING_LEFT_COLORWAY_CODE").apply();
                                                                                                                                                eVar.l().edit().remove("PREF_ON_BOARDING_RIGHT_COLORWAY_CODE").apply();
                                                                                                                                                SharedPreferences.Editor editorEdit = eVar.l().edit();
                                                                                                                                                p4.h.i(editorEdit, "editor");
                                                                                                                                                editorEdit.putString("PREF_LEFT_PAIR", null);
                                                                                                                                                editorEdit.putString("PREF_RIGHT_PAIR", null);
                                                                                                                                                editorEdit.apply();
                                                                                                                                                return;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        i10 = i11;
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onDestroy() {
        o9.s sVar = this.f5881j0;
        if (sVar != null) {
            sVar.a(this.f5880i0);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        D0(u0().S());
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        p4.h.j(bundle, "savedInstanceState");
        super.onRestoreInstanceState(bundle);
        bundle.putBoolean("has_animated_battery", this.f5873a0);
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        D0(u0().S());
        n nVar = this.W;
        if (nVar != null) {
            n.a(nVar, n.a.AutoLaceIntro);
        }
        n nVar2 = this.W;
        if (nVar2 != null) {
            n.a(nVar2, n.a.Gestures);
        }
        t9.a aVar = this.f5878g0;
        t9.d dVar = t9.d.DISCONNECTED;
        aVar.f15567a = dVar;
        aVar.f15568b = dVar;
        if (u0().J()) {
            s9.y.d(s9.y.f15252a, this, R.string.adapt_decommission_notice_title, null, R.string.adapt_decommission_notice_body, 0, R.string.bigfoot_dismiss_cta, R.string.adapt_decommission_viewFAQs_button_copy, false, new i(), new j(), new s9.y.a("DECOMMISSION_LEARN_MORE", "OK", "CANCEL", 8), 20);
        }
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.S = System.currentTimeMillis();
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.HOME);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        if (inMemoryCache.getLeftDevice().isConnected() && inMemoryCache.getRightDevice().isConnected()) {
            return;
        }
        this.f5873a0 = false;
        v0().f13770l.setImageResource(R.drawable.ic_battery_0_percent);
        v0().D.setImageResource(R.drawable.ic_lacing_0);
        v0().D.setTag(null);
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        this.f5886o0 = false;
    }

    public final void r0() {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        boolean zIsConnected = inMemoryCache.getLeftDevice().isConnected();
        boolean zIsConnected2 = inMemoryCache.getRightDevice().isConnected();
        if (!zIsConnected) {
            z0(s0(Shoe.LEFT));
        }
        if (zIsConnected2) {
            return;
        }
        z0(s0(Shoe.RIGHT));
    }

    public final b9.a s0(Shoe shoe) {
        ImageView imageView = (shoe.isRight() ? v0().f13779u.f13928b : v0().f13779u.f13927a).f13918a;
        p4.h.i(imageView, "if (shoe.isRight()) bind…rContainer.shoeController");
        return new b9.a(shoe, imageView);
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0195  */
    public final void t0(boolean z10) {
        String string;
        boolean z11;
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        boolean zIsConnected = inMemoryCache.getLeftDevice().isConnected();
        boolean zIsConnected2 = inMemoryCache.getRightDevice().isConnected();
        TextView textView = v0().B.f14028a;
        p4.h.i(textView, "binding.textViewDmcContent.textViewDmc");
        x8.r rVar = x8.r.f17990a;
        IAdaptRequester iAdaptRequester = this.O;
        if (iAdaptRequester == null) {
            p4.h.C("adaptRequester");
            throw null;
        }
        boolean zD0 = u0().d0();
        if (!zIsConnected2 && !zIsConnected) {
            string = o.r(R.string.adapt_home_view_connect_devices_message);
        } else if (!zIsConnected2) {
            string = o.r(R.string.adapt_home_view_connect_right_device_message);
        } else if (!zIsConnected) {
            string = o.r(R.string.adapt_home_view_connect_left_device_message);
        } else {
            if (!zD0) {
                List<AdaptDeviceMode> listModes = iAdaptRequester.modes();
                if (listModes == null) {
                    string = "";
                    break;
                }
                Iterator<T> it = listModes.iterator();
                while (true) {
                    if (it.hasNext()) {
                        AdaptDeviceMode adaptDeviceMode = (AdaptDeviceMode) it.next();
                        int i10 = adaptDeviceMode.getLeftAttributes().f6618h.f6648h.f6647j;
                        InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
                        boolean z12 = (i10 <= inMemoryCache2.getLeftDevice().getLastKnownRelativeTightness() + 2 && adaptDeviceMode.getLeftAttributes().f6618h.f6648h.f6647j >= inMemoryCache2.getLeftDevice().getLastKnownRelativeTightness() + (-2)) && (adaptDeviceMode.getRightAttributes().f6618h.f6648h.f6647j <= inMemoryCache2.getRightDevice().getLastKnownRelativeTightness() + 2 && adaptDeviceMode.getRightAttributes().f6618h.f6648h.f6647j >= inMemoryCache2.getRightDevice().getLastKnownRelativeTightness() + (-2));
                        ba.f fVar = adaptDeviceMode.getLeftAttributes().f6619i.f6626l;
                        AdaptMarshaller.AdaptPreset adaptPreset = fVar != null ? AdaptMarshaller.AdaptPreset.Companion.parse(fVar) : null;
                        ba.f fVar2 = adaptDeviceMode.getRightAttributes().f6619i.f6626l;
                        AdaptMarshaller.AdaptPreset adaptPreset2 = fVar2 != null ? AdaptMarshaller.AdaptPreset.Companion.parse(fVar2) : null;
                        boolean z13 = adaptDeviceMode.getAutoGenerated() || (adaptPreset != null && adaptPreset2 != null && p4.h.c(new AdaptShoeColor(adaptPreset, adaptPreset2, null, 4, null), x8.r.f17991b.S()));
                        if (z12 && z13) {
                            boolean autoGenerated = adaptDeviceMode.getAutoGenerated();
                            String name = adaptDeviceMode.getName();
                            p4.h.j(name, "name");
                            if (!autoGenerated) {
                                string = name;
                                break;
                            }
                            try {
                                BigfootApplication.e eVar = BigfootApplication.f5638p;
                                string = eVar.a().getString(eVar.a().getResources().getIdentifier(name, "string", eVar.a().getPackageName()));
                                p4.h.i(string, "{\n            BigfootApp…N.packageName))\n        }");
                                break;
                            } catch (Throwable unused) {
                                string = "";
                                break;
                            }
                        }
                    }
                    string = "";
                    break;
                }
            }
            string = o.r(R.string.adapt_auto_gen_presets_saved_confirmation);
        }
        x8.r rVar2 = x8.r.f17990a;
        if (!p4.h.c(string, o.r(R.string.adapt_home_view_connect_devices_message)) && !p4.h.c(string, o.r(R.string.adapt_home_view_connect_right_device_message)) && !p4.h.c(string, o.r(R.string.adapt_home_view_connect_left_device_message))) {
            z11 = string.length() == 0;
        }
        if (z11) {
            textView.setAlpha(1.0f);
            textView.setText(string);
            return;
        }
        if (u0().d0()) {
            if (this.f5874b0) {
                return;
            } else {
                this.f5874b0 = true;
            }
        }
        textView.setAlpha(1.0f);
        textView.animate().setStartDelay(u0().d0() ? 5500L : 1000L).alpha(0.0f).withEndAction(new androidx.activity.d(this, 5)).setDuration(1000L);
        textView.setText(string);
        if (z10) {
            TrackManager trackManager = TrackManager.INSTANCE;
            InMemoryCache inMemoryCache3 = InMemoryCache.INSTANCE;
            trackManager.modeEnteredManually(string, inMemoryCache3.getLeftDevice().getLastKnownAbsoluteTightness(), inMemoryCache3.getRightDevice().getLastKnownAbsoluteTightness());
        }
    }

    public final h8.a u0() {
        return (h8.a) this.f5887p0.getValue();
    }

    public final e0 v0() {
        e0 e0Var = this.I;
        if (e0Var != null) {
            return e0Var;
        }
        p4.h.C("binding");
        throw null;
    }

    public final IDeviceController w0() {
        IDeviceController iDeviceController = this.L;
        if (iDeviceController != null) {
            return iDeviceController;
        }
        p4.h.C("deviceController");
        throw null;
    }

    public final void x0(ImageView imageView) {
        imageView.setScaleX(1.0f);
        imageView.setScaleY(1.0f);
        imageView.setImageTintList(ColorStateList.valueOf(-1));
        imageView.setAlpha(1.0f);
    }

    public final void y0(Shoe shoe, boolean z10) {
        if (shoe.isLeft()) {
            this.Y = z10;
            f0 f0Var = this.N;
            if (f0Var != null) {
                f0Var.s(z10);
                return;
            } else {
                p4.h.C("leftShoeControllerUiHelper");
                throw null;
            }
        }
        this.Z = z10;
        n0 n0Var = this.M;
        if (n0Var != null) {
            n0Var.s(z10);
        } else {
            p4.h.C("rightShoeControllerUiHelper");
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<b9.a>, java.util.Vector] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List<b9.a>, java.util.Vector] */
    public final void z0(b9.a aVar) {
        Animator animator = this.U;
        if (animator == null) {
            final float f10 = 0.13f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.1f);
            p4.h.i(valueAnimatorOfFloat, "");
            valueAnimatorOfFloat.addListener(new o9.p(valueAnimatorOfFloat));
            valueAnimatorOfFloat.setRepeatMode(2);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(1.2f));
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: o9.b
                /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List<b9.a>, java.util.Vector] */
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ShoeControllerActivity shoeControllerActivity = this.f12496a;
                    float f11 = f10;
                    int i10 = ShoeControllerActivity.f5872s0;
                    p4.h.j(shoeControllerActivity, "this$0");
                    p4.h.j(valueAnimator, "animator");
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    for (b9.a aVar2 : shoeControllerActivity.T) {
                        ColorStateList imageTintList = aVar2.f3577b.getImageTintList();
                        Context context = aVar2.f3577b.getContext();
                        Object obj = y.a.f18143a;
                        if (!p4.h.c(imageTintList, ColorStateList.valueOf(y.a.c.a(context, R.color.lacing_controller_default)))) {
                            ImageView imageView = aVar2.f3577b;
                            imageView.setImageTintList(ColorStateList.valueOf(y.a.c.a(imageView.getContext(), R.color.lacing_controller_default)));
                        }
                        if (!(aVar2.f3577b.getAlpha() == f11)) {
                            aVar2.f3577b.setAlpha(f11);
                        }
                        aVar2.f3577b.setScaleX(fFloatValue);
                        aVar2.f3577b.setScaleY(fFloatValue);
                    }
                }
            });
            animator = valueAnimatorOfFloat;
        }
        if (!this.T.contains(aVar)) {
            this.T.add(aVar);
            o9.s sVar = this.f5881j0;
            if (sVar != null) {
                sVar.c(this.f5880i0, aVar.f3576a.isRight(), null);
            }
        }
        if (!animator.isRunning()) {
            animator.start();
        }
        this.U = animator;
    }
}
