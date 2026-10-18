package com.bumptech.glide.load.data;

import androidx.appcompat.widget.e0;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ExifOrientationStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f4509j = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f4510k = 31;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte f4511h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4512i;

    public g(InputStream inputStream, int i10) {
        super(inputStream);
        if (i10 < -1 || i10 > 8) {
            throw new IllegalArgumentException(e0.d("Cannot add invalid orientation: ", i10));
        }
        this.f4511h = (byte) i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10;
        int i11;
        int i12 = this.f4512i;
        if (i12 < 2 || i12 > (i11 = f4510k)) {
            i10 = super.read();
        } else {
            i10 = i12 == i11 ? this.f4511h : f4509j[i12 - 2] & 255;
        }
        if (i10 != -1) {
            this.f4512i++;
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = super.skip(j10);
        if (jSkip > 0) {
            this.f4512i = (int) (((long) this.f4512i) + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f4512i;
        int i14 = f4510k;
        if (i13 > i14) {
            i12 = super.read(bArr, i10, i11);
        } else if (i13 == i14) {
            bArr[i10] = this.f4511h;
            i12 = 1;
        } else if (i13 < 2) {
            i12 = super.read(bArr, i10, 2 - i13);
        } else {
            int iMin = Math.min(i14 - i13, i11);
            System.arraycopy(f4509j, this.f4512i - 2, bArr, i10, iMin);
            i12 = iMin;
        }
        if (i12 > 0) {
            this.f4512i += i12;
        }
        return i12;
    }
}
