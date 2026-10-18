package vd;

import gd.w;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: classes.dex */
public class c implements Iterable<Integer>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f17021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f17022i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f17023j;

    public c(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f17021h = i10;
        this.f17022i = g7.b.g(i10, i11, i12);
        this.f17023j = i12;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f17021h != cVar.f17021h || this.f17022i != cVar.f17022i || this.f17023j != cVar.f17023j) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f17021h * 31) + this.f17022i) * 31) + this.f17023j;
    }

    public boolean isEmpty() {
        if (this.f17023j > 0) {
            if (this.f17021h > this.f17022i) {
                return true;
            }
        } else if (this.f17021h < this.f17022i) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final w iterator() {
        return new d(this.f17021h, this.f17022i, this.f17023j);
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f17023j > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f17021h);
            sb2.append("..");
            sb2.append(this.f17022i);
            sb2.append(" step ");
            i10 = this.f17023j;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f17021h);
            sb2.append(" downTo ");
            sb2.append(this.f17022i);
            sb2.append(" step ");
            i10 = -this.f17023j;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
