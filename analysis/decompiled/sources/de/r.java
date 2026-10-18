package de;

import androidx.fragment.app.r0;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: InflaterSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class r implements j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f6271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Inflater f6272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6273j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6274k;

    public r(f fVar, Inflater inflater) {
        this.f6271h = fVar;
        this.f6272i = inflater;
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f6274k) {
            return;
        }
        this.f6272i.end();
        this.f6274k = true;
        this.f6271h.close();
    }

    @Override // de.j0
    public final long read(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        do {
            long jX = x(cVar, j10);
            if (jX > 0) {
                return jX;
            }
            if (this.f6272i.finished() || this.f6272i.needsDictionary()) {
                return -1L;
            }
        } while (!this.f6271h.z());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // de.j0
    public final k0 timeout() {
        return this.f6271h.timeout();
    }

    public final long x(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (!(!this.f6274k)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        try {
            e0 e0VarT0 = cVar.t0(1);
            int iMin = (int) Math.min(j10, 8192 - e0VarT0.f6218c);
            if (this.f6272i.needsInput() && !this.f6271h.z()) {
                e0 e0Var = this.f6271h.b().f6198h;
                p4.h.g(e0Var);
                int i10 = e0Var.f6218c;
                int i11 = e0Var.f6217b;
                int i12 = i10 - i11;
                this.f6273j = i12;
                this.f6272i.setInput(e0Var.f6216a, i11, i12);
            }
            int iInflate = this.f6272i.inflate(e0VarT0.f6216a, e0VarT0.f6218c, iMin);
            int i13 = this.f6273j;
            if (i13 != 0) {
                int remaining = i13 - this.f6272i.getRemaining();
                this.f6273j -= remaining;
                this.f6271h.a(remaining);
            }
            if (iInflate > 0) {
                e0VarT0.f6218c += iInflate;
                long j11 = iInflate;
                cVar.f6199i += j11;
                return j11;
            }
            if (e0VarT0.f6217b == e0VarT0.f6218c) {
                cVar.f6198h = e0VarT0.a();
                f0.b(e0VarT0);
            }
            return 0L;
        } catch (DataFormatException e10) {
            throw new IOException(e10);
        }
    }

    public r(j0 j0Var, Inflater inflater) {
        this.f6271h = w.b(j0Var);
        this.f6272i = inflater;
    }
}
