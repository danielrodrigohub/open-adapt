package ic;

import hc.l0;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements nc.a<String> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l0 f9047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f9048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f9049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ p f9050k;

    public k(l0 l0Var, String str, String str2, p pVar) {
        this.f9047h = l0Var;
        this.f9048i = str;
        this.f9049j = str2;
        this.f9050k = pVar;
    }

    @Override // lc.b
    public final void j(Object obj) throws InterruptedException {
        String str = (String) obj;
        p4.h.j(str, "response");
        Thread.sleep(20L);
        l0 l0Var = this.f9047h;
        l0Var.f(new j(l0Var, str, this.f9048i, this.f9049j, this.f9050k));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        g gVar = g.f9016b;
        gVar.l(new r(this.f9048i));
        gVar.h();
    }
}
