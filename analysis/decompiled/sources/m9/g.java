package m9;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: FirmwareCheckForUpdatesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.settings.FirmwareCheckForUpdatesFragment$readyAndConnected$1", f = "FirmwareCheckForUpdatesFragment.kt", l = {118}, m = "invokeSuspend")
public final class g extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ e f10867i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(e eVar, jd.d<? super g> dVar) {
        super(2, dVar);
        this.f10867i = eVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new g(this.f10867i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((g) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10866h;
        if (i10 == 0) {
            d3.e.p(obj);
            this.f10866h = 1;
            if (DelayKt.delay(15000L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        o7.x.f12420a.a("FirmwareUpdateCrumb " + this.f10867i.f10854i0 + " noInternetConnectionJob Hit");
        this.f10867i.u0(s9.z.NO_NETWORK);
        return fd.o.f7408a;
    }
}
