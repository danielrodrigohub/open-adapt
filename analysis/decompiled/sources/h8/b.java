package h8;

import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.nike.adapt.presenter.profile.AdaptUser;
import e7.h;
import rd.o;

/* JADX INFO: compiled from: AdaptPreferenceHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ f8.c<AdaptUser> f8297h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(f8.c<AdaptUser> cVar) {
        super(0);
        this.f8297h = cVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        fd.o oVar;
        AdaptUser adaptUser;
        String string = c.f8298b.m0().getString("PREF_BIGFOOT_USER", null);
        if (string == null || (adaptUser = (AdaptUser) GsonInstrumentation.fromJson(new h(), string, AdaptUser.class)) == null) {
            oVar = null;
        } else {
            this.f8297h.a(new f8.e(adaptUser));
            oVar = fd.o.f7408a;
        }
        if (oVar == null) {
            this.f8297h.a(new f8.d(new f(null, 1, null)));
        }
        return fd.o.f7408a;
    }
}
