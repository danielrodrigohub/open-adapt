package androidx.lifecycle;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", f = "Lifecycle.kt", l = {}, m = "invokeSuspend")
public final class m extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f2226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ LifecycleCoroutineScopeImpl f2227i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, jd.d<? super m> dVar) {
        super(2, dVar);
        this.f2227i = lifecycleCoroutineScopeImpl;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        m mVar = new m(this.f2227i, dVar);
        mVar.f2226h = obj;
        return mVar;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
        m mVar = (m) create(coroutineScope, dVar);
        fd.o oVar = fd.o.f7408a;
        mVar.invokeSuspend(oVar);
        return oVar;
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        d3.e.p(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f2226h;
        if (this.f2227i.f2098h.b().compareTo(i.c.INITIALIZED) >= 0) {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl = this.f2227i;
            lifecycleCoroutineScopeImpl.f2098h.a(lifecycleCoroutineScopeImpl);
        } else {
            JobKt__JobKt.cancel$default(coroutineScope.getCoroutineContext(), null, 1, null);
        }
        return fd.o.f7408a;
    }
}
