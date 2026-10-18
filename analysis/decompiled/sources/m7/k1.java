package m7;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: UnknownFieldSetLiteSchema.java */
/* JADX INFO: loaded from: classes.dex */
public final class k1 extends i1<j1, j1> {
    @Override // m7.i1
    public final void a(j1 j1Var, int i10, long j10) {
        j1Var.b((i10 << 3) | 0, Long.valueOf(j10));
    }

    @Override // m7.i1
    public final j1 b(Object obj) {
        return ((w) obj).unknownFields;
    }

    @Override // m7.i1
    public final int c(j1 j1Var) {
        return j1Var.a();
    }

    @Override // m7.i1
    public final int d(j1 j1Var) {
        j1 j1Var2 = j1Var;
        int i10 = j1Var2.f10686d;
        if (i10 != -1) {
            return i10;
        }
        int iC = 0;
        for (int i11 = 0; i11 < j1Var2.f10683a; i11++) {
            int i12 = j1Var2.f10684b[i11] >>> 3;
            iC += k.c(3, (i) j1Var2.f10685c[i11]) + k.x(2, i12) + (k.w(1) * 2);
        }
        j1Var2.f10686d = iC;
        return iC;
    }

    @Override // m7.i1
    public final void e(Object obj) {
        ((w) obj).unknownFields.f10687e = false;
    }

    @Override // m7.i1
    public final j1 f(j1 j1Var, j1 j1Var2) {
        j1 j1Var3 = j1Var;
        j1 j1Var4 = j1Var2;
        if (j1Var4.equals(j1.f10682f)) {
            return j1Var3;
        }
        int i10 = j1Var3.f10683a + j1Var4.f10683a;
        int[] iArrCopyOf = Arrays.copyOf(j1Var3.f10684b, i10);
        System.arraycopy(j1Var4.f10684b, 0, iArrCopyOf, j1Var3.f10683a, j1Var4.f10683a);
        Object[] objArrCopyOf = Arrays.copyOf(j1Var3.f10685c, i10);
        System.arraycopy(j1Var4.f10685c, 0, objArrCopyOf, j1Var3.f10683a, j1Var4.f10683a);
        return new j1(i10, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // m7.i1
    public final j1 g() {
        return new j1();
    }

    @Override // m7.i1
    public final void h(Object obj, j1 j1Var) {
        ((w) obj).unknownFields = j1Var;
    }

    @Override // m7.i1
    public final void i(j1 j1Var, q1 q1Var) throws IOException {
        j1 j1Var2 = j1Var;
        Objects.requireNonNull(j1Var2);
        Objects.requireNonNull(q1Var);
        for (int i10 = 0; i10 < j1Var2.f10683a; i10++) {
            ((l) q1Var).l(j1Var2.f10684b[i10] >>> 3, j1Var2.f10685c[i10]);
        }
    }

    @Override // m7.i1
    public final void j(j1 j1Var, q1 q1Var) throws IOException {
        j1Var.d(q1Var);
    }
}
