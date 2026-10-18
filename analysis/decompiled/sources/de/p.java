package de;

import androidx.fragment.app.r0;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: GzipSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class p implements h0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c0 f6261h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Deflater f6262i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f6263j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6264k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CRC32 f6265l;

    public p(h0 h0Var) {
        p4.h.j(h0Var, "sink");
        c0 c0Var = new c0(h0Var);
        this.f6261h = c0Var;
        Deflater deflater = new Deflater(-1, true);
        this.f6262i = deflater;
        this.f6263j = new h((e) c0Var, deflater);
        this.f6265l = new CRC32();
        c cVar = c0Var.f6209i;
        cVar.D0(8075);
        cVar.y0(8);
        cVar.y0(0);
        cVar.B0(0);
        cVar.y0(0);
        cVar.y0(0);
    }

    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        if (this.f6264k) {
            return;
        }
        Throwable th = null;
        try {
            h hVar = this.f6263j;
            hVar.f6235i.finish();
            hVar.x(false);
            this.f6261h.x((int) this.f6265l.getValue());
            this.f6261h.x((int) this.f6262i.getBytesRead());
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f6262i.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f6261h.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f6264k = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // de.h0, java.io.Flushable
    public final void flush() throws IOException {
        this.f6263j.flush();
    }

    @Override // de.h0
    public final k0 timeout() {
        return this.f6261h.timeout();
    }

    @Override // de.h0
    public final void write(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "source");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (j10 == 0) {
            return;
        }
        e0 e0Var = cVar.f6198h;
        p4.h.g(e0Var);
        long j11 = j10;
        while (j11 > 0) {
            int iMin = (int) Math.min(j11, e0Var.f6218c - e0Var.f6217b);
            this.f6265l.update(e0Var.f6216a, e0Var.f6217b, iMin);
            j11 -= (long) iMin;
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
        }
        this.f6263j.write(cVar, j10);
    }
}
