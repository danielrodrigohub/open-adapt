package r3;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;
import m5.g0;

/* JADX INFO: compiled from: DrmSessionEventListener.java */
/* JADX INFO: loaded from: classes.dex */
public interface k {
    @Deprecated
    default void E() {
    }

    default void J(int i10, p4.x.b bVar) {
    }

    default void T(int i10, p4.x.b bVar) {
    }

    default void d0(int i10, p4.x.b bVar, Exception exc) {
    }

    default void i0(int i10, p4.x.b bVar) {
    }

    default void k0(int i10, p4.x.b bVar, int i11) {
    }

    default void p0(int i10, p4.x.b bVar) {
    }

    /* JADX INFO: compiled from: DrmSessionEventListener.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14502a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final p4.x.b f14503b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList<C0249a> f14504c;

        /* JADX INFO: renamed from: r3.k$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DrmSessionEventListener.java */
        public static final class C0249a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Handler f14505a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public k f14506b;

            public C0249a(Handler handler, k kVar) {
                this.f14505a = handler;
                this.f14506b = kVar;
            }
        }

        public a() {
            this.f14504c = new CopyOnWriteArrayList<>();
            this.f14502a = 0;
            this.f14503b = null;
        }

        public final void a() {
            for (C0249a c0249a : this.f14504c) {
                g0.P(c0249a.f14505a, new z.e(this, c0249a.f14506b, 1));
            }
        }

        public final void b() {
            for (C0249a c0249a : this.f14504c) {
                g0.P(c0249a.f14505a, new f(this, c0249a.f14506b, 0));
            }
        }

        public final void c() {
            for (C0249a c0249a : this.f14504c) {
                final k kVar = c0249a.f14506b;
                g0.P(c0249a.f14505a, new Runnable() { // from class: r3.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.a aVar = this.f14492h;
                        kVar.T(aVar.f14502a, aVar.f14503b);
                    }
                });
            }
        }

        public final void d(final int i10) {
            for (C0249a c0249a : this.f14504c) {
                final k kVar = c0249a.f14506b;
                g0.P(c0249a.f14505a, new Runnable() { // from class: r3.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.a aVar = this.f14496h;
                        k kVar2 = kVar;
                        int i11 = i10;
                        int i12 = aVar.f14502a;
                        kVar2.E();
                        kVar2.k0(aVar.f14502a, aVar.f14503b, i11);
                    }
                });
            }
        }

        public final void e(final Exception exc) {
            for (C0249a c0249a : this.f14504c) {
                final k kVar = c0249a.f14506b;
                g0.P(c0249a.f14505a, new Runnable() { // from class: r3.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.a aVar = this.f14499h;
                        kVar.d0(aVar.f14502a, aVar.f14503b, exc);
                    }
                });
            }
        }

        public final void f() {
            for (C0249a c0249a : this.f14504c) {
                final k kVar = c0249a.f14506b;
                g0.P(c0249a.f14505a, new Runnable() { // from class: r3.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.a aVar = this.f14494h;
                        kVar.J(aVar.f14502a, aVar.f14503b);
                    }
                });
            }
        }

        public final a g(int i10, p4.x.b bVar) {
            return new a(this.f14504c, i10, bVar);
        }

        public a(CopyOnWriteArrayList<C0249a> copyOnWriteArrayList, int i10, p4.x.b bVar) {
            this.f14504c = copyOnWriteArrayList;
            this.f14502a = i10;
            this.f14503b = bVar;
        }
    }
}
