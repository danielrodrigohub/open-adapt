package m5;

import androidx.fragment.app.r0;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: compiled from: ParsableByteArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f10475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10477c;

    public w() {
        this.f10475a = g0.f10389f;
    }

    public final void A(int i10) {
        byte[] bArr = this.f10475a;
        if (bArr.length < i10) {
            bArr = new byte[i10];
        }
        B(bArr, i10);
    }

    public final void B(byte[] bArr, int i10) {
        this.f10475a = bArr;
        this.f10477c = i10;
        this.f10476b = 0;
    }

    public final void C(int i10) {
        a.a(i10 >= 0 && i10 <= this.f10475a.length);
        this.f10477c = i10;
    }

    public final void D(int i10) {
        a.a(i10 >= 0 && i10 <= this.f10477c);
        this.f10476b = i10;
    }

    public final void E(int i10) {
        D(this.f10476b + i10);
    }

    public final void a(int i10) {
        byte[] bArr = this.f10475a;
        if (i10 > bArr.length) {
            this.f10475a = Arrays.copyOf(bArr, i10);
        }
    }

    public final int b() {
        return this.f10475a[this.f10476b] & 255;
    }

    public final void c(v vVar, int i10) {
        d(vVar.f10471a, 0, i10);
        vVar.k(0);
    }

    public final void d(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f10475a, this.f10476b, bArr, i10, i11);
        this.f10476b += i11;
    }

    public final int e() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i11 + 1;
        this.f10476b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 16);
        int i15 = i13 + 1;
        this.f10476b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        this.f10476b = i15 + 1;
        return (bArr[i15] & 255) | i16;
    }

    public final String f() {
        int i10 = this.f10477c;
        int i11 = this.f10476b;
        if (i10 - i11 == 0) {
            return null;
        }
        while (i11 < this.f10477c && !g0.J(this.f10475a[i11])) {
            i11++;
        }
        int i12 = this.f10476b;
        if (i11 - i12 >= 3) {
            byte[] bArr = this.f10475a;
            if (bArr[i12] == -17 && bArr[i12 + 1] == -69 && bArr[i12 + 2] == -65) {
                this.f10476b = i12 + 3;
            }
        }
        byte[] bArr2 = this.f10475a;
        int i13 = this.f10476b;
        String strO = g0.o(bArr2, i13, i11 - i13);
        this.f10476b = i11;
        int i14 = this.f10477c;
        if (i11 == i14) {
            return strO;
        }
        byte[] bArr3 = this.f10475a;
        if (bArr3[i11] == 13) {
            int i15 = i11 + 1;
            this.f10476b = i15;
            if (i15 == i14) {
                return strO;
            }
        }
        int i16 = this.f10476b;
        if (bArr3[i16] == 10) {
            this.f10476b = i16 + 1;
        }
        return strO;
    }

    public final int g() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f10476b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 8);
        int i15 = i13 + 1;
        this.f10476b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 16);
        this.f10476b = i15 + 1;
        return ((bArr[i15] & 255) << 24) | i16;
    }

    public final long h() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        long j10 = ((long) bArr[i10]) & 255;
        int i12 = i11 + 1;
        this.f10476b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 8);
        int i13 = i12 + 1;
        this.f10476b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        int i14 = i13 + 1;
        this.f10476b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 24);
        int i15 = i14 + 1;
        this.f10476b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 32);
        int i16 = i15 + 1;
        this.f10476b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 40);
        int i17 = i16 + 1;
        this.f10476b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 48);
        this.f10476b = i17 + 1;
        return j16 | ((((long) bArr[i17]) & 255) << 56);
    }

    public final short i() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = bArr[i10] & 255;
        this.f10476b = i11 + 1;
        return (short) (((bArr[i11] & 255) << 8) | i12);
    }

    public final long j() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        long j10 = ((long) bArr[i10]) & 255;
        int i12 = i11 + 1;
        this.f10476b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 8);
        int i13 = i12 + 1;
        this.f10476b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        this.f10476b = i13 + 1;
        return j12 | ((((long) bArr[i13]) & 255) << 24);
    }

    public final int k() {
        int iG = g();
        if (iG >= 0) {
            return iG;
        }
        throw new IllegalStateException(androidx.appcompat.widget.e0.d("Top bit not zero: ", iG));
    }

    public final int l() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = bArr[i10] & 255;
        this.f10476b = i11 + 1;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public final long m() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        long j10 = (((long) bArr[i10]) & 255) << 56;
        int i12 = i11 + 1;
        this.f10476b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 48);
        int i13 = i12 + 1;
        this.f10476b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 40);
        int i14 = i13 + 1;
        this.f10476b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 32);
        int i15 = i14 + 1;
        this.f10476b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 24);
        int i16 = i15 + 1;
        this.f10476b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 16);
        int i17 = i16 + 1;
        this.f10476b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 8);
        this.f10476b = i17 + 1;
        return j16 | (((long) bArr[i17]) & 255);
    }

    public final String n() {
        int i10 = this.f10477c;
        int i11 = this.f10476b;
        if (i10 - i11 == 0) {
            return null;
        }
        while (i11 < this.f10477c && this.f10475a[i11] != 0) {
            i11++;
        }
        byte[] bArr = this.f10475a;
        int i12 = this.f10476b;
        String strO = g0.o(bArr, i12, i11 - i12);
        this.f10476b = i11;
        if (i11 >= this.f10477c) {
            return strO;
        }
        this.f10476b = i11 + 1;
        return strO;
    }

    public final String o(int i10) {
        if (i10 == 0) {
            return "";
        }
        int i11 = this.f10476b;
        int i12 = (i11 + i10) - 1;
        String strO = g0.o(this.f10475a, i11, (i12 >= this.f10477c || this.f10475a[i12] != 0) ? i10 : i10 - 1);
        this.f10476b += i10;
        return strO;
    }

    public final short p() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f10476b = i11 + 1;
        return (short) ((bArr[i11] & 255) | i12);
    }

    public final String q(int i10) {
        return r(i10, t6.c.f15538c);
    }

    public final String r(int i10, Charset charset) {
        String str = new String(this.f10475a, this.f10476b, i10, charset);
        this.f10476b += i10;
        return str;
    }

    public final int s() {
        return (t() << 21) | (t() << 14) | (t() << 7) | t();
    }

    public final int t() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        this.f10476b = i10 + 1;
        return bArr[i10] & 255;
    }

    public final long u() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        long j10 = (((long) bArr[i10]) & 255) << 24;
        int i12 = i11 + 1;
        this.f10476b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 16);
        int i13 = i12 + 1;
        this.f10476b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        this.f10476b = i13 + 1;
        return j12 | (((long) bArr[i13]) & 255);
    }

    public final int v() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = (bArr[i10] & 255) << 16;
        int i13 = i11 + 1;
        this.f10476b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 8);
        this.f10476b = i13 + 1;
        return (bArr[i13] & 255) | i14;
    }

    public final int w() {
        int iE = e();
        if (iE >= 0) {
            return iE;
        }
        throw new IllegalStateException(androidx.appcompat.widget.e0.d("Top bit not zero: ", iE));
    }

    public final long x() {
        long jM = m();
        if (jM >= 0) {
            return jM;
        }
        throw new IllegalStateException(r0.f("Top bit not zero: ", jM));
    }

    public final int y() {
        byte[] bArr = this.f10475a;
        int i10 = this.f10476b;
        int i11 = i10 + 1;
        this.f10476b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f10476b = i11 + 1;
        return (bArr[i11] & 255) | i12;
    }

    public final long z() {
        int i10;
        int i11;
        long j10 = this.f10475a[this.f10476b];
        int i12 = 7;
        while (true) {
            if (i12 >= 0) {
                int i13 = 1 << i12;
                if ((((long) i13) & j10) == 0) {
                    if (i12 < 6) {
                        j10 &= (long) (i13 - 1);
                        i11 = 7 - i12;
                        break;
                    }
                    if (i12 == 7) {
                        i11 = 1;
                        break;
                    }
                } else {
                    i12--;
                }
            }
            i11 = 0;
            break;
        }
        if (i11 == 0) {
            throw new NumberFormatException(r0.f("Invalid UTF-8 sequence first byte: ", j10));
        }
        for (i10 = 1; i10 < i11; i10++) {
            byte b10 = this.f10475a[this.f10476b + i10];
            if ((b10 & 192) != 128) {
                throw new NumberFormatException(r0.f("Invalid UTF-8 sequence continuation byte: ", j10));
            }
            j10 = (j10 << 6) | ((long) (b10 & 63));
        }
        this.f10476b += i11;
        return j10;
    }

    public w(int i10) {
        this.f10475a = new byte[i10];
        this.f10477c = i10;
    }

    public w(byte[] bArr) {
        this.f10475a = bArr;
        this.f10477c = bArr.length;
    }

    public w(byte[] bArr, int i10) {
        this.f10475a = bArr;
        this.f10477c = i10;
    }
}
