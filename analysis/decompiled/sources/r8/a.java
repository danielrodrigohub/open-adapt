package r8;

import a1.d;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import o7.x;
import p4.h;

/* JADX INFO: compiled from: BreadCrumbWatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f14736h = new a();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onCreate()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onDestroy()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onPause()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onResume()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        h.j(activity, "activity");
        h.j(bundle, "outState");
        d.d(activity.getClass().getSimpleName(), " onSaveInstanceState()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onStart()", x.f12420a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        h.j(activity, "activity");
        d.d(activity.getClass().getSimpleName(), " onStop()", x.f12420a);
    }
}
