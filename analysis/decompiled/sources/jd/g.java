package jd;

import qd.p;
import rd.o;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends o implements p<f, f.a, f> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g f9511h = new g();

    public g() {
        super(2);
    }

    @Override // qd.p
    public final f invoke(f fVar, f.a aVar) {
        c cVar;
        f fVar2 = fVar;
        f.a aVar2 = aVar;
        p4.h.j(fVar2, "acc");
        p4.h.j(aVar2, "element");
        f fVarMinusKey = fVar2.minusKey(aVar2.getKey());
        h hVar = h.f9512h;
        if (fVarMinusKey == hVar) {
            return aVar2;
        }
        int i10 = e.f9509d;
        e.a aVar3 = e.a.f9510h;
        e eVar = (e) fVarMinusKey.get(aVar3);
        if (eVar == null) {
            cVar = new c(fVarMinusKey, aVar2);
        } else {
            f fVarMinusKey2 = fVarMinusKey.minusKey(aVar3);
            if (fVarMinusKey2 == hVar) {
                return new c(aVar2, eVar);
            }
            cVar = new c(new c(fVarMinusKey2, aVar2), eVar);
        }
        return cVar;
    }
}
