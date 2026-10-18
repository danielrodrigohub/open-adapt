package de;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AsyncTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a extends k0 {
    public static final C0113a Companion = new C0113a();
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static a head;
    private boolean inQueue;
    private a next;
    private long timeoutAt;

    /* JADX INFO: renamed from: de.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class C0113a {
        public final a a() throws InterruptedException {
            a aVar = a.head;
            p4.h.g(aVar);
            a aVar2 = aVar.next;
            if (aVar2 == null) {
                long jNanoTime = System.nanoTime();
                a.class.wait(a.IDLE_TIMEOUT_MILLIS);
                a aVar3 = a.head;
                p4.h.g(aVar3);
                if (aVar3.next != null || System.nanoTime() - jNanoTime < a.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return a.head;
            }
            long jRemainingNanos = aVar2.remainingNanos(System.nanoTime());
            if (jRemainingNanos > 0) {
                long j10 = jRemainingNanos / 1000000;
                a.class.wait(j10, (int) (jRemainingNanos - (1000000 * j10)));
                return null;
            }
            a aVar4 = a.head;
            p4.h.g(aVar4);
            aVar4.next = aVar2.next;
            aVar2.next = null;
            return aVar2;
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            a aVarA;
            while (true) {
                try {
                    synchronized (a.class) {
                        aVarA = a.Companion.a();
                        if (aVarA == a.head) {
                            a.head = null;
                            return;
                        }
                    }
                    if (aVarA != null) {
                        aVarA.timedOut();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class c implements h0 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ h0 f6186i;

        public c(h0 h0Var) {
            this.f6186i = h0Var;
        }

        @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            a aVar = a.this;
            h0 h0Var = this.f6186i;
            aVar.enter();
            try {
                try {
                    h0Var.close();
                    if (aVar.exit()) {
                        throw aVar.access$newTimeoutException(null);
                    }
                } catch (IOException e10) {
                    if (!aVar.exit()) {
                        throw e10;
                    }
                    throw aVar.access$newTimeoutException(e10);
                }
            } catch (Throwable th) {
                aVar.exit();
                throw th;
            }
        }

        @Override // de.h0, java.io.Flushable
        public final void flush() throws IOException {
            a aVar = a.this;
            h0 h0Var = this.f6186i;
            aVar.enter();
            try {
                try {
                    h0Var.flush();
                    if (aVar.exit()) {
                        throw aVar.access$newTimeoutException(null);
                    }
                } catch (IOException e10) {
                    if (!aVar.exit()) {
                        throw e10;
                    }
                    throw aVar.access$newTimeoutException(e10);
                }
            } catch (Throwable th) {
                aVar.exit();
                throw th;
            }
        }

        @Override // de.h0
        public final k0 timeout() {
            return a.this;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("AsyncTimeout.sink(");
            sbC.append(this.f6186i);
            sbC.append(')');
            return sbC.toString();
        }

        @Override // de.h0
        public final void write(de.c cVar, long j10) throws IOException {
            p4.h.j(cVar, "source");
            n0.e(cVar.f6199i, 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                e0 e0Var = cVar.f6198h;
                p4.h.g(e0Var);
                while (j11 < 65536) {
                    j11 += (long) (e0Var.f6218c - e0Var.f6217b);
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    } else {
                        e0Var = e0Var.f6221f;
                        p4.h.g(e0Var);
                    }
                }
                a aVar = a.this;
                h0 h0Var = this.f6186i;
                aVar.enter();
                try {
                    try {
                        h0Var.write(cVar, j11);
                        if (aVar.exit()) {
                            throw aVar.access$newTimeoutException(null);
                        }
                        j10 -= j11;
                    } catch (IOException e10) {
                        if (!aVar.exit()) {
                            throw e10;
                        }
                        throw aVar.access$newTimeoutException(e10);
                    }
                } catch (Throwable th) {
                    aVar.exit();
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class d implements j0 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ j0 f6188i;

        public d(j0 j0Var) {
            this.f6188i = j0Var;
        }

        @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            a aVar = a.this;
            j0 j0Var = this.f6188i;
            aVar.enter();
            try {
                try {
                    j0Var.close();
                    if (aVar.exit()) {
                        throw aVar.access$newTimeoutException(null);
                    }
                } catch (IOException e10) {
                    if (!aVar.exit()) {
                        throw e10;
                    }
                    throw aVar.access$newTimeoutException(e10);
                }
            } catch (Throwable th) {
                aVar.exit();
                throw th;
            }
        }

        @Override // de.j0
        public final long read(de.c cVar, long j10) throws IOException {
            p4.h.j(cVar, "sink");
            a aVar = a.this;
            j0 j0Var = this.f6188i;
            aVar.enter();
            try {
                try {
                    long j11 = j0Var.read(cVar, j10);
                    if (aVar.exit()) {
                        throw aVar.access$newTimeoutException(null);
                    }
                    return j11;
                } catch (IOException e10) {
                    if (aVar.exit()) {
                        throw aVar.access$newTimeoutException(e10);
                    }
                    throw e10;
                }
            } catch (Throwable th) {
                aVar.exit();
                throw th;
            }
        }

        @Override // de.j0
        public final k0 timeout() {
            return a.this;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("AsyncTimeout.source(");
            sbC.append(this.f6188i);
            sbC.append(')');
            return sbC.toString();
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long remainingNanos(long j10) {
        return this.timeoutAt - j10;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            Objects.requireNonNull(Companion);
            synchronized (a.class) {
                if (!(!this.inQueue)) {
                    throw new IllegalStateException("Unbalanced enter/exit".toString());
                }
                this.inQueue = true;
                if (head == null) {
                    head = new a();
                    new b().start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    this.timeoutAt = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (jTimeoutNanos != 0) {
                    this.timeoutAt = jTimeoutNanos + jNanoTime;
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    this.timeoutAt = deadlineNanoTime();
                }
                long jRemainingNanos = remainingNanos(jNanoTime);
                a aVar = head;
                p4.h.g(aVar);
                while (aVar.next != null) {
                    a aVar2 = aVar.next;
                    p4.h.g(aVar2);
                    if (jRemainingNanos < aVar2.remainingNanos(jNanoTime)) {
                        break;
                    }
                    aVar = aVar.next;
                    p4.h.g(aVar);
                }
                this.next = aVar.next;
                aVar.next = this;
                if (aVar == head) {
                    a.class.notify();
                }
            }
        }
    }

    public final boolean exit() {
        boolean z10;
        Objects.requireNonNull(Companion);
        synchronized (a.class) {
            z10 = false;
            if (this.inQueue) {
                this.inQueue = false;
                for (a aVar = head; aVar != null; aVar = aVar.next) {
                    if (aVar.next == this) {
                        aVar.next = this.next;
                        this.next = null;
                    }
                }
                z10 = true;
            }
        }
        return z10;
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final h0 sink(h0 h0Var) {
        p4.h.j(h0Var, "sink");
        return new c(h0Var);
    }

    public final j0 source(j0 j0Var) {
        p4.h.j(j0Var, "source");
        return new d(j0Var);
    }

    public void timedOut() {
    }

    public final <T> T withTimeout(qd.a<? extends T> aVar) throws IOException {
        p4.h.j(aVar, "block");
        enter();
        try {
            try {
                T tInvoke = aVar.invoke();
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                return tInvoke;
            } catch (IOException e10) {
                if (exit()) {
                    throw access$newTimeoutException(e10);
                }
                throw e10;
            }
        } catch (Throwable th) {
            exit();
            throw th;
        }
    }
}
