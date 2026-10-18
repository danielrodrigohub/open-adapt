package b7;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: CodedInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3429b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k f3430c;

    /* JADX INFO: compiled from: CodedInputStream.java */
    public static final class a extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f3431d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f3432e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3433f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f3434g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3435h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f3436i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3437j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f3438k = Integer.MAX_VALUE;

        public a(byte[] bArr, int i10, int i11, boolean z10) {
            this.f3431d = bArr;
            this.f3433f = i11 + i10;
            this.f3435h = i10;
            this.f3436i = i10;
            this.f3432e = z10;
        }

        @Override // b7.j
        public final boolean A(int i10) throws IOException {
            int iX;
            int i11 = i10 & 7;
            int i12 = 0;
            if (i11 == 0) {
                if (this.f3433f - this.f3435h >= 10) {
                    while (i12 < 10) {
                        byte[] bArr = this.f3431d;
                        int i13 = this.f3435h;
                        this.f3435h = i13 + 1;
                        if (bArr[i13] < 0) {
                            i12++;
                        }
                    }
                    throw a0.e();
                }
                while (i12 < 10) {
                    int i14 = this.f3435h;
                    if (i14 == this.f3433f) {
                        throw a0.h();
                    }
                    byte[] bArr2 = this.f3431d;
                    this.f3435h = i14 + 1;
                    if (bArr2[i14] < 0) {
                        i12++;
                    }
                }
                throw a0.e();
                return true;
            }
            if (i11 == 1) {
                H(8);
                return true;
            }
            if (i11 == 2) {
                H(D());
                return true;
            }
            if (i11 != 3) {
                if (i11 == 4) {
                    return false;
                }
                if (i11 != 5) {
                    throw a0.d();
                }
                H(4);
                return true;
            }
            do {
                iX = x();
                if (iX == 0) {
                    break;
                }
            } while (A(iX));
            a(((i10 >>> 3) << 3) | 4);
            return true;
        }

        public final int B() throws IOException {
            int i10 = this.f3435h;
            if (this.f3433f - i10 < 4) {
                throw a0.h();
            }
            byte[] bArr = this.f3431d;
            this.f3435h = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public final long C() throws IOException {
            int i10 = this.f3435h;
            if (this.f3433f - i10 < 8) {
                throw a0.h();
            }
            byte[] bArr = this.f3431d;
            this.f3435h = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int D() throws IOException {
            int i10;
            int i11 = this.f3435h;
            int i12 = this.f3433f;
            if (i12 != i11) {
                byte[] bArr = this.f3431d;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f3435h = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i13 + 1;
                    int i15 = b10 ^ (bArr[i13] << 7);
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i14 + 1;
                        int i17 = i15 ^ (bArr[i14] << 14);
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            i14 = i16 + 1;
                            int i18 = i17 ^ (bArr[i16] << 21);
                            if (i18 < 0) {
                                i10 = i18 ^ (-2080896);
                            } else {
                                i16 = i14 + 1;
                                byte b11 = bArr[i14];
                                i10 = (i18 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i14 = i16 + 1;
                                    if (bArr[i16] < 0) {
                                        i16 = i14 + 1;
                                        if (bArr[i14] < 0) {
                                            i14 = i16 + 1;
                                            if (bArr[i16] < 0) {
                                                i16 = i14 + 1;
                                                if (bArr[i14] < 0) {
                                                    i14 = i16 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i14 = i16;
                    }
                    this.f3435h = i14;
                    return i10;
                }
            }
            return (int) F();
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final long E() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10;
            int i11 = this.f3435h;
            int i12 = this.f3433f;
            if (i12 != i11) {
                byte[] bArr = this.f3431d;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f3435h = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i13 + 1;
                    int i15 = b10 ^ (bArr[i13] << 7);
                    if (i15 >= 0) {
                        int i16 = i14 + 1;
                        int i17 = i15 ^ (bArr[i14] << 14);
                        if (i17 >= 0) {
                            i14 = i16;
                            j10 = i17 ^ 16256;
                        } else {
                            i14 = i16 + 1;
                            int i18 = i17 ^ (bArr[i16] << 21);
                            if (i18 < 0) {
                                i10 = i18 ^ (-2080896);
                            } else {
                                long j13 = i18;
                                int i19 = i14 + 1;
                                long j14 = j13 ^ (((long) bArr[i14]) << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    i14 = i19 + 1;
                                    long j15 = j14 ^ (((long) bArr[i19]) << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i19 = i14 + 1;
                                        j14 = j15 ^ (((long) bArr[i14]) << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i14 = i19 + 1;
                                            j15 = j14 ^ (((long) bArr[i19]) << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                int i20 = i14 + 1;
                                                long j16 = (j15 ^ (((long) bArr[i14]) << 56)) ^ 71499008037633920L;
                                                i14 = j16 < 0 ? i20 + 1 : i20;
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                }
                                j10 = j14 ^ j12;
                                i14 = i19;
                            }
                        }
                        this.f3435h = i14;
                        return j10;
                    }
                    i10 = i15 ^ (-128);
                    j10 = i10;
                    this.f3435h = i14;
                    return j10;
                }
            }
            return F();
        }

        public final long F() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                int i11 = this.f3435h;
                if (i11 == this.f3433f) {
                    throw a0.h();
                }
                byte[] bArr = this.f3431d;
                this.f3435h = i11 + 1;
                byte b10 = bArr[i11];
                j10 |= ((long) (b10 & 127)) << i10;
                if ((b10 & 128) == 0) {
                    return j10;
                }
            }
            throw a0.e();
        }

        public final void G() {
            int i10 = this.f3433f + this.f3434g;
            this.f3433f = i10;
            int i11 = i10 - this.f3436i;
            int i12 = this.f3438k;
            if (i11 <= i12) {
                this.f3434g = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f3434g = i13;
            this.f3433f = i10 - i13;
        }

        public final void H(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.f3433f;
                int i12 = this.f3435h;
                if (i10 <= i11 - i12) {
                    this.f3435h = i12 + i10;
                    return;
                }
            }
            if (i10 >= 0) {
                throw a0.h();
            }
            throw a0.f();
        }

        @Override // b7.j
        public final void a(int i10) throws a0 {
            if (this.f3437j != i10) {
                throw a0.a();
            }
        }

        @Override // b7.j
        public final int d() {
            return this.f3435h - this.f3436i;
        }

        @Override // b7.j
        public final boolean e() throws IOException {
            return this.f3435h == this.f3433f;
        }

        @Override // b7.j
        public final void g(int i10) {
            this.f3438k = i10;
            G();
        }

        @Override // b7.j
        public final int h(int i10) throws a0 {
            if (i10 < 0) {
                throw a0.f();
            }
            int i11 = (this.f3435h - this.f3436i) + i10;
            int i12 = this.f3438k;
            if (i11 > i12) {
                throw a0.h();
            }
            this.f3438k = i11;
            G();
            return i12;
        }

        @Override // b7.j
        public final boolean i() throws IOException {
            return E() != 0;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0031 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x0033 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:17:0x0035  */
        /* JADX WARN: Code duplicated, block: B:20:0x003f  */
        /* JADX WARN: Code duplicated, block: B:22:0x0044  */
        @Override // b7.j
        public final i j() throws IOException {
            byte[] bArrCopyOfRange;
            int iD = D();
            if (iD > 0) {
                int i10 = this.f3433f;
                int i11 = this.f3435h;
                if (iD <= i10 - i11) {
                    i iVarL = i.l(this.f3431d, i11, iD);
                    this.f3435h += iD;
                    return iVarL;
                }
            }
            if (iD == 0) {
                return i.f3419i;
            }
            if (iD > 0) {
                int i12 = this.f3433f;
                int i13 = this.f3435h;
                if (iD <= i12 - i13) {
                    int i14 = iD + i13;
                    this.f3435h = i14;
                    bArrCopyOfRange = Arrays.copyOfRange(this.f3431d, i13, i14);
                } else {
                    if (iD <= 0) {
                        throw a0.h();
                    }
                    if (iD == 0) {
                        throw a0.f();
                    }
                    bArrCopyOfRange = z.f3565b;
                }
            } else {
                if (iD <= 0) {
                    throw a0.h();
                }
                if (iD == 0) {
                    throw a0.f();
                }
                bArrCopyOfRange = z.f3565b;
            }
            i.f fVar = i.f3419i;
            return new i.f(bArrCopyOfRange);
        }

        @Override // b7.j
        public final double k() throws IOException {
            return Double.longBitsToDouble(C());
        }

        @Override // b7.j
        public final int l() throws IOException {
            return D();
        }

        @Override // b7.j
        public final int m() throws IOException {
            return B();
        }

        @Override // b7.j
        public final long n() throws IOException {
            return C();
        }

        @Override // b7.j
        public final float o() throws IOException {
            return Float.intBitsToFloat(B());
        }

        @Override // b7.j
        public final int p() throws IOException {
            return D();
        }

        @Override // b7.j
        public final long q() throws IOException {
            return E();
        }

        @Override // b7.j
        public final int r() throws IOException {
            return B();
        }

        @Override // b7.j
        public final long s() throws IOException {
            return C();
        }

        @Override // b7.j
        public final int t() throws IOException {
            return j.b(D());
        }

        @Override // b7.j
        public final long u() throws IOException {
            return j.c(E());
        }

        @Override // b7.j
        public final String v() throws IOException {
            int iD = D();
            if (iD > 0) {
                int i10 = this.f3433f;
                int i11 = this.f3435h;
                if (iD <= i10 - i11) {
                    String str = new String(this.f3431d, i11, iD, z.f3564a);
                    this.f3435h += iD;
                    return str;
                }
            }
            if (iD == 0) {
                return "";
            }
            if (iD < 0) {
                throw a0.f();
            }
            throw a0.h();
        }

        @Override // b7.j
        public final String w() throws IOException {
            int iD = D();
            if (iD > 0) {
                int i10 = this.f3433f;
                int i11 = this.f3435h;
                if (iD <= i10 - i11) {
                    String strA = q1.f3480a.a(this.f3431d, i11, iD);
                    this.f3435h += iD;
                    return strA;
                }
            }
            if (iD == 0) {
                return "";
            }
            if (iD <= 0) {
                throw a0.f();
            }
            throw a0.h();
        }

        @Override // b7.j
        public final int x() throws IOException {
            if (e()) {
                this.f3437j = 0;
                return 0;
            }
            int iD = D();
            this.f3437j = iD;
            if ((iD >>> 3) != 0) {
                return iD;
            }
            throw a0.b();
        }

        @Override // b7.j
        public final int y() throws IOException {
            return D();
        }

        @Override // b7.j
        public final long z() throws IOException {
            return E();
        }
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long c(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static j f(byte[] bArr, int i10, int i11, boolean z10) {
        a aVar = new a(bArr, i10, i11, z10);
        try {
            aVar.h(i11);
            return aVar;
        } catch (a0 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract boolean A(int i10) throws IOException;

    public abstract void a(int i10) throws a0;

    public abstract int d();

    public abstract boolean e() throws IOException;

    public abstract void g(int i10);

    public abstract int h(int i10) throws a0;

    public abstract boolean i() throws IOException;

    public abstract i j() throws IOException;

    public abstract double k() throws IOException;

    public abstract int l() throws IOException;

    public abstract int m() throws IOException;

    public abstract long n() throws IOException;

    public abstract float o() throws IOException;

    public abstract int p() throws IOException;

    public abstract long q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract int t() throws IOException;

    public abstract long u() throws IOException;

    public abstract String v() throws IOException;

    public abstract String w() throws IOException;

    public abstract int x() throws IOException;

    public abstract int y() throws IOException;

    public abstract long z() throws IOException;
}
