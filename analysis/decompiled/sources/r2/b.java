package r2;

import java.util.Objects;

/* JADX INFO: compiled from: ActiveResources.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ c f14223h;

    public b(c cVar) {
        this.f14223h = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f14223h;
        Objects.requireNonNull(cVar);
        while (true) {
            try {
                cVar.b((c.a) cVar.f14233c.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
