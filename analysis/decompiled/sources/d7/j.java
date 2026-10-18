package d7;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: StreamingAeadDecryptingStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ByteBuffer f6096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ByteBuffer f6097i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6098j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6099k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6100l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f6101m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6102n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final byte[] f6103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6104p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final h f6105q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f6106r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f6107s;

    public j(f fVar, InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        super(inputStream);
        this.f6105q = fVar.g();
        this.f6098j = fVar.e();
        this.f6103o = Arrays.copyOf(bArr, bArr.length);
        int iD = fVar.d();
        this.f6106r = iD;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iD + 1);
        this.f6096h = byteBufferAllocate;
        byteBufferAllocate.limit(0);
        this.f6107s = iD - fVar.c();
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(fVar.f() + 16);
        this.f6097i = byteBufferAllocate2;
        byteBufferAllocate2.limit(0);
        this.f6099k = false;
        this.f6100l = false;
        this.f6101m = false;
        this.f6104p = 0;
        this.f6102n = false;
    }

    public final void Y() throws IOException {
        if (this.f6099k) {
            f0();
            throw new IOException("Decryption failed.");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.f6098j);
        while (byteBufferAllocate.remaining() > 0) {
            int i10 = ((FilterInputStream) this).in.read(byteBufferAllocate.array(), byteBufferAllocate.position(), byteBufferAllocate.remaining());
            if (i10 == -1) {
                f0();
                throw new IOException("Ciphertext is too short");
            }
            if (i10 == 0) {
                throw new IOException("Could not read bytes from the ciphertext stream");
            }
            byteBufferAllocate.position(byteBufferAllocate.position() + i10);
        }
        byteBufferAllocate.flip();
        try {
            this.f6105q.a(byteBufferAllocate, this.f6103o);
            this.f6099k = true;
        } catch (GeneralSecurityException e10) {
            throw new IOException(e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return this.f6097i.remaining();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        super.close();
    }

    public final void f0() {
        this.f6102n = true;
        this.f6097i.limit(0);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int i10 = read(bArr, 0, 1);
        if (i10 == 1) {
            return bArr[0] & 255;
        }
        if (i10 == -1) {
            return i10;
        }
        throw new IOException("Reading failed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        int i10;
        long j11 = this.f6106r;
        if (j10 <= 0) {
            return 0L;
        }
        int iMin = (int) Math.min(j11, j10);
        byte[] bArr = new byte[iMin];
        long j12 = j10;
        while (j12 > 0 && (i10 = read(bArr, 0, (int) Math.min(iMin, j12))) > 0) {
            j12 -= (long) i10;
        }
        return j10 - j12;
    }

    public final synchronized String toString() {
        return "StreamingAeadDecryptingStream\nsegmentNr:" + this.f6104p + "\nciphertextSegmentSize:" + this.f6106r + "\nheaderRead:" + this.f6099k + "\nendOfCiphertext:" + this.f6100l + "\nendOfPlaintext:" + this.f6101m + "\ndecryptionErrorOccured:" + this.f6102n + "\nciphertextSgement position:" + this.f6096h.position() + " limit:" + this.f6096h.limit() + "\nplaintextSegment position:" + this.f6097i.position() + " limit:" + this.f6097i.limit();
    }

    public final void x() throws IOException {
        while (!this.f6100l && this.f6096h.remaining() > 0) {
            int i10 = ((FilterInputStream) this).in.read(this.f6096h.array(), this.f6096h.position(), this.f6096h.remaining());
            if (i10 > 0) {
                ByteBuffer byteBuffer = this.f6096h;
                byteBuffer.position(byteBuffer.position() + i10);
            } else if (i10 == -1) {
                this.f6100l = true;
            } else if (i10 == 0) {
                throw new IOException("Could not read bytes from the ciphertext stream");
            }
        }
        byte b10 = 0;
        if (!this.f6100l) {
            ByteBuffer byteBuffer2 = this.f6096h;
            b10 = byteBuffer2.get(byteBuffer2.position() - 1);
            ByteBuffer byteBuffer3 = this.f6096h;
            byteBuffer3.position(byteBuffer3.position() - 1);
        }
        this.f6096h.flip();
        this.f6097i.clear();
        try {
            this.f6105q.b(this.f6096h, this.f6104p, this.f6100l, this.f6097i);
            this.f6104p++;
            this.f6097i.flip();
            this.f6096h.clear();
            if (this.f6100l) {
                return;
            }
            this.f6096h.clear();
            this.f6096h.limit(this.f6106r + 1);
            this.f6096h.put(b10);
        } catch (GeneralSecurityException e10) {
            f0();
            throw new IOException(e10.getMessage() + "\n" + toString() + "\nsegmentNr:" + this.f6104p + " endOfCiphertext:" + this.f6100l, e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f6102n) {
            if (!this.f6099k) {
                Y();
                this.f6096h.clear();
                this.f6096h.limit(this.f6107s + 1);
            }
            if (this.f6101m) {
                return -1;
            }
            int i12 = 0;
            while (i12 < i11) {
                if (this.f6097i.remaining() == 0) {
                    if (this.f6100l) {
                        this.f6101m = true;
                        break;
                    }
                    x();
                }
                int iMin = Math.min(this.f6097i.remaining(), i11 - i12);
                this.f6097i.get(bArr, i12 + i10, iMin);
                i12 += iMin;
            }
            if (i12 == 0 && this.f6101m) {
                return -1;
            }
            return i12;
        }
        throw new IOException("Decryption failed.");
    }
}
