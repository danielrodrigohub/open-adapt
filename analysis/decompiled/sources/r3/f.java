package r3;

import hc.m0;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f14489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f14490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f14491j;

    public /* synthetic */ f(Object obj, Object obj2, int i10) {
        this.f14489h = i10;
        this.f14490i = obj;
        this.f14491j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws kc.f, TimeoutException {
        switch (this.f14489h) {
            case 0:
                k.a aVar = (k.a) this.f14490i;
                ((k) this.f14491j).i0(aVar.f14502a, aVar.f14503b);
                return;
            case 1:
                Objects.requireNonNull((q4.b.a) this.f14490i);
                throw null;
            default:
                hc.l lVar = (hc.l) this.f14490i;
                CompletableFuture completableFuture = (CompletableFuture) this.f14491j;
                p4.h.j(lVar, "this$0");
                p4.h.j(completableFuture, "$completableFuture");
                hc.d dVar = hc.d.START_AUTH_KEY_GENERATION;
                lVar.f8550k.k("Start Key Exchange", new m0((byte) 110, m0.a.REQUEST, null), new hc.x(new hc.y(completableFuture)), 20000L);
                return;
        }
    }
}
