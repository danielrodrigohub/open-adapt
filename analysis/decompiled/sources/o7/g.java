package o7;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.nike.adapt.BigfootApplicationState;
import com.nike.adapt.PeripheralConnectionManager;
import com.nike.adapt.R;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.analytics.TrackManager;
import h9.g0;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"StaticFieldLeak"})
public final class g implements Application.ActivityLifecycleCallbacks, s7.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static f.e f12380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Activity f12381k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Snackbar f12383m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g f12378h = new g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final fd.d f12379i = androidx.lifecycle.o.w(3, b.f12385h);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static s9.k f12382l = new s9.k();

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12384a;

        static {
            int[] iArr = new int[AdaptCurrentAnimation.AnimationEndingState.values().length];
            iArr[AdaptCurrentAnimation.AnimationEndingState.BATTERY_OVERTEMP.ordinal()] = 1;
            iArr[AdaptCurrentAnimation.AnimationEndingState.CRITICAL_BATTERY.ordinal()] = 2;
            iArr[AdaptCurrentAnimation.AnimationEndingState.UNRECOGNIZED.ordinal()] = 3;
            f12384a = iArr;
        }
    }

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f12385h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public static final class c extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f12386h = new c();

        public c() {
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

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public static final class d extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f12387h = new d();

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

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public static final class e extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Activity f12388h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Activity activity) {
            super(1);
            this.f12388h = activity;
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            dVar2.dismiss();
            new g0(g0.f8326f.a(), false).e(this.f12388h);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptNotificationWatcher.kt */
    public static final class f extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final f f12389h = new f();

        public f() {
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

    public final h8.a a() {
        return (h8.a) f12379i.getValue();
    }

    public final void b(AdaptCurrentAnimation.AnimationEndingState animationEndingState, DeviceControllerResult deviceControllerResult) {
        x xVar = x.f12420a;
        x.f12420a.h("AdaptNotificationWatcher", "handleAnimationEndingState: result = " + deviceControllerResult, (120 & 4) != 0 ? u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
        int i10 = a.f12384a[animationEndingState.ordinal()];
        if (i10 == 1) {
            TrackManager.INSTANCE.lightingEffectsBatteryOverHeat();
            if (a().U()) {
                return;
            }
            Activity activity = f12381k;
            if (activity != null) {
                s9.y yVar = s9.y.f15252a;
                c cVar = c.f12386h;
                p4.h.j(cVar, "action");
                h8.c.f8298b.n0(true);
                s9.y.c(yVar, activity, R.string.adapt_lighting_effects_failed_dialog_title, R.string.adapt_lighting_effects_failed_overheat_dialog_body, cVar, new s9.y.a("LIGHTING_EFFECTS_OVER_HEAT", "OK", null, 12));
            }
            PeripheralConnectionManager.f5666h.stopAnimation();
            return;
        }
        if (i10 == 2) {
            TrackManager.INSTANCE.lightingEffectsBatteryLow();
            if (a().U()) {
                return;
            }
            Activity activity2 = f12381k;
            if (activity2 != null) {
                s9.y.f15252a.g(activity2, d.f12387h);
            }
            PeripheralConnectionManager.f5666h.stopAnimation();
            return;
        }
        if (i10 == 3 && !a().U()) {
            Activity activity3 = f12381k;
            if (activity3 != null) {
                s9.y yVar2 = s9.y.f15252a;
                e eVar = new e(activity3);
                f fVar = f.f12389h;
                p4.h.j(fVar, "cancel");
                h8.c.f8298b.n0(true);
                s9.y.d(yVar2, activity3, R.string.adapt_pulsing_lights_generic_error_title, null, R.string.adapt_generic_error_body, 0, R.string.adapt_cancel_title, R.string.adapt_get_help_button_title, false, fVar, eVar, new s9.y.a("LIGHTING_EFFECTS_UNKNOWN_ERROR", "OK", null, 12), 148);
            }
            PeripheralConnectionManager.f5666h.stopAnimation();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0039  */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    /* JADX WARN: Code duplicated, block: B:23:0x0044  */
    /* JADX WARN: Code duplicated, block: B:77:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:? A[LOOP:0: B:10:0x0020->B:81:?, LOOP_END, SYNTHETIC] */
    public final void c() {
        boolean zC;
        ViewGroup viewGroup;
        Object parent;
        f.e eVar = f12380j;
        if (!(eVar instanceof y) || !f12382l.f15206a) {
            Snackbar snackbar = f12383m;
            if (snackbar != null) {
                com.google.android.material.snackbar.g gVarB = com.google.android.material.snackbar.g.b();
                BaseTransientBottomBar.e eVar2 = snackbar.f5372m;
                synchronized (gVarB.f5402a) {
                    zC = gVarB.c(eVar2);
                }
                if (zC) {
                    snackbar.b(3);
                    f12383m = null;
                    return;
                }
                return;
            }
            return;
        }
        if (eVar == null || f12383m != null) {
            return;
        }
        View viewFindViewById = eVar.findViewById(android.R.id.content);
        int[] iArr = Snackbar.f5390r;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (viewFindViewById instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) viewFindViewById;
                break;
            }
            if (!(viewFindViewById instanceof FrameLayout)) {
                if (viewFindViewById != null) {
                    parent = viewFindViewById.getParent();
                    if (parent instanceof View) {
                        viewFindViewById = (View) parent;
                    } else {
                        viewFindViewById = null;
                    }
                }
                if (viewFindViewById == null) {
                    viewGroup = viewGroup2;
                    break;
                }
            } else {
                if (viewFindViewById.getId() == 16908290) {
                    viewGroup = (ViewGroup) viewFindViewById;
                    break;
                }
                viewGroup2 = (ViewGroup) viewFindViewById;
                if (viewFindViewById != null) {
                    parent = viewFindViewById.getParent();
                    if (parent instanceof View) {
                        viewFindViewById = (View) parent;
                    } else {
                        viewFindViewById = null;
                    }
                }
                if (viewFindViewById == null) {
                    viewGroup = viewGroup2;
                    break;
                }
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        Context context = viewGroup.getContext();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Snackbar.f5390r);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) layoutInflaterFrom.inflate((resourceId == -1 || resourceId2 == -1) ? false : true ? com.google.android.material.R.layout.mtrl_layout_snackbar_include : com.google.android.material.R.layout.design_layout_snackbar_include, viewGroup, false);
        Snackbar snackbar2 = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        ((SnackbarContentLayout) snackbar2.f5362c.getChildAt(0)).getMessageView().setText("InternetRequired");
        snackbar2.f5364e = -2;
        com.google.android.material.snackbar.g gVarB2 = com.google.android.material.snackbar.g.b();
        int iJ = snackbar2.j();
        BaseTransientBottomBar.e eVar3 = snackbar2.f5372m;
        synchronized (gVarB2.f5402a) {
            if (gVarB2.c(eVar3)) {
                com.google.android.material.snackbar.g.c cVar = gVarB2.f5404c;
                cVar.f5408b = iJ;
                gVarB2.f5403b.removeCallbacksAndMessages(cVar);
                gVarB2.g(gVarB2.f5404c);
            } else {
                if (gVarB2.d(eVar3)) {
                    gVarB2.f5405d.f5408b = iJ;
                } else {
                    gVarB2.f5405d = new com.google.android.material.snackbar.g.c(iJ, eVar3);
                }
                com.google.android.material.snackbar.g.c cVar2 = gVarB2.f5404c;
                if (cVar2 == null || !gVarB2.a(cVar2, 4)) {
                    gVarB2.f5404c = null;
                    gVarB2.h();
                }
            }
        }
        f12383m = snackbar2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        p4.h.j(activity, "activity");
        f12381k = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        p4.h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        p4.h.j(activity, "activity");
        s7.b.f15149a.c(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        p4.h.j(activity, "activity");
        s7.b.f15149a.b(this);
        f12381k = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        p4.h.j(activity, "activity");
        p4.h.j(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        p4.h.j(activity, "activity");
        if ((activity instanceof f.e) && (activity instanceof m)) {
            f12380j = (f.e) activity;
        }
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        p4.h.j(activity, "activity");
        f12380j = null;
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        int percent;
        p4.h.j(deviceControllerResult, "result");
        if (!(deviceControllerResult instanceof GetBatteryPercentResult)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                b(((StopAnimationNotificationResult) deviceControllerResult).getEndingState(), deviceControllerResult);
                return;
            } else {
                if (deviceControllerResult instanceof GetAnimationResult) {
                    b(((GetAnimationResult) deviceControllerResult).getAnimation().getEndingState(), deviceControllerResult);
                    return;
                }
                return;
            }
        }
        f.e eVar = f12380j;
        if (eVar != null) {
            GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) deviceControllerResult;
            x xVar = x.f12420a;
            x.f12420a.h("AdaptNotificationWatcher", eVar + " detecting if time to show " + getBatteryPercentResult, (120 & 4) != 0 ? u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
            if (!(eVar instanceof m) || (percent = getBatteryPercentResult.getBattery().getPercent()) <= 0) {
                return;
            }
            if (percent <= 20) {
                Objects.requireNonNull(BigfootApplicationState.f5662h);
                if (!BigfootApplicationState.f5664j) {
                    x.f12420a.h("AdaptNotificationWatcher", "Displaying Critical Battery with " + getBatteryPercentResult, (120 & 4) != 0 ? u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
                    BigfootApplicationState.f5664j = true;
                    BigfootApplicationState.f5663i = true;
                    new h9.w(new b9.d()).e(eVar);
                    return;
                }
            }
            if (percent <= 20) {
                Objects.requireNonNull(BigfootApplicationState.f5662h);
                if (BigfootApplicationState.f5663i) {
                    return;
                }
                x.f12420a.h("AdaptNotificationWatcher", "Displaying Low Battery with " + getBatteryPercentResult, (120 & 4) != 0 ? u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
                BigfootApplicationState.f5663i = true;
                new h9.w(new b9.h()).e(eVar);
            }
        }
    }
}
