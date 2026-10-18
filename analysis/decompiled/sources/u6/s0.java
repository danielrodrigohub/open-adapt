package u6;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: ReverseNaturalOrdering.java */
/* JADX INFO: loaded from: classes.dex */
public final class s0 extends o0<Comparable<?>> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final s0 f15992h = new s0();

    @Override // u6.o0
    public final <S extends Comparable<?>> o0<S> b() {
        return m0.f15961h;
    }

    @Override // u6.o0, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
