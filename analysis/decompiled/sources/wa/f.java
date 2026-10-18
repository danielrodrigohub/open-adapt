package wa;

import qd.l;
import rd.o;
import v9.h2;

/* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends o implements l<h2<v9.g>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ia.a<?, ?, ?> f17573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d.b f17574i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ia.a<?, ?, ?> aVar, d.b bVar) {
        super(1);
        this.f17573h = aVar;
        this.f17574i = bVar;
    }

    @Override // qd.l
    public final fd.o invoke(h2<v9.g> h2Var) {
        h2<v9.g> h2Var2 = h2Var;
        p4.h.j(h2Var2, "$this$null");
        h2Var2.f16583c = new e(this.f17573h, this.f17574i);
        return fd.o.f7408a;
    }
}
