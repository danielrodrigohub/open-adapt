package m8;

import fd.o;
import kotlinx.coroutines.CoroutineScope;
import qd.p;

/* JADX INFO: compiled from: DeleteAccountRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.repository.DeleteAccountRepositoryImpl$deleteAccount$2", f = "DeleteAccountRepository.kt", l = {25}, m = "invokeSuspend")
public final class d extends ld.i implements p<CoroutineScope, jd.d<? super d8.c>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10817h;

    public d(jd.d<? super d> dVar) {
        super(2, dVar);
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new d(dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super d8.c> dVar) {
        return new d(dVar).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10817h;
        if (i10 == 0) {
            d3.e.p(obj);
            e eVar = e.f10818a;
            d8.a aVar2 = (d8.a) e.f10819b.getValue();
            this.f10817h = 1;
            obj = aVar2.deleteAccount(this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return obj;
    }
}
