package hc;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y implements nc.a<Integer> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<Integer> f8644h;

    public y(CompletableFuture<Integer> completableFuture) {
        this.f8644h = completableFuture;
    }

    @Override // lc.b
    public final void j(Object obj) {
        this.f8644h.complete(Integer.valueOf(((Number) obj).intValue()));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        CompletableFuture<Integer> completableFuture = this.f8644h;
        if (th instanceof TimeoutException) {
            th = new c(1);
        } else {
            androidx.lifecycle.o.q().a("TODO", th, true, "Authentication");
        }
        completableFuture.completeExceptionally(th);
    }
}
