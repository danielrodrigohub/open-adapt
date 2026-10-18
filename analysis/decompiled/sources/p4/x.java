package p4;

import android.os.Handler;
import java.io.IOException;
import n3.b2;
import n3.y0;

/* JADX INFO: compiled from: MediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public interface x {

    /* JADX INFO: compiled from: MediaSource.java */
    public interface a {
        a a(r3.m mVar);

        a b(l5.c0 c0Var);

        x c(y0 y0Var);
    }

    /* JADX INFO: compiled from: MediaSource.java */
    public static final class b extends w {
        public b(Object obj) {
            super(obj, -1, -1, -1L, -1);
        }

        public final b b(Object obj) {
            return new b(this.f13238a.equals(obj) ? this : new w(obj, this.f13239b, this.f13240c, this.f13241d, this.f13242e));
        }

        public b(Object obj, long j10) {
            super(obj, -1, -1, j10, -1);
        }

        public b(Object obj, long j10, int i10) {
            super(obj, -1, -1, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            super(obj, i10, i11, j10, -1);
        }

        public b(w wVar) {
            super(wVar);
        }
    }

    /* JADX INFO: compiled from: MediaSource.java */
    public interface c {
        void a(x xVar, b2 b2Var);
    }

    y0 a();

    void b() throws IOException;

    void c(c cVar, l5.j0 j0Var, o3.v0 v0Var);

    void d(v vVar);

    default void e() {
    }

    void f(Handler handler, e0 e0Var);

    void g(c cVar);

    default void i() {
    }

    void j(e0 e0Var);

    void l(c cVar);

    void n(r3.k kVar);

    void o(c cVar);

    void p(Handler handler, r3.k kVar);

    v q(b bVar, l5.b bVar2, long j10);
}
