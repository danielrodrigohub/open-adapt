package ic;

import hc.g0;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f9037h = new i();

    public i() {
        super(0);
    }

    @Override // qd.a
    public final fd.o invoke() throws InterruptedException {
        while (true) {
            Thread.sleep(10L);
            AtomicLong atomicLong = g.f9024j;
            synchronized (atomicLong) {
                if (atomicLong.get() + g.f9025k < System.currentTimeMillis()) {
                    atomicLong.set(g.f9016b.j());
                    long count = g.f9023i.getCount();
                    if (count > 0) {
                        g0.a.b(androidx.lifecycle.o.q(), "Prevented runaway latch", null, false, null, 14, null);
                    }
                    while (count < 1) {
                        try {
                            g.f9023i.countDown();
                        } catch (Throwable th) {
                            g0.a.b(androidx.lifecycle.o.q(), String.valueOf(th.getMessage()), th, false, null, 12, null);
                        }
                        count++;
                    }
                }
            }
        }
    }
}
