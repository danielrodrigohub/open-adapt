package hc;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w implements nc.a<byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l f8642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<byte[]> f8643i;

    public w(l lVar, CompletableFuture<byte[]> completableFuture) {
        this.f8642h = lVar;
        this.f8643i = completableFuture;
    }

    @Override // lc.b
    public final void j(Object obj) {
        byte[] bArr = (byte[]) obj;
        p4.h.j(bArr, "response");
        this.f8643i.complete(bArr);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f8642h.f8550k.a("com.nike.corerf.ACTION_RIPLEY_FAILED_AUTHENTICATION");
        CompletableFuture<byte[]> completableFuture = this.f8643i;
        if (th instanceof TimeoutException) {
            th = new c(3);
        } else {
            androidx.lifecycle.o.q().a("TODO", th, true, "Authentication");
        }
        completableFuture.completeExceptionally(th);
    }
}
