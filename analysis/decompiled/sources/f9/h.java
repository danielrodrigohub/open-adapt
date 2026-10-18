package f9;

import android.content.Intent;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.ui.myshoes.SelectShoesActivity;
import fd.o;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import qd.p;

/* JADX INFO: compiled from: SelectShoesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.myshoes.SelectShoesActivity$onRemoveShoes$2$1", f = "SelectShoesActivity.kt", l = {135}, m = "invokeSuspend")
public final class h extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SelectShoesActivity f7113i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.app.d f7114j;

    /* JADX INFO: compiled from: SelectShoesActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.myshoes.SelectShoesActivity$onRemoveShoes$2$1$1", f = "SelectShoesActivity.kt", l = {138, 139}, m = "invokeSuspend")
    public static final class a extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f7115h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ SelectShoesActivity f7116i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ androidx.appcompat.app.d f7117j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SelectShoesActivity selectShoesActivity, androidx.appcompat.app.d dVar, jd.d<? super a> dVar2) {
            super(2, dVar2);
            this.f7116i = selectShoesActivity;
            this.f7117j = dVar;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f7116i, this.f7117j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f7115h;
            if (i10 != 0) {
                if (i10 == 1) {
                    d3.e.p(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                this.f7116i.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
                this.f7116i.setResult(-1);
                this.f7116i.finish();
                return o.f7408a;
            }
            d3.e.p(obj);
            SelectShoesActivity selectShoesActivity = this.f7116i;
            IDeviceController iDeviceController = selectShoesActivity.J;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.deleteDisconnectedShoes(selectShoesActivity.M);
            this.f7117j.dismiss();
            this.f7115h = 1;
            if (DelayKt.delay(300L, this) == aVar) {
                return aVar;
            }
            PairDataRepository pairDataRepository = PairDataRepository.INSTANCE;
            this.f7115h = 2;
            if (pairDataRepository.syncPairData(this) == aVar) {
                return aVar;
            }
            this.f7116i.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
            this.f7116i.setResult(-1);
            this.f7116i.finish();
            return o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(SelectShoesActivity selectShoesActivity, androidx.appcompat.app.d dVar, jd.d<? super h> dVar2) {
        super(2, dVar2);
        this.f7113i = selectShoesActivity;
        this.f7114j = dVar;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new h(this.f7113i, this.f7114j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((h) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f7112h;
        if (i10 == 0) {
            d3.e.p(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            a aVar2 = new a(this.f7113i, this.f7114j, null);
            this.f7112h = 1;
            if (BuildersKt.withContext(main, aVar2, this) == aVar) {
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
