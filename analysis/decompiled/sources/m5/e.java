package m5;

/* JADX INFO: compiled from: ConditionVariable.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f10377a;

    public e() {
    }

    public final synchronized void a() {
        boolean z10 = false;
        while (!this.f10377a) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean b() {
        boolean z10;
        z10 = this.f10377a;
        this.f10377a = false;
        return z10;
    }

    public final synchronized boolean c() {
        if (this.f10377a) {
            return false;
        }
        this.f10377a = true;
        notifyAll();
        return true;
    }

    public e(c cVar) {
    }
}
