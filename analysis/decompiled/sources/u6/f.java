package u6;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: AbstractMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f<K, V> implements i0<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @CheckForNull
    @LazyInit
    public transient Set<K> f15926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @CheckForNull
    @LazyInit
    public transient Collection<V> f15927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @CheckForNull
    @LazyInit
    public transient Map<K, Collection<V>> f15928j;

    /* JADX INFO: compiled from: AbstractMultimap.java */
    public class a extends AbstractCollection<V> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            f.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(@CheckForNull Object obj) {
            return f.this.b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return f.this.e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return f.this.size();
        }
    }

    @Override // u6.i0
    public abstract Map<K, Collection<V>> a();

    public boolean b(@CheckForNull Object obj) {
        Iterator<Collection<V>> it = a().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map<K, Collection<V>> c();

    public abstract Set<K> d();

    public abstract Iterator<V> e();

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i0) {
            return a().equals(((i0) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
