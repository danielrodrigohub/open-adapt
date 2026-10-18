package de;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: PeekSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f6192h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f6193i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e0 f6194j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6195k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6196l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f6197m;

    public b0(f fVar) {
        p4.h.j(fVar, "upstream");
        this.f6192h = fVar;
        c cVarB = fVar.b();
        this.f6193i = cVarB;
        e0 e0Var = cVarB.f6198h;
        this.f6194j = e0Var;
        this.f6195k = e0Var != null ? e0Var.f6217b : -1;
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6196l = true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    @Override // de.j0
    public final long read(c cVar, long j10) {
        e0 e0Var;
        p4.h.j(cVar, "sink");
        boolean z10 = false;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (!(!this.f6196l)) {
            throw new IllegalStateException("closed".toString());
        }
        e0 e0Var2 = this.f6194j;
        if (e0Var2 == null) {
            z10 = true;
        } else {
            e0 e0Var3 = this.f6193i.f6198h;
            if (e0Var2 == e0Var3) {
                int i10 = this.f6195k;
                p4.h.g(e0Var3);
                if (i10 == e0Var3.f6217b) {
                    z10 = true;
                }
            }
        }
        if (!z10) {
            throw new IllegalStateException("Peek source is invalid because upstream source was used".toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        if (!this.f6192h.o(this.f6197m + 1)) {
            return -1L;
        }
        if (this.f6194j == null && (e0Var = this.f6193i.f6198h) != null) {
            this.f6194j = e0Var;
            p4.h.g(e0Var);
            this.f6195k = e0Var.f6217b;
        }
        long jMin = Math.min(j10, this.f6193i.f6199i - this.f6197m);
        this.f6193i.g0(cVar, this.f6197m, jMin);
        this.f6197m += jMin;
        return jMin;
    }

    @Override // de.j0
    public final k0 timeout() {
        return this.f6192h.timeout();
    }
}
