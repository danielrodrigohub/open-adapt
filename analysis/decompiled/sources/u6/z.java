package u6;

import com.google.errorprone.annotations.DoNotCall;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ImmutableMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class z<K, V> extends g<K, V> implements Serializable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final transient x<K, ? extends t<V>> f16018k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final transient int f16019l;

    /* JADX INFO: compiled from: ImmutableMultimap.java */
    @DoNotMock
    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<K, Collection<V>> f16020a = new m();
    }

    public z(x<K, ? extends t<V>> xVar, int i10) {
        this.f16018k = xVar;
        this.f16019l = i10;
    }

    @Override // u6.f, u6.i0
    public final Map a() {
        return this.f16018k;
    }

    @Override // u6.f
    public final boolean b(@CheckForNull Object obj) {
        return obj != null && super.b(obj);
    }

    @Override // u6.f
    public final Map<K, Collection<V>> c() {
        throw new AssertionError("should never be called");
    }

    @Override // u6.i0
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // u6.f
    public final Set<K> d() {
        throw new AssertionError("unreachable");
    }

    @Override // u6.f
    public final Iterator e() {
        return new y(this);
    }

    public final a0<K> f() {
        return this.f16018k.keySet();
    }

    @Override // u6.i0
    public final int size() {
        return this.f16019l;
    }
}
