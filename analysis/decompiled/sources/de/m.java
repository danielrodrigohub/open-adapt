package de;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m implements h0 {
    private final h0 delegate;

    public m(h0 h0Var) {
        p4.h.j(h0Var, "delegate");
        this.delegate = h0Var;
    }

    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final h0 m8deprecated_delegate() {
        return this.delegate;
    }

    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final h0 delegate() {
        return this.delegate;
    }

    @Override // de.h0, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // de.h0
    public k0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // de.h0
    public void write(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "source");
        this.delegate.write(cVar, j10);
    }
}
