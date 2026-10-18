package l3;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkEnforcingInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9941h;

    public j(InputStream inputStream) {
        super(inputStream);
        this.f9941h = Integer.MIN_VALUE;
    }

    public final void Y(long j10) {
        int i10 = this.f9941h;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f9941h = (int) (((long) i10) - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int i10 = this.f9941h;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        super.mark(i10);
        this.f9941h = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (x(1L) == -1) {
            return -1;
        }
        int i10 = super.read();
        Y(1L);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        super.reset();
        this.f9941h = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jX = x(j10);
        if (jX == -1) {
            return 0L;
        }
        long jSkip = super.skip(jX);
        Y(jSkip);
        return jSkip;
    }

    public final long x(long j10) {
        int i10 = this.f9941h;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int iX = (int) x(i11);
        if (iX == -1) {
            return -1;
        }
        int i12 = super.read(bArr, i10, iX);
        Y(i12);
        return i12;
    }
}
