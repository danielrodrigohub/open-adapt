package androidx.lifecycle;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f2100k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2101a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m.b<w<? super T>, LiveData<T>.c> f2102b = new m.b<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2103c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f2105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f2106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2107g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f2110j;

    public class LifecycleBoundObserver extends LiveData<T>.c implements n {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final q f2111l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ LiveData f2112m;

        @Override // androidx.lifecycle.n
        public final void a(q qVar, i.b bVar) {
            i.c cVarB = this.f2111l.a().b();
            if (cVarB == i.c.DESTROYED) {
                this.f2112m.g(this.f2114h);
                return;
            }
            i.c cVar = null;
            while (cVar != cVarB) {
                b(this.f2111l.a().b().b(i.c.STARTED));
                cVar = cVarB;
                cVarB = this.f2111l.a().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.c
        public final void c() {
            this.f2111l.a().c(this);
        }

        @Override // androidx.lifecycle.LiveData.c
        public final boolean d() {
            return this.f2111l.a().b().b(i.c.STARTED);
        }
    }

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            Object obj;
            synchronized (LiveData.this.f2101a) {
                obj = LiveData.this.f2106f;
                LiveData.this.f2106f = LiveData.f2100k;
            }
            LiveData.this.h(obj);
        }
    }

    public class b extends LiveData<T>.c {
        public b(LiveData liveData, w<? super T> wVar) {
            super(wVar);
        }

        @Override // androidx.lifecycle.LiveData.c
        public final boolean d() {
            return true;
        }
    }

    public abstract class c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final w<? super T> f2114h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f2115i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2116j = -1;

        public c(w<? super T> wVar) {
            this.f2114h = wVar;
        }

        public final void b(boolean z10) {
            if (z10 == this.f2115i) {
                return;
            }
            this.f2115i = z10;
            LiveData liveData = LiveData.this;
            int i10 = z10 ? 1 : -1;
            int i11 = liveData.f2103c;
            liveData.f2103c = i10 + i11;
            if (!liveData.f2104d) {
                liveData.f2104d = true;
                while (true) {
                    try {
                        int i12 = liveData.f2103c;
                        if (i11 == i12) {
                            break;
                        }
                        boolean z11 = i11 == 0 && i12 > 0;
                        boolean z12 = i11 > 0 && i12 == 0;
                        if (z11) {
                            liveData.e();
                        } else if (z12) {
                            liveData.f();
                        }
                        i11 = i12;
                    } catch (Throwable th) {
                        liveData.f2104d = false;
                        throw th;
                    }
                }
                liveData.f2104d = false;
            }
            if (this.f2115i) {
                LiveData.this.c(this);
            }
        }

        public void c() {
        }

        public abstract boolean d();
    }

    public LiveData() {
        Object obj = f2100k;
        this.f2106f = obj;
        this.f2110j = new a();
        this.f2105e = obj;
        this.f2107g = -1;
    }

    public static void a(String str) {
        if (!l.a.c().d()) {
            throw new IllegalStateException(a0.d.c("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(LiveData<T>.c cVar) {
        if (cVar.f2115i) {
            if (!cVar.d()) {
                cVar.b(false);
                return;
            }
            int i10 = cVar.f2116j;
            int i11 = this.f2107g;
            if (i10 >= i11) {
                return;
            }
            cVar.f2116j = i11;
            cVar.f2114h.a((Object) this.f2105e);
        }
    }

    public final void c(LiveData<T>.c cVar) {
        if (this.f2108h) {
            this.f2109i = true;
            return;
        }
        this.f2108h = true;
        do {
            this.f2109i = false;
            if (cVar != null) {
                b(cVar);
                cVar = null;
            } else {
                m.b<w<? super T>, LiveData<T>.c>.d dVarK = this.f2102b.k();
                while (dVarK.hasNext()) {
                    b((c) ((Map.Entry) dVarK.next()).getValue());
                    if (this.f2109i) {
                        break;
                    }
                }
            }
        } while (this.f2109i);
        this.f2108h = false;
    }

    public final void d(w<? super T> wVar) {
        a("observeForever");
        b bVar = new b(this, wVar);
        LiveData<T>.c cVarM = this.f2102b.m(wVar, bVar);
        if (cVarM instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVarM != null) {
            return;
        }
        bVar.b(true);
    }

    public void e() {
    }

    public void f() {
    }

    public void g(w<? super T> wVar) {
        a("removeObserver");
        LiveData<T>.c cVarN = this.f2102b.n(wVar);
        if (cVarN == null) {
            return;
        }
        cVarN.c();
        cVarN.b(false);
    }

    public abstract void h(T t10);
}
