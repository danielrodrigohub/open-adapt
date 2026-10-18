package m9;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.AdaptRestartActivity;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.settings.FirmwareUpdateActivity$generalFirmwareFailed$4$1", f = "FirmwareUpdateActivity.kt", l = {228}, m = "invokeSuspend")
public final class l extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10884h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateActivity f10885i;

    /* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.settings.FirmwareUpdateActivity$generalFirmwareFailed$4$1$1", f = "FirmwareUpdateActivity.kt", l = {231}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10886h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ FirmwareUpdateActivity f10887i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FirmwareUpdateActivity firmwareUpdateActivity, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f10887i = firmwareUpdateActivity;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f10887i, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f10886h;
            if (i10 == 0) {
                d3.e.p(obj);
                TrackManager.INSTANCE.isSoftwareUpdateErrorRestartAndRetry();
                this.f10887i.L.h0(true);
                this.f10886h = 1;
                if (DelayKt.delay(500L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            AdaptRestartActivity.A.a(false, 3000L);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(FirmwareUpdateActivity firmwareUpdateActivity, jd.d<? super l> dVar) {
        super(2, dVar);
        this.f10885i = firmwareUpdateActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new l(this.f10885i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((l) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10884h;
        if (i10 == 0) {
            d3.e.p(obj);
            CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
            a aVar2 = new a(this.f10885i, null);
            this.f10884h = 1;
            if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return fd.o.f7408a;
    }
}
