package p4;

import android.os.Handler;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MediaSourceEventListener.java */
/* JADX INFO: loaded from: classes.dex */
public interface e0 {
    default void H(int i10, x.b bVar, u uVar) {
    }

    default void M(int i10, x.b bVar, u uVar) {
    }

    default void O(int i10, x.b bVar, r rVar, u uVar) {
    }

    default void P(int i10, x.b bVar, r rVar, u uVar, IOException iOException, boolean z10) {
    }

    default void Q(int i10, x.b bVar, r rVar, u uVar) {
    }

    default void Y(int i10, x.b bVar, r rVar, u uVar) {
    }

    /* JADX INFO: compiled from: MediaSourceEventListener.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12968a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final x.b f12969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList<C0229a> f12970c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f12971d;

        /* JADX INFO: renamed from: p4.e0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: MediaSourceEventListener.java */
        public static final class C0229a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Handler f12972a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public e0 f12973b;

            public C0229a(Handler handler, e0 e0Var) {
                this.f12972a = handler;
                this.f12973b = e0Var;
            }
        }

        public a() {
            this.f12970c = new CopyOnWriteArrayList<>();
            this.f12968a = 0;
            this.f12969b = null;
            this.f12971d = 0L;
        }

        public final long a(long j10) {
            long jX = m5.g0.X(j10);
            if (jX == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f12971d + jX;
        }

        public final void b(int i10, n3.s0 s0Var, int i11, Object obj, long j10) {
            c(new u(1, i10, s0Var, i11, obj, a(j10), -9223372036854775807L));
        }

        public final void c(u uVar) {
            for (C0229a c0229a : this.f12970c) {
                m5.g0.P(c0229a.f12972a, new y(this, c0229a.f12973b, uVar, 0));
            }
        }

        public final void d(r rVar, int i10) {
            e(rVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public final void e(r rVar, int i10, int i11, n3.s0 s0Var, int i12, Object obj, long j10, long j11) {
            f(rVar, new u(i10, i11, s0Var, i12, obj, a(j10), a(j11)));
        }

        public final void f(final r rVar, final u uVar) {
            for (C0229a c0229a : this.f12970c) {
                final e0 e0Var = c0229a.f12973b;
                m5.g0.P(c0229a.f12972a, new Runnable() { // from class: p4.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        e0.a aVar = this.f12935h;
                        e0Var.Q(aVar.f12968a, aVar.f12969b, rVar, uVar);
                    }
                });
            }
        }

        public final void g(r rVar, int i10) {
            h(rVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public final void h(r rVar, int i10, int i11, n3.s0 s0Var, int i12, Object obj, long j10, long j11) {
            i(rVar, new u(i10, i11, s0Var, i12, obj, a(j10), a(j11)));
        }

        public final void i(final r rVar, final u uVar) {
            for (C0229a c0229a : this.f12970c) {
                final e0 e0Var = c0229a.f12973b;
                m5.g0.P(c0229a.f12972a, new Runnable() { // from class: p4.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        e0.a aVar = this.f12928h;
                        e0Var.Y(aVar.f12968a, aVar.f12969b, rVar, uVar);
                    }
                });
            }
        }

        public final void j(r rVar, int i10, int i11, n3.s0 s0Var, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
            l(rVar, new u(i10, i11, s0Var, i12, obj, a(j10), a(j11)), iOException, z10);
        }

        public final void k(r rVar, int i10, IOException iOException, boolean z10) {
            j(rVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z10);
        }

        public final void l(final r rVar, final u uVar, final IOException iOException, final boolean z10) {
            for (C0229a c0229a : this.f12970c) {
                final e0 e0Var = c0229a.f12973b;
                m5.g0.P(c0229a.f12972a, new Runnable() { // from class: p4.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        e0.a aVar = this.f12949h;
                        e0Var.P(aVar.f12968a, aVar.f12969b, rVar, uVar, iOException, z10);
                    }
                });
            }
        }

        public final void m(r rVar, int i10) {
            n(rVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public final void n(r rVar, int i10, int i11, n3.s0 s0Var, int i12, Object obj, long j10, long j11) {
            o(rVar, new u(i10, i11, s0Var, i12, obj, a(j10), a(j11)));
        }

        public final void o(r rVar, u uVar) {
            for (C0229a c0229a : this.f12970c) {
                m5.g0.P(c0229a.f12972a, new z(this, c0229a.f12973b, rVar, uVar, 0));
            }
        }

        public final void p(int i10, long j10, long j11) {
            q(new u(1, i10, null, 3, null, a(j10), a(j11)));
        }

        public final void q(u uVar) {
            x.b bVar = this.f12969b;
            Objects.requireNonNull(bVar);
            for (C0229a c0229a : this.f12970c) {
                m5.g0.P(c0229a.f12972a, new a0(this, c0229a.f12973b, bVar, uVar, 0));
            }
        }

        public final a r(int i10, x.b bVar, long j10) {
            return new a(this.f12970c, i10, bVar, j10);
        }

        public a(CopyOnWriteArrayList<C0229a> copyOnWriteArrayList, int i10, x.b bVar, long j10) {
            this.f12970c = copyOnWriteArrayList;
            this.f12968a = i10;
            this.f12969b = bVar;
            this.f12971d = j10;
        }
    }
}
