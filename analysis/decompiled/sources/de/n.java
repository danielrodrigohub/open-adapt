package de;

import java.io.IOException;

/* JADX INFO: compiled from: ForwardingSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n implements j0 {
    private final j0 delegate;

    public n(j0 j0Var) {
        p4.h.j(j0Var, "delegate");
        this.delegate = j0Var;
    }

    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final j0 m9deprecated_delegate() {
        return this.delegate;
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final j0 delegate() {
        return this.delegate;
    }

    @Override // de.j0
    public long read(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        return this.delegate.read(cVar, j10);
    }

    @Override // de.j0
    public k0 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
