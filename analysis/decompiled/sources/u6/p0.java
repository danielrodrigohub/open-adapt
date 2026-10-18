package u6;

import java.util.Objects;

/* JADX INFO: compiled from: RegularImmutableList.java */
/* JADX INFO: loaded from: classes.dex */
public final class p0<E> extends v<E> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final v<Object> f15967l = new p0(new Object[0], 0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final transient Object[] f15968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final transient int f15969k;

    public p0(Object[] objArr, int i10) {
        this.f15968j = objArr;
        this.f15969k = i10;
    }

    @Override // java.util.List
    public final E get(int i10) {
        t6.h.c(i10, this.f15969k);
        E e10 = (E) this.f15968j[i10];
        Objects.requireNonNull(e10);
        return e10;
    }

    @Override // u6.v, u6.t
    public final int k(Object[] objArr, int i10) {
        System.arraycopy(this.f15968j, 0, objArr, i10, this.f15969k);
        return i10 + this.f15969k;
    }

    @Override // u6.t
    public final Object[] l() {
        return this.f15968j;
    }

    @Override // u6.t
    public final int m() {
        return this.f15969k;
    }

    @Override // u6.t
    public final int n() {
        return 0;
    }

    @Override // u6.t
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15969k;
    }
}
