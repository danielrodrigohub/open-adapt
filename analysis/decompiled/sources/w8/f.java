package w8;

import android.os.Handler;
import fd.o;

/* JADX INFO: compiled from: GestureKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ qd.a<o> f17246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Handler f17247i;

    public f(qd.a<o> aVar, Handler handler) {
        this.f17246h = aVar;
        this.f17247i = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17246h.invoke();
        this.f17247i.post(this);
    }
}
