package s1;

import androidx.work.impl.foreground.SystemForegroundService;

/* JADX INFO: compiled from: SystemForegroundService.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f14961h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SystemForegroundService f14962i;

    public d(SystemForegroundService systemForegroundService, int i10) {
        this.f14962i = systemForegroundService;
        this.f14961h = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14962i.f3125l.cancel(this.f14961h);
    }
}
