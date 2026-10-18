package m7;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: UnknownFieldSetLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class j1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final j1 f10682f = new j1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f10683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f10684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f10685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10687e;

    public j1() {
        this(0, new int[8], new Object[8], true);
    }

    public static void c(int i10, Object obj, q1 q1Var) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            ((l) q1Var).j(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            ((l) q1Var).f(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            ((l) q1Var).b(i11, (i) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 != 5) {
                int i13 = z.f10804h;
                throw new RuntimeException(new z.a());
            }
            ((l) q1Var).e(i11, ((Integer) obj).intValue());
            return;
        }
        Objects.requireNonNull(q1Var);
        l lVar = (l) q1Var;
        lVar.f10694a.P(i11, 3);
        ((j1) obj).d(q1Var);
        lVar.f10694a.P(i11, 4);
    }

    public final int a() {
        int iZ;
        int i10 = this.f10686d;
        if (i10 != -1) {
            return i10;
        }
        int iA = 0;
        for (int i11 = 0; i11 < this.f10683a; i11++) {
            int i12 = this.f10684b[i11];
            int i13 = i12 >>> 3;
            int i14 = i12 & 7;
            if (i14 == 0) {
                iZ = k.z(i13, ((Long) this.f10685c[i11]).longValue());
            } else if (i14 == 1) {
                ((Long) this.f10685c[i11]).longValue();
                iZ = k.h(i13);
            } else if (i14 != 2) {
                if (i14 == 3) {
                    iA = ((j1) this.f10685c[i11]).a() + (k.w(i13) * 2) + iA;
                } else {
                    if (i14 != 5) {
                        int i15 = z.f10804h;
                        throw new IllegalStateException(new z.a());
                    }
                    ((Integer) this.f10685c[i11]).intValue();
                    iZ = k.g(i13);
                }
            } else {
                iZ = k.c(i13, (i) this.f10685c[i11]);
            }
            iA = iZ + iA;
        }
        this.f10686d = iA;
        return iA;
    }

    public final void b(int i10, Object obj) {
        if (!this.f10687e) {
            throw new UnsupportedOperationException();
        }
        int i11 = this.f10683a;
        int[] iArr = this.f10684b;
        if (i11 == iArr.length) {
            int i12 = i11 + (i11 < 4 ? 8 : i11 >> 1);
            this.f10684b = Arrays.copyOf(iArr, i12);
            this.f10685c = Arrays.copyOf(this.f10685c, i12);
        }
        int[] iArr2 = this.f10684b;
        int i13 = this.f10683a;
        iArr2[i13] = i10;
        this.f10685c[i13] = obj;
        this.f10683a = i13 + 1;
    }

    public final void d(q1 q1Var) throws IOException {
        if (this.f10683a == 0) {
            return;
        }
        Objects.requireNonNull(q1Var);
        for (int i10 = 0; i10 < this.f10683a; i10++) {
            c(this.f10684b[i10], this.f10685c[i10], q1Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0046 A[RETURN] */
    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        int i10 = this.f10683a;
        if (i10 == j1Var.f10683a) {
            int[] iArr = this.f10684b;
            int[] iArr2 = j1Var.f10684b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    z10 = true;
                    break;
                }
                if (iArr[i11] != iArr2[i11]) {
                    z10 = false;
                    break;
                }
                i11++;
            }
            if (z10) {
                Object[] objArr = this.f10685c;
                Object[] objArr2 = j1Var.f10685c;
                int i12 = this.f10683a;
                for (int i13 = 0; i13 < i12; i13++) {
                    if (!objArr[i13].equals(objArr2[i13])) {
                        z11 = false;
                        if (!z11) {
                            return true;
                        }
                    }
                }
                z11 = true;
                if (!z11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f10683a;
        int i11 = (527 + i10) * 31;
        int[] iArr = this.f10684b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f10685c;
        int i15 = this.f10683a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public j1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f10686d = -1;
        this.f10683a = i10;
        this.f10684b = iArr;
        this.f10685c = objArr;
        this.f10687e = z10;
    }
}
