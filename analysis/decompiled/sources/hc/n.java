package hc;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n implements nc.a<Boolean> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<Boolean> f8603h;

    public n(CompletableFuture<Boolean> completableFuture) {
        this.f8603h = completableFuture;
    }

    @Override // lc.b
    public final void j(Object obj) {
        this.f8603h.complete(Boolean.valueOf(((Boolean) obj).booleanValue()));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        CompletableFuture<Boolean> completableFuture = this.f8603h;
        if (th instanceof TimeoutException) {
            th = new c(4);
        } else {
            androidx.lifecycle.o.q().a("TODO", th, true, "Authentication");
        }
        completableFuture.completeExceptionally(th);
    }
}
