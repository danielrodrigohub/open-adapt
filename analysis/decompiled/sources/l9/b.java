package l9;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import g7.c;
import p4.h;
import wa.k;

/* JADX INFO: compiled from: AdaptServicesLifecycleWatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f10183h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final k f10184i = k.f17583b;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        h.j(activity, "activity");
        h.j(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        h.j(activity, "activity");
        if (!c.d(activity) || ((ja.a) f10184i.a(activity)).f()) {
            return;
        }
        h9.c.f8316c.e(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        h.j(activity, "activity");
    }
}
