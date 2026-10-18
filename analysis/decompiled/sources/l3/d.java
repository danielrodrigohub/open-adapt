package l3;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: ExceptionPassthroughInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends InputStream {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Queue<d> f9927j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InputStream f9928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IOException f9929i;

    static {
        char[] cArr = l.f9945a;
        f9927j = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f9928h.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9928h.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
        this.f9928h.mark(i10);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f9928h.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f9928h.read();
        } catch (IOException e10) {
            this.f9929i = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f9928h.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        try {
            return this.f9928h.skip(j10);
        } catch (IOException e10) {
            this.f9929i = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f9928h.read(bArr);
        } catch (IOException e10) {
            this.f9929i = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.f9928h.read(bArr, i10, i11);
        } catch (IOException e10) {
            this.f9929i = e10;
            throw e10;
        }
    }
}
