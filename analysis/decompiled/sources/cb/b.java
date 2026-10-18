package cb;

import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import p4.h;
import rd.o;
import v9.p0;

/* JADX INFO: compiled from: ScanRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ jc.a f4269h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(jc.a aVar) {
        super(0);
        this.f4269h = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
    @Override // qd.a
    public final fd.o invoke() {
        Object next;
        jc.a aVar = this.f4269h;
        h.j(aVar, "<this>");
        ka.c cVar = new ka.c(aVar.f9489a, aVar.f9490b, aVar.f9491c, aVar.f9492d, aVar.f9494f);
        c cVar2 = c.f4270b;
        synchronized (c.f4275g) {
            Iterator<T> it = c.f4275g.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!h.c(((ka.c) next).f9760k, cVar.f9760k));
            ka.c cVar3 = (ka.c) next;
            if (cVar3 != null && cVar.f9761l > cVar3.f9761l) {
                c.f4275g.remove(cVar3);
                c.f4275g.add(cVar);
            } else if (cVar3 == null) {
                c.f4275g.add(cVar);
            }
        }
        ?? r10 = c.f4274f;
        if (r10.isEmpty()) {
            c cVar4 = c.f4270b;
            UUID uuidRandomUUID = UUID.randomUUID();
            h.i(uuidRandomUUID, "randomUUID()");
            cVar4.c(new ka.d("1999", uuidRandomUUID));
        } else {
            Iterator it2 = r10.entrySet().iterator();
            while (it2.hasNext()) {
                ((p0) ((Map.Entry) it2.next()).getValue()).a(new ka.b(cVar));
            }
        }
        return fd.o.f7408a;
    }
}
