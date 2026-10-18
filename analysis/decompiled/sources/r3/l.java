package r3;

import android.os.Looper;
import n3.s0;
import o3.v0;

/* JADX INFO: compiled from: DrmSessionManager.java */
/* JADX INFO: loaded from: classes.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14507a = new a();

    /* JADX INFO: compiled from: DrmSessionManager.java */
    public class a implements l {
        @Override // r3.l
        public final e d(k.a aVar, s0 s0Var) {
            if (s0Var.f11690v == null) {
                return null;
            }
            return new r(new e.a(new a0(), 6001));
        }

        @Override // r3.l
        public final int e(s0 s0Var) {
            return s0Var.f11690v != null ? 1 : 0;
        }

        @Override // r3.l
        public final void f(Looper looper, v0 v0Var) {
        }
    }

    /* JADX INFO: compiled from: DrmSessionManager.java */
    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final y0.g f14508a = y0.g.f18208f;

        void a();
    }

    default void a() {
    }

    default void b() {
    }

    default b c(k.a aVar, s0 s0Var) {
        return b.f14508a;
    }

    e d(k.a aVar, s0 s0Var);

    int e(s0 s0Var);

    void f(Looper looper, v0 v0Var);
}
