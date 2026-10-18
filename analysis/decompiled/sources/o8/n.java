package o8;

import android.widget.TextView;
import com.nike.adapt.service.AdaptAuthenticationService;
import com.nike.adapt.ui.PairingActivity;
import kotlinx.coroutines.CoroutineScope;
import q7.i1;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.PairingActivity$createConnectingJob$1", f = "PairingActivity.kt", l = {}, m = "invokeSuspend")
public final class n extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12472h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(PairingActivity pairingActivity, jd.d<? super n> dVar) {
        super(2, dVar);
        this.f12472h = pairingActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new n(this.f12472h, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
        n nVar = (n) create(coroutineScope, dVar);
        fd.o oVar = fd.o.f7408a;
        nVar.invokeSuspend(oVar);
        return oVar;
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i10;
        d3.e.p(obj);
        PairingActivity pairingActivity = this.f12472h;
        AdaptAuthenticationService adaptAuthenticationService = pairingActivity.G;
        if (adaptAuthenticationService != null && (i10 = adaptAuthenticationService.f5682i) == 1) {
            s9.o oVar = s9.o.f15218a;
            i1 i1Var = pairingActivity.F;
            if (i1Var == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            TextView textView = i1Var.f13858c;
            p4.h.i(textView, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
            i1 i1Var2 = pairingActivity.F;
            if (i1Var2 == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            TextView textView2 = i1Var2.f13856a;
            p4.h.i(textView2, "itemMessagingHeadlineBin…messagingHeadlineMessage1");
            oVar.a(i10, textView, textView2);
        }
        c3.d.r(this.f12472h, 50L);
        return fd.o.f7408a;
    }
}
