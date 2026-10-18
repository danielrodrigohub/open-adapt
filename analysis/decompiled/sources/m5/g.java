package m5;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: CopyOnWriteMultiset.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<E> implements Iterable<E> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f10380h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map<E, Integer> f10381i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Set<E> f10382j = Collections.emptySet();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List<E> f10383k = Collections.emptyList();

    public final int h(E e10) {
        int iIntValue;
        synchronized (this.f10380h) {
            iIntValue = this.f10381i.containsKey(e10) ? ((Integer) this.f10381i.get(e10)).intValue() : 0;
        }
        return iIntValue;
    }

    @Override // java.lang.Iterable
    public final Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.f10380h) {
            it = this.f10383k.iterator();
        }
        return it;
    }
}
