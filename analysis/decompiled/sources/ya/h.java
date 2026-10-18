package ya;

import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import v9.s0;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f19029h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f19030i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(d dVar, CompletableFuture<fd.o> completableFuture) {
        super(0);
        this.f19029h = dVar;
        this.f19030i = completableFuture;
    }

    @Override // qd.a
    public final fd.o invoke() {
        d dVar = this.f19029h;
        f fVar = new f(dVar, this.f19030i);
        g gVar = new g(this.f19030i);
        Objects.requireNonNull(dVar);
        z9.a.IO.b(new s0(new m(dVar, fVar, gVar), dVar));
        return fd.o.f7408a;
    }
}
