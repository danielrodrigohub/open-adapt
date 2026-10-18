package de;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ForwardingTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class o extends k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k0 f6260a;

    public o(k0 k0Var) {
        p4.h.j(k0Var, "delegate");
        this.f6260a = k0Var;
    }

    @Override // de.k0
    public final k0 clearDeadline() {
        return this.f6260a.clearDeadline();
    }

    @Override // de.k0
    public final k0 clearTimeout() {
        return this.f6260a.clearTimeout();
    }

    @Override // de.k0
    public final long deadlineNanoTime() {
        return this.f6260a.deadlineNanoTime();
    }

    @Override // de.k0
    public final boolean hasDeadline() {
        return this.f6260a.hasDeadline();
    }

    @Override // de.k0
    public final void throwIfReached() throws IOException {
        this.f6260a.throwIfReached();
    }

    @Override // de.k0
    public final k0 timeout(long j10, TimeUnit timeUnit) {
        p4.h.j(timeUnit, "unit");
        return this.f6260a.timeout(j10, timeUnit);
    }

    @Override // de.k0
    public final long timeoutNanos() {
        return this.f6260a.timeoutNanos();
    }

    @Override // de.k0
    public final k0 deadlineNanoTime(long j10) {
        return this.f6260a.deadlineNanoTime(j10);
    }
}
