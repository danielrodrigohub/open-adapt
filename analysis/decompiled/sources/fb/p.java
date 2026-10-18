package fb;

import ba.l0;
import java.util.TimerTask;

/* JADX INFO: compiled from: Timer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends TimerTask {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ o f7291h;

    public p(o oVar) {
        this.f7291h = oVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f7291h.f7281e = new l0(1);
        this.f7291h.f7282f = new l0(2);
        this.f7291h.c();
        this.f7291h.d();
    }
}
