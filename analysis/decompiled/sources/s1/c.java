package s1;

import android.app.Notification;
import androidx.work.impl.foreground.SystemForegroundService;

/* JADX INFO: compiled from: SystemForegroundService.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f14958h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Notification f14959i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SystemForegroundService f14960j;

    public c(SystemForegroundService systemForegroundService, int i10, Notification notification) {
        this.f14960j = systemForegroundService;
        this.f14958h = i10;
        this.f14959i = notification;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14960j.f3125l.notify(this.f14958h, this.f14959i);
    }
}
