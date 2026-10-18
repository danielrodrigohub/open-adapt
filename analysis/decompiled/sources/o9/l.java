package o9;

import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import n3.x1;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onUnlaceClicked$1$1", f = "ShoeControllerActivity.kt", l = {569}, m = "invokeSuspend")
public final class l extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12514i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(ShoeControllerActivity shoeControllerActivity, jd.d<? super l> dVar) {
        super(2, dVar);
        this.f12514i = shoeControllerActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new l(this.f12514i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((l) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12513h;
        if (i10 == 0) {
            d3.e.p(obj);
            this.f12513h = 1;
            if (DelayKt.delay(3000L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        ShoeControllerActivity shoeControllerActivity = this.f12514i;
        s sVar = shoeControllerActivity.f5881j0;
        if (sVar != null) {
            x1 x1Var = shoeControllerActivity.f5880i0;
            sVar.d(x1Var, false);
            sVar.d(x1Var, true);
        }
        return fd.o.f7408a;
    }
}
