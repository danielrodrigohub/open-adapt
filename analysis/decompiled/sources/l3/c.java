package l3;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentLengthInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f9925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9926i;

    public c(InputStream inputStream, long j10) {
        super(inputStream);
        this.f9925h = j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        return (int) Math.max(this.f9925h - ((long) this.f9926i), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        int i10;
        i10 = super.read();
        x(i10 >= 0 ? 1 : -1);
        return i10;
    }

    public final int x(int i10) throws IOException {
        if (i10 >= 0) {
            this.f9926i += i10;
        } else if (this.f9925h - ((long) this.f9926i) > 0) {
            StringBuilder sbC = a0.b.c("Failed to read all expected data, expected: ");
            sbC.append(this.f9925h);
            sbC.append(", but read: ");
            sbC.append(this.f9926i);
            throw new IOException(sbC.toString());
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        i12 = super.read(bArr, i10, i11);
        x(i12);
        return i12;
    }
}
