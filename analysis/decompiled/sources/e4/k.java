package e4;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: IntArrayQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6404a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6405b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6406c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f6407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6408e;

    public k() {
        int[] iArr = new int[16];
        this.f6407d = iArr;
        this.f6408e = iArr.length - 1;
    }

    public final void a(int i10) {
        int i11 = this.f6406c;
        int[] iArr = this.f6407d;
        if (i11 == iArr.length) {
            int length = iArr.length << 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i12 = this.f6404a;
            int i13 = length2 - i12;
            System.arraycopy(iArr, i12, iArr2, 0, i13);
            System.arraycopy(this.f6407d, 0, iArr2, i13, i12);
            this.f6404a = 0;
            this.f6405b = this.f6406c - 1;
            this.f6407d = iArr2;
            this.f6408e = length - 1;
        }
        int i14 = (this.f6405b + 1) & this.f6408e;
        this.f6405b = i14;
        this.f6407d[i14] = i10;
        this.f6406c++;
    }

    public final int b() {
        int i10 = this.f6406c;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f6407d;
        int i11 = this.f6404a;
        int i12 = iArr[i11];
        this.f6404a = (i11 + 1) & this.f6408e;
        this.f6406c = i10 - 1;
        return i12;
    }
}
