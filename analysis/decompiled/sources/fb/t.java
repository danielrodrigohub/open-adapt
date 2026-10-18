package fb;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t implements nc.c<mc.b0, mc.a0> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final mc.a0 f7319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ s f7320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ s.a f7321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f7322k;

    public t(s sVar, s.a aVar, CompletableFuture<fd.o> completableFuture) {
        this.f7320i = sVar;
        this.f7321j = aVar;
        this.f7322k = completableFuture;
        this.f7319h = new mc.a0(sVar.f7301c.f10191h);
    }

    @Override // nc.c
    public final mc.a0 getValue() {
        return this.f7319h;
    }

    @Override // lc.b
    public final void j(Object obj) {
        mc.b0 b0Var = (mc.b0) obj;
        p4.h.j(b0Var, "response");
        this.f7321j.j(fd.o.f7408a);
        s.b(this.f7320i, b0Var, this.f7322k);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f7321j.k(th);
        this.f7322k.complete(fd.o.f7408a);
        this.f7320i.f7308j.d(th);
    }
}
