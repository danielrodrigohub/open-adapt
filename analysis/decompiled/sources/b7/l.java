package b7;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: CodedOutputStream.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f3445b = Logger.getLogger(l.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f3446c = p1.f3476f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f3447a;

    /* JADX INFO: compiled from: CodedOutputStream.java */
    public static class b extends l {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f3448d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3449e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3450f;

        public b(byte[] bArr, int i10) {
            super(null);
            int i11 = i10 + 0;
            if ((i10 | 0 | (bArr.length - i11)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i10)));
            }
            this.f3448d = bArr;
            this.f3450f = 0;
            this.f3449e = i11;
        }

        @Override // b7.l
        public final void C(byte b10) throws IOException {
            try {
                byte[] bArr = this.f3448d;
                int i10 = this.f3450f;
                this.f3450f = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), 1), e10);
            }
        }

        @Override // b7.l
        public final void D(int i10, boolean z10) throws IOException {
            P(i10, 0);
            C(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // b7.l
        public final void E(int i10, i iVar) throws IOException {
            P(i10, 2);
            V(iVar);
        }

        @Override // b7.l
        public final void F(int i10, int i11) throws IOException {
            P(i10, 5);
            G(i11);
        }

        @Override // b7.l
        public final void G(int i10) throws IOException {
            try {
                byte[] bArr = this.f3448d;
                int i11 = this.f3450f;
                int i12 = i11 + 1;
                this.f3450f = i12;
                bArr[i11] = (byte) (i10 & 255);
                int i13 = i12 + 1;
                this.f3450f = i13;
                bArr[i12] = (byte) ((i10 >> 8) & 255);
                int i14 = i13 + 1;
                this.f3450f = i14;
                bArr[i13] = (byte) ((i10 >> 16) & 255);
                this.f3450f = i14 + 1;
                bArr[i14] = (byte) ((i10 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), 1), e10);
            }
        }

        @Override // b7.l
        public final void H(int i10, long j10) throws IOException {
            P(i10, 1);
            I(j10);
        }

        @Override // b7.l
        public final void I(long j10) throws IOException {
            try {
                byte[] bArr = this.f3448d;
                int i10 = this.f3450f;
                int i11 = i10 + 1;
                this.f3450f = i11;
                bArr[i10] = (byte) (((int) j10) & 255);
                int i12 = i11 + 1;
                this.f3450f = i12;
                bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
                int i13 = i12 + 1;
                this.f3450f = i13;
                bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
                int i14 = i13 + 1;
                this.f3450f = i14;
                bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
                int i15 = i14 + 1;
                this.f3450f = i15;
                bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
                int i16 = i15 + 1;
                this.f3450f = i16;
                bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
                int i17 = i16 + 1;
                this.f3450f = i17;
                bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
                this.f3450f = i17 + 1;
                bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), 1), e10);
            }
        }

        @Override // b7.l
        public final void J(int i10, int i11) throws IOException {
            P(i10, 0);
            K(i11);
        }

        @Override // b7.l
        public final void K(int i10) throws IOException {
            if (i10 >= 0) {
                R(i10);
            } else {
                T(i10);
            }
        }

        @Override // b7.l
        public final void L(int i10, q0 q0Var, e1 e1Var) throws IOException {
            P(i10, 2);
            R(((b7.a) q0Var).i(e1Var));
            e1Var.h(q0Var, this.f3447a);
        }

        @Override // b7.l
        public final void M(int i10, q0 q0Var) throws IOException {
            P(1, 3);
            Q(2, i10);
            P(3, 2);
            R(q0Var.a());
            q0Var.g(this);
            P(1, 4);
        }

        @Override // b7.l
        public final void N(int i10, i iVar) throws IOException {
            P(1, 3);
            Q(2, i10);
            E(3, iVar);
            P(1, 4);
        }

        @Override // b7.l
        public final void O(int i10, String str) throws IOException {
            P(i10, 2);
            W(str);
        }

        @Override // b7.l
        public final void P(int i10, int i11) throws IOException {
            R((i10 << 3) | i11);
        }

        @Override // b7.l
        public final void Q(int i10, int i11) throws IOException {
            P(i10, 0);
            R(i11);
        }

        @Override // b7.l
        public final void R(int i10) throws IOException {
            if (l.f3446c && !d.a()) {
                int i11 = this.f3449e;
                int i12 = this.f3450f;
                if (i11 - i12 >= 5) {
                    if ((i10 & (-128)) == 0) {
                        byte[] bArr = this.f3448d;
                        this.f3450f = i12 + 1;
                        p1.q(bArr, i12, (byte) i10);
                        return;
                    }
                    byte[] bArr2 = this.f3448d;
                    this.f3450f = i12 + 1;
                    p1.q(bArr2, i12, (byte) (i10 | 128));
                    int i13 = i10 >>> 7;
                    if ((i13 & (-128)) == 0) {
                        byte[] bArr3 = this.f3448d;
                        int i14 = this.f3450f;
                        this.f3450f = i14 + 1;
                        p1.q(bArr3, i14, (byte) i13);
                        return;
                    }
                    byte[] bArr4 = this.f3448d;
                    int i15 = this.f3450f;
                    this.f3450f = i15 + 1;
                    p1.q(bArr4, i15, (byte) (i13 | 128));
                    int i16 = i13 >>> 7;
                    if ((i16 & (-128)) == 0) {
                        byte[] bArr5 = this.f3448d;
                        int i17 = this.f3450f;
                        this.f3450f = i17 + 1;
                        p1.q(bArr5, i17, (byte) i16);
                        return;
                    }
                    byte[] bArr6 = this.f3448d;
                    int i18 = this.f3450f;
                    this.f3450f = i18 + 1;
                    p1.q(bArr6, i18, (byte) (i16 | 128));
                    int i19 = i16 >>> 7;
                    if ((i19 & (-128)) == 0) {
                        byte[] bArr7 = this.f3448d;
                        int i20 = this.f3450f;
                        this.f3450f = i20 + 1;
                        p1.q(bArr7, i20, (byte) i19);
                        return;
                    }
                    byte[] bArr8 = this.f3448d;
                    int i21 = this.f3450f;
                    this.f3450f = i21 + 1;
                    p1.q(bArr8, i21, (byte) (i19 | 128));
                    byte[] bArr9 = this.f3448d;
                    int i22 = this.f3450f;
                    this.f3450f = i22 + 1;
                    p1.q(bArr9, i22, (byte) (i19 >>> 7));
                    return;
                }
            }
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f3448d;
                    int i23 = this.f3450f;
                    this.f3450f = i23 + 1;
                    bArr10[i23] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), 1), e10);
                }
            }
            byte[] bArr11 = this.f3448d;
            int i24 = this.f3450f;
            this.f3450f = i24 + 1;
            bArr11[i24] = (byte) i10;
        }

        @Override // b7.l
        public final void S(int i10, long j10) throws IOException {
            P(i10, 0);
            T(j10);
        }

        @Override // b7.l
        public final void T(long j10) throws IOException {
            if (l.f3446c && this.f3449e - this.f3450f >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f3448d;
                    int i10 = this.f3450f;
                    this.f3450f = i10 + 1;
                    p1.q(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f3448d;
                int i11 = this.f3450f;
                this.f3450f = i11 + 1;
                p1.q(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f3448d;
                    int i12 = this.f3450f;
                    this.f3450f = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), 1), e10);
                }
            }
            byte[] bArr4 = this.f3448d;
            int i13 = this.f3450f;
            this.f3450f = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        public final void U(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.f3448d, this.f3450f, i11);
                this.f3450f += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3450f), Integer.valueOf(this.f3449e), Integer.valueOf(i11)), e10);
            }
        }

        public final void V(i iVar) throws IOException {
            R(iVar.size());
            iVar.u(this);
        }

        public final void W(String str) throws IOException {
            int i10 = this.f3450f;
            try {
                int iY = l.y(str.length() * 3);
                int iY2 = l.y(str.length());
                if (iY2 == iY) {
                    int i11 = i10 + iY2;
                    this.f3450f = i11;
                    int iB = q1.f3480a.b(str, this.f3448d, i11, this.f3449e - i11);
                    this.f3450f = i10;
                    R((iB - i10) - iY2);
                    this.f3450f = iB;
                } else {
                    R(q1.d(str));
                    byte[] bArr = this.f3448d;
                    int i12 = this.f3450f;
                    this.f3450f = q1.f3480a.b(str, bArr, i12, this.f3449e - i12);
                }
            } catch (q1.d e10) {
                this.f3450f = i10;
                l.f3445b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e10);
                byte[] bytes = str.getBytes(z.f3564a);
                try {
                    R(bytes.length);
                    a(bytes, 0, bytes.length);
                } catch (c e11) {
                    throw e11;
                } catch (IndexOutOfBoundsException e12) {
                    throw new c(e12);
                }
            } catch (IndexOutOfBoundsException e13) {
                throw new c(e13);
            }
        }

        @Override // b7.g
        public final void a(byte[] bArr, int i10, int i11) throws IOException {
            U(bArr, i10, i11);
        }
    }

    public l() {
    }

    public static int A(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            i10 = 6;
            j10 >>>= 28;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static long B(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static int b(int i10) {
        return w(i10) + 1;
    }

    public static int c(int i10, i iVar) {
        int iW = w(i10);
        int size = iVar.size();
        return y(size) + size + iW;
    }

    public static int d(i iVar) {
        int size = iVar.size();
        return y(size) + size;
    }

    public static int e(int i10) {
        return w(i10) + 8;
    }

    public static int f(int i10, int i11) {
        return l(i11) + w(i10);
    }

    public static int g(int i10) {
        return w(i10) + 4;
    }

    public static int h(int i10) {
        return w(i10) + 8;
    }

    public static int i(int i10) {
        return w(i10) + 4;
    }

    @Deprecated
    public static int j(int i10, q0 q0Var, e1 e1Var) {
        return ((b7.a) q0Var).i(e1Var) + (w(i10) * 2);
    }

    public static int k(int i10, int i11) {
        return l(i11) + w(i10);
    }

    public static int l(int i10) {
        if (i10 >= 0) {
            return y(i10);
        }
        return 10;
    }

    public static int m(int i10, long j10) {
        return A(j10) + w(i10);
    }

    public static int n(d0 d0Var) {
        int iA;
        if (d0Var.f3382b != null) {
            iA = d0Var.f3382b.size();
        } else {
            iA = d0Var.f3381a != null ? d0Var.f3381a.a() : 0;
        }
        return y(iA) + iA;
    }

    public static int o(int i10) {
        return w(i10) + 4;
    }

    public static int p(int i10) {
        return w(i10) + 8;
    }

    public static int q(int i10, int i11) {
        return r(i11) + w(i10);
    }

    public static int r(int i10) {
        return y((i10 >> 31) ^ (i10 << 1));
    }

    public static int s(int i10, long j10) {
        return t(j10) + w(i10);
    }

    public static int t(long j10) {
        return A(B(j10));
    }

    public static int u(int i10, String str) {
        return v(str) + w(i10);
    }

    public static int v(String str) {
        int length;
        try {
            length = q1.d(str);
        } catch (q1.d unused) {
            length = str.getBytes(z.f3564a).length;
        }
        return y(length) + length;
    }

    public static int w(int i10) {
        return y((i10 << 3) | 0);
    }

    public static int x(int i10, int i11) {
        return y(i11) + w(i10);
    }

    public static int y(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int z(int i10, long j10) {
        return A(j10) + w(i10);
    }

    public abstract void C(byte b10) throws IOException;

    public abstract void D(int i10, boolean z10) throws IOException;

    public abstract void E(int i10, i iVar) throws IOException;

    public abstract void F(int i10, int i11) throws IOException;

    public abstract void G(int i10) throws IOException;

    public abstract void H(int i10, long j10) throws IOException;

    public abstract void I(long j10) throws IOException;

    public abstract void J(int i10, int i11) throws IOException;

    public abstract void K(int i10) throws IOException;

    public abstract void L(int i10, q0 q0Var, e1 e1Var) throws IOException;

    public abstract void M(int i10, q0 q0Var) throws IOException;

    public abstract void N(int i10, i iVar) throws IOException;

    public abstract void O(int i10, String str) throws IOException;

    public abstract void P(int i10, int i11) throws IOException;

    public abstract void Q(int i10, int i11) throws IOException;

    public abstract void R(int i10) throws IOException;

    public abstract void S(int i10, long j10) throws IOException;

    public abstract void T(long j10) throws IOException;

    public l(a aVar) {
    }

    /* JADX INFO: compiled from: CodedOutputStream.java */
    public static class c extends IOException {
        public c(String str, Throwable th) {
            super(androidx.recyclerview.widget.d.c("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
        }

        public c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }
}
