package i9;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import x8.e1;
import x8.o0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$animateFromFitScreen$1", f = "AdaptShoesOnboardingFragment.kt", l = {268}, m = "invokeSuspend")
public final class h extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f8915i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar, jd.d<? super h> dVar) {
        super(2, dVar);
        this.f8915i = gVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new h(this.f8915i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((h) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f8914h;
        if (i10 == 0) {
            d3.e.p(obj);
            this.f8914h = 1;
            if (DelayKt.delay(500L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        x8.g0 g0Var = this.f8915i.f8897p0;
        if (g0Var == null) {
            p4.h.C("leftShoeScaleControllerUiHelper");
            throw null;
        }
        e1.f(g0Var, false, 1, null);
        o0 o0Var = this.f8915i.f8898q0;
        if (o0Var != null) {
            e1.f(o0Var, false, 1, null);
            return fd.o.f7408a;
        }
        p4.h.C("rightShoeScaleControllerUiHelper");
        throw null;
    }
}
