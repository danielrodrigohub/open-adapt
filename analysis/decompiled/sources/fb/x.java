package fb;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends rd.o implements qd.l<s.a, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f7332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ float f7333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f7334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ la.c f7335k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ mc.b0 f7336l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f7337m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(s sVar, float f10, int i10, la.c cVar, mc.b0 b0Var, CompletableFuture<fd.o> completableFuture) {
        super(1);
        this.f7332h = sVar;
        this.f7333i = f10;
        this.f7334j = i10;
        this.f7335k = cVar;
        this.f7336l = b0Var;
        this.f7337m = completableFuture;
    }

    @Override // qd.l
    public final fd.o invoke(s.a aVar) {
        s.a aVar2 = aVar;
        p4.h.j(aVar2, "command");
        s sVar = this.f7332h;
        sVar.f7302d.x(sVar.f7301c.f10191h, (int) this.f7333i, this.f7334j, new w(sVar, this.f7335k, this.f7336l, aVar2, this.f7337m));
        return fd.o.f7408a;
    }
}
