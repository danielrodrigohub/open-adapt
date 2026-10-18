package u6;

import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: SingletonImmutableSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class w0<E> extends a0<E> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final transient E f16009k;

    public w0(E e10) {
        Objects.requireNonNull(e10);
        this.f16009k = e10;
    }

    @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.f16009k.equals(obj);
    }

    @Override // u6.a0, u6.t
    public final v<E> h() {
        return v.v(this.f16009k);
    }

    @Override // u6.a0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f16009k.hashCode();
    }

    @Override // u6.t
    public final int k(Object[] objArr, int i10) {
        objArr[i10] = this.f16009k;
        return i10 + 1;
    }

    @Override // u6.t
    public final boolean o() {
        return false;
    }

    @Override // u6.a0, u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: p */
    public final y0<E> iterator() {
        return new c0(this.f16009k);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.f16009k.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 2);
        sb2.append('[');
        sb2.append(string);
        sb2.append(']');
        return sb2.toString();
    }
}
