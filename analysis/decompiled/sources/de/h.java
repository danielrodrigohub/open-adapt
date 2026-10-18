package de;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: DeflaterSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h implements h0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f6234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Deflater f6235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6236j;

    public h(e eVar, Deflater deflater) {
        this.f6234h = eVar;
        this.f6235i = deflater;
    }

    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        if (this.f6236j) {
            return;
        }
        Throwable th = null;
        try {
            this.f6235i.finish();
            x(false);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f6235i.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f6234h.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f6236j = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // de.h0, java.io.Flushable
    public final void flush() throws IOException {
        x(true);
        this.f6234h.flush();
    }

    @Override // de.h0
    public final k0 timeout() {
        return this.f6234h.timeout();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("DeflaterSink(");
        sbC.append(this.f6234h);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // de.h0
    public final void write(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "source");
        n0.e(cVar.f6199i, 0L, j10);
        while (j10 > 0) {
            e0 e0Var = cVar.f6198h;
            p4.h.g(e0Var);
            int iMin = (int) Math.min(j10, e0Var.f6218c - e0Var.f6217b);
            this.f6235i.setInput(e0Var.f6216a, e0Var.f6217b, iMin);
            x(false);
            long j11 = iMin;
            cVar.f6199i -= j11;
            int i10 = e0Var.f6217b + iMin;
            e0Var.f6217b = i10;
            if (i10 == e0Var.f6218c) {
                cVar.f6198h = e0Var.a();
                f0.b(e0Var);
            }
            j10 -= j11;
        }
    }

    @IgnoreJRERequirement
    public final void x(boolean z10) throws IOException {
        e0 e0VarT0;
        int iDeflate;
        c cVarB = this.f6234h.b();
        while (true) {
            e0VarT0 = cVarB.t0(1);
            if (z10) {
                Deflater deflater = this.f6235i;
                byte[] bArr = e0VarT0.f6216a;
                int i10 = e0VarT0.f6218c;
                iDeflate = deflater.deflate(bArr, i10, 8192 - i10, 2);
            } else {
                Deflater deflater2 = this.f6235i;
                byte[] bArr2 = e0VarT0.f6216a;
                int i11 = e0VarT0.f6218c;
                iDeflate = deflater2.deflate(bArr2, i11, 8192 - i11);
            }
            if (iDeflate > 0) {
                e0VarT0.f6218c += iDeflate;
                cVarB.f6199i += (long) iDeflate;
                this.f6234h.F();
            } else if (this.f6235i.needsInput()) {
                break;
            }
        }
        if (e0VarT0.f6217b == e0VarT0.f6218c) {
            cVarB.f6198h = e0VarT0.a();
            f0.b(e0VarT0);
        }
    }

    public h(h0 h0Var, Deflater deflater) {
        this.f6234h = w.a(h0Var);
        this.f6235i = deflater;
    }
}
