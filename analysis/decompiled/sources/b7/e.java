package b7;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: ArrayDecoders.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: compiled from: ArrayDecoders.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f3384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f3385c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final p f3386d;

        public a(p pVar) {
            Objects.requireNonNull(pVar);
            this.f3386d = pVar;
        }
    }

    public static int a(byte[] bArr, int i10, a aVar) throws a0 {
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a;
        if (i11 < 0) {
            throw a0.f();
        }
        if (i11 > bArr.length - iT) {
            throw a0.h();
        }
        if (i11 == 0) {
            aVar.f3385c = i.f3419i;
            return iT;
        }
        aVar.f3385c = i.l(bArr, iT, i11);
        return iT + i11;
    }

    public static int b(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static long c(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    public static int d(e1 e1Var, byte[] bArr, int i10, int i11, int i12, a aVar) throws IOException {
        t0 t0Var = (t0) e1Var;
        Object objF = t0Var.f();
        int iJ = t0Var.J(objF, bArr, i10, i11, i12, aVar);
        t0Var.b(objF);
        aVar.f3385c = objF;
        return iJ;
    }

    public static int e(e1 e1Var, byte[] bArr, int i10, int i11, a aVar) throws IOException {
        int iS = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iS = s(i12, bArr, iS, aVar);
            i12 = aVar.f3383a;
        }
        int i13 = iS;
        if (i12 < 0 || i12 > i11 - i13) {
            throw a0.h();
        }
        Object objF = e1Var.f();
        int i14 = i12 + i13;
        e1Var.j(objF, bArr, i13, i14, aVar);
        e1Var.b(objF);
        aVar.f3385c = objF;
        return i14;
    }

    public static int f(e1<?> e1Var, int i10, byte[] bArr, int i11, int i12, z.c<?> cVar, a aVar) throws IOException {
        int iE = e(e1Var, bArr, i11, i12, aVar);
        cVar.add(aVar.f3385c);
        while (iE < i12) {
            int iT = t(bArr, iE, aVar);
            if (i10 != aVar.f3383a) {
                break;
            }
            iE = e(e1Var, bArr, iT, i12, aVar);
            cVar.add(aVar.f3385c);
        }
        return iE;
    }

    public static int g(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        f fVar = (f) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            iT = v(bArr, iT, aVar);
            fVar.k(aVar.f3384b != 0);
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int h(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        n nVar = (n) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            nVar.k(Double.longBitsToDouble(c(bArr, iT)));
            iT += 8;
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int i(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            yVar.k(b(bArr, iT));
            iT += 4;
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int j(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            h0Var.k(c(bArr, iT));
            iT += 8;
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int k(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        v vVar = (v) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            vVar.k(Float.intBitsToFloat(b(bArr, iT)));
            iT += 4;
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int l(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            iT = t(bArr, iT, aVar);
            yVar.k(j.b(aVar.f3383a));
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int m(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            iT = v(bArr, iT, aVar);
            h0Var.k(j.c(aVar.f3384b));
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int n(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            iT = t(bArr, iT, aVar);
            yVar.k(aVar.f3383a);
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int o(byte[] bArr, int i10, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a + iT;
        while (iT < i11) {
            iT = v(bArr, iT, aVar);
            h0Var.k(aVar.f3384b);
        }
        if (iT == i11) {
            return iT;
        }
        throw a0.h();
    }

    public static int p(byte[] bArr, int i10, a aVar) throws a0 {
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a;
        if (i11 < 0) {
            throw a0.f();
        }
        if (i11 == 0) {
            aVar.f3385c = "";
            return iT;
        }
        aVar.f3385c = new String(bArr, iT, i11, z.f3564a);
        return iT + i11;
    }

    public static int q(byte[] bArr, int i10, a aVar) throws a0 {
        int iT = t(bArr, i10, aVar);
        int i11 = aVar.f3383a;
        if (i11 < 0) {
            throw a0.f();
        }
        if (i11 == 0) {
            aVar.f3385c = "";
            return iT;
        }
        aVar.f3385c = q1.f3480a.a(bArr, iT, i11);
        return iT + i11;
    }

    public static int r(int i10, byte[] bArr, int i11, int i12, m1 m1Var, a aVar) throws a0 {
        if ((i10 >>> 3) == 0) {
            throw a0.b();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iV = v(bArr, i11, aVar);
            m1Var.b(i10, Long.valueOf(aVar.f3384b));
            return iV;
        }
        if (i13 == 1) {
            m1Var.b(i10, Long.valueOf(c(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iT = t(bArr, i11, aVar);
            int i14 = aVar.f3383a;
            if (i14 < 0) {
                throw a0.f();
            }
            if (i14 > bArr.length - iT) {
                throw a0.h();
            }
            if (i14 == 0) {
                m1Var.b(i10, i.f3419i);
            } else {
                m1Var.b(i10, i.l(bArr, iT, i14));
            }
            return iT + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw a0.b();
            }
            m1Var.b(i10, Integer.valueOf(b(bArr, i11)));
            return i11 + 4;
        }
        m1 m1Var2 = new m1();
        int i15 = (i10 & (-8)) | 4;
        int i16 = 0;
        while (i11 < i12) {
            int iT2 = t(bArr, i11, aVar);
            int i17 = aVar.f3383a;
            if (i17 == i15) {
                i16 = i17;
                i11 = iT2;
                break;
            }
            i16 = i17;
            i11 = r(i17, bArr, iT2, i12, m1Var2, aVar);
        }
        if (i11 > i12 || i16 != i15) {
            throw a0.g();
        }
        m1Var.b(i10, m1Var2);
        return i11;
    }

    public static int s(int i10, byte[] bArr, int i11, a aVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            aVar.f3383a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i13 + 1;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            aVar.f3383a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            aVar.f3383a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            aVar.f3383a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                aVar.f3383a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    public static int t(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return s(b10, bArr, i11, aVar);
        }
        aVar.f3383a = b10;
        return i11;
    }

    public static int u(int i10, byte[] bArr, int i11, int i12, z.c<?> cVar, a aVar) {
        y yVar = (y) cVar;
        int iT = t(bArr, i11, aVar);
        yVar.k(aVar.f3383a);
        while (iT < i12) {
            int iT2 = t(bArr, iT, aVar);
            if (i10 != aVar.f3383a) {
                break;
            }
            iT = t(bArr, iT2, aVar);
            yVar.k(aVar.f3383a);
        }
        return iT;
    }

    public static int v(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            aVar.f3384b = j10;
            return i11;
        }
        int i12 = i11 + 1;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | (((long) (b10 & 127)) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            i13 += 7;
            j11 |= ((long) (b11 & 127)) << i13;
            b10 = b11;
            i12 = i14;
        }
        aVar.f3384b = j11;
        return i12;
    }

    public static int w(int i10, byte[] bArr, int i11, int i12, a aVar) throws a0 {
        if ((i10 >>> 3) == 0) {
            throw a0.b();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            return v(bArr, i11, aVar);
        }
        if (i13 == 1) {
            return i11 + 8;
        }
        if (i13 == 2) {
            return t(bArr, i11, aVar) + aVar.f3383a;
        }
        if (i13 != 3) {
            if (i13 == 5) {
                return i11 + 4;
            }
            throw a0.b();
        }
        int i14 = (i10 & (-8)) | 4;
        int i15 = 0;
        while (i11 < i12) {
            i11 = t(bArr, i11, aVar);
            i15 = aVar.f3383a;
            if (i15 == i14) {
                break;
            }
            i11 = w(i15, bArr, i11, i12, aVar);
        }
        if (i11 > i12 || i15 != i14) {
            throw a0.g();
        }
        return i11;
    }
}
