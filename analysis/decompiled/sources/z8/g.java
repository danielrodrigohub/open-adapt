package z8;

import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import fd.o;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import qd.p;

/* JADX INFO: compiled from: LightPacksActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity$displayTooltip1$1$1$1", f = "LightPacksActivity.kt", l = {530}, m = "invokeSuspend")
public final class g extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ LightPacksActivity f19407i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(LightPacksActivity lightPacksActivity, jd.d<? super g> dVar) {
        super(2, dVar);
        this.f19407i = lightPacksActivity;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new g(this.f19407i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((g) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f19406h;
        if (i10 == 0) {
            d3.e.p(obj);
            this.f19406h = 1;
            if (DelayKt.delay(500L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        RecyclerView recyclerView = this.f19407i.r0().f13862d;
        b bVar = this.f19407i.O;
        if (bVar == null) {
            p4.h.C("lightPackAdapter");
            throw null;
        }
        LightPacksActivity.a aVar2 = LightPacksActivity.f5779g0;
        recyclerView.k0((bVar.f19398f / 2) + LightPacksActivity.a.a(a.MY_LIGHTS));
        return o.f7408a;
    }
}
