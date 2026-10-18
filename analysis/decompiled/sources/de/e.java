package de;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: BufferedSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface e extends h0, WritableByteChannel {
    e A(int i10) throws IOException;

    e D(byte[] bArr) throws IOException;

    e F() throws IOException;

    e N(g gVar) throws IOException;

    e U(String str) throws IOException;

    e W(long j10) throws IOException;

    c b();

    e c(byte[] bArr, int i10, int i11) throws IOException;

    @Override // de.h0, java.io.Flushable
    void flush() throws IOException;

    e g(long j10) throws IOException;

    e m() throws IOException;

    e n(int i10) throws IOException;

    e r(int i10) throws IOException;

    long s(j0 j0Var) throws IOException;
}
