package n5;

import hc.z;
import java.util.concurrent.CompletableFuture;
import m5.g0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f11967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f11968i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f11969j;

    public /* synthetic */ n(Object obj, Object obj2, int i10) {
        this.f11967h = i10;
        this.f11968i = obj;
        this.f11969j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11967h) {
            case 0:
                s.a aVar = (s.a) this.f11968i;
                String str = (String) this.f11969j;
                s sVar = aVar.f11984b;
                int i10 = g0.f10384a;
                sVar.d(str);
                break;
            default:
                hc.l lVar = (hc.l) this.f11968i;
                CompletableFuture completableFuture = (CompletableFuture) this.f11969j;
                p4.h.j(lVar, "this$0");
                p4.h.j(completableFuture, "$currentAnimationFuture");
                lVar.N(new z(completableFuture));
                break;
        }
    }
}
