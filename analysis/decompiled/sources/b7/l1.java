package b7;

import java.io.IOException;

/* JADX INFO: compiled from: UnknownFieldSchema.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l1<T, B> {
    public abstract void a(B b10, int i10, int i11);

    public abstract void b(B b10, int i10, long j10);

    public abstract void c(B b10, int i10, T t10);

    public abstract void d(B b10, int i10, i iVar);

    public abstract void e(B b10, int i10, long j10);

    public abstract B f(Object obj);

    public abstract T g(Object obj);

    public abstract int h(T t10);

    public abstract int i(T t10);

    public abstract void j(Object obj);

    public abstract T k(T t10, T t11);

    public final boolean l(B b10, d1 d1Var) throws IOException {
        int iA = d1Var.a();
        int i10 = iA >>> 3;
        int i11 = iA & 7;
        if (i11 == 0) {
            e(b10, i10, d1Var.J());
            return true;
        }
        if (i11 == 1) {
            b(b10, i10, d1Var.f());
            return true;
        }
        if (i11 == 2) {
            d(b10, i10, d1Var.w());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw a0.d();
            }
            a(b10, i10, d1Var.p());
            return true;
        }
        B bM = m();
        int i12 = 4 | (i10 << 3);
        while (d1Var.r() != Integer.MAX_VALUE && l(bM, d1Var)) {
        }
        if (i12 != d1Var.a()) {
            throw a0.a();
        }
        c(b10, i10, q(bM));
        return true;
    }

    public abstract B m();

    public abstract void n(Object obj, B b10);

    public abstract void o(Object obj, T t10);

    public abstract void p();

    public abstract T q(B b10);

    public abstract void r(T t10, t1 t1Var) throws IOException;

    public abstract void s(T t10, t1 t1Var) throws IOException;
}
