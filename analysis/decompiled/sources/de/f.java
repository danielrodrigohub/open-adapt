package de;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: BufferedSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface f extends j0, ReadableByteChannel {
    byte[] B(long j10) throws IOException;

    long E(h0 h0Var) throws IOException;

    long G() throws IOException;

    long I() throws IOException;

    String J(long j10) throws IOException;

    f Q();

    long S(g gVar) throws IOException;

    void T(long j10) throws IOException;

    int V(y yVar) throws IOException;

    void a(long j10) throws IOException;

    boolean a0(long j10, g gVar) throws IOException;

    c b();

    long c0() throws IOException;

    String d0(Charset charset) throws IOException;

    InputStream e0();

    void f(c cVar, long j10) throws IOException;

    c h();

    g i() throws IOException;

    g j(long j10) throws IOException;

    boolean o(long j10) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    String u() throws IOException;

    byte[] w() throws IOException;

    int y() throws IOException;

    boolean z() throws IOException;
}
