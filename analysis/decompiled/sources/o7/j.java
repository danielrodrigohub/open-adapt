package o7;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.nike.adapt.BigfootApplication;

/* JADX INFO: compiled from: BigfootApplication.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BigfootApplication f12391h;

    public j(BigfootApplication bigfootApplication) {
        this.f12391h = bigfootApplication;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        p4.h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        p4.h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        p4.h.j(activity, "activity");
        this.f12391h.f5647h = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        p4.h.j(activity, "activity");
        this.f12391h.f5647h = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        p4.h.j(activity, "activity");
        p4.h.j(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        p4.h.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        p4.h.j(activity, "activity");
    }
}
