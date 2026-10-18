package androidx.lifecycle;

import android.os.Handler;

/* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f2201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f2202b = new Handler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f2203c;

    /* JADX INFO: compiled from: ServiceLifecycleDispatcher.java */
    public static class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final r f2204h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final i.b f2205i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f2206j = false;

        public a(r rVar, i.b bVar) {
            this.f2204h = rVar;
            this.f2205i = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f2206j) {
                return;
            }
            this.f2204h.f(this.f2205i);
            this.f2206j = true;
        }
    }

    public i0(q qVar) {
        this.f2201a = new r(qVar);
    }

    public final void a(i.b bVar) {
        a aVar = this.f2203c;
        if (aVar != null) {
            aVar.run();
        }
        a aVar2 = new a(this.f2201a, bVar);
        this.f2203c = aVar2;
        this.f2202b.postAtFrontOfQueue(aVar2);
    }
}
