package jd;

import jd.f.a;
import qd.l;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<B extends f.a, E extends B> implements f.b<E> {
    private final l<f.a, E> safeCast;
    private final f.b<?> topmostKey;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [jd.f$b<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, qd.l<? super jd.f$a, ? extends E extends B>, qd.l<jd.f$a, E extends B>] */
    public b(f.b<B> bVar, l<? super f.a, ? extends E> lVar) {
        p4.h.j(bVar, "baseKey");
        p4.h.j(lVar, "safeCast");
        this.safeCast = lVar;
        this.topmostKey = bVar instanceof b ? (f.b<B>) ((b) bVar).topmostKey : bVar;
    }

    public final boolean isSubKey$kotlin_stdlib(f.b<?> bVar) {
        p4.h.j(bVar, "key");
        return bVar == this || this.topmostKey == bVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ljd/f$a;)TE; */
    public final f.a tryCast$kotlin_stdlib(f.a aVar) {
        p4.h.j(aVar, "element");
        return (f.a) this.safeCast.invoke(aVar);
    }
}
