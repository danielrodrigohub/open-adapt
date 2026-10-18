package u6;

import java.io.Serializable;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ReverseOrdering.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0<T> extends o0<T> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final o0<? super T> f15997h;

    public t0(o0<? super T> o0Var) {
        Objects.requireNonNull(o0Var);
        this.f15997h = o0Var;
    }

    @Override // u6.o0
    public final <S extends T> o0<S> b() {
        return this.f15997h;
    }

    @Override // u6.o0, java.util.Comparator
    public final int compare(T t10, T t11) {
        return this.f15997h.compare(t11, t10);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t0) {
            return this.f15997h.equals(((t0) obj).f15997h);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f15997h.hashCode();
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f15997h);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 10);
        sb2.append(strValueOf);
        sb2.append(".reverse()");
        return sb2.toString();
    }
}
