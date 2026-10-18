package de;

import java.io.EOFException;

/* JADX INFO: compiled from: Okio.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements h0 {
    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // de.h0, java.io.Flushable
    public final void flush() {
    }

    @Override // de.h0
    public final k0 timeout() {
        return k0.NONE;
    }

    @Override // de.h0
    public final void write(c cVar, long j10) throws EOFException {
        p4.h.j(cVar, "source");
        cVar.a(j10);
    }
}
