package jd;

import qd.p;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
public interface f {

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface a extends f {

        /* JADX INFO: renamed from: jd.f$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineContext.kt */
        public static final class C0183a {
            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends a> E a(a aVar, b<E> bVar) {
                p4.h.j(bVar, "key");
                if (p4.h.c(aVar.getKey(), bVar)) {
                    return aVar;
                }
                return null;
            }

            public static f b(a aVar, b<?> bVar) {
                p4.h.j(bVar, "key");
                return p4.h.c(aVar.getKey(), bVar) ? h.f9512h : aVar;
            }

            public static f c(a aVar, f fVar) {
                p4.h.j(fVar, "context");
                return fVar == h.f9512h ? aVar : (f) fVar.fold(aVar, g.f9511h);
            }
        }

        @Override // jd.f
        <E extends a> E get(b<E> bVar);

        b<?> getKey();
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface b<E extends a> {
    }

    <R> R fold(R r10, p<? super R, ? super a, ? extends R> pVar);

    <E extends a> E get(b<E> bVar);

    f minusKey(b<?> bVar);

    f plus(f fVar);
}
