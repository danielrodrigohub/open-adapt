package b7;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: UnknownFieldSetLiteSchema.java */
/* JADX INFO: loaded from: classes.dex */
public final class n1 extends l1<m1, m1> {
    @Override // b7.l1
    public final void a(m1 m1Var, int i10, int i11) {
        m1Var.b((i10 << 3) | 5, Integer.valueOf(i11));
    }

    @Override // b7.l1
    public final void b(m1 m1Var, int i10, long j10) {
        m1Var.b((i10 << 3) | 1, Long.valueOf(j10));
    }

    @Override // b7.l1
    public final void c(m1 m1Var, int i10, m1 m1Var2) {
        m1Var.b((i10 << 3) | 3, m1Var2);
    }

    @Override // b7.l1
    public final void d(m1 m1Var, int i10, i iVar) {
        m1Var.b((i10 << 3) | 2, iVar);
    }

    @Override // b7.l1
    public final void e(m1 m1Var, int i10, long j10) {
        m1Var.b((i10 << 3) | 0, Long.valueOf(j10));
    }

    @Override // b7.l1
    public final m1 f(Object obj) {
        x xVar = (x) obj;
        m1 m1Var = xVar.unknownFields;
        if (m1Var != m1.f3452f) {
            return m1Var;
        }
        m1 m1Var2 = new m1();
        xVar.unknownFields = m1Var2;
        return m1Var2;
    }

    @Override // b7.l1
    public final m1 g(Object obj) {
        return ((x) obj).unknownFields;
    }

    @Override // b7.l1
    public final int h(m1 m1Var) {
        return m1Var.a();
    }

    @Override // b7.l1
    public final int i(m1 m1Var) {
        m1 m1Var2 = m1Var;
        int i10 = m1Var2.f3456d;
        if (i10 != -1) {
            return i10;
        }
        int iC = 0;
        for (int i11 = 0; i11 < m1Var2.f3453a; i11++) {
            int i12 = m1Var2.f3454b[i11] >>> 3;
            iC += l.c(3, (i) m1Var2.f3455c[i11]) + l.x(2, i12) + (l.w(1) * 2);
        }
        m1Var2.f3456d = iC;
        return iC;
    }

    @Override // b7.l1
    public final void j(Object obj) {
        ((x) obj).unknownFields.f3457e = false;
    }

    @Override // b7.l1
    public final m1 k(m1 m1Var, m1 m1Var2) {
        m1 m1Var3 = m1Var;
        m1 m1Var4 = m1Var2;
        if (m1Var4.equals(m1.f3452f)) {
            return m1Var3;
        }
        int i10 = m1Var3.f3453a + m1Var4.f3453a;
        int[] iArrCopyOf = Arrays.copyOf(m1Var3.f3454b, i10);
        System.arraycopy(m1Var4.f3454b, 0, iArrCopyOf, m1Var3.f3453a, m1Var4.f3453a);
        Object[] objArrCopyOf = Arrays.copyOf(m1Var3.f3455c, i10);
        System.arraycopy(m1Var4.f3455c, 0, objArrCopyOf, m1Var3.f3453a, m1Var4.f3453a);
        return new m1(i10, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // b7.l1
    public final m1 m() {
        return new m1();
    }

    @Override // b7.l1
    public final void n(Object obj, m1 m1Var) {
        ((x) obj).unknownFields = m1Var;
    }

    @Override // b7.l1
    public final void o(Object obj, m1 m1Var) {
        ((x) obj).unknownFields = m1Var;
    }

    @Override // b7.l1
    public final void p() {
    }

    @Override // b7.l1
    public final m1 q(m1 m1Var) {
        m1 m1Var2 = m1Var;
        m1Var2.f3457e = false;
        return m1Var2;
    }

    @Override // b7.l1
    public final void r(m1 m1Var, t1 t1Var) throws IOException {
        m1 m1Var2 = m1Var;
        Objects.requireNonNull(m1Var2);
        Objects.requireNonNull(t1Var);
        for (int i10 = 0; i10 < m1Var2.f3453a; i10++) {
            ((m) t1Var).l(m1Var2.f3454b[i10] >>> 3, m1Var2.f3455c[i10]);
        }
    }

    @Override // b7.l1
    public final void s(m1 m1Var, t1 t1Var) throws IOException {
        m1Var.d(t1Var);
    }
}
