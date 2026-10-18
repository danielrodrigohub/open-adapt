package ya;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f19025h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(CompletableFuture<fd.o> completableFuture) {
        super(0);
        this.f19025h = completableFuture;
    }

    @Override // qd.a
    public final fd.o invoke() {
        CompletableFuture<fd.o> completableFuture = this.f19025h;
        fd.o oVar = fd.o.f7408a;
        completableFuture.complete(oVar);
        return oVar;
    }
}
