package fb;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends rd.o implements qd.l<s.a, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f7323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f7324i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(s sVar, CompletableFuture<fd.o> completableFuture) {
        super(1);
        this.f7323h = sVar;
        this.f7324i = completableFuture;
    }

    @Override // qd.l
    public final fd.o invoke(s.a aVar) {
        s.a aVar2 = aVar;
        p4.h.j(aVar2, "command");
        s sVar = this.f7323h;
        sVar.f7302d.F(new t(sVar, aVar2, this.f7324i));
        return fd.o.f7408a;
    }
}
