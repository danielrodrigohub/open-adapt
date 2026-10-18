package m7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: CodedOutputStreamWriter.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f10694a;

    public l(k kVar) {
        Charset charset = y.f10801a;
        Objects.requireNonNull(kVar, "output");
        this.f10694a = kVar;
        kVar.f10690a = this;
    }

    public final void a(int i10, boolean z10) throws IOException {
        this.f10694a.D(i10, z10);
    }

    public final void b(int i10, i iVar) throws IOException {
        this.f10694a.E(i10, iVar);
    }

    public final void c(int i10, double d10) throws IOException {
        k kVar = this.f10694a;
        Objects.requireNonNull(kVar);
        kVar.H(i10, Double.doubleToRawLongBits(d10));
    }

    public final void d(int i10, int i11) throws IOException {
        this.f10694a.J(i10, i11);
    }

    public final void e(int i10, int i11) throws IOException {
        this.f10694a.F(i10, i11);
    }

    public final void f(int i10, long j10) throws IOException {
        this.f10694a.H(i10, j10);
    }

    public final void g(int i10, float f10) throws IOException {
        k kVar = this.f10694a;
        Objects.requireNonNull(kVar);
        kVar.F(i10, Float.floatToRawIntBits(f10));
    }

    public final void h(int i10, Object obj, c1 c1Var) throws IOException {
        k kVar = this.f10694a;
        kVar.P(i10, 3);
        c1Var.i((p0) obj, kVar.f10690a);
        kVar.P(i10, 4);
    }

    public final void i(int i10, int i11) throws IOException {
        this.f10694a.J(i10, i11);
    }

    public final void j(int i10, long j10) throws IOException {
        this.f10694a.S(i10, j10);
    }

    public final void k(int i10, Object obj, c1 c1Var) throws IOException {
        this.f10694a.L(i10, (p0) obj, c1Var);
    }

    public final void l(int i10, Object obj) throws IOException {
        if (obj instanceof i) {
            this.f10694a.N(i10, (i) obj);
        } else {
            this.f10694a.M(i10, (p0) obj);
        }
    }

    public final void m(int i10, int i11) throws IOException {
        this.f10694a.F(i10, i11);
    }

    public final void n(int i10, long j10) throws IOException {
        this.f10694a.H(i10, j10);
    }

    public final void o(int i10, int i11) throws IOException {
        this.f10694a.Q(i10, (i11 >> 31) ^ (i11 << 1));
    }

    public final void p(int i10, long j10) throws IOException {
        this.f10694a.S(i10, k.B(j10));
    }

    public final void q(int i10, int i11) throws IOException {
        this.f10694a.Q(i10, i11);
    }

    public final void r(int i10, long j10) throws IOException {
        this.f10694a.S(i10, j10);
    }
}
