package m9;

import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SupportDeleteAccountActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.settings.SupportDeleteAccountActivity$deleteAccount$1", f = "SupportDeleteAccountActivity.kt", l = {80}, m = "invokeSuspend")
public final class o0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SupportDeleteAccountActivity f10902h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10903i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SupportDeleteAccountActivity f10904j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(SupportDeleteAccountActivity supportDeleteAccountActivity, jd.d<? super o0> dVar) {
        super(2, dVar);
        this.f10904j = supportDeleteAccountActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new o0(this.f10904j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((o0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        SupportDeleteAccountActivity supportDeleteAccountActivity;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10903i;
        if (i10 == 0) {
            d3.e.p(obj);
            SupportDeleteAccountActivity supportDeleteAccountActivity2 = this.f10904j;
            m8.e eVar = m8.e.f10818a;
            this.f10902h = supportDeleteAccountActivity2;
            this.f10903i = 1;
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new m8.d(null), this);
            if (objWithContext == aVar) {
                return aVar;
            }
            supportDeleteAccountActivity = supportDeleteAccountActivity2;
            obj = objWithContext;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            supportDeleteAccountActivity = this.f10902h;
            d3.e.p(obj);
        }
        supportDeleteAccountActivity.B = (d8.c) obj;
        d8.c cVar = this.f10904j.B;
        d8.c.b bVar = d8.c.b.f6121a;
        if (p4.h.c(cVar, bVar)) {
            this.f10904j.l0();
        } else if (p4.h.c(cVar, d8.c.C0108c.f6122a)) {
            SupportDeleteAccountActivity supportDeleteAccountActivity3 = this.f10904j;
            supportDeleteAccountActivity3.runOnUiThread(new y0.y(supportDeleteAccountActivity3, 5));
        } else {
            SupportDeleteAccountActivity supportDeleteAccountActivity4 = this.f10904j;
            supportDeleteAccountActivity4.runOnUiThread(new y0.s(supportDeleteAccountActivity4, 6));
        }
        q7.v vVar = this.f10904j.A;
        if (vVar == null) {
            p4.h.C("binding");
            throw null;
        }
        vVar.f14032d.setVisibility(8);
        q7.v vVar2 = this.f10904j.A;
        if (vVar2 == null) {
            p4.h.C("binding");
            throw null;
        }
        vVar2.f14029a.setText(androidx.lifecycle.o.r(R.string.adapt_support_delete_account_title));
        if (!p4.h.c(this.f10904j.B, bVar)) {
            q7.v vVar3 = this.f10904j.A;
            if (vVar3 == null) {
                p4.h.C("binding");
                throw null;
            }
            vVar3.f14033e.setVisibility(8);
        }
        return fd.o.f7408a;
    }
}
