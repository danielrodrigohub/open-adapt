package c4;

import java.util.Arrays;

/* JADX INFO: compiled from: NalUnitTargetBuffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f4176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4177e;

    public r(int i10) {
        this.f4173a = i10;
        byte[] bArr = new byte[131];
        this.f4176d = bArr;
        bArr[2] = 1;
    }

    public final void a(byte[] bArr, int i10, int i11) {
        if (this.f4174b) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f4176d;
            int length = bArr2.length;
            int i13 = this.f4177e;
            if (length < i13 + i12) {
                this.f4176d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f4176d, this.f4177e, i12);
            this.f4177e += i12;
        }
    }

    public final boolean b(int i10) {
        if (!this.f4174b) {
            return false;
        }
        this.f4177e -= i10;
        this.f4174b = false;
        this.f4175c = true;
        return true;
    }

    public final void c() {
        this.f4174b = false;
        this.f4175c = false;
    }

    public final void d(int i10) {
        m5.a.e(!this.f4174b);
        boolean z10 = i10 == this.f4173a;
        this.f4174b = z10;
        if (z10) {
            this.f4177e = 3;
            this.f4175c = false;
        }
    }
}
