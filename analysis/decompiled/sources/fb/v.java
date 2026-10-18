package fb;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f7325h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f7326i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(s sVar, CompletableFuture completableFuture) {
        super(0);
        this.f7325h = sVar;
        this.f7326i = completableFuture;
    }

    @Override // qd.a
    public final fd.o invoke() {
        s sVar = this.f7325h;
        sVar.e("sessionDetermineSessionInfo", new u(sVar, this.f7326i));
        return fd.o.f7408a;
    }
}
