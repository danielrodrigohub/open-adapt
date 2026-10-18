package id;

import fd.o;

/* JADX INFO: compiled from: Thread.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ qd.a<o> f9077h;

    public a(qd.a<o> aVar) {
        this.f9077h = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        this.f9077h.invoke();
    }
}
