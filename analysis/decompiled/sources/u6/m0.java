package u6;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: NaturalOrdering.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 extends o0<Comparable<?>> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final m0 f15961h = new m0();

    @Override // u6.o0
    public final <S extends Comparable<?>> o0<S> b() {
        return s0.f15992h;
    }

    @Override // u6.o0, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        Objects.requireNonNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
