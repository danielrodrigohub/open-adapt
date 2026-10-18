package m7;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: CodedOutputStream.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f10688b = Logger.getLogger(k.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f10689c = m1.f10706e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f10690a;

    /* JADX INFO: compiled from: CodedOutputStream.java */
    public static class b extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f10691d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10693f;

        public b(byte[] bArr, int i10) {
            super(null);
            int i11 = i10 + 0;
            if ((i10 | 0 | (bArr.length - i11)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i10)));
            }
            this.f10691d = bArr;
            this.f10693f = 0;
            this.f10692e = i11;
        }

        @Override // m7.k
        public final void C(byte b10) throws IOException {
            try {
                byte[] bArr = this.f10691d;
                int i10 = this.f10693f;
                this.f10693f = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), 1), e10);
            }
        }

        @Override // m7.k
        public final void D(int i10, boolean z10) throws IOException {
            P(i10, 0);
            C(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // m7.k
        public final void E(int i10, i iVar) throws IOException {
            P(i10, 2);
            V(iVar);
        }

        @Override // m7.k
        public final void F(int i10, int i11) throws IOException {
            P(i10, 5);
            G(i11);
        }

        @Override // m7.k
        public final void G(int i10) throws IOException {
            try {
                byte[] bArr = this.f10691d;
                int i11 = this.f10693f;
                int i12 = i11 + 1;
                this.f10693f = i12;
                bArr[i11] = (byte) (i10 & 255);
                int i13 = i12 + 1;
                this.f10693f = i13;
                bArr[i12] = (byte) ((i10 >> 8) & 255);
                int i14 = i13 + 1;
                this.f10693f = i14;
                bArr[i13] = (byte) ((i10 >> 16) & 255);
                this.f10693f = i14 + 1;
                bArr[i14] = (byte) ((i10 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), 1), e10);
            }
        }

        @Override // m7.k
        public final void H(int i10, long j10) throws IOException {
            P(i10, 1);
            I(j10);
        }

        @Override // m7.k
        public final void I(long j10) throws IOException {
            try {
                byte[] bArr = this.f10691d;
                int i10 = this.f10693f;
                int i11 = i10 + 1;
                this.f10693f = i11;
                bArr[i10] = (byte) (((int) j10) & 255);
                int i12 = i11 + 1;
                this.f10693f = i12;
                bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
                int i13 = i12 + 1;
                this.f10693f = i13;
                bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
                int i14 = i13 + 1;
                this.f10693f = i14;
                bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
                int i15 = i14 + 1;
                this.f10693f = i15;
                bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
                int i16 = i15 + 1;
                this.f10693f = i16;
                bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
                int i17 = i16 + 1;
                this.f10693f = i17;
                bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
                this.f10693f = i17 + 1;
                bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), 1), e10);
            }
        }

        @Override // m7.k
        public final void J(int i10, int i11) throws IOException {
            P(i10, 0);
            K(i11);
        }

        @Override // m7.k
        public final void K(int i10) throws IOException {
            if (i10 >= 0) {
                R(i10);
            } else {
                T(i10);
            }
        }

        @Override // m7.k
        public final void L(int i10, p0 p0Var, c1 c1Var) throws IOException {
            P(i10, 2);
            R(((m7.a) p0Var).j(c1Var));
            c1Var.i(p0Var, this.f10690a);
        }

        @Override // m7.k
        public final void M(int i10, p0 p0Var) throws IOException {
            P(1, 3);
            Q(2, i10);
            P(3, 2);
            R(p0Var.a());
            p0Var.g(this);
            P(1, 4);
        }

        @Override // m7.k
        public final void N(int i10, i iVar) throws IOException {
            P(1, 3);
            Q(2, i10);
            E(3, iVar);
            P(1, 4);
        }

        @Override // m7.k
        public final void O(int i10, String str) throws IOException {
            P(i10, 2);
            W(str);
        }

        @Override // m7.k
        public final void P(int i10, int i11) throws IOException {
            R((i10 << 3) | i11);
        }

        @Override // m7.k
        public final void Q(int i10, int i11) throws IOException {
            P(i10, 0);
            R(i11);
        }

        @Override // m7.k
        public final void R(int i10) throws IOException {
            if (k.f10689c && !d.a()) {
                int i11 = this.f10692e;
                int i12 = this.f10693f;
                if (i11 - i12 >= 5) {
                    if ((i10 & (-128)) == 0) {
                        byte[] bArr = this.f10691d;
                        this.f10693f = i12 + 1;
                        m1.r(bArr, i12, (byte) i10);
                        return;
                    }
                    byte[] bArr2 = this.f10691d;
                    this.f10693f = i12 + 1;
                    m1.r(bArr2, i12, (byte) (i10 | 128));
                    int i13 = i10 >>> 7;
                    if ((i13 & (-128)) == 0) {
                        byte[] bArr3 = this.f10691d;
                        int i14 = this.f10693f;
                        this.f10693f = i14 + 1;
                        m1.r(bArr3, i14, (byte) i13);
                        return;
                    }
                    byte[] bArr4 = this.f10691d;
                    int i15 = this.f10693f;
                    this.f10693f = i15 + 1;
                    m1.r(bArr4, i15, (byte) (i13 | 128));
                    int i16 = i13 >>> 7;
                    if ((i16 & (-128)) == 0) {
                        byte[] bArr5 = this.f10691d;
                        int i17 = this.f10693f;
                        this.f10693f = i17 + 1;
                        m1.r(bArr5, i17, (byte) i16);
                        return;
                    }
                    byte[] bArr6 = this.f10691d;
                    int i18 = this.f10693f;
                    this.f10693f = i18 + 1;
                    m1.r(bArr6, i18, (byte) (i16 | 128));
                    int i19 = i16 >>> 7;
                    if ((i19 & (-128)) == 0) {
                        byte[] bArr7 = this.f10691d;
                        int i20 = this.f10693f;
                        this.f10693f = i20 + 1;
                        m1.r(bArr7, i20, (byte) i19);
                        return;
                    }
                    byte[] bArr8 = this.f10691d;
                    int i21 = this.f10693f;
                    this.f10693f = i21 + 1;
                    m1.r(bArr8, i21, (byte) (i19 | 128));
                    byte[] bArr9 = this.f10691d;
                    int i22 = this.f10693f;
                    this.f10693f = i22 + 1;
                    m1.r(bArr9, i22, (byte) (i19 >>> 7));
                    return;
                }
            }
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f10691d;
                    int i23 = this.f10693f;
                    this.f10693f = i23 + 1;
                    bArr10[i23] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), 1), e10);
                }
            }
            byte[] bArr11 = this.f10691d;
            int i24 = this.f10693f;
            this.f10693f = i24 + 1;
            bArr11[i24] = (byte) i10;
        }

        @Override // m7.k
        public final void S(int i10, long j10) throws IOException {
            P(i10, 0);
            T(j10);
        }

        @Override // m7.k
        public final void T(long j10) throws IOException {
            if (k.f10689c && this.f10692e - this.f10693f >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f10691d;
                    int i10 = this.f10693f;
                    this.f10693f = i10 + 1;
                    m1.r(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f10691d;
                int i11 = this.f10693f;
                this.f10693f = i11 + 1;
                m1.r(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f10691d;
                    int i12 = this.f10693f;
                    this.f10693f = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), 1), e10);
                }
            }
            byte[] bArr4 = this.f10691d;
            int i13 = this.f10693f;
            this.f10693f = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        public final void U(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.f10691d, this.f10693f, i11);
                this.f10693f += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10693f), Integer.valueOf(this.f10692e), Integer.valueOf(i11)), e10);
            }
        }

        public final void V(i iVar) throws IOException {
            R(iVar.size());
            iVar.t(this);
        }

        public final void W(String str) throws IOException {
            int i10 = this.f10693f;
            try {
                int iY = k.y(str.length() * 3);
                int iY2 = k.y(str.length());
                if (iY2 == iY) {
                    int i11 = i10 + iY2;
                    this.f10693f = i11;
                    int iB = n1.f10711a.b(str, this.f10691d, i11, this.f10692e - i11);
                    this.f10693f = i10;
                    R((iB - i10) - iY2);
                    this.f10693f = iB;
                } else {
                    R(n1.d(str));
                    byte[] bArr = this.f10691d;
                    int i12 = this.f10693f;
                    this.f10693f = n1.f10711a.b(str, bArr, i12, this.f10692e - i12);
                }
            } catch (IndexOutOfBoundsException e10) {
                throw new c(e10);
            } catch (n1.d e11) {
                this.f10693f = i10;
                k.f10688b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e11);
                byte[] bytes = str.getBytes(y.f10802b);
                try {
                    R(bytes.length);
                    a(bytes, 0, bytes.length);
                } catch (IndexOutOfBoundsException e12) {
                    throw new c(e12);
                } catch (c e13) {
                    throw e13;
                }
            }
        }

        @Override // m7.g
        public final void a(byte[] bArr, int i10, int i11) throws IOException {
            U(bArr, i10, i11);
        }
    }

    public k() {
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
    public static int j(int i10, p0 p0Var, c1 c1Var) {
        return ((m7.a) p0Var).j(c1Var) + (w(i10) * 2);
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

    public static int n(c0 c0Var) {
        int iA;
        if (c0Var.f10624b != null) {
            iA = c0Var.f10624b.size();
        } else {
            iA = c0Var.f10623a != null ? c0Var.f10623a.a() : 0;
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
            length = n1.d(str);
        } catch (n1.d unused) {
            length = str.getBytes(y.f10802b).length;
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

    public abstract void L(int i10, p0 p0Var, c1 c1Var) throws IOException;

    public abstract void M(int i10, p0 p0Var) throws IOException;

    public abstract void N(int i10, i iVar) throws IOException;

    public abstract void O(int i10, String str) throws IOException;

    public abstract void P(int i10, int i11) throws IOException;

    public abstract void Q(int i10, int i11) throws IOException;

    public abstract void R(int i10) throws IOException;

    public abstract void S(int i10, long j10) throws IOException;

    public abstract void T(long j10) throws IOException;

    public k(a aVar) {
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
