package o8;

import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.service.AdaptAuthenticationService;
import com.nike.adapt.ui.PairingActivity;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import q7.i1;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.PairingActivity$createConnectedJob$1", f = "PairingActivity.kt", l = {321}, m = "invokeSuspend")
public final class l extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12470i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(PairingActivity pairingActivity, jd.d<? super l> dVar) {
        super(2, dVar);
        this.f12470i = pairingActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new l(this.f12470i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((l) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12469h;
        if (i10 == 0) {
            d3.e.p(obj);
            i1 i1Var = this.f12470i.F;
            if (i1Var == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            TextView textView = i1Var.f13858c;
            p4.h.i(textView, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
            f1.b.o(textView, false, 3);
            this.f12469h = 1;
            if (DelayKt.delay(1600L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        s9.o oVar = s9.o.f15218a;
        PairingActivity pairingActivity = this.f12470i;
        AdaptAuthenticationService adaptAuthenticationService = pairingActivity.G;
        int i11 = adaptAuthenticationService != null ? adaptAuthenticationService.f5682i : 0;
        i1 i1Var2 = pairingActivity.F;
        if (i1Var2 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        TextView textView2 = i1Var2.f13858c;
        p4.h.i(textView2, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
        if (i11 == 4) {
            f1.b.p(textView2, androidx.lifecycle.o.r(R.string.adapt_pairing_second_shoe_confirmation));
            textView2.setContentDescription(androidx.lifecycle.o.r(R.string.adapt_pairing_second_shoe_confirmation));
        } else {
            f1.b.p(textView2, androidx.lifecycle.o.r(R.string.adapt_pairing_first_shoe_confirmation));
            textView2.setContentDescription(androidx.lifecycle.o.r(R.string.adapt_pairing_first_shoe_confirmation));
        }
        textView2.setTextColor(-1);
        Job job = this.f12470i.M;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        return fd.o.f7408a;
    }
}
