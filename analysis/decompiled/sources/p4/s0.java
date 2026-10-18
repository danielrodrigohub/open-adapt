package p4;

import android.util.SparseArray;

/* JADX INFO: compiled from: SpannedData.java */
/* JADX INFO: loaded from: classes.dex */
public final class s0<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray<V> f13205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.f<V> f13206c;

    public s0() {
        y0.f fVar = y0.f.f18195d;
        this.f13205b = new SparseArray<>();
        this.f13206c = fVar;
        this.f13204a = -1;
    }

    public final void a(int i10, V v10) {
        if (this.f13204a == -1) {
            m5.a.e(this.f13205b.size() == 0);
            this.f13204a = 0;
        }
        if (this.f13205b.size() > 0) {
            SparseArray<V> sparseArray = this.f13205b;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            m5.a.a(i10 >= iKeyAt);
            if (iKeyAt == i10) {
                m5.f<V> fVar = this.f13206c;
                SparseArray<V> sparseArray2 = this.f13205b;
                fVar.b(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f13205b.append(i10, v10);
    }

    public final V b(int i10) {
        if (this.f13204a == -1) {
            this.f13204a = 0;
        }
        while (true) {
            int i11 = this.f13204a;
            if (i11 <= 0 || i10 >= this.f13205b.keyAt(i11)) {
                break;
            }
            this.f13204a--;
        }
        while (this.f13204a < this.f13205b.size() - 1 && i10 >= this.f13205b.keyAt(this.f13204a + 1)) {
            this.f13204a++;
        }
        return this.f13205b.valueAt(this.f13204a);
    }

    public final V c() {
        SparseArray<V> sparseArray = this.f13205b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }
}
