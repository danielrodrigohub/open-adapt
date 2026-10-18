package ad;

import com.nike.persistence.implementation.PersistenceManager;
import fd.o;
import kotlinx.coroutines.CoroutineScope;
import ld.i;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: PersistenceManager.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.persistence.implementation.PersistenceManager$init$1$4$1$1", f = "PersistenceManager.kt", l = {54}, m = "invokeSuspend")
public final class c extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f611h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ PersistenceManager f612i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f613j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(PersistenceManager persistenceManager, String str, jd.d<? super c> dVar) {
        super(2, dVar);
        this.f612i = persistenceManager;
        this.f613j = str;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new c(this.f612i, this.f613j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((c) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f611h;
        if (i10 == 0) {
            d3.e.p(obj);
            PersistenceManager persistenceManager = this.f612i;
            cd.a aVar2 = persistenceManager.f5940a;
            if (aVar2 == null) {
                h.C("filesystem");
                throw null;
            }
            String str = persistenceManager.f5943d;
            String str2 = this.f613j;
            this.f611h = 1;
            if (aVar2.a(str, str2, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return o.f7408a;
    }
}
