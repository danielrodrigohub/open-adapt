package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Comparator;

/* JADX INFO: compiled from: Ordering.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class o0<T> implements Comparator<T> {
    public static <T> o0<T> a(Comparator<T> comparator) {
        return comparator instanceof o0 ? (o0) comparator : new o(comparator);
    }

    public <S extends T> o0<S> b() {
        return new t0(this);
    }

    @Override // java.util.Comparator
    @CanIgnoreReturnValue
    public abstract int compare(T t10, T t11);
}
