package de;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: Sink.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface h0 extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    k0 timeout();

    void write(c cVar, long j10) throws IOException;
}
