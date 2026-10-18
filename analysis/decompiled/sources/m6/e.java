package m6;

import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.InMemoryCache;
import g7.q;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: EdgeTreatment.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements e3.g, q {
    public static final void c(List list, AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(list, "errorDisplays");
        p4.h.j(adaptConnectionStatusResult, "result");
        if (adaptConnectionStatusResult.getShoe().isRight()) {
            e(list, true, InMemoryCache.INSTANCE.getRightDevice().getLastKnownConnectionState());
        } else {
            e(list, false, InMemoryCache.INSTANCE.getLeftDevice().getLastKnownConnectionState());
        }
    }

    public static final void d(List list) {
        p4.h.j(list, "errorDisplays");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            u8.g gVar = (u8.g) it.next();
            gVar.f16046b = true;
            gVar.f16047c = true;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            u8.g gVar2 = (u8.g) it2.next();
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            gVar2.c(false, inMemoryCache.getLeftDevice().getLastKnownConnectionState());
            gVar2.c(true, inMemoryCache.getRightDevice().getLastKnownConnectionState());
        }
    }

    public static final void e(List list, boolean z10, v9.e eVar) {
        Iterator it = list.iterator();
        while (it.hasNext() && !((u8.g) it.next()).c(z10, eVar)) {
        }
    }

    @Override // e3.g
    public void a() {
    }

    public void b(float f10, float f11, float f12, k kVar) {
        kVar.e(f10, 0.0f);
    }

    @Override // g7.q
    public Object construct() {
        return new ConcurrentHashMap();
    }
}
