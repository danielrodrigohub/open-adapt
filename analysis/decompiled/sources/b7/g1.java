package b7;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: SmallSortedMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class g1 extends h1<t.a<Object>, Object> {
    public g1(int i10) {
        super(i10);
    }

    @Override // b7.h1
    public final void g() {
        if (!this.f3406k) {
            for (int i10 = 0; i10 < d(); i10++) {
                c(i10).getKey().c();
            }
            Iterator<Map.Entry<t.a<Object>, Object>> it = e().iterator();
            while (it.hasNext()) {
                it.next().getKey().c();
            }
        }
        super.g();
    }
}
