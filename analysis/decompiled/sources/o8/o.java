package o8;

import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.ui.PairingActivity;
import j0.a0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import okhttp3.internal.http.HttpStatusCodesKt;
import q7.i1;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.PairingActivity$createTapToConfirmJob$1", f = "PairingActivity.kt", l = {HttpStatusCodesKt.HTTP_USE_PROXY}, m = "invokeSuspend")
public final class o extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f12475j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(PairingActivity pairingActivity, boolean z10, jd.d<? super o> dVar) {
        super(2, dVar);
        this.f12474i = pairingActivity;
        this.f12475j = z10;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new o(this.f12474i, this.f12475j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((o) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        String strR;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12473h;
        if (i10 == 0) {
            d3.e.p(obj);
            c3.d.r(this.f12474i, 200L);
            i1 i1Var = this.f12474i.F;
            if (i1Var == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            TextView textView = i1Var.f13858c;
            p4.h.i(textView, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
            f1.b.p(textView, androidx.lifecycle.o.r(R.string.adapt_pairing_shoe_detected));
            i1 i1Var2 = this.f12474i.F;
            if (i1Var2 == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            i1Var2.f13858c.setTextColor(-16777216);
            i1 i1Var3 = this.f12474i.F;
            if (i1Var3 == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            a0.q(i1Var3.f13858c, true);
            i1 i1Var4 = this.f12474i.F;
            if (i1Var4 == null) {
                p4.h.C("itemMessagingHeadlineBinding");
                throw null;
            }
            i1Var4.f13856a.setVisibility(8);
            this.f12473h = 1;
            if (DelayKt.delay(1000L, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        s9.o oVar = s9.o.f15218a;
        if (this.f12475j) {
            o7.x.f12420a.i("Right Shoe Connection Time while Pairing", System.currentTimeMillis() - s9.o.f15221d);
            strR = androidx.lifecycle.o.r(R.string.adapt_pairing_press_right_light_to_confirm);
        } else {
            o7.x.f12420a.i("Left Shoe Connection Time while Pairing", System.currentTimeMillis() - s9.o.f15221d);
            strR = androidx.lifecycle.o.r(R.string.adapt_pairing_press_left_light_to_confirm);
        }
        i1 i1Var5 = this.f12474i.F;
        if (i1Var5 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        TextView textView2 = i1Var5.f13858c;
        p4.h.i(textView2, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
        f1.b.p(textView2, strR);
        i1 i1Var6 = this.f12474i.F;
        if (i1Var6 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        a0.q(i1Var6.f13858c, true);
        i1 i1Var7 = this.f12474i.F;
        if (i1Var7 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var7.f13858c.setContentDescription(androidx.lifecycle.o.r(R.string.adapt_pairing_shoe_detected) + strR);
        return fd.o.f7408a;
    }
}
