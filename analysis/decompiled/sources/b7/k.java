package b7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: CodedInputStreamReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f3439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3442d = 0;

    public k(j jVar) {
        Charset charset = z.f3564a;
        Objects.requireNonNull(jVar, "input");
        this.f3439a = jVar;
        jVar.f3430c = this;
    }

    @Override // b7.d1
    public final int A() throws IOException {
        S(0);
        return this.f3439a.p();
    }

    @Override // b7.d1
    public final boolean B() throws IOException {
        int i10;
        if (this.f3439a.e() || (i10 = this.f3440b) == this.f3441c) {
            return false;
        }
        return this.f3439a.A(i10);
    }

    @Override // b7.d1
    public final <T> T C(e1<T> e1Var, p pVar) throws IOException {
        S(3);
        return (T) O(e1Var, pVar);
    }

    @Override // b7.d1
    public final int D() throws IOException {
        S(5);
        return this.f3439a.r();
    }

    @Override // b7.d1
    public final void E(List<i> list) throws IOException {
        int iX;
        if ((this.f3440b & 7) != 2) {
            throw a0.d();
        }
        do {
            list.add(w());
            if (this.f3439a.e()) {
                return;
            } else {
                iX = this.f3439a.x();
            }
        } while (iX == this.f3440b);
        this.f3442d = iX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b7.d1
    public final <T> void F(List<T> list, e1<T> e1Var, p pVar) throws IOException {
        int iX;
        int i10 = this.f3440b;
        if ((i10 & 7) != 3) {
            int i11 = a0.f3352h;
            throw new a0.a();
        }
        do {
            list.add(O(e1Var, pVar));
            if (this.f3439a.e() || this.f3442d != 0) {
                return;
            } else {
                iX = this.f3439a.x();
            }
        } while (iX == i10);
        this.f3442d = iX;
    }

    @Override // b7.d1
    public final void G(List<Double> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof n)) {
            int i10 = this.f3440b & 7;
            if (i10 == 1) {
                do {
                    list.add(Double.valueOf(this.f3439a.k()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iY = this.f3439a.y();
            U(iY);
            int iD = this.f3439a.d() + iY;
            do {
                list.add(Double.valueOf(this.f3439a.k()));
            } while (this.f3439a.d() < iD);
            return;
        }
        n nVar = (n) list;
        int i11 = this.f3440b & 7;
        if (i11 == 1) {
            do {
                nVar.k(this.f3439a.k());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iY2 = this.f3439a.y();
        U(iY2);
        int iD2 = this.f3439a.d() + iY2;
        do {
            nVar.k(this.f3439a.k());
        } while (this.f3439a.d() < iD2);
    }

    @Override // b7.d1
    public final void H(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof h0)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f3439a.q()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Long.valueOf(this.f3439a.q()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        h0 h0Var = (h0) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                h0Var.k(this.f3439a.q());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            h0Var.k(this.f3439a.q());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final void I(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof h0)) {
            int i10 = this.f3440b & 7;
            if (i10 == 1) {
                do {
                    list.add(Long.valueOf(this.f3439a.s()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iY = this.f3439a.y();
            U(iY);
            int iD = this.f3439a.d() + iY;
            do {
                list.add(Long.valueOf(this.f3439a.s()));
            } while (this.f3439a.d() < iD);
            return;
        }
        h0 h0Var = (h0) list;
        int i11 = this.f3440b & 7;
        if (i11 == 1) {
            do {
                h0Var.k(this.f3439a.s());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iY2 = this.f3439a.y();
        U(iY2);
        int iD2 = this.f3439a.d() + iY2;
        do {
            h0Var.k(this.f3439a.s());
        } while (this.f3439a.d() < iD2);
    }

    @Override // b7.d1
    public final long J() throws IOException {
        S(0);
        return this.f3439a.q();
    }

    @Override // b7.d1
    public final String K() throws IOException {
        S(2);
        return this.f3439a.w();
    }

    @Override // b7.d1
    public final void L(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof h0)) {
            int i10 = this.f3440b & 7;
            if (i10 == 1) {
                do {
                    list.add(Long.valueOf(this.f3439a.n()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iY = this.f3439a.y();
            U(iY);
            int iD = this.f3439a.d() + iY;
            do {
                list.add(Long.valueOf(this.f3439a.n()));
            } while (this.f3439a.d() < iD);
            return;
        }
        h0 h0Var = (h0) list;
        int i11 = this.f3440b & 7;
        if (i11 == 1) {
            do {
                h0Var.k(this.f3439a.n());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iY2 = this.f3439a.y();
        U(iY2);
        int iD2 = this.f3439a.d() + iY2;
        do {
            h0Var.k(this.f3439a.n());
        } while (this.f3439a.d() < iD2);
    }

    @Override // b7.d1
    public final void M(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f3439a.p()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Integer.valueOf(this.f3439a.p()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                yVar.k(this.f3439a.p());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            yVar.k(this.f3439a.p());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final void N(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f3439a.l()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Integer.valueOf(this.f3439a.l()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                yVar.k(this.f3439a.l());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            yVar.k(this.f3439a.l());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    public final <T> T O(e1<T> e1Var, p pVar) throws IOException {
        int i10 = this.f3441c;
        this.f3441c = ((this.f3440b >>> 3) << 3) | 4;
        try {
            T tF = e1Var.f();
            e1Var.i(tF, this, pVar);
            e1Var.b(tF);
            if (this.f3440b != this.f3441c) {
                throw a0.g();
            }
            this.f3441c = i10;
            return tF;
        } catch (Throwable th) {
            this.f3441c = i10;
            throw th;
        }
    }

    public final <T> T P(e1<T> e1Var, p pVar) throws IOException {
        int iY = this.f3439a.y();
        j jVar = this.f3439a;
        if (jVar.f3428a >= jVar.f3429b) {
            throw new a0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iH = jVar.h(iY);
        T tF = e1Var.f();
        this.f3439a.f3428a++;
        e1Var.i(tF, this, pVar);
        e1Var.b(tF);
        this.f3439a.a(0);
        j jVar2 = this.f3439a;
        jVar2.f3428a--;
        jVar2.g(iH);
        return tF;
    }

    public final void Q(List<String> list, boolean z10) throws IOException {
        int iX;
        int iX2;
        if ((this.f3440b & 7) != 2) {
            throw a0.d();
        }
        if (!(list instanceof f0) || z10) {
            do {
                list.add(z10 ? K() : o());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX = this.f3439a.x();
                }
            } while (iX == this.f3440b);
            this.f3442d = iX;
            return;
        }
        f0 f0Var = (f0) list;
        do {
            f0Var.i(w());
            if (this.f3439a.e()) {
                return;
            } else {
                iX2 = this.f3439a.x();
            }
        } while (iX2 == this.f3440b);
        this.f3442d = iX2;
    }

    public final void R(int i10) throws IOException {
        if (this.f3439a.d() != i10) {
            throw a0.h();
        }
    }

    public final void S(int i10) throws IOException {
        if ((this.f3440b & 7) != i10) {
            throw a0.d();
        }
    }

    public final void T(int i10) throws IOException {
        if ((i10 & 3) != 0) {
            throw a0.g();
        }
    }

    public final void U(int i10) throws IOException {
        if ((i10 & 7) != 0) {
            throw a0.g();
        }
    }

    @Override // b7.d1
    public final int a() {
        return this.f3440b;
    }

    @Override // b7.d1
    public final void b(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f3439a.t()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Integer.valueOf(this.f3439a.t()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                yVar.k(this.f3439a.t());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            yVar.k(this.f3439a.t());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final int c() throws IOException {
        S(0);
        return this.f3439a.l();
    }

    @Override // b7.d1
    public final long d() throws IOException {
        S(0);
        return this.f3439a.z();
    }

    @Override // b7.d1
    public final void e(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 2) {
                int iY = this.f3439a.y();
                T(iY);
                int iD = this.f3439a.d() + iY;
                do {
                    list.add(Integer.valueOf(this.f3439a.m()));
                } while (this.f3439a.d() < iD);
                return;
            }
            if (i10 != 5) {
                throw a0.d();
            }
            do {
                list.add(Integer.valueOf(this.f3439a.m()));
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX = this.f3439a.x();
                }
            } while (iX == this.f3440b);
            this.f3442d = iX;
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 2) {
            int iY2 = this.f3439a.y();
            T(iY2);
            int iD2 = this.f3439a.d() + iY2;
            do {
                yVar.k(this.f3439a.m());
            } while (this.f3439a.d() < iD2);
            return;
        }
        if (i11 != 5) {
            throw a0.d();
        }
        do {
            yVar.k(this.f3439a.m());
            if (this.f3439a.e()) {
                return;
            } else {
                iX2 = this.f3439a.x();
            }
        } while (iX2 == this.f3440b);
        this.f3442d = iX2;
    }

    @Override // b7.d1
    public final long f() throws IOException {
        S(1);
        return this.f3439a.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b7.d1
    public final <T> void g(List<T> list, e1<T> e1Var, p pVar) throws IOException {
        int iX;
        int i10 = this.f3440b;
        if ((i10 & 7) != 2) {
            int i11 = a0.f3352h;
            throw new a0.a();
        }
        do {
            list.add(P(e1Var, pVar));
            if (this.f3439a.e() || this.f3442d != 0) {
                return;
            } else {
                iX = this.f3439a.x();
            }
        } while (iX == i10);
        this.f3442d = iX;
    }

    @Override // b7.d1
    public final void h(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 2) {
                int iY = this.f3439a.y();
                T(iY);
                int iD = this.f3439a.d() + iY;
                do {
                    list.add(Integer.valueOf(this.f3439a.r()));
                } while (this.f3439a.d() < iD);
                return;
            }
            if (i10 != 5) {
                throw a0.d();
            }
            do {
                list.add(Integer.valueOf(this.f3439a.r()));
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX = this.f3439a.x();
                }
            } while (iX == this.f3440b);
            this.f3442d = iX;
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 2) {
            int iY2 = this.f3439a.y();
            T(iY2);
            int iD2 = this.f3439a.d() + iY2;
            do {
                yVar.k(this.f3439a.r());
            } while (this.f3439a.d() < iD2);
            return;
        }
        if (i11 != 5) {
            throw a0.d();
        }
        do {
            yVar.k(this.f3439a.r());
            if (this.f3439a.e()) {
                return;
            } else {
                iX2 = this.f3439a.x();
            }
        } while (iX2 == this.f3440b);
        this.f3442d = iX2;
    }

    @Override // b7.d1
    public final int i() throws IOException {
        S(0);
        return this.f3439a.t();
    }

    @Override // b7.d1
    public final void j(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof h0)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f3439a.u()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Long.valueOf(this.f3439a.u()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        h0 h0Var = (h0) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                h0Var.k(this.f3439a.u());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            h0Var.k(this.f3439a.u());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final long k() throws IOException {
        S(0);
        return this.f3439a.u();
    }

    @Override // b7.d1
    public final void l(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof y)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f3439a.y()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Integer.valueOf(this.f3439a.y()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        y yVar = (y) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                yVar.k(this.f3439a.y());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            yVar.k(this.f3439a.y());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final <T> T m(e1<T> e1Var, p pVar) throws IOException {
        S(2);
        return (T) P(e1Var, pVar);
    }

    @Override // b7.d1
    public final void n(List<Boolean> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof f)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f3439a.i()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Boolean.valueOf(this.f3439a.i()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        f fVar = (f) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                fVar.k(this.f3439a.i());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            fVar.k(this.f3439a.i());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final String o() throws IOException {
        S(2);
        return this.f3439a.v();
    }

    @Override // b7.d1
    public final int p() throws IOException {
        S(5);
        return this.f3439a.m();
    }

    @Override // b7.d1
    public final boolean q() throws IOException {
        S(0);
        return this.f3439a.i();
    }

    @Override // b7.d1
    public final int r() throws IOException {
        int i10 = this.f3442d;
        if (i10 != 0) {
            this.f3440b = i10;
            this.f3442d = 0;
        } else {
            this.f3440b = this.f3439a.x();
        }
        int i11 = this.f3440b;
        if (i11 == 0 || i11 == this.f3441c) {
            return Integer.MAX_VALUE;
        }
        return i11 >>> 3;
    }

    @Override // b7.d1
    public final double readDouble() throws IOException {
        S(1);
        return this.f3439a.k();
    }

    @Override // b7.d1
    public final float readFloat() throws IOException {
        S(5);
        return this.f3439a.o();
    }

    @Override // b7.d1
    public final void s(List<String> list) throws IOException {
        Q(list, false);
    }

    @Override // b7.d1
    public final long t() throws IOException {
        S(1);
        return this.f3439a.s();
    }

    @Override // b7.d1
    public final void u(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof h0)) {
            int i10 = this.f3440b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f3439a.z()));
                    if (this.f3439a.e()) {
                        return;
                    } else {
                        iX = this.f3439a.x();
                    }
                } while (iX == this.f3440b);
                this.f3442d = iX;
                return;
            }
            if (i10 != 2) {
                throw a0.d();
            }
            int iD = this.f3439a.d() + this.f3439a.y();
            do {
                list.add(Long.valueOf(this.f3439a.z()));
            } while (this.f3439a.d() < iD);
            R(iD);
            return;
        }
        h0 h0Var = (h0) list;
        int i11 = this.f3440b & 7;
        if (i11 == 0) {
            do {
                h0Var.k(this.f3439a.z());
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX2 = this.f3439a.x();
                }
            } while (iX2 == this.f3440b);
            this.f3442d = iX2;
            return;
        }
        if (i11 != 2) {
            throw a0.d();
        }
        int iD2 = this.f3439a.d() + this.f3439a.y();
        do {
            h0Var.k(this.f3439a.z());
        } while (this.f3439a.d() < iD2);
        R(iD2);
    }

    @Override // b7.d1
    public final void v(List<String> list) throws IOException {
        Q(list, true);
    }

    @Override // b7.d1
    public final i w() throws IOException {
        S(2);
        return this.f3439a.j();
    }

    @Override // b7.d1
    public final void x(List<Float> list) throws IOException {
        int iX;
        int iX2;
        if (!(list instanceof v)) {
            int i10 = this.f3440b & 7;
            if (i10 == 2) {
                int iY = this.f3439a.y();
                T(iY);
                int iD = this.f3439a.d() + iY;
                do {
                    list.add(Float.valueOf(this.f3439a.o()));
                } while (this.f3439a.d() < iD);
                return;
            }
            if (i10 != 5) {
                throw a0.d();
            }
            do {
                list.add(Float.valueOf(this.f3439a.o()));
                if (this.f3439a.e()) {
                    return;
                } else {
                    iX = this.f3439a.x();
                }
            } while (iX == this.f3440b);
            this.f3442d = iX;
            return;
        }
        v vVar = (v) list;
        int i11 = this.f3440b & 7;
        if (i11 == 2) {
            int iY2 = this.f3439a.y();
            T(iY2);
            int iD2 = this.f3439a.d() + iY2;
            do {
                vVar.k(this.f3439a.o());
            } while (this.f3439a.d() < iD2);
            return;
        }
        if (i11 != 5) {
            throw a0.d();
        }
        do {
            vVar.k(this.f3439a.o());
            if (this.f3439a.e()) {
                return;
            } else {
                iX2 = this.f3439a.x();
            }
        } while (iX2 == this.f3440b);
        this.f3442d = iX2;
    }

    @Override // b7.d1
    public final int y() throws IOException {
        S(0);
        return this.f3439a.y();
    }

    @Override // b7.d1
    public final void z() throws IOException {
        S(2);
        this.f3439a.h(this.f3439a.y());
        throw null;
    }
}
