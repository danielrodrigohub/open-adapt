package fe;

import java.util.logging.Level;

/* JADX INFO: compiled from: BackgroundPoster.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f7413h = new j();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f7414i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f7415j;

    public b(c cVar) {
        this.f7414i = cVar;
    }

    public final void a(o oVar, Object obj) {
        i iVarA = i.a(oVar, obj);
        synchronized (this) {
            this.f7413h.a(iVarA);
            if (!this.f7415j) {
                this.f7415j = true;
                this.f7414i.f7426j.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVarB;
        while (true) {
            try {
                try {
                    j jVar = this.f7413h;
                    synchronized (jVar) {
                        if (jVar.f7459a == null) {
                            jVar.wait(1000);
                        }
                        iVarB = jVar.b();
                    }
                    if (iVarB == null) {
                        synchronized (this) {
                            iVarB = this.f7413h.b();
                            if (iVarB == null) {
                                this.f7415j = false;
                                this.f7415j = false;
                                return;
                            }
                        }
                    }
                    this.f7414i.b(iVarB);
                } catch (InterruptedException e10) {
                    this.f7414i.f7433q.d(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e10);
                    this.f7415j = false;
                    return;
                }
            } catch (Throwable th) {
                this.f7415j = false;
                throw th;
            }
        }
    }
}
