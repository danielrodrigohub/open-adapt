package de;

import androidx.fragment.app.r0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Timeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public class k0 {
    public static final b Companion = new b();
    public static final k0 NONE = new a();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    /* JADX INFO: compiled from: Timeout.kt */
    public static final class a extends k0 {
        @Override // de.k0
        public final k0 deadlineNanoTime(long j10) {
            return this;
        }

        @Override // de.k0
        public final void throwIfReached() {
        }

        @Override // de.k0
        public final k0 timeout(long j10, TimeUnit timeUnit) {
            p4.h.j(timeUnit, "unit");
            return this;
        }
    }

    /* JADX INFO: compiled from: Timeout.kt */
    public static final class b {
    }

    public k0 clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public k0 clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final k0 deadline(long j10, TimeUnit timeUnit) {
        p4.h.j(timeUnit, "unit");
        if (j10 > 0) {
            return deadlineNanoTime(timeUnit.toNanos(j10) + System.nanoTime());
        }
        throw new IllegalArgumentException(r0.f("duration <= 0: ", j10).toString());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final <T> T intersectWith(k0 k0Var, qd.a<? extends T> aVar) {
        p4.h.j(k0Var, "other");
        p4.h.j(aVar, "block");
        long jTimeoutNanos = timeoutNanos();
        b bVar = Companion;
        long jTimeoutNanos2 = k0Var.timeoutNanos();
        long jTimeoutNanos3 = timeoutNanos();
        Objects.requireNonNull(bVar);
        if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
            jTimeoutNanos2 = jTimeoutNanos3;
        }
        timeout(jTimeoutNanos2, TimeUnit.NANOSECONDS);
        if (!hasDeadline()) {
            if (k0Var.hasDeadline()) {
                deadlineNanoTime(k0Var.deadlineNanoTime());
            }
            try {
                return aVar.invoke();
            } finally {
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (k0Var.hasDeadline()) {
                    clearDeadline();
                }
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (k0Var.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), k0Var.deadlineNanoTime()));
        }
        try {
            return aVar.invoke();
        } finally {
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (k0Var.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
        }
    }

    public void throwIfReached() throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public k0 timeout(long j10, TimeUnit timeUnit) {
        p4.h.j(timeUnit, "unit");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("timeout < 0: ", j10).toString());
        }
        this.timeoutNanos = timeUnit.toNanos(j10);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        p4.h.j(obj, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j10 = jTimeoutNanos / 1000000;
                obj.wait(j10, (int) (jTimeoutNanos - (1000000 * j10)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public k0 deadlineNanoTime(long j10) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j10;
        return this;
    }
}
