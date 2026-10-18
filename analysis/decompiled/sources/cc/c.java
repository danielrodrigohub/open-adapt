package cc;

import fd.o;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import ld.i;
import qd.p;

/* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl$cachedAuthCredentialInternal$2$1", f = "OIDCRepositoryImpl.kt", l = {271, 67}, m = "invokeSuspend")
public final class c extends i implements p<CoroutineScope, jd.d<? super ob.c>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Mutex f4286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f4288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ e f4289k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, jd.d<? super c> dVar) {
        super(2, dVar);
        this.f4289k = eVar;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        c cVar = new c(this.f4289k, dVar);
        cVar.f4288j = obj;
        return cVar;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super ob.c> dVar) {
        return ((c) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objG;
        Mutex mutex;
        e eVar;
        Mutex mutex2;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f4287i;
        try {
            try {
                if (i10 == 0) {
                    d3.e.p(obj);
                    e eVar2 = this.f4289k;
                    mutex = eVar2.f4297g;
                    this.f4288j = eVar2;
                    this.f4286h = mutex;
                    this.f4287i = 1;
                    if (mutex.lock(null, this) == aVar) {
                        return aVar;
                    }
                    eVar = eVar2;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        mutex2 = (Mutex) this.f4288j;
                        try {
                            d3.e.p(obj);
                            objG = (ob.c) obj;
                            mutex2.unlock(null);
                            if (objG instanceof fd.f.a) {
                                return null;
                            }
                            return objG;
                        } catch (Throwable th) {
                            th = th;
                            mutex = mutex2;
                            mutex.unlock(null);
                            throw th;
                        }
                    }
                    mutex = this.f4286h;
                    eVar = (e) this.f4288j;
                    d3.e.p(obj);
                }
                dc.b bVar = eVar.f4292b;
                this.f4288j = mutex;
                this.f4286h = null;
                this.f4287i = 2;
                obj = bVar.get();
                if (obj == aVar) {
                    return aVar;
                }
                mutex2 = mutex;
                objG = (ob.c) obj;
                mutex2.unlock(null);
                if (objG instanceof fd.f.a) {
                    return null;
                }
                return objG;
            } catch (Throwable th2) {
                th = th2;
                mutex.unlock(null);
                throw th;
            }
        } catch (Throwable th3) {
            objG = d3.e.g(th3);
        }
    }
}
