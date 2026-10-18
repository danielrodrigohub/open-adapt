package hc;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u implements lc.b<List<? extends mc.a0>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l f8640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ nc.a<List<mc.b0>> f8641i;

    public u(l lVar, nc.a<List<mc.b0>> aVar) {
        this.f8640h = lVar;
        this.f8641i = aVar;
    }

    @Override // lc.b
    public final void j(List<? extends mc.a0> list) throws ExecutionException, InterruptedException {
        List<? extends mc.a0> list2 = list;
        p4.h.j(list2, "response");
        l lVar = this.f8640h;
        nc.a<List<mc.b0>> aVar = this.f8641i;
        Objects.requireNonNull(lVar);
        ArrayList arrayList = new ArrayList();
        for (mc.a0 a0Var : list2) {
            CompletableFuture completableFuture = new CompletableFuture();
            lVar.F(new s(a0Var, arrayList, completableFuture));
            completableFuture.get();
        }
        aVar.j(arrayList);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f8641i.k(th);
    }
}
