package u6;

/* JADX INFO: compiled from: ImmutableListMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public class w<K, V> extends z<K, V> {

    /* JADX INFO: compiled from: ImmutableListMultimap.java */
    public static final class a<K, V> extends z.a<K, V> {
    }

    public w(x<K, v<V>> xVar, int i10) {
        super(xVar, i10);
    }

    public final v<V> g(K k10) {
        v<V> vVar = (v) this.f16018k.get(k10);
        if (vVar != null) {
            return vVar;
        }
        u6.a aVar = v.f16002i;
        return (v<V>) p0.f15967l;
    }
}
