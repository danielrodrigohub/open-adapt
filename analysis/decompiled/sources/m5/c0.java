package m5;

import java.util.Arrays;

/* JADX INFO: compiled from: TimedValueQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f10365a = new long[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public V[] f10366b = (V[]) new Object[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10368d;

    public final synchronized void a(long j10, V v10) {
        int i10 = this.f10368d;
        if (i10 > 0) {
            if (j10 <= this.f10365a[((this.f10367c + i10) - 1) % this.f10366b.length]) {
                b();
            }
        }
        c();
        int i11 = this.f10367c;
        int i12 = this.f10368d;
        V[] vArr = this.f10366b;
        int length = (i11 + i12) % vArr.length;
        this.f10365a[length] = j10;
        vArr[length] = v10;
        this.f10368d = i12 + 1;
    }

    public final synchronized void b() {
        this.f10367c = 0;
        this.f10368d = 0;
        Arrays.fill(this.f10366b, (Object) null);
    }

    public final void c() {
        int length = this.f10366b.length;
        if (this.f10368d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        V[] vArr = (V[]) new Object[i10];
        int i11 = this.f10367c;
        int i12 = length - i11;
        System.arraycopy(this.f10365a, i11, jArr, 0, i12);
        System.arraycopy(this.f10366b, this.f10367c, vArr, 0, i12);
        int i13 = this.f10367c;
        if (i13 > 0) {
            System.arraycopy(this.f10365a, 0, jArr, i12, i13);
            System.arraycopy(this.f10366b, 0, vArr, i12, this.f10367c);
        }
        this.f10365a = jArr;
        this.f10366b = vArr;
        this.f10367c = 0;
    }

    public final V d(long j10, boolean z10) {
        V vF = null;
        long j11 = Long.MAX_VALUE;
        while (this.f10368d > 0) {
            long j12 = j10 - this.f10365a[this.f10367c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            vF = f();
            j11 = j12;
        }
        return vF;
    }

    public final synchronized V e(long j10) {
        return d(j10, true);
    }

    public final V f() {
        a.e(this.f10368d > 0);
        V[] vArr = this.f10366b;
        int i10 = this.f10367c;
        V v10 = vArr[i10];
        vArr[i10] = null;
        this.f10367c = (i10 + 1) % vArr.length;
        this.f10368d--;
        return v10;
    }
}
