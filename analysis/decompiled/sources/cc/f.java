package cc;

import fd.o;
import kotlinx.coroutines.CoroutineScope;
import ld.i;
import qd.p;

/* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl$onStackNotMatching$1", f = "OIDCRepositoryImpl.kt", l = {98}, m = "invokeSuspend")
public final class f extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f4344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ e f4345j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar, jd.d<? super f> dVar) {
        super(2, dVar);
        this.f4345j = eVar;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        f fVar = new f(this.f4345j, dVar);
        fVar.f4344i = obj;
        return fVar;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((f) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f4343h;
        try {
            if (i10 == 0) {
                d3.e.p(obj);
                e eVar = this.f4345j;
                this.f4343h = 1;
                if (eVar.n(null, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
        } catch (Throwable th) {
            d3.e.g(th);
        }
        return o.f7408a;
    }
}
