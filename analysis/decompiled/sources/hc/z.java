package hc;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z implements nc.a<mc.g0> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<mc.g0> f8645h;

    public z(CompletableFuture<mc.g0> completableFuture) {
        this.f8645h = completableFuture;
    }

    @Override // lc.b
    public final void j(Object obj) {
        mc.g0 g0Var = (mc.g0) obj;
        p4.h.j(g0Var, "response");
        this.f8645h.complete(g0Var);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f8645h.completeExceptionally(th);
    }
}
