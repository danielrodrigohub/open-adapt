package u6;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: RegularImmutableSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class r0<E> extends a0<E> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Object[] f15985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final r0<Object> f15986q;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final transient Object[] f15987k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final transient int f15988l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final transient Object[] f15989m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final transient int f15990n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final transient int f15991o;

    static {
        Object[] objArr = new Object[0];
        f15985p = objArr;
        f15986q = new r0<>(objArr, 0, objArr, 0, 0);
    }

    public r0(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f15987k = objArr;
        this.f15988l = i10;
        this.f15989m = objArr2;
        this.f15990n = i11;
        this.f15991o = i12;
    }

    @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Object[] objArr = this.f15989m;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iB = s.b(obj);
        while (true) {
            int i10 = iB & this.f15990n;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iB = i10 + 1;
        }
    }

    @Override // u6.a0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f15988l;
    }

    @Override // u6.t
    public final int k(Object[] objArr, int i10) {
        System.arraycopy(this.f15987k, 0, objArr, i10, this.f15991o);
        return i10 + this.f15991o;
    }

    @Override // u6.t
    public final Object[] l() {
        return this.f15987k;
    }

    @Override // u6.t
    public final int m() {
        return this.f15991o;
    }

    @Override // u6.t
    public final int n() {
        return 0;
    }

    @Override // u6.t
    public final boolean o() {
        return false;
    }

    @Override // u6.a0, u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: p */
    public final y0<E> iterator() {
        return h().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15991o;
    }

    @Override // u6.a0
    public final v<E> t() {
        return v.q(this.f15987k, this.f15991o);
    }
}
