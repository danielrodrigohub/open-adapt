package w;

import i0.e;
import i0.f;
import java.util.ArrayList;
import java.util.HashSet;
import p.g;

/* JADX INFO: compiled from: DirectedAcyclicGraph.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e<ArrayList<T>> f17037a = new f(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g<T, ArrayList<T>> f17038b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<T> f17039c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet<T> f17040d = new HashSet<>();

    public final void a(T t10, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t10)) {
            return;
        }
        if (hashSet.contains(t10)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t10);
        ArrayList<T> orDefault = this.f17038b.getOrDefault(t10, null);
        if (orDefault != null) {
            int size = orDefault.size();
            for (int i10 = 0; i10 < size; i10++) {
                a(orDefault.get(i10), arrayList, hashSet);
            }
        }
        hashSet.remove(t10);
        arrayList.add(t10);
    }
}
