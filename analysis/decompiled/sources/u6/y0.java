package u6;

import com.google.errorprone.annotations.DoNotCall;
import java.util.Iterator;

/* JADX INFO: compiled from: UnmodifiableIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class y0<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
