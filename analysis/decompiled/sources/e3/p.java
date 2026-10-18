package e3;

import java.util.Objects;

/* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f6349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ o.c.a f6350i;

    public p(o.c.a aVar, boolean z10) {
        this.f6350i = aVar;
        this.f6349h = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.c.a aVar = this.f6350i;
        boolean z10 = this.f6349h;
        Objects.requireNonNull(aVar);
        l3.l.a();
        o.c cVar = o.c.this;
        boolean z11 = cVar.f6344a;
        cVar.f6344a = z10;
        if (z11 != z10) {
            cVar.f6345b.a(z10);
        }
    }
}
