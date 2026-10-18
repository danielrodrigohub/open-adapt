package de;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: Source.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface j0 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(c cVar, long j10) throws IOException;

    k0 timeout();
}
