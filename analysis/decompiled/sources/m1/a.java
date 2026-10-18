package m1;

import k1.l;
import t1.o;

/* JADX INFO: compiled from: DelayedWorkTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ o f10268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ b f10269i;

    public a(b bVar, o oVar) {
        this.f10269i = bVar;
        this.f10268h = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l.c().a(b.f10270d, String.format("Scheduling work %s", this.f10268h.f15350a), new Throwable[0]);
        this.f10269i.f10271a.d(this.f10268h);
    }
}
