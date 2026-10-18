package de;

import androidx.appcompat.widget.y0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: compiled from: SegmentedByteString.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class g0 extends g {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final transient byte[][] f6232m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final transient int[] f6233n;

    public g0(byte[][] bArr, int[] iArr) {
        super(g.f6228l.f6229h);
        this.f6232m = bArr;
        this.f6233n = iArr;
    }

    @Override // de.g
    public final void B(c cVar, int i10) {
        p4.h.j(cVar, "buffer");
        int i11 = i10 + 0;
        int iG = androidx.lifecycle.o.G(this, 0);
        int i12 = 0;
        while (i12 < i11) {
            int i13 = iG == 0 ? 0 : this.f6233n[iG - 1];
            int[] iArr = this.f6233n;
            int i14 = iArr[iG] - i13;
            int i15 = iArr[this.f6232m.length + iG];
            int iMin = Math.min(i11, i14 + i13) - i12;
            int i16 = (i12 - i13) + i15;
            e0 e0Var = new e0(this.f6232m[iG], i16, i16 + iMin, true, false);
            e0 e0Var2 = cVar.f6198h;
            if (e0Var2 == null) {
                e0Var.f6222g = e0Var;
                e0Var.f6221f = e0Var;
                cVar.f6198h = e0Var;
            } else {
                e0 e0Var3 = e0Var2.f6222g;
                p4.h.g(e0Var3);
                e0Var3.b(e0Var);
            }
            i12 += iMin;
            iG++;
        }
        cVar.f6199i += (long) i10;
    }

    public final byte[] C() {
        byte[] bArr = new byte[j()];
        int length = this.f6232m.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int[] iArr = this.f6233n;
            int i13 = iArr[length + i10];
            int i14 = iArr[i10];
            int i15 = i14 - i11;
            gd.g.j(this.f6232m[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    public final g D() {
        return new g(C());
    }

    @Override // de.g
    public final String b() {
        return D().b();
    }

    @Override // de.g
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (gVar.j() != j() || !s(0, gVar, j())) {
                return false;
            }
        }
        return true;
    }

    @Override // de.g
    public final int hashCode() {
        int i10 = this.f6230i;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f6232m.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            int[] iArr = this.f6233n;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            byte[] bArr = this.f6232m[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.f6230i = i12;
        return i12;
    }

    @Override // de.g
    public final g i(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = this.f6232m.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f6233n;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            messageDigest.update(this.f6232m[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] bArrDigest = messageDigest.digest();
        p4.h.i(bArrDigest, "digestBytes");
        return new g(bArrDigest);
    }

    @Override // de.g
    public final int j() {
        return this.f6233n[this.f6232m.length - 1];
    }

    @Override // de.g
    public final String k() {
        return D().k();
    }

    @Override // de.g
    public final int l(byte[] bArr, int i10) {
        p4.h.j(bArr, "other");
        return D().l(bArr, i10);
    }

    @Override // de.g
    public final byte[] n() {
        return C();
    }

    @Override // de.g
    public final byte o(int i10) {
        n0.e(this.f6233n[this.f6232m.length - 1], i10, 1L);
        int iG = androidx.lifecycle.o.G(this, i10);
        int i11 = iG == 0 ? 0 : this.f6233n[iG - 1];
        int[] iArr = this.f6233n;
        byte[][] bArr = this.f6232m;
        return bArr[iG][(i10 - i11) + iArr[bArr.length + iG]];
    }

    @Override // de.g
    public final int p(byte[] bArr, int i10) {
        p4.h.j(bArr, "other");
        return D().p(bArr, i10);
    }

    @Override // de.g
    public final boolean s(int i10, g gVar, int i11) {
        p4.h.j(gVar, "other");
        if (i10 < 0 || i10 > j() - i11) {
            return false;
        }
        int i12 = i11 + i10;
        int iG = androidx.lifecycle.o.G(this, i10);
        int i13 = 0;
        while (i10 < i12) {
            int i14 = iG == 0 ? 0 : this.f6233n[iG - 1];
            int[] iArr = this.f6233n;
            int i15 = iArr[iG] - i14;
            int i16 = iArr[this.f6232m.length + iG];
            int iMin = Math.min(i12, i15 + i14) - i10;
            if (!gVar.t(i13, this.f6232m[iG], (i10 - i14) + i16, iMin)) {
                return false;
            }
            i13 += iMin;
            i10 += iMin;
            iG++;
        }
        return true;
    }

    @Override // de.g
    public final boolean t(int i10, byte[] bArr, int i11, int i12) {
        p4.h.j(bArr, "other");
        if (i10 < 0 || i10 > j() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iG = androidx.lifecycle.o.G(this, i10);
        while (i10 < i13) {
            int i14 = iG == 0 ? 0 : this.f6233n[iG - 1];
            int[] iArr = this.f6233n;
            int i15 = iArr[iG] - i14;
            int i16 = iArr[this.f6232m.length + iG];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!n0.a(this.f6232m[iG], (i10 - i14) + i16, bArr, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iG++;
        }
        return true;
    }

    @Override // de.g
    public final String toString() {
        return D().toString();
    }

    @Override // de.g
    public final g x(int i10, int i11) {
        int iK = n0.k(this, i11);
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(a0.d.b("beginIndex=", i10, " < 0").toString());
        }
        if (!(iK <= j())) {
            StringBuilder sbC = y0.c("endIndex=", iK, " > length(");
            sbC.append(j());
            sbC.append(')');
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        int i12 = iK - i10;
        if (!(i12 >= 0)) {
            throw new IllegalArgumentException(d1.c.a("endIndex=", iK, " < beginIndex=", i10).toString());
        }
        if (i10 == 0 && iK == j()) {
            return this;
        }
        if (i10 == iK) {
            return g.f6228l;
        }
        int iG = androidx.lifecycle.o.G(this, i10);
        int iG2 = androidx.lifecycle.o.G(this, iK - 1);
        byte[][] bArr = this.f6232m;
        int i13 = iG2 + 1;
        p4.h.j(bArr, "<this>");
        i0.b.f(i13, bArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(bArr, iG, i13);
        p4.h.i(objArrCopyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        byte[][] bArr2 = (byte[][]) objArrCopyOfRange;
        int[] iArr = new int[bArr2.length * 2];
        if (iG <= iG2) {
            int i14 = 0;
            int i15 = iG;
            while (true) {
                iArr[i14] = Math.min(this.f6233n[i15] - i10, i12);
                int i16 = i14 + 1;
                iArr[i14 + bArr2.length] = this.f6233n[this.f6232m.length + i15];
                if (i15 == iG2) {
                    break;
                }
                i15++;
                i14 = i16;
            }
        }
        int i17 = iG != 0 ? this.f6233n[iG - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i10 - i17) + iArr[length];
        return new g0(bArr2, iArr);
    }

    @Override // de.g
    public final g z() {
        return D().z();
    }
}
