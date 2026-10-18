package hc;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 implements nc.a<Boolean> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<Boolean> f8403h;

    public a0(CompletableFuture<Boolean> completableFuture) {
        this.f8403h = completableFuture;
    }

    @Override // lc.b
    public final void j(Object obj) {
        this.f8403h.complete(Boolean.valueOf(((Boolean) obj).booleanValue()));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f8403h.completeExceptionally(th);
    }
}
