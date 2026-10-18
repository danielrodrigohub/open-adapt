package de;

import androidx.fragment.app.r0;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class s implements j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InputStream f6275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k0 f6276i;

    public s(InputStream inputStream, k0 k0Var) {
        p4.h.j(inputStream, "input");
        p4.h.j(k0Var, "timeout");
        this.f6275h = inputStream;
        this.f6276i = k0Var;
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6275h.close();
    }

    @Override // de.j0
    public final long read(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        if (j10 == 0) {
            return 0L;
        }
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        try {
            this.f6276i.throwIfReached();
            e0 e0VarT0 = cVar.t0(1);
            int i10 = this.f6275h.read(e0VarT0.f6216a, e0VarT0.f6218c, (int) Math.min(j10, 8192 - e0VarT0.f6218c));
            if (i10 != -1) {
                e0VarT0.f6218c += i10;
                long j11 = i10;
                cVar.f6199i += j11;
                return j11;
            }
            if (e0VarT0.f6217b != e0VarT0.f6218c) {
                return -1L;
            }
            cVar.f6198h = e0VarT0.a();
            f0.b(e0VarT0);
            return -1L;
        } catch (AssertionError e10) {
            if (w.c(e10)) {
                throw new IOException(e10);
            }
            throw e10;
        }
    }

    @Override // de.j0
    public final k0 timeout() {
        return this.f6276i;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("source(");
        sbC.append(this.f6275h);
        sbC.append(')');
        return sbC.toString();
    }
}
