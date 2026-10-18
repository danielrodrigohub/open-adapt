package o7;

import androidx.appcompat.widget.e0;
import androidx.lifecycle.m0;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ w f12416b = new w(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ w f12417c = new w(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ w f12418d = new w(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12419a;

    public /* synthetic */ w(int i10) {
        this.f12419a = i10;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f12419a) {
            case 0:
                x xVar = x.f12420a;
                return new Thread(new y0.x(runnable, 4), "NewRelic");
            case 1:
                return m0.d(e0.d("adaptkit.device.thread-", z9.h.f19449c.getAndIncrement()), 10, new z9.d(runnable), 6);
            default:
                ic.g gVar = ic.g.f9016b;
                StringBuilder sbC = a0.b.c("ConnectionManagerShutdown-");
                sbC.append(ic.g.f9026l.getAndIncrement());
                return m0.d(sbC.toString(), 10, new ic.h(runnable), 6);
        }
    }
}
