package de;

import java.io.OutputStream;

/* JADX INFO: compiled from: Buffer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends OutputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ c f6211h;

    public d(c cVar) {
        this.f6211h = cVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    public final String toString() {
        return this.f6211h + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        this.f6211h.y0(i10);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        p4.h.j(bArr, "data");
        this.f6211h.x0(bArr, i10, i11);
    }
}
