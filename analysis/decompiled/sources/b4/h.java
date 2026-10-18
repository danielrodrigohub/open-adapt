package b4;

import java.io.IOException;
import n3.s0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import s3.j;
import s3.u;
import s3.w;

/* JADX INFO: compiled from: StreamReader.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f3267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f3268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f3269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3274i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3276k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3277l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3278m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3266a = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f3275j = new a();

    /* JADX INFO: compiled from: StreamReader.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public s0 f3279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public b4.b.a f3280b;
    }

    /* JADX INFO: compiled from: StreamReader.java */
    public static final class b implements f {
        @Override // b4.f
        public final u a() {
            return new u.b(-9223372036854775807L);
        }

        @Override // b4.f
        public final long b(s3.i iVar) {
            return -1L;
        }

        @Override // b4.f
        public final void c(long j10) {
        }
    }

    public final long a(long j10) {
        return (((long) this.f3274i) * j10) / 1000000;
    }

    public void b(long j10) {
        this.f3272g = j10;
    }

    public abstract long c(m5.w wVar);

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public abstract boolean d(m5.w wVar, long j10, a aVar) throws IOException;

    public void e(boolean z10) {
        if (z10) {
            this.f3275j = new a();
            this.f3271f = 0L;
            this.f3273h = 0;
        } else {
            this.f3273h = 1;
        }
        this.f3270e = -1L;
        this.f3272g = 0L;
    }
}
