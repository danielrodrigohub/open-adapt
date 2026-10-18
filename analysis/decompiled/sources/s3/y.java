package s3;

/* JADX INFO: compiled from: VorbisBitArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15098d;

    public y(byte[] bArr) {
        this.f15095a = bArr;
        this.f15096b = bArr.length;
    }

    public final boolean a() {
        boolean z10 = (((this.f15095a[this.f15097c] & 255) >> this.f15098d) & 1) == 1;
        c(1);
        return z10;
    }

    public final int b(int i10) {
        int i11 = this.f15097c;
        int iMin = Math.min(i10, 8 - this.f15098d);
        int i12 = i11 + 1;
        int i13 = ((this.f15095a[i11] & 255) >> this.f15098d) & (255 >> (8 - iMin));
        while (iMin < i10) {
            i13 |= (this.f15095a[i12] & 255) << iMin;
            iMin += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        c(i10);
        return i14;
    }

    public final void c(int i10) {
        int i11;
        int i12 = i10 / 8;
        int i13 = this.f15097c + i12;
        this.f15097c = i13;
        int i14 = (i10 - (i12 * 8)) + this.f15098d;
        this.f15098d = i14;
        boolean z10 = true;
        if (i14 > 7) {
            this.f15097c = i13 + 1;
            this.f15098d = i14 - 8;
        }
        int i15 = this.f15097c;
        if (i15 < 0 || (i15 >= (i11 = this.f15096b) && (i15 != i11 || this.f15098d != 0))) {
            z10 = false;
        }
        m5.a.e(z10);
    }
}
