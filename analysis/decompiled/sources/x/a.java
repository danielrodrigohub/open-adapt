package x;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import hc.k0;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17609h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17610i;

    public /* synthetic */ a(Object obj, int i10) {
        this.f17609h = i10;
        this.f17610i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z10 = true;
        switch (this.f17609h) {
            case 0:
                Activity activity = (Activity) this.f17610i;
                if (activity.isFinishing()) {
                    return;
                }
                Class<?> cls = f.f17618a;
                if (Build.VERSION.SDK_INT >= 28) {
                    activity.recreate();
                } else if ((f.a() && f.f17623f == null) || (f.f17622e == null && f.f17621d == null)) {
                    z10 = false;
                } else {
                    try {
                        Object obj2 = f.f17620c.get(activity);
                        if (obj2 == null || (obj = f.f17619b.get(activity)) == null) {
                            z10 = false;
                        } else {
                            Application application = activity.getApplication();
                            f.a aVar = new f.a(activity);
                            application.registerActivityLifecycleCallbacks(aVar);
                            Handler handler = f.f17624g;
                            handler.post(new c(aVar, obj2));
                            try {
                                if (f.a()) {
                                    Method method = f.f17623f;
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new d(application, aVar));
                            } catch (Throwable th) {
                                f.f17624g.post(new d(application, aVar));
                                throw th;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (z10) {
                    return;
                }
                activity.recreate();
                return;
            case 1:
                Runnable runnable = (Runnable) this.f17610i;
                AtomicInteger atomicInteger = o7.e.f12371a;
                Process.setThreadPriority(10);
                runnable.run();
                return;
            case 2:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f17610i;
                int i10 = GesturesTutorialActivity.d0;
                p4.h.j(gesturesTutorialActivity, "this$0");
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar == null) {
                    p4.h.C("binding");
                    throw null;
                }
                BottomSheet bottomSheet = hVar.f13827a;
                bottomSheet.v(gesturesTutorialActivity.f5744a0);
                q7.h hVar2 = gesturesTutorialActivity.I;
                if (hVar2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                View view = hVar2.f13834h;
                p4.h.i(view, "binding.shadedBackground");
                bottomSheet.C = view;
                bottomSheet.D = true;
                bottomSheet.x();
                return;
            case 3:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f17610i;
                int i11 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                TrackManager.gestureEnabledToastShown$default(TrackManager.INSTANCE, null, 1, null);
                NotificationToast notificationToast = shoeControllerActivity.v0().f13760b;
                notificationToast.e(R.string.adapt_unlace_gesture_toast_enabled_title);
                notificationToast.c(R.string.adapt_unlace_gesture_toast_enabled_body);
                notificationToast.d(new o9.g(shoeControllerActivity));
                notificationToast.a();
                return;
            default:
                k0 k0Var = (k0) this.f17610i;
                int i12 = k0.F;
                Objects.requireNonNull(k0Var);
                try {
                    Thread.sleep(500L);
                    break;
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
                gc.r rVarF = k0Var.f(0);
                gc.r rVarF2 = k0Var.f(2);
                gc.r rVarF3 = k0Var.f(4);
                kc.c cVarD = k0Var.d(0, rVarF);
                kc.c cVarD2 = k0Var.d(1, rVarF2);
                kc.c cVarD3 = k0Var.d(2, rVarF3);
                if (cVarD == null && cVarD2 == null && cVarD3 == null) {
                    androidx.lifecycle.o.q().c("all slots appear valid, sending broadcast", null, false, "FileTransfer");
                    k0Var.f8532l.a("com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED");
                    return;
                }
                androidx.lifecycle.o.q().c("slot check failed, sending broadcast", null, false, "FileTransfer");
                if (cVarD != null) {
                    k0Var.g(cVarD);
                } else if (cVarD2 != null) {
                    k0Var.g(cVarD2);
                } else {
                    k0Var.g(cVarD3);
                }
                k0Var.e();
                return;
        }
    }
}
