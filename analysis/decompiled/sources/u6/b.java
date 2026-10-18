package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: AbstractIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> extends y0<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15883h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @CheckForNull
    public T f15884i;

    @CheckForNull
    public abstract T a();

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final boolean hasNext() {
        int i10 = this.f15883h;
        if (!(i10 != 4)) {
            throw new IllegalStateException();
        }
        int iA = q.g.a(i10);
        if (iA == 0) {
            return true;
        }
        if (iA == 2) {
            return false;
        }
        this.f15883h = 4;
        this.f15884i = a();
        if (this.f15883h == 3) {
            return false;
        }
        this.f15883h = 1;
        return true;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f15883h = 2;
        T t10 = this.f15884i;
        this.f15884i = null;
        return t10;
    }
}
