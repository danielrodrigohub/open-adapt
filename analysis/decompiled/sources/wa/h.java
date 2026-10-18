package wa;

import qd.l;
import rd.o;
import v9.g2;

/* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends o implements l<g2<v9.f>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ia.a<?, ?, ?> f17577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d.b f17578i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(ia.a<?, ?, ?> aVar, d.b bVar) {
        super(1);
        this.f17577h = aVar;
        this.f17578i = bVar;
    }

    @Override // qd.l
    public final fd.o invoke(g2<v9.f> g2Var) {
        g2<v9.f> g2Var2 = g2Var;
        p4.h.j(g2Var2, "$this$null");
        g2Var2.f16565b = new g(this.f17577h, this.f17578i);
        return fd.o.f7408a;
    }
}
