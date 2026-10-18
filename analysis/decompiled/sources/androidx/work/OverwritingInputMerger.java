package androidx.work;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import k1.h;

/* JADX INFO: loaded from: classes.dex */
public final class OverwritingInputMerger extends h {
    @Override // k1.h
    public final b a(List<b> list) {
        b.a aVar = new b.a();
        HashMap map = new HashMap();
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            map.putAll(Collections.unmodifiableMap(((b) it.next()).f3051a));
        }
        aVar.b(map);
        return aVar.a();
    }
}
