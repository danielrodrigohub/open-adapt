package x;

import android.app.Application;

/* JADX INFO: compiled from: ActivityRecreator.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Application f17614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ f.a f17615i;

    public d(Application application, f.a aVar) {
        this.f17614h = application;
        this.f17615i = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17614h.unregisterActivityLifecycleCallbacks(this.f17615i);
    }
}
