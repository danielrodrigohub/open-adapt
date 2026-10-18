package com.nike.adapt.ui.modes;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import ba.f;
import c9.l;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.GetLedResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.SnapshotListUpdated;
import com.nike.adapt.adk.StartAnimationResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.StopAnimationResult;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import e9.i;
import fd.d;
import fe.k;
import h9.m;
import h9.y;
import j0.a0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import ld.e;
import o7.x;
import org.greenrobot.eventbus.ThreadMode;
import p8.e0;
import p8.j;
import p8.j0;
import p8.n;
import p8.w;
import q7.q;
import qd.p;
import u8.g;
import v7.h;
import x8.s;

/* JADX INFO: compiled from: ModeSelectionActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ModeSelectionActivity extends p8.a implements i.d, s.a {
    public static final /* synthetic */ int U = 0;
    public q I;
    public IDeviceController K;
    public IAdaptRequester L;
    public d9.a M;
    public d9.a N;
    public boolean P;
    public i Q;
    public String R;
    public s9.a J = new s9.a();
    public final s O = new s(this);
    public final List<g> S = o.e(new u8.q(this, null, 0, 30), new u8.c(R.id.mode_selection_main_container, this));
    public final d T = o.w(3, b.f5809h);

    /* JADX INFO: compiled from: ModeSelectionActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f5808b;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            f5807a = iArr;
            int[] iArr2 = new int[AdaptCurrentAnimation.AnimationEndingState.values().length];
            iArr2[AdaptCurrentAnimation.AnimationEndingState.CRITICAL_BATTERY.ordinal()] = 1;
            iArr2[AdaptCurrentAnimation.AnimationEndingState.BATTERY_OVERTEMP.ordinal()] = 2;
            f5808b = iArr2;
        }
    }

    /* JADX INFO: compiled from: ModeSelectionActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5809h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: ModeSelectionActivity.kt */
    public static final class c implements BottomSheet.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f5811b;

        /* JADX INFO: compiled from: ModeSelectionActivity.kt */
        @e(c = "com.nike.adapt.ui.modes.ModeSelectionActivity$setBottomSheetDialog$1$onPrimaryButtonClicked$1", f = "ModeSelectionActivity.kt", l = {288}, m = "invokeSuspend")
        public static final class a extends ld.i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f5812h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ ModeSelectionActivity f5813i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ boolean f5814j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ModeSelectionActivity modeSelectionActivity, boolean z10, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f5813i = modeSelectionActivity;
                this.f5814j = z10;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f5813i, this.f5814j, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5812h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    this.f5812h = 1;
                    if (DelayKt.delay(200L, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                ModeSelectionActivity modeSelectionActivity = this.f5813i;
                boolean z10 = this.f5814j;
                int i11 = ModeSelectionActivity.U;
                Objects.requireNonNull(modeSelectionActivity);
                if (z10) {
                    TrackManager.INSTANCE.presetsUpdated();
                } else {
                    TrackManager.INSTANCE.presetsCreated();
                }
                int i12 = h8.d.f8301a;
                h8.e eVar = h8.e.f8306b;
                eVar.e(s9.p.f15222a.k(modeSelectionActivity.R));
                eVar.a(modeSelectionActivity.R);
                eVar.i(h.MODES_CALIBRATE);
                new m(false, 1, null).e(modeSelectionActivity);
                return fd.o.f7408a;
            }
        }

        public c(boolean z10) {
            this.f5811b = z10;
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            x.f12420a.a("Start Find Your Fit - Modes");
            q qVar = ModeSelectionActivity.this.I;
            if (qVar == null) {
                p4.h.C("binding");
                throw null;
            }
            qVar.f13976f.t();
            ModeSelectionActivity modeSelectionActivity = ModeSelectionActivity.this;
            BuildersKt__Builders_commonKt.launch$default(modeSelectionActivity.A, null, null, new a(modeSelectionActivity, this.f5811b, null), 3, null);
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    @Override // e9.i.d
    public final void B() {
        q qVar = this.I;
        if (qVar != null) {
            qVar.f13975e.a();
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    @Override // e9.i.d
    public final void H() {
        x.f12420a.a("Viewed: Create Presets");
        q0(false);
    }

    @Override // e9.i.d
    public final void N(ea.e eVar, boolean z10, boolean z11) {
        f fVar = f.HERO_BLUE;
        if (eVar == null || z10) {
            return;
        }
        String str = "";
        if (z11) {
            TrackManager trackManager = TrackManager.INSTANCE;
            boolean z12 = eVar.f6629j;
            String str2 = eVar.f6628i;
            p4.h.j(str2, "name");
            if (z12) {
                try {
                    BigfootApplication.e eVar2 = BigfootApplication.f5638p;
                    String string = eVar2.a().getString(eVar2.a().getResources().getIdentifier(str2, "string", eVar2.a().getPackageName()));
                    p4.h.i(string, "{\n            BigfootApp…N.packageName))\n        }");
                    str = string;
                } catch (Throwable unused) {
                }
                str2 = str;
            }
            trackManager.isAutoGeneratedModeSelected(str2);
        } else {
            TrackManager trackManager2 = TrackManager.INSTANCE;
            int i10 = eVar.f6630k.f6618h.f6649i.f6646j;
            int i11 = eVar.f6631l.f6618h.f6649i.f6646j;
            boolean z13 = eVar.f6629j;
            String str3 = eVar.f6628i;
            p4.h.j(str3, "name");
            if (z13) {
                try {
                    BigfootApplication.e eVar3 = BigfootApplication.f5638p;
                    String string2 = eVar3.a().getString(eVar3.a().getResources().getIdentifier(str3, "string", eVar3.a().getPackageName()));
                    p4.h.i(string2, "{\n            BigfootApp…N.packageName))\n        }");
                    str = string2;
                } catch (Throwable unused2) {
                }
                str3 = str;
            }
            trackManager2.isModeSelected(i10, i11, str3);
        }
        x.f12420a.a("Pressed: Mode Selected");
        IDeviceController iDeviceController = this.K;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.requestModeTo(new e0(eVar));
        f fVar2 = eVar.f6630k.f6619i.f6626l;
        if (fVar2 == null) {
            fVar2 = fVar;
        }
        f fVar3 = eVar.f6631l.f6619i.f6626l;
        if (fVar3 != null) {
            fVar = fVar3;
        }
        if (eVar.f6629j) {
            AdaptShoeColor adaptShoeColorS = p0().S();
            IDeviceController iDeviceController2 = this.K;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(Shoe.LEFT, new j(new AdaptDeviceColor(adaptShoeColorS.getLeftAdaptPreset(), null, 2, null)));
            IDeviceController iDeviceController3 = this.K;
            if (iDeviceController3 != null) {
                iDeviceController3.requestTo(Shoe.RIGHT, new j(new AdaptDeviceColor(adaptShoeColorS.getRightAdaptPreset(), null, 2, null)));
                return;
            } else {
                p4.h.C("deviceController");
                throw null;
            }
        }
        AdaptMarshaller.AdaptPreset.Companion companion = AdaptMarshaller.AdaptPreset.Companion;
        p0().b0(new AdaptShoeColor(companion.parse(fVar2), companion.parse(fVar), null, 4, null));
        p7.b bVar = p7.b.f13281a;
        q qVar = this.I;
        if (qVar == null) {
            p4.h.C("binding");
            throw null;
        }
        ConstraintLayout constraintLayout = qVar.f13971a;
        p4.h.i(constraintLayout, "binding.activityModeSelectionBackground");
        p7.b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        d9.a aVar = this.N;
        if (aVar == null) {
            p4.h.C("leftModeSnapshot");
            throw null;
        }
        this.N = d9.a.a(aVar, fVar2, 0, 0, 13);
        d9.a aVar2 = this.M;
        if (aVar2 == null) {
            p4.h.C("rightModeSnapshot");
            throw null;
        }
        this.M = d9.a.a(aVar2, fVar, 0, 0, 13);
        AdaptShoeColor adaptShoeColorS2 = p0().S();
        s sVar = this.O;
        int i12 = sVar.f18001b;
        sVar.a(adaptShoeColorS2);
        if (i12 != 3 || adaptShoeColorS2.isOff()) {
            return;
        }
        TrackManager.INSTANCE.colorChangeLacingScreenDuringPulsing();
    }

    @Override // e9.i.d
    public final void U() {
        a1.d.d("Pressed: ", "Edit Custom Modes", x.f12420a);
        y.f8369c.e(this);
    }

    @Override // x8.s.a
    public final void d(boolean z10) {
        if (z10) {
            this.J.b();
        } else {
            TrackManager.INSTANCE.pulsingLightsTurnedOff();
        }
        IDeviceController iDeviceController = this.K;
        if (iDeviceController != null) {
            iDeviceController.requestTo(Shoe.BOTH, j0.f13335a);
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    @Override // e9.i.d
    public final void l() {
        a1.d.d("Pressed: ", "Add Mode", x.f12420a);
        h9.x.f8367c.e(this);
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.S;
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        i iVar;
        super.onActivityResult(i10, i11, intent);
        ea.m mVar = intent != null ? (ea.m) intent.getParcelableExtra("PARAM_MODE_UPDATED") : null;
        if (mVar == null || (iVar = this.Q) == null) {
            return;
        }
        List<ea.e> listW = p4.h.w(mVar);
        d9.a aVar = this.N;
        if (aVar == null) {
            p4.h.C("leftModeSnapshot");
            throw null;
        }
        d9.a aVar2 = this.M;
        if (aVar2 != null) {
            iVar.o(listW, aVar, aVar2);
        } else {
            p4.h.C("rightModeSnapshot");
            throw null;
        }
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
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
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), n.f13339a);
        IDeviceController iDeviceController3 = this.K;
        if (iDeviceController3 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController3.requestTo(adaptConnectionStatusResult.getShoe(), p8.x.f13349a);
        IDeviceController iDeviceController4 = this.K;
        if (iDeviceController4 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController4.requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
        String str = adaptConnectionStatusResult.getDevice().f6669m;
        if (str == null) {
            str = "";
        }
        s9.n.f15214d = str;
        this.R = adaptConnectionStatusResult.getDevice().f6670n;
        ea.m device = ((ConnectedAndAuthenticatedToPair) adaptConnectionStatusResult).getDevice();
        if (device == null) {
            return;
        }
        List<ea.e> listW = p4.h.w(device);
        if (!this.P) {
            TrackManager.INSTANCE.isModeAccessed(listW.size());
            this.P = true;
        }
        q qVar = this.I;
        if (qVar == null) {
            p4.h.C("binding");
            throw null;
        }
        TextView textView = qVar.f13972b;
        boolean z10 = false;
        if (!(listW instanceof Collection) || !listW.isEmpty()) {
            Iterator it = listW.iterator();
            while (it.hasNext()) {
                if (((ea.e) it.next()).f6629j) {
                    z10 = true;
                    break;
                }
            }
        }
        textView.setText(z10 ? o.r(R.string.adapt_modes_update_copy) : o.r(R.string.adapt_modes_create_copy));
        i iVar = this.Q;
        if (iVar != null) {
            d9.a aVar = this.N;
            if (aVar == null) {
                p4.h.C("leftModeSnapshot");
                throw null;
            }
            d9.a aVar2 = this.M;
            if (aVar2 != null) {
                iVar.o(listW, aVar, aVar2);
            } else {
                p4.h.C("rightModeSnapshot");
                throw null;
            }
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetLacingPercentResult) {
            GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
            int i10 = a.f5807a[getLacingPercentResult.getShoe().ordinal()];
            if (i10 == 1) {
                d9.a aVar = this.N;
                if (aVar == null) {
                    p4.h.C("leftModeSnapshot");
                    throw null;
                }
                this.N = d9.a.a(aVar, null, getLacingPercentResult.getRelativePercent(), getLacingPercentResult.getAbsolutePercent(), 3);
            } else if (i10 == 2) {
                d9.a aVar2 = this.M;
                if (aVar2 == null) {
                    p4.h.C("rightModeSnapshot");
                    throw null;
                }
                this.M = d9.a.a(aVar2, null, getLacingPercentResult.getRelativePercent(), getLacingPercentResult.getAbsolutePercent(), 3);
            }
        } else if (deviceControllerResult instanceof ServoMoveCompleteBroadcastResult) {
            ServoMoveCompleteBroadcastResult servoMoveCompleteBroadcastResult = (ServoMoveCompleteBroadcastResult) deviceControllerResult;
            int i11 = a.f5807a[servoMoveCompleteBroadcastResult.getShoe().ordinal()];
            if (i11 == 1) {
                d9.a aVar3 = this.N;
                if (aVar3 == null) {
                    p4.h.C("leftModeSnapshot");
                    throw null;
                }
                this.N = d9.a.a(aVar3, null, servoMoveCompleteBroadcastResult.getRelativePercent(), servoMoveCompleteBroadcastResult.getAbsolutePercent(), 3);
            } else if (i11 == 2) {
                d9.a aVar4 = this.M;
                if (aVar4 == null) {
                    p4.h.C("rightModeSnapshot");
                    throw null;
                }
                this.M = d9.a.a(aVar4, null, servoMoveCompleteBroadcastResult.getRelativePercent(), servoMoveCompleteBroadcastResult.getAbsolutePercent(), 3);
            }
        } else if (deviceControllerResult instanceof GetLedResult) {
            GetLedResult getLedResult = (GetLedResult) deviceControllerResult;
            int i12 = a.f5807a[getLedResult.getShoe().ordinal()];
            if (i12 == 1) {
                d9.a aVar5 = this.N;
                if (aVar5 == null) {
                    p4.h.C("leftModeSnapshot");
                    throw null;
                }
                this.N = d9.a.a(aVar5, AdaptMarshallerKt.getAdaptKitColorPreset(getLedResult.getShoeLed()), 0, 0, 13);
            } else if (i12 == 2) {
                d9.a aVar6 = this.M;
                if (aVar6 == null) {
                    p4.h.C("rightModeSnapshot");
                    throw null;
                }
                this.M = d9.a.a(aVar6, AdaptMarshallerKt.getAdaptKitColorPreset(getLedResult.getShoeLed()), 0, 0, 13);
            }
        } else if (deviceControllerResult instanceof StartAnimationResult) {
            this.O.e(3);
        } else if (deviceControllerResult instanceof StopAnimationResult) {
            s9.a aVar7 = this.J;
            Shoe shoe = ((StopAnimationResult) deviceControllerResult).getShoe();
            s sVar = this.O;
            IDeviceController iDeviceController = this.K;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            aVar7.c(shoe, sVar, iDeviceController);
        } else if (deviceControllerResult instanceof StopAnimationNotificationResult) {
            this.O.e(2);
            p7.b bVar = p7.b.f13281a;
            q qVar = this.I;
            if (qVar == null) {
                p4.h.C("binding");
                throw null;
            }
            ConstraintLayout constraintLayout = qVar.f13971a;
            p4.h.i(constraintLayout, "binding.activityModeSelectionBackground");
            p7.b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        } else if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            int i13 = a.f5808b[getAnimationResult.getAnimation().getEndingState().ordinal()];
            if (i13 == 1 || i13 == 2) {
                IDeviceController iDeviceController2 = this.K;
                if (iDeviceController2 == null) {
                    p4.h.C("deviceController");
                    throw null;
                }
                iDeviceController2.requestTo(Shoe.BOTH, j0.f13335a);
            } else {
                this.O.f(getAnimationResult.getAnimation());
            }
        } else if (deviceControllerResult instanceof SnapshotListUpdated) {
            String str = ((SnapshotListUpdated) deviceControllerResult).getDevice().f6669m;
            if (str == null) {
                str = "";
            }
            s9.n.f15214d = str;
        }
        i iVar = this.Q;
        if (iVar != null) {
            d9.a aVar8 = this.N;
            if (aVar8 == null) {
                p4.h.C("leftModeSnapshot");
                throw null;
            }
            d9.a aVar9 = this.M;
            if (aVar9 != null) {
                iVar.p(aVar8, aVar9);
            } else {
                p4.h.C("rightModeSnapshot");
                throw null;
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        q qVar = this.I;
        if (qVar == null) {
            p4.h.C("binding");
            throw null;
        }
        BottomSheet bottomSheet = qVar.f13976f;
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = bottomSheet.A;
        boolean z10 = false;
        if (bottomSheetBehavior != null && bottomSheetBehavior.J == 3) {
            z10 = true;
        }
        if (!z10) {
            super.onBackPressed();
        } else if (qVar != null) {
            bottomSheet.t();
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_mode_selection, (ViewGroup) null, false);
        int i10 = R.id.activity_mode_selection_background;
        ConstraintLayout constraintLayout = (ConstraintLayout) g7.b.d(viewInflate, R.id.activity_mode_selection_background);
        if (constraintLayout != null) {
            i10 = R.id.messaging_headline_message_1;
            TextView textView = (TextView) g7.b.d(viewInflate, R.id.messaging_headline_message_1);
            if (textView != null) {
                i10 = R.id.messaging_headline_title;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.messaging_headline_title);
                if (textView2 != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                    int i11 = R.id.mode_selection_mode_list_recycler_view;
                    RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.mode_selection_mode_list_recycler_view);
                    if (recyclerView != null) {
                        i11 = R.id.modes_selection_activity_notification_toast;
                        NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.modes_selection_activity_notification_toast);
                        if (notificationToast != null) {
                            i11 = R.id.modes_selection_bottom_sheet;
                            BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.modes_selection_bottom_sheet);
                            if (bottomSheet != null) {
                                i11 = R.id.shaded_background;
                                View viewD = g7.b.d(viewInflate, R.id.shaded_background);
                                if (viewD != null) {
                                    this.I = new q(coordinatorLayout, constraintLayout, textView, textView2, recyclerView, notificationToast, bottomSheet, viewD);
                                    setContentView(coordinatorLayout);
                                    p7.b bVar = p7.b.f13281a;
                                    q qVar = this.I;
                                    if (qVar == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    ConstraintLayout constraintLayout2 = qVar.f13971a;
                                    p4.h.i(constraintLayout2, "binding.activityModeSelectionBackground");
                                    p7.b.f13281a.e(constraintLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                                    this.L = ((o7.f) o.m()).a(this, this.B, l.f4267h, new c9.k(this));
                                    this.K = ((o7.f) o.m()).b(this, this.B);
                                    AdaptShoeColor adaptShoeColorS = p0().S();
                                    this.M = new d9.a(Shoe.RIGHT, AdaptMarshallerKt.getAdaptKitColorPreset(adaptShoeColorS.getLeftAdaptPreset()));
                                    this.N = new d9.a(Shoe.LEFT, AdaptMarshallerKt.getAdaptKitColorPreset(adaptShoeColorS.getRightAdaptPreset()));
                                    q qVar2 = this.I;
                                    if (qVar2 == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    RecyclerView recyclerView2 = qVar2.f13974d;
                                    recyclerView2.setHasFixedSize(true);
                                    recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                    i iVar = new i(this);
                                    this.Q = iVar;
                                    recyclerView2.setAdapter(iVar);
                                    q qVar3 = this.I;
                                    if (qVar3 != null) {
                                        a0.q(qVar3.f13973c, true);
                                        return;
                                    } else {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                }
                            }
                        }
                    }
                    i10 = i11;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final h8.a p0() {
        return (h8.a) this.T.getValue();
    }

    public final void q0(boolean z10) {
        int i10 = z10 ? R.string.adapt_modes_recalibration_title : R.string.adapt_find_your_fit_title;
        int i11 = z10 ? R.string.adapt_modes_recalibration_copy : R.string.adapt_modes_calibration_copy;
        int i12 = z10 ? R.string.adapt_modes_recalibration_button : R.string.adapt_modes_calibration_button;
        q qVar = this.I;
        if (qVar == null) {
            p4.h.C("binding");
            throw null;
        }
        BottomSheet bottomSheet = qVar.f13976f;
        Objects.requireNonNull(bottomSheet);
        String strR = o.r(i10);
        bottomSheet.f5753z.f13880e.setVisibility(0);
        bottomSheet.f5753z.f13880e.setText(strR);
        bottomSheet.w(o.r(i11));
        String strR2 = o.r(i12);
        bottomSheet.f5753z.f13877b.setVisibility(0);
        bottomSheet.f5753z.f13877b.setText(strR2);
        q qVar2 = this.I;
        if (qVar2 == null) {
            p4.h.C("binding");
            throw null;
        }
        View view = qVar2.f13977g;
        p4.h.i(view, "binding.shadedBackground");
        bottomSheet.C = view;
        bottomSheet.D = true;
        bottomSheet.B = new c(z10);
        bottomSheet.x();
    }

    @Override // e9.i.d
    public final void x() {
        x.f12420a.a("Viewed: Update Presets");
        q0(true);
    }
}
