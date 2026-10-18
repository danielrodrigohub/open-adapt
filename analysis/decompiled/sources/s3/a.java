package s3;

import java.io.IOException;
import m5.g0;

/* JADX INFO: compiled from: BinarySearchSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0255a f15001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f15002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f15003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15004d;

    /* JADX INFO: renamed from: s3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public static class C0255a implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d f15005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15007c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f15008d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f15009e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15010f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f15011g;

        public C0255a(d dVar, long j10, long j11, long j12, long j13, long j14) {
            this.f15005a = dVar;
            this.f15006b = j10;
            this.f15008d = j11;
            this.f15009e = j12;
            this.f15010f = j13;
            this.f15011g = j14;
        }

        @Override // s3.u
        public final boolean f() {
            return true;
        }

        @Override // s3.u
        public final u.a h(long j10) {
            v vVar = new v(j10, c.a(this.f15005a.a(j10), this.f15007c, this.f15008d, this.f15009e, this.f15010f, this.f15011g));
            return new u.a(vVar, vVar);
        }

        @Override // s3.u
        public final long i() {
            return this.f15006b;
        }
    }

    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public static final class b implements d {
        @Override // s3.a.d
        public final long a(long j10) {
            return j10;
        }
    }

    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15014c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f15015d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f15016e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f15017f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f15018g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f15019h;

        public c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f15012a = j10;
            this.f15013b = j11;
            this.f15015d = j12;
            this.f15016e = j13;
            this.f15017f = j14;
            this.f15018g = j15;
            this.f15014c = j16;
            this.f15019h = a(j11, j12, j13, j14, j15, j16);
        }

        public static long a(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 >= j14 || j11 + 1 >= j12) {
                return j13;
            }
            long j16 = (long) ((j10 - j11) * ((j14 - j13) / (j12 - j11)));
            return g0.j(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
        }
    }

    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public interface d {
        long a(long j10);
    }

    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final e f15020d = new e(-3, -9223372036854775807L, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15021a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15023c;

        public e(int i10, long j10, long j11) {
            this.f15021a = i10;
            this.f15022b = j10;
            this.f15023c = j11;
        }

        public static e a(long j10, long j11) {
            return new e(-1, j10, j11);
        }

        public static e b(long j10) {
            return new e(0, -9223372036854775807L, j10);
        }

        public static e c(long j10, long j11) {
            return new e(-2, j10, j11);
        }
    }

    /* JADX INFO: compiled from: BinarySearchSeeker.java */
    public interface f {
        default void a() {
        }

        e b(i iVar, long j10) throws IOException;
    }

    public a(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, int i10) {
        this.f15002b = fVar;
        this.f15004d = i10;
        this.f15001a = new C0255a(dVar, j10, j11, j12, j13, j14);
    }

    public final int a(i iVar, t tVar) throws IOException {
        while (true) {
            c cVar = this.f15003c;
            m5.a.f(cVar);
            long j10 = cVar.f15017f;
            long j11 = cVar.f15018g;
            long j12 = cVar.f15019h;
            if (j11 - j10 <= this.f15004d) {
                c();
                return d(iVar, j10, tVar);
            }
            if (!f(iVar, j12)) {
                return d(iVar, j12, tVar);
            }
            iVar.i();
            e eVarB = this.f15002b.b(iVar, cVar.f15013b);
            int i10 = eVarB.f15021a;
            if (i10 == -3) {
                c();
                return d(iVar, j12, tVar);
            }
            if (i10 == -2) {
                long j13 = eVarB.f15022b;
                long j14 = eVarB.f15023c;
                cVar.f15015d = j13;
                cVar.f15017f = j14;
                cVar.f15019h = c.a(cVar.f15013b, j13, cVar.f15016e, j14, cVar.f15018g, cVar.f15014c);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    f(iVar, eVarB.f15023c);
                    c();
                    return d(iVar, eVarB.f15023c, tVar);
                }
                long j15 = eVarB.f15022b;
                long j16 = eVarB.f15023c;
                cVar.f15016e = j15;
                cVar.f15018g = j16;
                cVar.f15019h = c.a(cVar.f15013b, cVar.f15015d, j15, cVar.f15017f, j16, cVar.f15014c);
            }
        }
    }

    public final boolean b() {
        return this.f15003c != null;
    }

    public final void c() {
        this.f15003c = null;
        this.f15002b.a();
    }

    public final int d(i iVar, long j10, t tVar) {
        if (j10 == iVar.u()) {
            return 0;
        }
        tVar.f15076a = j10;
        return 1;
    }

    public final void e(long j10) {
        c cVar = this.f15003c;
        if (cVar == null || cVar.f15012a != j10) {
            long jA = this.f15001a.f15005a.a(j10);
            C0255a c0255a = this.f15001a;
            this.f15003c = new c(j10, jA, c0255a.f15007c, c0255a.f15008d, c0255a.f15009e, c0255a.f15010f, c0255a.f15011g);
        }
    }

    public final boolean f(i iVar, long j10) throws IOException {
        long jU = j10 - iVar.u();
        if (jU < 0 || jU > 262144) {
            return false;
        }
        iVar.k((int) jU);
        return true;
    }
}
