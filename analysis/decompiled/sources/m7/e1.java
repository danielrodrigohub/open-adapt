package m7;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: SmallSortedMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class e1 extends f1<s.a<Object>, Object> {
    public e1(int i10) {
        super(i10);
    }

    @Override // m7.f1
    public final void g() {
        if (!this.f10645k) {
            for (int i10 = 0; i10 < d(); i10++) {
                c(i10).getKey().c();
            }
            Iterator<Map.Entry<s.a<Object>, Object>> it = e().iterator();
            while (it.hasNext()) {
                it.next().getKey().c();
            }
        }
        super.g();
    }

    @Override // m7.f1, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((s.a) obj, obj2);
    }
}
