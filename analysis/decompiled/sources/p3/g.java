package p3;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f12757j;

    public /* synthetic */ g(Object obj, Object obj2, int i10) {
        this.f12755h = i10;
        this.f12756i = obj;
        this.f12757j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12755h) {
            case 0:
                p.a aVar = (p.a) this.f12756i;
                Exception exc = (Exception) this.f12757j;
                p pVar = aVar.f12790b;
                int i10 = m5.g0.f10384a;
                pVar.m(exc);
                break;
            case 1:
                n5.s.a aVar2 = (n5.s.a) this.f12756i;
                n5.t tVar = (n5.t) this.f12757j;
                n5.s sVar = aVar2.f11984b;
                int i11 = m5.g0.f10384a;
                sVar.b(tVar);
                break;
            default:
                hc.l lVar = (hc.l) this.f12756i;
                CompletableFuture completableFuture = (CompletableFuture) this.f12757j;
                p4.h.j(lVar, "this$0");
                p4.h.j(completableFuture, "$stopCompletable");
                lVar.B(new hc.a0(completableFuture));
                break;
        }
    }
}
