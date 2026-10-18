package m9;

import android.content.Intent;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.ShoeProfileActivity;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.settings.ShoeProfileActivity$onRemoveShoe$2$1", f = "ShoeProfileActivity.kt", l = {290}, m = "invokeSuspend")
public final class k0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10878h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ShoeProfileActivity f10879i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.app.d f10880j;

    /* JADX INFO: compiled from: ShoeProfileActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.settings.ShoeProfileActivity$onRemoveShoe$2$1$1", f = "ShoeProfileActivity.kt", l = {298, 299}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10881h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ShoeProfileActivity f10882i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ androidx.appcompat.app.d f10883j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ShoeProfileActivity shoeProfileActivity, androidx.appcompat.app.d dVar, jd.d<? super a> dVar2) {
            super(2, dVar2);
            this.f10882i = shoeProfileActivity;
            this.f10883j = dVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f10882i, this.f10883j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f10881h;
            if (i10 != 0) {
                if (i10 == 1) {
                    d3.e.p(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                s9.c.f15180a.g(this.f10882i);
                this.f10882i.finish();
                this.f10882i.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
                return fd.o.f7408a;
            }
            d3.e.p(obj);
            this.f10882i.T.C(true);
            this.f10882i.T.g(true);
            this.f10882i.T.g0(true);
            TrackManager.INSTANCE.multipairConnectedRemove();
            IDeviceController iDeviceController = this.f10882i.I;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.requestTo(Shoe.BOTH, new p8.o(null, 1, null));
            this.f10883j.dismiss();
            this.f10882i.setResult(-1);
            this.f10881h = 1;
            if (DelayKt.delay(300L, this) == aVar) {
                return aVar;
            }
            PairDataRepository pairDataRepository = PairDataRepository.INSTANCE;
            this.f10881h = 2;
            if (pairDataRepository.syncPairData(this) == aVar) {
                return aVar;
            }
            s9.c.f15180a.g(this.f10882i);
            this.f10882i.finish();
            this.f10882i.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(ShoeProfileActivity shoeProfileActivity, androidx.appcompat.app.d dVar, jd.d<? super k0> dVar2) {
        super(2, dVar2);
        this.f10879i = shoeProfileActivity;
        this.f10880j = dVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new k0(this.f10879i, this.f10880j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((k0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10878h;
        if (i10 == 0) {
            d3.e.p(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            a aVar2 = new a(this.f10879i, this.f10880j, null);
            this.f10878h = 1;
            if (BuildersKt.withContext(main, aVar2, this) == aVar) {
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
