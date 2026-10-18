package s9;

import com.nike.adapt.adk.api.PairDataRepository;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: BadgeUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15177a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.c f15178b = h8.c.f8298b;

    public static void a() {
        Object obj = null;
        String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
        h8.c cVar = h8.c.f8298b;
        ArrayList<v7.k> arrayListO = cVar.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        for (Object obj2 : arrayListO) {
            if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                obj = obj2;
                break;
            }
        }
        v7.k kVar = (v7.k) obj;
        if (kVar != null) {
            kVar.f16425g = true;
        }
        cVar.a(arrayListO);
    }

    public final boolean b(String str) {
        Object next;
        if (str == null) {
            return false;
        }
        PairDataRepository pairDataRepository = PairDataRepository.INSTANCE;
        h8.c cVar = f15178b;
        if (!p4.h.c(str, pairDataRepository.getDefaultAndConnectedId(cVar))) {
            return false;
        }
        ArrayList<v7.k> arrayListO = cVar.O();
        if (arrayListO == null) {
            return true;
        }
        Iterator<T> it = arrayListO.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((v7.k) next).f16419a, str));
        v7.k kVar = (v7.k) next;
        if (kVar != null) {
            return true ^ kVar.f16421c;
        }
        return true;
    }

    public final boolean d(String str) {
        int i10 = o7.n.f12404a;
        int i11 = h8.a.f8296a;
        h8.c cVar = h8.c.f8298b;
        Object obj = null;
        if (!p4.h.c(str, PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null)) || !g.f15195a.f()) {
            return false;
        }
        ArrayList<v7.k> arrayListO = cVar.O();
        if (arrayListO == null) {
            return true;
        }
        for (Object obj2 : arrayListO) {
            if (p4.h.c(((v7.k) obj2).f16419a, str)) {
                obj = obj2;
                break;
            }
        }
        v7.k kVar = (v7.k) obj;
        if (kVar != null) {
            return !kVar.f16425g;
        }
        return true;
    }
}
