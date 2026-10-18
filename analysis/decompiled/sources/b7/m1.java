package b7;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: UnknownFieldSetLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final m1 f3452f = new m1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f3454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f3455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3457e;

    public m1() {
        this(0, new int[8], new Object[8], true);
    }

    public static void c(int i10, Object obj, t1 t1Var) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            ((m) t1Var).j(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            ((m) t1Var).f(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            ((m) t1Var).b(i11, (i) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 != 5) {
                int i13 = a0.f3352h;
                throw new RuntimeException(new a0.a());
            }
            ((m) t1Var).e(i11, ((Integer) obj).intValue());
            return;
        }
        Objects.requireNonNull(t1Var);
        m mVar = (m) t1Var;
        mVar.f3451a.P(i11, 3);
        ((m1) obj).d(t1Var);
        mVar.f3451a.P(i11, 4);
    }

    public final int a() {
        int iZ;
        int i10 = this.f3456d;
        if (i10 != -1) {
            return i10;
        }
        int iA = 0;
        for (int i11 = 0; i11 < this.f3453a; i11++) {
            int i12 = this.f3454b[i11];
            int i13 = i12 >>> 3;
            int i14 = i12 & 7;
            if (i14 == 0) {
                iZ = l.z(i13, ((Long) this.f3455c[i11]).longValue());
            } else if (i14 == 1) {
                ((Long) this.f3455c[i11]).longValue();
                iZ = l.h(i13);
            } else if (i14 != 2) {
                if (i14 == 3) {
                    iA = ((m1) this.f3455c[i11]).a() + (l.w(i13) * 2) + iA;
                } else {
                    if (i14 != 5) {
                        int i15 = a0.f3352h;
                        throw new IllegalStateException(new a0.a());
                    }
                    ((Integer) this.f3455c[i11]).intValue();
                    iZ = l.g(i13);
                }
            } else {
                iZ = l.c(i13, (i) this.f3455c[i11]);
            }
            iA = iZ + iA;
        }
        this.f3456d = iA;
        return iA;
    }

    public final void b(int i10, Object obj) {
        if (!this.f3457e) {
            throw new UnsupportedOperationException();
        }
        int i11 = this.f3453a;
        int[] iArr = this.f3454b;
        if (i11 == iArr.length) {
            int i12 = i11 + (i11 < 4 ? 8 : i11 >> 1);
            this.f3454b = Arrays.copyOf(iArr, i12);
            this.f3455c = Arrays.copyOf(this.f3455c, i12);
        }
        int[] iArr2 = this.f3454b;
        int i13 = this.f3453a;
        iArr2[i13] = i10;
        this.f3455c[i13] = obj;
        this.f3453a = i13 + 1;
    }

    public final void d(t1 t1Var) throws IOException {
        if (this.f3453a == 0) {
            return;
        }
        Objects.requireNonNull(t1Var);
        for (int i10 = 0; i10 < this.f3453a; i10++) {
            c(this.f3454b[i10], this.f3455c[i10], t1Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0046 A[RETURN] */
    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof m1)) {
            return false;
        }
        m1 m1Var = (m1) obj;
        int i10 = this.f3453a;
        if (i10 == m1Var.f3453a) {
            int[] iArr = this.f3454b;
            int[] iArr2 = m1Var.f3454b;
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
                Object[] objArr = this.f3455c;
                Object[] objArr2 = m1Var.f3455c;
                int i12 = this.f3453a;
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
        int i10 = this.f3453a;
        int i11 = (527 + i10) * 31;
        int[] iArr = this.f3454b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f3455c;
        int i15 = this.f3453a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public m1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f3456d = -1;
        this.f3453a = i10;
        this.f3454b = iArr;
        this.f3455c = objArr;
        this.f3457e = z10;
    }
}
