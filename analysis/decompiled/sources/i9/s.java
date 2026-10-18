package i9;

import android.util.Pair;
import android.widget.TextView;
import com.nike.adapt.R;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import q7.i1;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$showFineTune$1", f = "AdaptShoesOnboardingFragment.kt", l = {292}, m = "invokeSuspend")
public final class s extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8927h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f8928i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(g gVar, jd.d<? super s> dVar) {
        super(2, dVar);
        this.f8928i = gVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new s(this.f8928i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((s) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        String strB;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f8927h;
        if (i10 == 0) {
            d3.e.p(obj);
            g gVar = this.f8928i;
            i1 i1Var = gVar.f8891j0;
            if (i1Var == null) {
                p4.h.C("messagingHeadlineBinding");
                throw null;
            }
            TextView textView = i1Var.f13858c;
            if (gVar.f8896o0 == null) {
                p4.h.C("adaptShoeUtils");
                throw null;
            }
            Pair<String, String> pair = gVar.f8903v0;
            if (pair == null) {
                p4.h.C("pairModeName");
                throw null;
            }
            Object obj2 = pair.first;
            p4.h.i(obj2, "pairModeName.first");
            String str = (String) obj2;
            Pair<String, String> pair2 = this.f8928i.f8903v0;
            if (pair2 == null) {
                p4.h.C("pairModeName");
                throw null;
            }
            Object obj3 = pair2.second;
            p4.h.i(obj3, "pairModeName.second");
            String str2 = (String) obj3;
            s9.r shoeType = h8.c.f8298b.getShoeType();
            p4.h.j(shoeType, "<this>");
            if (shoeType == s9.r.JORDAN || shoeType == s9.r.JORDAN_2) {
                strB = androidx.lifecycle.o.r(R.string.adapt_fine_tune_jordan_title);
            } else {
                strB = s9.e.b(androidx.lifecycle.o.r(R.string.adapt_finding_fit_title), new Pair(str, str2));
                p4.h.i(strB, "format(R.string.adapt_fi…ring(), Pair(key, value))");
            }
            textView.setText(strB);
            i1 i1Var2 = this.f8928i.f8891j0;
            if (i1Var2 == null) {
                p4.h.C("messagingHeadlineBinding");
                throw null;
            }
            j0.a0.q(i1Var2.f13858c, true);
            i1 i1Var3 = this.f8928i.f8891j0;
            if (i1Var3 == null) {
                p4.h.C("messagingHeadlineBinding");
                throw null;
            }
            i1Var3.f13856a.setText(androidx.lifecycle.o.r(R.string.adapt_fine_tune_both_shoes_body));
            this.f8927h = 1;
            if (DelayKt.delay(200L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        g gVar2 = this.f8928i;
        g.a aVar2 = g.K0;
        if (gVar2.M != null) {
            i1 i1Var4 = gVar2.f8891j0;
            if (i1Var4 == null) {
                p4.h.C("messagingHeadlineBinding");
                throw null;
            }
            TextView textView2 = i1Var4.f13858c;
            p4.h.i(textView2, "messagingHeadlineBinding.messagingHeadlineTitle");
            f1.b.o(textView2, true, 1);
            i1 i1Var5 = gVar2.f8891j0;
            if (i1Var5 == null) {
                p4.h.C("messagingHeadlineBinding");
                throw null;
            }
            TextView textView3 = i1Var5.f13856a;
            p4.h.i(textView3, "messagingHeadlineBinding.messagingHeadlineMessage1");
            f1.b.o(textView3, true, 1);
        }
        return fd.o.f7408a;
    }
}
