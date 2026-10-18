package n3;

import java.io.IOException;

/* JADX INFO: compiled from: Renderer.java */
/* JADX INFO: loaded from: classes.dex */
public interface s1 extends p1.b {

    /* JADX INFO: compiled from: Renderer.java */
    public interface a {
        void a();

        void b();
    }

    boolean b();

    void disable();

    void e();

    void g(s0[] s0VarArr, p4.m0 m0Var, long j10, long j11) throws q;

    String getName();

    int getState();

    boolean h();

    void i(int i10, o3.v0 v0Var);

    boolean isReady();

    void k(long j10, long j11) throws q;

    p4.m0 m();

    void n();

    void o() throws IOException;

    long p();

    void q(long j10) throws q;

    boolean r();

    m5.r s();

    void start() throws q;

    void stop();

    void t(u1 u1Var, s0[] s0VarArr, p4.m0 m0Var, long j10, boolean z10, boolean z11, long j11, long j12) throws q;

    int u();

    t1 v();

    default void x(float f10, float f11) throws q {
    }
}
