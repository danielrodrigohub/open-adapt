package m2;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InputStream f10311h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Charset f10312i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f10313j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10314k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10315l;

    /* JADX INFO: compiled from: StrictLineReader.java */
    public class a extends ByteArrayOutputStream {
        public a(int i10) {
            super(i10);
        }

        @Override // java.io.ByteArrayOutputStream
        public final String toString() {
            int i10 = ((ByteArrayOutputStream) this).count;
            if (i10 > 0 && ((ByteArrayOutputStream) this).buf[i10 - 1] == 13) {
                i10--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i10, b.this.f10312i.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(c.f10317a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f10311h = inputStream;
        this.f10312i = charset;
        this.f10313j = new byte[8192];
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    public final String Y() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f10311h) {
            if (this.f10313j == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f10314k >= this.f10315l) {
                x();
            }
            for (int i12 = this.f10314k; i12 != this.f10315l; i12++) {
                byte[] bArr2 = this.f10313j;
                if (bArr2[i12] == 10) {
                    int i13 = this.f10314k;
                    if (i12 != i13) {
                        i11 = i12 - 1;
                        if (bArr2[i11] != 13) {
                            i11 = i12;
                        }
                    } else {
                        i11 = i12;
                    }
                    String str = new String(bArr2, i13, i11 - i13, this.f10312i.name());
                    this.f10314k = i12 + 1;
                    return str;
                }
            }
            a aVar = new a((this.f10315l - this.f10314k) + 80);
            loop1: while (true) {
                byte[] bArr3 = this.f10313j;
                int i14 = this.f10314k;
                aVar.write(bArr3, i14, this.f10315l - i14);
                this.f10315l = -1;
                x();
                i10 = this.f10314k;
                while (i10 != this.f10315l) {
                    bArr = this.f10313j;
                    if (bArr[i10] == 10) {
                        break loop1;
                    }
                    i10++;
                }
            }
            int i15 = this.f10314k;
            if (i10 != i15) {
                aVar.write(bArr, i15, i10 - i15);
            }
            this.f10314k = i10 + 1;
            return aVar.toString();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f10311h) {
            if (this.f10313j != null) {
                this.f10313j = null;
                this.f10311h.close();
            }
        }
    }

    public final void x() throws IOException {
        InputStream inputStream = this.f10311h;
        byte[] bArr = this.f10313j;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.f10314k = 0;
        this.f10315l = i10;
    }
}
