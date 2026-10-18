package n3;

import android.os.Looper;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: PlayerMessage.java */
/* JADX INFO: loaded from: classes.dex */
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f11622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f11623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.c f11624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b2 f11625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f11627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Looper f11628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11631j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f11632k;

    /* JADX INFO: compiled from: PlayerMessage.java */
    public interface a {
    }

    /* JADX INFO: compiled from: PlayerMessage.java */
    public interface b {
        void l(int i10, Object obj) throws q;
    }

    public p1(a aVar, b bVar, b2 b2Var, int i10, m5.c cVar, Looper looper) {
        this.f11623b = aVar;
        this.f11622a = bVar;
        this.f11625d = b2Var;
        this.f11628g = looper;
        this.f11624c = cVar;
        this.f11629h = i10;
    }

    public final synchronized boolean a(long j10) throws InterruptedException, TimeoutException {
        boolean z10;
        m5.a.e(this.f11630i);
        m5.a.e(this.f11628g.getThread() != Thread.currentThread());
        long jD = this.f11624c.d() + j10;
        while (true) {
            z10 = this.f11632k;
            if (z10 || j10 <= 0) {
                break;
            }
            this.f11624c.c();
            wait(j10);
            j10 = jD - this.f11624c.d();
        }
        if (!z10) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.f11631j;
    }

    public final synchronized void b(boolean z10) {
        this.f11631j = z10 | this.f11631j;
        this.f11632k = true;
        notifyAll();
    }

    public final p1 c() {
        m5.a.e(!this.f11630i);
        this.f11630i = true;
        o0 o0Var = (o0) this.f11623b;
        synchronized (o0Var) {
            if (o0Var.G || !o0Var.f11565p.isAlive()) {
                m5.p.g("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                b(false);
            } else {
                ((m5.b0.a) o0Var.f11564o.g(14, this)).b();
            }
        }
        return this;
    }

    public final p1 d(Object obj) {
        m5.a.e(!this.f11630i);
        this.f11627f = obj;
        return this;
    }

    public final p1 e(int i10) {
        m5.a.e(!this.f11630i);
        this.f11626e = i10;
        return this;
    }
}
