package com.bumptech.glide.load.data;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: BufferedOutputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends OutputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OutputStream f4502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f4503i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s2.b f4504j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4505k;

    public c(OutputStream outputStream, s2.b bVar) {
        this.f4502h = outputStream;
        this.f4504j = bVar;
        this.f4503i = (byte[]) bVar.d(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
            this.f4502h.close();
            byte[] bArr = this.f4503i;
            if (bArr != null) {
                this.f4504j.c(bArr);
                this.f4503i = null;
            }
        } catch (Throwable th) {
            this.f4502h.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i10 = this.f4505k;
        if (i10 > 0) {
            this.f4502h.write(this.f4503i, 0, i10);
            this.f4505k = 0;
        }
        this.f4502h.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f4503i;
        int i11 = this.f4505k;
        int i12 = i11 + 1;
        this.f4505k = i12;
        bArr[i11] = (byte) i10;
        if (i12 != bArr.length || i12 <= 0) {
            return;
        }
        this.f4502h.write(bArr, 0, i12);
        this.f4505k = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = i11 - i12;
            int i14 = i10 + i12;
            int i15 = this.f4505k;
            if (i15 == 0 && i13 >= this.f4503i.length) {
                this.f4502h.write(bArr, i14, i13);
                return;
            }
            int iMin = Math.min(i13, this.f4503i.length - i15);
            System.arraycopy(bArr, i14, this.f4503i, this.f4505k, iMin);
            int i16 = this.f4505k + iMin;
            this.f4505k = i16;
            i12 += iMin;
            byte[] bArr2 = this.f4503i;
            if (i16 == bArr2.length && i16 > 0) {
                this.f4502h.write(bArr2, 0, i16);
                this.f4505k = 0;
            }
        } while (i12 < i11);
    }
}
