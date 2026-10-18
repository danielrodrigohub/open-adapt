package b7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: CodedOutputStreamWriter.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f3451a;

    public m(l lVar) {
        Charset charset = z.f3564a;
        Objects.requireNonNull(lVar, "output");
        this.f3451a = lVar;
        lVar.f3447a = this;
    }

    public final void a(int i10, boolean z10) throws IOException {
        this.f3451a.D(i10, z10);
    }

    public final void b(int i10, i iVar) throws IOException {
        this.f3451a.E(i10, iVar);
    }

    public final void c(int i10, double d10) throws IOException {
        l lVar = this.f3451a;
        Objects.requireNonNull(lVar);
        lVar.H(i10, Double.doubleToRawLongBits(d10));
    }

    public final void d(int i10, int i11) throws IOException {
        this.f3451a.J(i10, i11);
    }

    public final void e(int i10, int i11) throws IOException {
        this.f3451a.F(i10, i11);
    }

    public final void f(int i10, long j10) throws IOException {
        this.f3451a.H(i10, j10);
    }

    public final void g(int i10, float f10) throws IOException {
        l lVar = this.f3451a;
        Objects.requireNonNull(lVar);
        lVar.F(i10, Float.floatToRawIntBits(f10));
    }

    public final void h(int i10, Object obj, e1 e1Var) throws IOException {
        l lVar = this.f3451a;
        lVar.P(i10, 3);
        e1Var.h((q0) obj, lVar.f3447a);
        lVar.P(i10, 4);
    }

    public final void i(int i10, int i11) throws IOException {
        this.f3451a.J(i10, i11);
    }

    public final void j(int i10, long j10) throws IOException {
        this.f3451a.S(i10, j10);
    }

    public final void k(int i10, Object obj, e1 e1Var) throws IOException {
        this.f3451a.L(i10, (q0) obj, e1Var);
    }

    public final void l(int i10, Object obj) throws IOException {
        if (obj instanceof i) {
            this.f3451a.N(i10, (i) obj);
        } else {
            this.f3451a.M(i10, (q0) obj);
        }
    }

    public final void m(int i10, int i11) throws IOException {
        this.f3451a.F(i10, i11);
    }

    public final void n(int i10, long j10) throws IOException {
        this.f3451a.H(i10, j10);
    }

    public final void o(int i10, int i11) throws IOException {
        this.f3451a.Q(i10, (i11 >> 31) ^ (i11 << 1));
    }

    public final void p(int i10, long j10) throws IOException {
        this.f3451a.S(i10, l.B(j10));
    }

    public final void q(int i10, int i11) throws IOException {
        this.f3451a.Q(i10, i11);
    }

    public final void r(int i10, long j10) throws IOException {
        this.f3451a.S(i10, j10);
    }
}
