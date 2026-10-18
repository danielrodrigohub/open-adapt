package hc;

import java.util.ArrayList;
import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s implements nc.c<mc.b0, mc.a0> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final mc.a0 f8637h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ArrayList<mc.b0> f8638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<Boolean> f8639j;

    public s(mc.a0 a0Var, ArrayList<mc.b0> arrayList, CompletableFuture<Boolean> completableFuture) {
        this.f8638i = arrayList;
        this.f8639j = completableFuture;
        this.f8637h = a0Var;
    }

    @Override // nc.c
    public final mc.a0 getValue() {
        return this.f8637h;
    }

    @Override // lc.b
    public final void j(Object obj) {
        mc.b0 b0Var = (mc.b0) obj;
        p4.h.j(b0Var, "response");
        this.f8638i.add(b0Var);
        this.f8639j.complete(Boolean.TRUE);
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f8639j.complete(Boolean.TRUE);
    }
}
