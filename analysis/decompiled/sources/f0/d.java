package f0;

/* JADX INFO: compiled from: CancellationSignal.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f6957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6958c;

    /* JADX INFO: compiled from: CancellationSignal.java */
    public interface a {
        void a();
    }

    public final void a() {
        synchronized (this) {
            if (this.f6956a) {
                return;
            }
            this.f6956a = true;
            this.f6958c = true;
            a aVar = this.f6957b;
            if (aVar != null) {
                try {
                    aVar.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f6958c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f6958c = false;
                notifyAll();
            }
        }
    }

    public final void b(a aVar) {
        synchronized (this) {
            while (this.f6958c) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f6957b == aVar) {
                return;
            }
            this.f6957b = aVar;
            if (this.f6956a) {
                aVar.a();
            }
        }
    }
}
