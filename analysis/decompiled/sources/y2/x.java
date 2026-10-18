package y2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: RecyclableBufferedInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends FilterInputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile byte[] f18504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18505i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f18506j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f18507k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f18508l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s2.b f18509m;

    /* JADX INFO: compiled from: RecyclableBufferedInputStream.java */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public x(InputStream inputStream, s2.b bVar) {
        super(inputStream);
        this.f18507k = -1;
        this.f18509m = bVar;
        this.f18504h = (byte[]) bVar.d(65536, byte[].class);
    }

    public static IOException f0() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final synchronized void Y() {
        if (this.f18504h != null) {
            this.f18509m.c(this.f18504h);
            this.f18504h = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f18504h == null || inputStream == null) {
            f0();
            throw null;
        }
        return (this.f18505i - this.f18508l) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f18504h != null) {
            this.f18509m.c(this.f18504h);
            this.f18504h = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f18506j = Math.max(this.f18506j, i10);
        this.f18507k = this.f18508l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        byte[] bArr = this.f18504h;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            f0();
            throw null;
        }
        if (this.f18508l >= this.f18505i && x(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f18504h && (bArr = this.f18504h) == null) {
            f0();
            throw null;
        }
        int i10 = this.f18505i;
        int i11 = this.f18508l;
        if (i10 - i11 <= 0) {
            return -1;
        }
        this.f18508l = i11 + 1;
        return bArr[i11] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        if (this.f18504h == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.f18507k;
        if (-1 == i10) {
            throw new a("Mark has been invalidated, pos: " + this.f18508l + " markLimit: " + this.f18506j);
        }
        this.f18508l = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) throws IOException {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f18504h;
        if (bArr == null) {
            f0();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            f0();
            throw null;
        }
        int i10 = this.f18505i;
        int i11 = this.f18508l;
        if (i10 - i11 >= j10) {
            this.f18508l = (int) (((long) i11) + j10);
            return j10;
        }
        long j11 = ((long) i10) - ((long) i11);
        this.f18508l = i10;
        if (this.f18507k == -1 || j10 > this.f18506j) {
            long jSkip = inputStream.skip(j10 - j11);
            if (jSkip > 0) {
                this.f18507k = -1;
            }
            return j11 + jSkip;
        }
        if (x(inputStream, bArr) == -1) {
            return j11;
        }
        int i12 = this.f18505i;
        int i13 = this.f18508l;
        if (i12 - i13 >= j10 - j11) {
            this.f18508l = (int) ((((long) i13) + j10) - j11);
            return j10;
        }
        long j12 = (j11 + ((long) i12)) - ((long) i13);
        this.f18508l = i12;
        return j12;
    }

    public final int x(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f18507k;
        if (i10 != -1) {
            int i11 = this.f18508l - i10;
            int i12 = this.f18506j;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f18505i == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f18509m.d(i12, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f18504h = bArr2;
                    this.f18509m.c(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f18508l - this.f18507k;
                this.f18508l = i13;
                this.f18507k = 0;
                this.f18505i = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.f18508l;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.f18505i = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.f18507k = -1;
            this.f18508l = 0;
            this.f18505i = i16;
        }
        return i16;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        byte[] bArr2 = this.f18504h;
        if (bArr2 == null) {
            f0();
            throw null;
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i14 = this.f18508l;
            int i15 = this.f18505i;
            if (i14 < i15) {
                int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
                System.arraycopy(bArr2, i14, bArr, i10, i16);
                this.f18508l += i16;
                if (i16 == i11 || inputStream.available() == 0) {
                    return i16;
                }
                i10 += i16;
                i12 = i11 - i16;
            } else {
                i12 = i11;
            }
            while (true) {
                if (this.f18507k == -1 && i12 >= bArr2.length) {
                    i13 = inputStream.read(bArr, i10, i12);
                    if (i13 == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                } else {
                    if (x(inputStream, bArr2) == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                    if (bArr2 != this.f18504h && (bArr2 = this.f18504h) == null) {
                        f0();
                        throw null;
                    }
                    int i17 = this.f18505i;
                    int i18 = this.f18508l;
                    i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                    System.arraycopy(bArr2, i18, bArr, i10, i13);
                    this.f18508l += i13;
                }
                i12 -= i13;
                if (i12 == 0) {
                    return i11;
                }
                if (inputStream.available() == 0) {
                    return i11 - i12;
                }
                i10 += i13;
            }
        } else {
            f0();
            throw null;
        }
    }
}
