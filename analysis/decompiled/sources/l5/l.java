package l5;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: DataSourceInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends InputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f10066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m f10067i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f10069k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f10070l = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f10068j = new byte[1];

    public l(j jVar, m mVar) {
        this.f10066h = jVar;
        this.f10067i = mVar;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f10070l) {
            return;
        }
        this.f10066h.close();
        this.f10070l = true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (read(this.f10068j) == -1) {
            return -1;
        }
        return this.f10068j[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        m5.a.e(!this.f10070l);
        if (!this.f10069k) {
            this.f10066h.l(this.f10067i);
            this.f10069k = true;
        }
        int iB = this.f10066h.b(bArr, i10, i11);
        if (iB == -1) {
            return -1;
        }
        return iB;
    }
}
