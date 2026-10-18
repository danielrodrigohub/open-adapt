package ya;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends rd.o implements qd.l<la.c, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f19020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f19021i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, CompletableFuture<fd.o> completableFuture) {
        super(1);
        this.f19020h = dVar;
        this.f19021i = completableFuture;
    }

    @Override // qd.l
    public final fd.o invoke(la.c cVar) {
        la.c cVar2 = cVar;
        d dVar = this.f19020h;
        dVar.f18769l = cVar2;
        if (cVar2 != null) {
            ((fb.s) dVar.f0(cVar2.f10193h)).i();
        }
        CompletableFuture<fd.o> completableFuture = this.f19021i;
        fd.o oVar = fd.o.f7408a;
        completableFuture.complete(oVar);
        return oVar;
    }
}
