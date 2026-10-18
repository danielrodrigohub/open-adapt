package z9;

import androidx.appcompat.widget.e0;
import androidx.lifecycle.m0;
import java.util.UUID;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ c f19440b = new c(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ c f19441c = new c(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19442a;

    public /* synthetic */ c(int i10) {
        this.f19442a = i10;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f19442a) {
            case 0:
                return m0.d(e0.d("adaptkit.network.thread-", h.f19448b.getAndIncrement()), 10, new f(runnable), 6);
            default:
                nb.b bVar = nb.b.f12034i;
                return m0.d("TelemetryInsertExecutor-" + UUID.randomUUID(), 10, new nb.a(runnable), 6);
        }
    }
}
