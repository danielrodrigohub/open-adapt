package androidx.lifecycle;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: PausingDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {162}, m = "invokeSuspend")
public final class z extends ld.i implements qd.p<CoroutineScope, jd.d<Object>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f2245i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f2246j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ i.c f2247k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ qd.p<CoroutineScope, jd.d<Object>, Object> f2248l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public z(i iVar, i.c cVar, qd.p<? super CoroutineScope, ? super jd.d<Object>, ? extends Object> pVar, jd.d<? super z> dVar) {
        super(2, dVar);
        this.f2246j = iVar;
        this.f2247k = cVar;
        this.f2248l = pVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        z zVar = new z(this.f2246j, this.f2247k, this.f2248l, dVar);
        zVar.f2245i = obj;
        return zVar;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<Object> dVar) {
        return ((z) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        k kVar;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f2244h;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kVar = (k) this.f2245i;
            try {
                d3.e.p(obj);
                kVar.a();
                return obj;
            } catch (Throwable th) {
                th = th;
                kVar.a();
                throw th;
            }
        }
        d3.e.p(obj);
        Job job = (Job) ((CoroutineScope) this.f2245i).getCoroutineContext().get(Job.Key);
        if (job == null) {
            throw new IllegalStateException("when[State] methods should have a parent job".toString());
        }
        y yVar = new y();
        k kVar2 = new k(this.f2246j, this.f2247k, yVar.f2243h, job);
        try {
            qd.p<CoroutineScope, jd.d<Object>, Object> pVar = this.f2248l;
            this.f2245i = kVar2;
            this.f2244h = 1;
            obj = BuildersKt.withContext(yVar, pVar, this);
            if (obj == aVar) {
                return aVar;
            }
            kVar = kVar2;
            kVar.a();
            return obj;
        } catch (Throwable th2) {
            th = th2;
            kVar = kVar2;
            kVar.a();
            throw th;
        }
    }
}
