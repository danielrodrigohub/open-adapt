package m5;

import androidx.lifecycle.m0;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f0 implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10379b;

    public /* synthetic */ f0(Object obj, int i10) {
        this.f10378a = i10;
        this.f10379b = obj;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f10378a) {
            case 0:
                return new Thread(runnable, (String) this.f10379b);
            default:
                hc.l lVar = (hc.l) this.f10379b;
                p4.h.j(lVar, "this$0");
                return m0.d("authentication-" + lVar.f8547h, 10, new hc.o(runnable), 6);
        }
    }
}
