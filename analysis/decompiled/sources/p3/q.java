package p3;

import java.nio.ByteBuffer;
import n3.m1;
import n3.s0;
import o3.v0;

/* JADX INFO: compiled from: AudioSink.java */
/* JADX INFO: loaded from: classes.dex */
public interface q {

    /* JADX INFO: compiled from: AudioSink.java */
    public static final class b extends Exception {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f12792h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f12793i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final s0 f12794j;

        public b(int i10, int i11, int i12, int i13, s0 s0Var, boolean z10, Exception exc) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AudioTrack init failed ");
            sb2.append(i10);
            sb2.append(" ");
            sb2.append("Config(");
            sb2.append(i11);
            sb2.append(", ");
            sb2.append(i12);
            sb2.append(", ");
            sb2.append(i13);
            sb2.append(")");
            sb2.append(z10 ? " (recoverable)" : "");
            super(sb2.toString(), exc);
            this.f12792h = i10;
            this.f12793i = z10;
            this.f12794j = s0Var;
        }
    }

    /* JADX INFO: compiled from: AudioSink.java */
    public interface c {
    }

    /* JADX INFO: compiled from: AudioSink.java */
    public static final class d extends Exception {
        public d(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
        }
    }

    /* JADX INFO: compiled from: AudioSink.java */
    public static final class e extends Exception {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f12795h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f12796i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final s0 f12797j;

        public e(int i10, s0 s0Var, boolean z10) {
            super(androidx.appcompat.widget.e0.d("AudioTrack write failed: ", i10));
            this.f12796i = z10;
            this.f12795h = i10;
            this.f12797j = s0Var;
        }
    }

    boolean a(s0 s0Var);

    boolean b();

    void c();

    m1 d();

    void e();

    void f(m1 m1Var);

    void flush();

    void g();

    int h(s0 s0Var);

    void i();

    void j() throws e;

    boolean k();

    void l(int i10);

    default void m(v0 v0Var) {
    }

    boolean n(ByteBuffer byteBuffer, long j10, int i10) throws b, e;

    long o(boolean z10);

    void p();

    void q(s0 s0Var, int[] iArr) throws a;

    void r(p3.d dVar);

    void s(boolean z10);

    void t(t tVar);

    void u();

    void v(float f10);

    /* JADX INFO: compiled from: AudioSink.java */
    public static final class a extends Exception {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final s0 f12791h;

        public a(Throwable th, s0 s0Var) {
            super(th);
            this.f12791h = s0Var;
        }

        public a(String str, s0 s0Var) {
            super(str);
            this.f12791h = s0Var;
        }
    }
}
