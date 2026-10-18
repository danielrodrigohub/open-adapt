package g0;

import android.os.Handler;

/* JADX INFO: compiled from: CallbackWithHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f7486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f7487b;

    public c(n nVar, Handler handler) {
        this.f7486a = nVar;
        this.f7487b = handler;
    }

    public final void a(k.a aVar) {
        int i10 = aVar.f7511b;
        if (!(i10 == 0)) {
            this.f7487b.post(new b(this.f7486a, i10));
        } else {
            this.f7487b.post(new a(this.f7486a, aVar.f7510a));
        }
    }
}
