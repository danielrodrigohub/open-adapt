package z9;

import fd.o;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public enum a {
    ADAPT_DEVICE(h.f19450d),
    IO(h.f19451e),
    NETWORK(h.f19452f);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExecutorService f19438h;

    a(ExecutorService executorService) {
        this.f19438h = executorService;
    }

    public final void b(final qd.a<o> aVar) {
        this.f19438h.execute(new Runnable() { // from class: v9.r0
            @Override // java.lang.Runnable
            public final void run() {
                qd.a aVar2 = aVar;
                z9.a aVar3 = z9.a.ADAPT_DEVICE;
                p4.h.j(aVar2, "$tmp0");
                aVar2.invoke();
            }
        });
    }
}
