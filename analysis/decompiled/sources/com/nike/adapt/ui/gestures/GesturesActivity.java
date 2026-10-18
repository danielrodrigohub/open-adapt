package com.nike.adapt.ui.gestures;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.d;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetGestureConfigResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.SetGestureConfigResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import com.nike.adapt.adk.model.AdaptGestureConfigurationResponse;
import com.nike.adapt.analytics.TrackManager;
import fe.k;
import h9.p0;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import ld.e;
import ld.i;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.a0;
import p8.g0;
import q7.e2;
import q7.f;
import qd.l;
import qd.p;
import s9.y;
import u8.g;
import u8.q;
import v7.m;

/* JADX INFO: compiled from: GesturesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GesturesActivity extends p8.a implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    public f I;
    public IDeviceController J;
    public IAdaptRequester K;
    public d L;
    public d M;
    public final List<g> N = o.e(new q(this, null, 0, 30), new u8.c(R.id.activity_gestures_parent, this));
    public boolean O;

    /* JADX INFO: compiled from: GesturesActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5737a;

        static {
            int[] iArr = new int[AdaptGestureConfigurationResponse.values().length];
            iArr[AdaptGestureConfigurationResponse.CONFIG_SET.ordinal()] = 1;
            iArr[AdaptGestureConfigurationResponse.CRITICAL_BATTERY.ordinal()] = 2;
            iArr[AdaptGestureConfigurationResponse.UNKNOWN.ordinal()] = 3;
            f5737a = iArr;
        }
    }

    /* JADX INFO: compiled from: GesturesActivity.kt */
    public static final class b extends rd.o implements l<d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5738h = new b();

        public b() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(d dVar) {
            d dVar2 = dVar;
            h.j(dVar2, "alertDialog");
            dVar2.dismiss();
            TrackManager.INSTANCE.gesturesErrorUserSelectsOk();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: GesturesActivity.kt */
    @e(c = "com.nike.adapt.ui.gestures.GesturesActivity$onCheckedChanged$1", f = "GesturesActivity.kt", l = {193}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5739h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ boolean f5741j;

        /* JADX INFO: compiled from: GesturesActivity.kt */
        @e(c = "com.nike.adapt.ui.gestures.GesturesActivity$onCheckedChanged$1$1", f = "GesturesActivity.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ GesturesActivity f5742h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ boolean f5743i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(GesturesActivity gesturesActivity, boolean z10, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f5742h = gesturesActivity;
                this.f5743i = z10;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f5742h, this.f5743i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
                a aVar = (a) create(coroutineScope, dVar);
                fd.o oVar = fd.o.f7408a;
                aVar.invokeSuspend(oVar);
                return oVar;
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                d3.e.p(obj);
                GesturesActivity gesturesActivity = this.f5742h;
                boolean z10 = gesturesActivity.O;
                boolean z11 = this.f5743i;
                if (z10 != z11) {
                    gesturesActivity.O = z11;
                    ArrayList arrayList = new ArrayList();
                    if (this.f5742h.O) {
                        arrayList.add(AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE);
                    } else {
                        arrayList.add(AdaptGestureConfiguration.Off.INSTANCE);
                    }
                    IDeviceController iDeviceController = this.f5742h.J;
                    if (iDeviceController == null) {
                        h.C("deviceController");
                        throw null;
                    }
                    iDeviceController.requestTo(Shoe.BOTH, new g0(arrayList));
                    TrackManager.gestureToggleUpdated$default(TrackManager.INSTANCE, this.f5742h.O, null, 2, null);
                }
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(boolean z10, jd.d<? super c> dVar) {
            super(2, dVar);
            this.f5741j = z10;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return GesturesActivity.this.new c(this.f5741j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5739h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
                a aVar2 = new a(GesturesActivity.this, this.f5741j, null);
                this.f5739h = 1;
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

    @Override // p8.a
    public final List<g> o0() {
        return this.N;
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.J;
        if (iDeviceController2 != null) {
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), a0.f13308a);
        } else {
            h.C("deviceController");
            throw null;
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        d dVar;
        d dVar2;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetGestureConfigResult) {
            GetGestureConfigResult getGestureConfigResult = (GetGestureConfigResult) deviceControllerResult;
            if (getGestureConfigResult.getShoe().isLeft()) {
                this.O = getGestureConfigResult.getGestureConfigResult().contains(AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE);
                f fVar = this.I;
                if (fVar == null) {
                    h.C("binding");
                    throw null;
                }
                if (fVar.f13791b.isChecked() != this.O) {
                    f fVar2 = this.I;
                    if (fVar2 != null) {
                        fVar2.f13791b.toggle();
                        return;
                    } else {
                        h.C("binding");
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof SetGestureConfigResult) {
            b bVar = b.f5738h;
            SetGestureConfigResult setGestureConfigResult = (SetGestureConfigResult) deviceControllerResult;
            int i10 = a.f5737a[setGestureConfigResult.getGestureConfigurationResponse().ordinal()];
            if (i10 == 1) {
                if (setGestureConfigResult.getShoe().isLeft()) {
                    TrackManager.gestureToggleUpdated$default(TrackManager.INSTANCE, this.O, null, 2, null);
                    return;
                }
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                d dVar3 = this.M;
                if (dVar3 != null && dVar3.isShowing()) {
                    return;
                }
                p0();
                if (this.M == null) {
                    this.M = y.f(this, this.O, bVar, null, 8);
                } else if (!isFinishing() && (dVar2 = this.M) != null) {
                    dVar2.show();
                }
                if (this.O) {
                    TrackManager.INSTANCE.gesturesFailedToDisableErrorPresented();
                    return;
                } else {
                    TrackManager.INSTANCE.gesturesFailedToEnableErrorPresented();
                    return;
                }
            }
            d dVar4 = this.L;
            if (dVar4 != null && dVar4.isShowing()) {
                return;
            }
            p0();
            if (this.L == null) {
                this.L = y.e(this, this.O, bVar, null, 8);
            } else if (!isFinishing() && (dVar = this.L) != null) {
                dVar.show();
            }
            TrackManager trackManager = TrackManager.INSTANCE;
            trackManager.gesturesCriticalBatteryErrorPresented();
            if (this.O) {
                trackManager.gesturesFailedToDisableErrorPresented();
            } else {
                trackManager.gesturesFailedToEnableErrorPresented();
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
        h.j(compoundButton, "buttonView");
        if (compoundButton.getId() == R.id.activity_gestures_heel_tap_switch) {
            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new c(z10, null), 3, null);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.j(view, "view");
        switch (view.getId()) {
            case R.id.activity_gestures_feedback_button /* 2131361876 */:
                new p0(m.SUBMIT_FEEDBACK).e(this);
                TrackManager.INSTANCE.gesturesUserSelectsSubmitFeedback();
                return;
            case R.id.activity_gestures_heel_tap_switch_label /* 2131361881 */:
                f fVar = this.I;
                if (fVar != null) {
                    fVar.f13791b.toggle();
                    return;
                } else {
                    h.C("binding");
                    throw null;
                }
            case R.id.activity_gestures_heel_tap_tutorial_button /* 2131361882 */:
                new h9.q(this.O, 1).e(this);
                TrackManager.gestureTutorialSelectedFromGesturesScreen$default(TrackManager.INSTANCE, null, 1, null);
                return;
            default:
                return;
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_gestures, (ViewGroup) null, false);
        int i10 = R.id.activity_gestures_feedback_button;
        LinearLayout linearLayout = (LinearLayout) g7.b.d(viewInflate, R.id.activity_gestures_feedback_button);
        if (linearLayout != null) {
            i10 = R.id.activity_gestures_feedback_description;
            if (((TextView) g7.b.d(viewInflate, R.id.activity_gestures_feedback_description)) != null) {
                i10 = R.id.activity_gestures_heel_tap_description;
                if (((TextView) g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_description)) != null) {
                    i10 = R.id.activity_gestures_heel_tap_divider;
                    if (g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_divider) != null) {
                        i10 = R.id.activity_gestures_heel_tap_switch;
                        Switch r10 = (Switch) g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_switch);
                        if (r10 != null) {
                            i10 = R.id.activity_gestures_heel_tap_switch_label;
                            Button button = (Button) g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_switch_label);
                            if (button != null) {
                                i10 = R.id.activity_gestures_heel_tap_tutorial_button;
                                Button button2 = (Button) g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_tutorial_button);
                                if (button2 != null) {
                                    i10 = R.id.activity_gestures_heel_tap_tutorial_description;
                                    if (((TextView) g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_tutorial_description)) != null) {
                                        i10 = R.id.activity_gestures_heel_tap_tutorial_divider;
                                        if (g7.b.d(viewInflate, R.id.activity_gestures_heel_tap_tutorial_divider) != null) {
                                            i10 = R.id.activity_gestures_parent;
                                            if (((ConstraintLayout) g7.b.d(viewInflate, R.id.activity_gestures_parent)) != null) {
                                                i10 = R.id.activity_gestures_title;
                                                if (((TextView) g7.b.d(viewInflate, R.id.activity_gestures_title)) != null) {
                                                    i10 = R.id.activity_gestures_tutorials_title;
                                                    if (((TextView) g7.b.d(viewInflate, R.id.activity_gestures_tutorials_title)) != null) {
                                                        i10 = R.id.view_toolbar;
                                                        View viewD = g7.b.d(viewInflate, R.id.view_toolbar);
                                                        if (viewD != null) {
                                                            e2.a(viewD);
                                                            LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                                                            this.I = new f(linearLayout2, linearLayout, r10, button, button2);
                                                            setContentView(linearLayout2);
                                                            CharSequence charSequenceR = o.r(R.string.adapt_shoe_preferences_gestures_title);
                                                            View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                            h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                            k0((Toolbar) viewFindViewById);
                                                            f.a aVarI0 = i0();
                                                            if (aVarI0 != null) {
                                                                aVarI0.o(charSequenceR);
                                                                aVarI0.m(true);
                                                            }
                                                            this.K = ((o7.f) o.m()).a(this, this.B, w8.h.f17249h, new w8.g(this));
                                                            this.J = ((o7.f) o.m()).b(this, this.B);
                                                            f fVar = this.I;
                                                            if (fVar == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            fVar.f13792c.setOnClickListener(this);
                                                            f fVar2 = this.I;
                                                            if (fVar2 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            fVar2.f13791b.setOnCheckedChangeListener(this);
                                                            f fVar3 = this.I;
                                                            if (fVar3 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            fVar3.f13793d.setOnClickListener(this);
                                                            f fVar4 = this.I;
                                                            if (fVar4 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            fVar4.f13790a.setOnClickListener(this);
                                                            f fVar5 = this.I;
                                                            if (fVar5 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            fVar5.f13792c.setAccessibilityDelegate(new w8.i(this));
                                                            TrackManager.INSTANCE.gesturesScreenPresented();
                                                            s9.b bVar = s9.b.f15177a;
                                                            s9.b.a();
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public final void p0() {
        this.O = !this.O;
        f fVar = this.I;
        if (fVar == null) {
            h.C("binding");
            throw null;
        }
        if (fVar.f13791b.isChecked() != this.O) {
            f fVar2 = this.I;
            if (fVar2 != null) {
                fVar2.f13791b.toggle();
            } else {
                h.C("binding");
                throw null;
            }
        }
    }
}
