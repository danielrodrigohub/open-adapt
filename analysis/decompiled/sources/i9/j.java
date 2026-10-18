package i9;

import android.widget.TextView;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import q7.o0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$displayFinishedCreatingModes$2", f = "AdaptShoesOnboardingFragment.kt", l = {460, 462}, m = "invokeSuspend")
public final class j extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f8918i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(g gVar, jd.d<? super j> dVar) {
        super(2, dVar);
        this.f8918i = gVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new j(this.f8918i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((j) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        o0 o0Var;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f8917h;
        if (i10 != 0) {
            if (i10 == 1) {
                d3.e.p(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            o0Var = this.f8918i.f8890i0;
            if (o0Var != null) {
                p4.h.C("binding");
                throw null;
            }
            TextView textView = o0Var.f13952f;
            p4.h.i(textView, "binding.presetCreationCheckmarkText");
            f1.b.o(textView, false, 3);
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        this.f8917h = 1;
        if (DelayKt.delay(900L, this) == aVar) {
            return aVar;
        }
        o0 o0Var2 = this.f8918i.f8890i0;
        if (o0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        TextView textView2 = o0Var2.f13952f;
        p4.h.i(textView2, "binding.presetCreationCheckmarkText");
        f1.b.o(textView2, true, 1);
        this.f8917h = 2;
        if (DelayKt.delay(3250L, this) == aVar) {
            return aVar;
        }
        o0Var = this.f8918i.f8890i0;
        if (o0Var != null) {
            p4.h.C("binding");
            throw null;
        }
        TextView textView3 = o0Var.f13952f;
        p4.h.i(textView3, "binding.presetCreationCheckmarkText");
        f1.b.o(textView3, false, 3);
        return fd.o.f7408a;
    }
}
