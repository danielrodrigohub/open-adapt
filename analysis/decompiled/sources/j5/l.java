package j5;

import java.util.List;
import n3.s0;
import p4.t0;

/* JADX INFO: compiled from: ExoTrackSelection.java */
/* JADX INFO: loaded from: classes.dex */
public interface l extends o {

    /* JADX INFO: compiled from: ExoTrackSelection.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t0 f9378a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f9379b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9380c;

        public a(t0 t0Var, int[] iArr, int i10) {
            if (iArr.length == 0) {
                m5.p.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f9378a = t0Var;
            this.f9379b = iArr;
            this.f9380c = i10;
        }
    }

    /* JADX INFO: compiled from: ExoTrackSelection.java */
    public interface b {
    }

    boolean b(int i10, long j10);

    boolean c(int i10, long j10);

    default void d(boolean z10) {
    }

    void disable();

    void f();

    void g(long j10, long j11, long j12, List<? extends r4.m> list, r4.n[] nVarArr);

    default boolean h(long j10, r4.e eVar, List<? extends r4.m> list) {
        return false;
    }

    int j(long j10, List<? extends r4.m> list);

    int k();

    s0 m();

    int n();

    int o();

    void p(float f10);

    Object q();

    default void r() {
    }

    default void s() {
    }
}
