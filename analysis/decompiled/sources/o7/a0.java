package o7;

import com.nike.adapt.BigfootApplication;
import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.adk.model.AdaptFirmwareStage;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SplashScreenActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.SplashScreenActivity$getNextActivity$1", f = "SplashScreenActivity.kt", l = {168, 172}, m = "invokeSuspend")
public final class a0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SplashScreenActivity f12363i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(SplashScreenActivity splashScreenActivity, jd.d<? super a0> dVar) {
        super(2, dVar);
        this.f12363i = splashScreenActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new a0(this.f12363i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((a0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008f  */
    /* JADX WARN: Code duplicated, block: B:39:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ba  */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i10;
        PairDataRepository pairDataRepository;
        SplashScreenActivity splashScreenActivity;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = this.f12362h;
        if (i11 != 0) {
            if (i11 == 1) {
                d3.e.p(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            ((k8.h) this.f12363i.G.getValue()).d(k8.e.f9746h);
            splashScreenActivity = this.f12363i;
            if (!splashScreenActivity.J) {
                splashScreenActivity.n0();
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        boolean zA = BigfootApplication.f5638p.c().a();
        SplashScreenActivity splashScreenActivity2 = this.f12363i;
        if (zA) {
            int i12 = SplashScreenActivity.K;
            if (splashScreenActivity2.m0().Y()) {
                i10 = 5;
            } else {
                AdaptFirmwareStage adaptFirmwareStageD = ((f) androidx.lifecycle.o.m()).d();
                if (adaptFirmwareStageD instanceof AdaptFirmwareStage.InProgress ? true : adaptFirmwareStageD instanceof AdaptFirmwareStage.Reconnecting ? true : adaptFirmwareStageD instanceof AdaptFirmwareStage.Flashing ? true : adaptFirmwareStageD instanceof AdaptFirmwareStage.FetchingData) {
                    i10 = 4;
                } else {
                    int iOrdinal = SplashScreenActivity.l0(this.f12363i).k().ordinal();
                    if (iOrdinal != 1) {
                        i10 = iOrdinal != 11 ? 3 : 2;
                    }
                }
            }
            splashScreenActivity2.I = i10;
            if (zA) {
                pairDataRepository = PairDataRepository.INSTANCE;
                this.f12362h = 1;
                if (pairDataRepository.syncPairData(this) == aVar) {
                    return aVar;
                }
            }
        } else {
            SplashScreenActivity.l0(splashScreenActivity2).h(v7.g.NOT_STARTED);
            SplashScreenActivity.l0(this.f12363i).g();
        }
        i10 = 1;
        splashScreenActivity2.I = i10;
        if (zA) {
            pairDataRepository = PairDataRepository.INSTANCE;
            this.f12362h = 1;
            if (pairDataRepository.syncPairData(this) == aVar) {
                return aVar;
            }
        }
        p7.a aVar2 = p7.a.f13271a;
        this.f12362h = 2;
        if (aVar2.b(this) == aVar) {
            return aVar;
        }
        ((k8.h) this.f12363i.G.getValue()).d(k8.e.f9746h);
        splashScreenActivity = this.f12363i;
        if (!splashScreenActivity.J) {
            splashScreenActivity.n0();
        }
        return fd.o.f7408a;
    }
}
