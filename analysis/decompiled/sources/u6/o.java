package u6;

import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ComparatorOrdering.java */
/* JADX INFO: loaded from: classes.dex */
public final class o<T> extends o0<T> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Comparator<T> f15962h;

    public o(Comparator<T> comparator) {
        this.f15962h = comparator;
    }

    @Override // u6.o0, java.util.Comparator
    public final int compare(T t10, T t11) {
        return this.f15962h.compare(t10, t11);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return this.f15962h.equals(((o) obj).f15962h);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15962h.hashCode();
    }

    public final String toString() {
        return this.f15962h.toString();
    }
}
