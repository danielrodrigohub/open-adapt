package m5;

/* JADX INFO: compiled from: ParsableBitArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f10471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10474d;

    public v() {
        this.f10471a = g0.f10389f;
    }

    public final void a() {
        int i10;
        int i11 = this.f10472b;
        a.e(i11 >= 0 && (i11 < (i10 = this.f10474d) || (i11 == i10 && this.f10473c == 0)));
    }

    public final int b() {
        return ((this.f10474d - this.f10472b) * 8) - this.f10473c;
    }

    public final void c() {
        if (this.f10473c == 0) {
            return;
        }
        this.f10473c = 0;
        this.f10472b++;
        a();
    }

    public final int d() {
        a.e(this.f10473c == 0);
        return this.f10472b;
    }

    public final int e() {
        return (this.f10472b * 8) + this.f10473c;
    }

    public final boolean f() {
        boolean z10 = (this.f10471a[this.f10472b] & (128 >> this.f10473c)) != 0;
        l();
        return z10;
    }

    public final int g(int i10) {
        int i11;
        if (i10 == 0) {
            return 0;
        }
        this.f10473c += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f10473c;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.f10473c = i13;
            byte[] bArr = this.f10471a;
            int i14 = this.f10472b;
            this.f10472b = i14 + 1;
            i12 |= (bArr[i14] & 255) << i13;
        }
        byte[] bArr2 = this.f10471a;
        int i15 = this.f10472b;
        int i16 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i15] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.f10473c = 0;
            this.f10472b = i15 + 1;
        }
        a();
        return i16;
    }

    public final void h(byte[] bArr, int i10) {
        int i11 = (i10 >> 3) + 0;
        for (int i12 = 0; i12 < i11; i12++) {
            byte[] bArr2 = this.f10471a;
            int i13 = this.f10472b;
            int i14 = i13 + 1;
            this.f10472b = i14;
            byte b10 = bArr2[i13];
            int i15 = this.f10473c;
            bArr[i12] = (byte) (b10 << i15);
            bArr[i12] = (byte) (((255 & bArr2[i14]) >> (8 - i15)) | bArr[i12]);
        }
        int i16 = i10 & 7;
        if (i16 == 0) {
            return;
        }
        bArr[i11] = (byte) (bArr[i11] & (255 >> i16));
        int i17 = this.f10473c;
        if (i17 + i16 > 8) {
            int i18 = bArr[i11];
            byte[] bArr3 = this.f10471a;
            int i19 = this.f10472b;
            this.f10472b = i19 + 1;
            bArr[i11] = (byte) (i18 | ((bArr3[i19] & 255) << i17));
            this.f10473c = i17 - 8;
        }
        int i20 = this.f10473c + i16;
        this.f10473c = i20;
        byte[] bArr4 = this.f10471a;
        int i21 = this.f10472b;
        bArr[i11] = (byte) (((byte) (((255 & bArr4[i21]) >> (8 - i20)) << (8 - i16))) | bArr[i11]);
        if (i20 == 8) {
            this.f10473c = 0;
            this.f10472b = i21 + 1;
        }
        a();
    }

    public final void i(byte[] bArr, int i10) {
        a.e(this.f10473c == 0);
        System.arraycopy(this.f10471a, this.f10472b, bArr, 0, i10);
        this.f10472b += i10;
        a();
    }

    public final void j(byte[] bArr, int i10) {
        this.f10471a = bArr;
        this.f10472b = 0;
        this.f10473c = 0;
        this.f10474d = i10;
    }

    public final void k(int i10) {
        int i11 = i10 / 8;
        this.f10472b = i11;
        this.f10473c = i10 - (i11 * 8);
        a();
    }

    public final void l() {
        int i10 = this.f10473c + 1;
        this.f10473c = i10;
        if (i10 == 8) {
            this.f10473c = 0;
            this.f10472b++;
        }
        a();
    }

    public final void m(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f10472b + i11;
        this.f10472b = i12;
        int i13 = (i10 - (i11 * 8)) + this.f10473c;
        this.f10473c = i13;
        if (i13 > 7) {
            this.f10472b = i12 + 1;
            this.f10473c = i13 - 8;
        }
        a();
    }

    public final void n(int i10) {
        a.e(this.f10473c == 0);
        this.f10472b += i10;
        a();
    }

    public v(byte[] bArr, int i10) {
        this.f10471a = bArr;
        this.f10474d = i10;
    }
}
