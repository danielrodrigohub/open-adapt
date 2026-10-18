package de;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: RealBufferedSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h0 f6208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f6209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6210j;

    public c0(h0 h0Var) {
        p4.h.j(h0Var, "sink");
        this.f6208h = h0Var;
        this.f6209i = new c();
    }

    @Override // de.e
    public final e A(int i10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.y0(i10);
        F();
        return this;
    }

    @Override // de.e
    public final e D(byte[] bArr) throws IOException {
        p4.h.j(bArr, "source");
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.w0(bArr);
        F();
        return this;
    }

    @Override // de.e
    public final e F() throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        long jF0 = this.f6209i.f0();
        if (jF0 > 0) {
            this.f6208h.write(this.f6209i, jF0);
        }
        return this;
    }

    @Override // de.e
    public final e N(g gVar) throws IOException {
        p4.h.j(gVar, "byteString");
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.u0(gVar);
        F();
        return this;
    }

    @Override // de.e
    public final e U(String str) throws IOException {
        p4.h.j(str, "string");
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.F0(str);
        F();
        return this;
    }

    @Override // de.e
    public final e W(long j10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.W(j10);
        F();
        return this;
    }

    @Override // de.e
    public final c b() {
        return this.f6209i;
    }

    @Override // de.e
    public final e c(byte[] bArr, int i10, int i11) throws IOException {
        p4.h.j(bArr, "source");
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.x0(bArr, i10, i11);
        F();
        return this;
    }

    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6210j) {
            return;
        }
        Throwable th = null;
        try {
            c cVar = this.f6209i;
            long j10 = cVar.f6199i;
            if (j10 > 0) {
                this.f6208h.write(cVar, j10);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f6208h.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f6210j = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // de.e, de.h0, java.io.Flushable
    public final void flush() throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        c cVar = this.f6209i;
        long j10 = cVar.f6199i;
        if (j10 > 0) {
            this.f6208h.write(cVar, j10);
        }
        this.f6208h.flush();
    }

    @Override // de.e
    public final e g(long j10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.g(j10);
        F();
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6210j;
    }

    @Override // de.e
    public final e m() throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        c cVar = this.f6209i;
        long j10 = cVar.f6199i;
        if (j10 > 0) {
            this.f6208h.write(cVar, j10);
        }
        return this;
    }

    @Override // de.e
    public final e n(int i10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.D0(i10);
        F();
        return this;
    }

    @Override // de.e
    public final e r(int i10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.B0(i10);
        F();
        return this;
    }

    @Override // de.e
    public final long s(j0 j0Var) throws IOException {
        p4.h.j(j0Var, "source");
        long j10 = 0;
        while (true) {
            long j11 = j0Var.read(this.f6209i, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
            F();
        }
    }

    @Override // de.h0
    public final k0 timeout() {
        return this.f6208h.timeout();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("buffer(");
        sbC.append(this.f6208h);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        p4.h.j(byteBuffer, "source");
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.f6209i.write(byteBuffer);
        F();
        return iWrite;
    }

    public final e x(int i10) throws IOException {
        if (!(!this.f6210j)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6209i.B0(n0.l(i10));
        F();
        return this;
    }

    @Override // de.h0
    public final void write(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "source");
        if (!this.f6210j) {
            this.f6209i.write(cVar, j10);
            F();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
