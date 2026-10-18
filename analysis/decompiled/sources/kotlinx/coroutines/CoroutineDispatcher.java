package kotlinx.coroutines;

import jd.a;
import jd.b;
import jd.d;
import jd.e;
import jd.f;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import qd.l;
import rd.h;
import rd.o;

/* JADX INFO: compiled from: CoroutineDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class CoroutineDispatcher extends a implements e {
    public static final Key Key = new Key(null);

    /* JADX INFO: compiled from: CoroutineDispatcher.kt */
    public static final class Key extends b<e, CoroutineDispatcher> {

        /* JADX INFO: renamed from: kotlinx.coroutines.CoroutineDispatcher$Key$1, reason: invalid class name */
        /* JADX INFO: compiled from: CoroutineDispatcher.kt */
        public static final class AnonymousClass1 extends o implements l<f.a, CoroutineDispatcher> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            public AnonymousClass1() {
                super(1);
            }

            @Override // qd.l
            public final CoroutineDispatcher invoke(f.a aVar) {
                if (aVar instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) aVar;
                }
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private Key() {
            super(e.a.f9510h, AnonymousClass1.INSTANCE);
            int i10 = e.f9509d;
        }

        public /* synthetic */ Key(h hVar) {
            this();
        }
    }

    public CoroutineDispatcher() {
        super(e.a.f9510h);
    }

    /* JADX INFO: renamed from: dispatch */
    public abstract void mo14dispatch(f fVar, Runnable runnable);

    @Override // jd.a, jd.f.a, jd.f
    public <E extends f.a> E get(f.b<E> bVar) {
        p4.h.j(bVar, "key");
        if (!(bVar instanceof b)) {
            if (e.a.f9510h == bVar) {
                return this;
            }
            return null;
        }
        b bVar2 = (b) bVar;
        if (!bVar2.isSubKey$kotlin_stdlib(getKey())) {
            return null;
        }
        E e10 = (E) bVar2.tryCast$kotlin_stdlib(this);
        if (e10 instanceof f.a) {
            return e10;
        }
        return null;
    }

    @Override // jd.e
    public final <T> d<T> interceptContinuation(d<? super T> dVar) {
        return new DispatchedContinuation(this, dVar);
    }

    public boolean isDispatchNeeded(f fVar) {
        return true;
    }

    public CoroutineDispatcher limitedParallelism(int i10) {
        LimitedDispatcherKt.checkParallelism(i10);
        return new LimitedDispatcher(this, i10);
    }

    @Override // jd.a, jd.f
    public f minusKey(f.b<?> bVar) {
        p4.h.j(bVar, "key");
        if (bVar instanceof b) {
            b bVar2 = (b) bVar;
            if (bVar2.isSubKey$kotlin_stdlib(getKey()) && bVar2.tryCast$kotlin_stdlib(this) != null) {
                return jd.h.f9512h;
            }
        } else if (e.a.f9510h == bVar) {
            return jd.h.f9512h;
        }
        return this;
    }

    @Override // jd.e
    public final void releaseInterceptedContinuation(d<?> dVar) {
        ((DispatchedContinuation) dVar).release();
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
