package de;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class z implements h0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OutputStream f6282h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k0 f6283i;

    public z(OutputStream outputStream, k0 k0Var) {
        this.f6282h = outputStream;
        this.f6283i = k0Var;
    }

    @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6282h.close();
    }

    @Override // de.h0, java.io.Flushable
    public final void flush() throws IOException {
        this.f6282h.flush();
    }

    @Override // de.h0
    public final k0 timeout() {
        return this.f6283i;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("sink(");
        sbC.append(this.f6282h);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // de.h0
    public final void write(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "source");
        n0.e(cVar.f6199i, 0L, j10);
        while (j10 > 0) {
            this.f6283i.throwIfReached();
            e0 e0Var = cVar.f6198h;
            p4.h.g(e0Var);
            int iMin = (int) Math.min(j10, e0Var.f6218c - e0Var.f6217b);
            this.f6282h.write(e0Var.f6216a, e0Var.f6217b, iMin);
            int i10 = e0Var.f6217b + iMin;
            e0Var.f6217b = i10;
            long j11 = iMin;
            j10 -= j11;
            cVar.f6199i -= j11;
            if (i10 == e0Var.f6218c) {
                cVar.f6198h = e0Var.a();
                f0.b(e0Var);
            }
        }
    }
}
