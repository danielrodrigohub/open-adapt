package o8;

import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.PairingActivity;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.PairingActivity$endOfPairing$1", f = "PairingActivity.kt", l = {147}, m = "invokeSuspend")
public final class q extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12478i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(PairingActivity pairingActivity, jd.d<? super q> dVar) {
        super(2, dVar);
        this.f12478i = pairingActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new q(this.f12478i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((q) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12477h;
        if (i10 == 0) {
            d3.e.p(obj);
            this.f12478i.V.C(true);
            this.f12478i.V.g(true);
            this.f12478i.V.g0(true);
            s9.o oVar = s9.o.f15218a;
            if (s9.o.f15220c.z()) {
                TrackManager.INSTANCE.multipairPairingFlowFinished();
            } else {
                TrackManager.INSTANCE.isPairingComplete();
            }
            h8.e eVar = s9.o.f15219b;
            eVar.h(v7.g.ADAPT_SHOE);
            eVar.i(v7.h.NORMAL);
            PairDataRepository pairDataRepository = PairDataRepository.INSTANCE;
            this.f12477h = 1;
            if (pairDataRepository.syncPairData(this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        PairingActivity pairingActivity = this.f12478i;
        new h9.m(pairingActivity.T).e(pairingActivity);
        this.f12478i.finish();
        return fd.o.f7408a;
    }
}
