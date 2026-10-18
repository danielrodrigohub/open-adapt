package ya;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl$transferFirmware$2$completed$1", f = "AdaptKitControlsRepositories.kt", l = {1781}, m = "invokeSuspend")
public final class d0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f19013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ fa.g.b f19014j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(d dVar, fa.g.b bVar, jd.d<? super d0> dVar2) {
        super(2, dVar2);
        this.f19013i = dVar;
        this.f19014j = bVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new d0(this.f19013i, this.f19014j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((d0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f19012h;
        if (i10 == 0) {
            d3.e.p(obj);
            d dVar = this.f19013i;
            fa.g.b bVar = this.f19014j;
            this.f19012h = 1;
            obj = dVar.n0(bVar, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        fa.o oVar = (fa.o) obj;
        d dVar2 = this.f19013i;
        fa.c cVar = dVar2.f18771n;
        p4.h.j(oVar, "upgradeSlotCheck");
        dVar2.m0(fa.c.a(cVar, null, null, new fa.k.s(oVar.y(), oVar.p(), oVar.o()), 3));
        this.f19013i.m0(oVar.A() ? fa.c.a(this.f19013i.f18771n, null, null, fa.k.t.f7225h, 3) : fa.c.a(this.f19013i.f18771n, null, null, new fa.k.x("Slots were malformed"), 3));
        return fd.o.f7408a;
    }
}
