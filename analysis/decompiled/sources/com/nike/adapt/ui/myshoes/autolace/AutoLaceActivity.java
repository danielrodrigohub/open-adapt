package com.nike.adapt.ui.myshoes.autolace;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.d;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerErrorResult;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAutoLaceResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.SetAutoLaceError;
import com.nike.adapt.adk.SetAutoLaceResult;
import com.nike.adapt.adk.SetFootPresenceSensorResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.ToggleAutoLaceError;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity;
import g9.h;
import g9.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import ld.e;
import ld.i;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p8.f;
import p8.f0;
import q7.e2;
import q7.i0;
import qd.p;
import s9.y;
import t9.b;
import u8.c;
import u8.g;
import u8.q;

/* JADX INFO: compiled from: AutoLaceActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AutoLaceActivity extends p8.a implements h.a {
    public static final /* synthetic */ int U = 0;
    public IDeviceController J;
    public IAdaptRequester K;
    public h L;
    public d N;
    public boolean O;
    public boolean P;
    public boolean S;
    public i0 T;
    public final List<g> I = o.e(new q(this, null, 0, 30), new c(R.id.auto_lace_activity_parent, this));
    public b M = new b();
    public final t9.c Q = new t9.c();
    public final t9.c R = new t9.c();

    /* JADX INFO: compiled from: AutoLaceActivity.kt */
    @e(c = "com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity$onResume$1", f = "AutoLaceActivity.kt", l = {99}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5820h;

        /* JADX INFO: renamed from: com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AutoLaceActivity.kt */
        @e(c = "com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity$onResume$1$1", f = "AutoLaceActivity.kt", l = {100}, m = "invokeSuspend")
        public static final class C0100a extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f5822h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ AutoLaceActivity f5823i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0100a(AutoLaceActivity autoLaceActivity, jd.d<? super C0100a> dVar) {
                super(2, dVar);
                this.f5823i = autoLaceActivity;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new C0100a(this.f5823i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((C0100a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5822h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    this.f5822h = 1;
                    if (DelayKt.delay(500L, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                i0 i0Var = this.f5823i.T;
                if (i0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                BottomSheet bottomSheet = i0Var.f13850d;
                x8.q.a aVar2 = x8.q.f17957e;
                Objects.requireNonNull(bottomSheet);
                bottomSheet.B = aVar2;
                i0 i0Var2 = this.f5823i.T;
                if (i0Var2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                View view = i0Var2.f13855i;
                p4.h.i(view, "binding.shadedBackground");
                bottomSheet.C = view;
                bottomSheet.D = true;
                bottomSheet.x();
                return fd.o.f7408a;
            }
        }

        public a(jd.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return AutoLaceActivity.this.new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5820h;
            if (i10 == 0) {
                d3.e.p(obj);
                MainCoroutineDispatcher main = Dispatchers.getMain();
                C0100a c0100a = new C0100a(AutoLaceActivity.this, null);
                this.f5820h = 1;
                if (BuildersKt.withContext(main, c0100a, this) == aVar) {
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

    @Override // g9.h.a
    public final void Q(boolean z10, ea.e eVar) {
        if (this.R.c()) {
            return;
        }
        if (z10) {
            k kVar = k.f7894a;
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            int iF = kVar.f(inMemoryCache.getLeftDevice().getLastKnownRelativeTightness());
            int iF2 = kVar.f(inMemoryCache.getRightDevice().getLastKnownRelativeTightness());
            TrackManager.INSTANCE.autoLaceFitSelected(TrackManager.AutoLaceType.DEFAULT, iF, iF2);
            IDeviceController iDeviceController = this.J;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.requestTo(Shoe.LEFT, new f(iF));
            IDeviceController iDeviceController2 = this.J;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(Shoe.RIGHT, new f(iF2));
            t9.c cVar = this.R;
            cVar.f15579a = true;
            cVar.f15580b = true;
            return;
        }
        if (eVar == null) {
            return;
        }
        k kVar2 = k.f7894a;
        int iF3 = kVar2.f(eVar.f6630k.f6618h.f6648h.f6647j);
        int iF4 = kVar2.f(eVar.f6631l.f6618h.f6648h.f6647j);
        TrackManager.INSTANCE.autoLaceFitSelected(TrackManager.AutoLaceType.CUSTOM, iF3, iF4);
        IDeviceController iDeviceController3 = this.J;
        if (iDeviceController3 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController3.requestTo(Shoe.LEFT, new f(iF3));
        IDeviceController iDeviceController4 = this.J;
        if (iDeviceController4 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController4.requestTo(Shoe.RIGHT, new f(iF4));
        t9.c cVar2 = this.R;
        cVar2.f15579a = true;
        cVar2.f15580b = true;
    }

    @Override // g9.h.a
    public final void S() {
        TrackManager.INSTANCE.autoLaceEditSelected();
        h9.e.f8321c.e(this);
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.I;
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 23 && i11 == -1) {
            this.P = true;
            this.O = true;
        }
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
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        boolean z10 = this.P;
        if (!z10 && !this.O) {
            IDeviceController iDeviceController2 = this.J;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), p8.e.f13323a);
            h hVar = this.L;
            if (hVar != null) {
                hVar.o(p4.h.w(adaptConnectionStatusResult.getDevice()));
                return;
            }
            return;
        }
        if (z10 || this.O) {
            if (adaptConnectionStatusResult.getShoe().isLeft()) {
                this.P = false;
            } else {
                this.O = false;
            }
            if (this.P || this.O) {
                return;
            }
            Q(true, null);
            this.S = true;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h hVar;
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        this.M.d(deviceControllerResult);
        Object obj = null;
        if (deviceControllerResult instanceof SetFootPresenceSensorResult) {
            SetFootPresenceSensorResult setFootPresenceSensorResult = (SetFootPresenceSensorResult) deviceControllerResult;
            if (this.Q.b(setFootPresenceSensorResult.getShoe().isLeft())) {
                boolean zIsEnabled = setFootPresenceSensorResult.isEnabled();
                k kVar = k.f7894a;
                String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
                ArrayList<v7.k> arrayListO = k.f7895b.O();
                if (arrayListO == null) {
                    arrayListO = new ArrayList<>();
                }
                for (Object obj2 : arrayListO) {
                    if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                        obj = obj2;
                        break;
                    }
                }
                v7.k kVar2 = (v7.k) obj;
                if (kVar2 != null) {
                    kVar2.f16422d = zIsEnabled;
                }
                k.f7895b.a(arrayListO);
                TrackManager.INSTANCE.autoLaceToggleUpdated(zIsEnabled);
                s0(zIsEnabled);
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof GetAutoLaceResult) {
            b bVar = this.M;
            int i10 = bVar.f15570a;
            if (!((i10 == -1 || bVar.f15571b == -1) ? false : true) || (hVar = this.L) == null) {
                return;
            }
            hVar.p(i10, bVar.f15571b);
            return;
        }
        if ((deviceControllerResult instanceof SetAutoLaceResult) && this.R.b(((SetAutoLaceResult) deviceControllerResult).getShoe().isLeft()) && this.S) {
            i0 i0Var = this.T;
            if (i0Var == null) {
                p4.h.C("binding");
                throw null;
            }
            i0Var.f13853g.a();
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            int lastKnownRelativeTightness = inMemoryCache.getLeftDevice().getLastKnownRelativeTightness();
            int lastKnownRelativeTightness2 = inMemoryCache.getRightDevice().getLastKnownRelativeTightness();
            TrackManager trackManager = TrackManager.INSTANCE;
            trackManager.autoLaceSaveFitSelected(lastKnownRelativeTightness, lastKnownRelativeTightness2);
            trackManager.autoLaceFitSelectedToastShown();
            k kVar3 = k.f7894a;
            k.e(lastKnownRelativeTightness, lastKnownRelativeTightness2);
            h hVar2 = this.L;
            if (hVar2 != null) {
                hVar2.p(lastKnownRelativeTightness, lastKnownRelativeTightness2);
            }
            this.S = false;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerErrorResult(DeviceControllerErrorResult deviceControllerErrorResult) {
        p4.h.j(deviceControllerErrorResult, "errorResult");
        if (AdaptEventResponderKt.block(deviceControllerErrorResult, this.B)) {
            return;
        }
        if (!(deviceControllerErrorResult instanceof ToggleAutoLaceError)) {
            if ((deviceControllerErrorResult instanceof SetAutoLaceError) && this.R.c()) {
                r0(3);
                t9.c cVar = this.R;
                cVar.f15579a = false;
                cVar.f15580b = false;
                this.S = false;
                return;
            }
            return;
        }
        if (this.Q.c()) {
            if (((ToggleAutoLaceError) deviceControllerErrorResult).isEnable()) {
                r0(1);
            } else {
                r0(2);
            }
            k kVar = k.f7894a;
            boolean zD = k.d();
            i0 i0Var = this.T;
            if (i0Var == null) {
                p4.h.C("binding");
                throw null;
            }
            i0Var.f13847a.setChecked(zD);
            s0(zD);
            t9.c cVar2 = this.Q;
            cVar2.f15579a = false;
            cVar2.f15580b = false;
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        TrackManager.INSTANCE.multipairShoePreferenceBackSelected();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.auto_lace_activity, (ViewGroup) null, false);
        int i10 = R.id.auto_lace_activity_description;
        if (((TextView) g7.b.d(viewInflate, R.id.auto_lace_activity_description)) != null) {
            i10 = R.id.auto_lace_activity_enable_switch;
            Switch r12 = (Switch) g7.b.d(viewInflate, R.id.auto_lace_activity_enable_switch);
            if (r12 != null) {
                i10 = R.id.auto_lace_activity_enable_text;
                if (((Button) g7.b.d(viewInflate, R.id.auto_lace_activity_enable_text)) != null) {
                    i10 = R.id.auto_lace_activity_options_header;
                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.auto_lace_activity_options_header);
                    if (textView != null) {
                        i10 = R.id.auto_lace_activity_parent;
                        ConstraintLayout constraintLayout = (ConstraintLayout) g7.b.d(viewInflate, R.id.auto_lace_activity_parent);
                        if (constraintLayout != null) {
                            i10 = R.id.auto_lace_bottom_sheet;
                            BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.auto_lace_bottom_sheet);
                            if (bottomSheet != null) {
                                i10 = R.id.auto_lace_disabled_divider;
                                View viewD = g7.b.d(viewInflate, R.id.auto_lace_disabled_divider);
                                if (viewD != null) {
                                    i10 = R.id.auto_lace_enable_parent;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) g7.b.d(viewInflate, R.id.auto_lace_enable_parent);
                                    if (constraintLayout2 != null) {
                                        i10 = R.id.auto_lace_fit_saved_notification_toast;
                                        NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.auto_lace_fit_saved_notification_toast);
                                        if (notificationToast != null) {
                                            i10 = R.id.auto_lace_options_list;
                                            RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.auto_lace_options_list);
                                            if (recyclerView != null) {
                                                i10 = R.id.shaded_background;
                                                View viewD2 = g7.b.d(viewInflate, R.id.shaded_background);
                                                if (viewD2 != null) {
                                                    i10 = R.id.view_toolbar;
                                                    View viewD3 = g7.b.d(viewInflate, R.id.view_toolbar);
                                                    if (viewD3 != null) {
                                                        e2.a(viewD3);
                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                                        this.T = new i0(coordinatorLayout, r12, textView, constraintLayout, bottomSheet, viewD, constraintLayout2, notificationToast, recyclerView, viewD2);
                                                        setContentView(coordinatorLayout);
                                                        CharSequence charSequenceR = o.r(R.string.auto_lace_feature_title);
                                                        View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                        p4.h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                        k0((Toolbar) viewFindViewById);
                                                        f.a aVarI0 = i0();
                                                        if (aVarI0 != null) {
                                                            aVarI0.o(charSequenceR);
                                                            aVarI0.m(true);
                                                        }
                                                        this.K = ((o7.f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                                                        this.J = ((o7.f) o.m()).b(this, this.B);
                                                        k kVar = k.f7894a;
                                                        boolean zD = k.d();
                                                        i0 i0Var = this.T;
                                                        if (i0Var == null) {
                                                            p4.h.C("binding");
                                                            throw null;
                                                        }
                                                        i0Var.f13847a.setChecked(zD);
                                                        s0(zD);
                                                        TrackManager.INSTANCE.autoLaceScreenPresented(zD);
                                                        i0 i0Var2 = this.T;
                                                        if (i0Var2 == null) {
                                                            p4.h.C("binding");
                                                            throw null;
                                                        }
                                                        i0Var2.f13847a.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: g9.b
                                                            @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                                                                AutoLaceActivity autoLaceActivity = this.f7870h;
                                                                int i11 = AutoLaceActivity.U;
                                                                p4.h.j(autoLaceActivity, "this$0");
                                                                if (autoLaceActivity.Q.c()) {
                                                                    return;
                                                                }
                                                                IDeviceController iDeviceController = autoLaceActivity.J;
                                                                if (iDeviceController == null) {
                                                                    p4.h.C("deviceController");
                                                                    throw null;
                                                                }
                                                                iDeviceController.requestTo(Shoe.BOTH, new f0(z10));
                                                                t9.c cVar = autoLaceActivity.Q;
                                                                cVar.f15579a = true;
                                                                cVar.f15580b = true;
                                                            }
                                                        });
                                                        i0 i0Var3 = this.T;
                                                        if (i0Var3 == null) {
                                                            p4.h.C("binding");
                                                            throw null;
                                                        }
                                                        i0Var3.f13852f.setOnClickListener(new g9.a(this, 0));
                                                        i0 i0Var4 = this.T;
                                                        if (i0Var4 == null) {
                                                            p4.h.C("binding");
                                                            throw null;
                                                        }
                                                        RecyclerView recyclerView2 = i0Var4.f13854h;
                                                        recyclerView2.setHasFixedSize(true);
                                                        androidx.recyclerview.widget.p pVar = new androidx.recyclerview.widget.p(recyclerView2.getContext());
                                                        Context context = recyclerView2.getContext();
                                                        Object obj = y.a.f18143a;
                                                        Drawable drawableB = y.a.b.b(context, R.drawable.recycler_divider_margin);
                                                        if (drawableB != null) {
                                                            pVar.f2723a = drawableB;
                                                        }
                                                        recyclerView2.g(pVar);
                                                        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                                        h hVar = new h(this);
                                                        this.L = hVar;
                                                        recyclerView2.setAdapter(hVar);
                                                        return;
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

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        p4.h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (s9.b.f15177a.b(PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null))) {
            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new a(null), 3, null);
        }
    }

    public final String p0(int i10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            return "AUTOLACE_ENABLE_ERROR";
        }
        if (i11 == 1) {
            return "AUTOLACE_DISABLE_ERROR";
        }
        if (i11 == 2) {
            return "AUTOLACE_SET_ERROR";
        }
        throw new j2.a();
    }

    public final void q0(int i10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            TrackManager.INSTANCE.autoLaceEnableErrorPresented();
            return;
        }
        if (i11 == 1) {
            TrackManager.INSTANCE.autoLaceDisableErrorPresented();
            return;
        }
        if (i11 != 2) {
            throw new j2.a();
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        Shoe shoe = Shoe.LEFT;
        p8.e eVar = p8.e.f13323a;
        iDeviceController.requestTo(shoe, eVar);
        IDeviceController iDeviceController2 = this.J;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(Shoe.RIGHT, eVar);
        TrackManager.INSTANCE.autoLaceSetFpsErrorPresented();
    }

    public final void r0(int i10) {
        d dVar = this.N;
        if (dVar == null) {
            y yVar = y.f15252a;
            k kVar = k.f7894a;
            this.N = yVar.j(this, kVar.c(i10), kVar.b(i10), p0(i10), g9.c.f7871h);
            q0(i10);
            return;
        }
        if (!(dVar.isShowing() ? false : true) || isFinishing()) {
            return;
        }
        final d dVar2 = this.N;
        if (dVar2 != null) {
            k kVar2 = k.f7894a;
            int iC = kVar2.c(i10);
            int iB = kVar2.b(i10);
            final String strP0 = p0(i10);
            final g9.d dVar3 = g9.d.f7872h;
            p4.h.j(dVar3, "action");
            TextView textView = (TextView) dVar2.findViewById(R.id.single_button_dialog_button_title);
            if (textView != null) {
                textView.setText(o.r(iC));
            }
            TextView textView2 = (TextView) dVar2.findViewById(R.id.single_button_dialog_button_description);
            if (textView2 != null) {
                textView2.setText(o.r(iB));
            }
            TextView textView3 = (TextView) dVar2.findViewById(R.id.single_button_dialog_button);
            if (textView3 != null) {
                textView3.setText(o.r(R.string.adapt_ok_cta_button));
            }
            TextView textView4 = (TextView) dVar2.findViewById(R.id.single_button_dialog_button);
            if (textView4 != null) {
                textView4.setOnClickListener(new View.OnClickListener() { // from class: s9.s
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        String str = strP0;
                        qd.l lVar = dVar3;
                        androidx.appcompat.app.d dVar4 = dVar2;
                        p4.h.j(str, "$crumbTitle");
                        p4.h.j(lVar, "$action");
                        p4.h.j(dVar4, "$dialog");
                        o7.x.f12420a.a("Pressed:  Single Button " + str + ">OK");
                        lVar.invoke(dVar4);
                    }
                });
            }
        }
        d dVar4 = this.N;
        if (dVar4 != null) {
            dVar4.show();
        }
        q0(i10);
    }

    public final void s0(boolean z10) {
        i0 i0Var = this.T;
        if (i0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        i0Var.f13848b.setVisibility(z10 ? 0 : 8);
        i0 i0Var2 = this.T;
        if (i0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        i0Var2.f13854h.setVisibility(z10 ? 0 : 8);
        i0 i0Var3 = this.T;
        if (i0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        i0Var3.f13851e.setVisibility(z10 ? 8 : 0);
        i0 i0Var4 = this.T;
        if (i0Var4 == null) {
            p4.h.C("binding");
            throw null;
        }
        ConstraintLayout constraintLayout = i0Var4.f13849c;
        int i10 = z10 ? R.color.background_color_light_gray : R.color.white;
        Object obj = y.a.f18143a;
        constraintLayout.setBackgroundColor(y.a.c.a(this, i10));
    }
}
