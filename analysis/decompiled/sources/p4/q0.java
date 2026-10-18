package p4;

import android.net.Uri;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import n3.w1;

/* JADX INFO: compiled from: SingleSampleMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class q0 implements v, l5.d0.a<b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l5.m f13163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l5.j.a f13164i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l5.j0 f13165j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l5.c0 f13166k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e0.a f13167l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final u0 f13168m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f13170o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final n3.s0 f13172q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f13173r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f13174s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte[] f13175t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13176u;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<a> f13169n = new ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final l5.d0 f13171p = new l5.d0("SingleSampleMediaPeriod");

    /* JADX INFO: compiled from: SingleSampleMediaPeriod.java */
    public final class a implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f13177h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f13178i;

        public a() {
        }

        public final void a() {
            if (this.f13178i) {
                return;
            }
            q0 q0Var = q0.this;
            q0Var.f13167l.b(m5.s.i(q0Var.f13172q.f11687s), q0.this.f13172q, 0, null, 0L);
            this.f13178i = true;
        }

        @Override // p4.m0
        public final void b() throws IOException {
            q0 q0Var = q0.this;
            if (q0Var.f13173r) {
                return;
            }
            q0Var.f13171p.b();
        }

        @Override // p4.m0
        public final boolean isReady() {
            return q0.this.f13174s;
        }

        @Override // p4.m0
        public final int j(y0.r rVar, q3.g gVar, int i10) {
            a();
            q0 q0Var = q0.this;
            boolean z10 = q0Var.f13174s;
            if (z10 && q0Var.f13175t == null) {
                this.f13177h = 2;
            }
            int i11 = this.f13177h;
            if (i11 == 2) {
                gVar.k(4);
                return -4;
            }
            if ((i10 & 2) != 0 || i11 == 0) {
                rVar.f18272c = q0Var.f13172q;
                this.f13177h = 1;
                return -5;
            }
            if (!z10) {
                return -3;
            }
            Objects.requireNonNull(q0Var.f13175t);
            gVar.k(1);
            gVar.f13583l = 0L;
            if ((i10 & 4) == 0) {
                gVar.q(q0.this.f13176u);
                ByteBuffer byteBuffer = gVar.f13581j;
                q0 q0Var2 = q0.this;
                byteBuffer.put(q0Var2.f13175t, 0, q0Var2.f13176u);
            }
            if ((i10 & 1) == 0) {
                this.f13177h = 2;
            }
            return -4;
        }

        @Override // p4.m0
        public final int p(long j10) {
            a();
            if (j10 <= 0 || this.f13177h == 2) {
                return 0;
            }
            this.f13177h = 2;
            return 1;
        }
    }

    /* JADX INFO: compiled from: SingleSampleMediaPeriod.java */
    public static final class b implements l5.d0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13180a = r.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final l5.m f13181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final l5.i0 f13182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f13183d;

        public b(l5.m mVar, l5.j jVar) {
            this.f13181b = mVar;
            this.f13182c = new l5.i0(jVar);
        }

        @Override // l5.d0.d
        public final void a() throws IOException {
            l5.i0 i0Var = this.f13182c;
            i0Var.f10052b = 0L;
            try {
                i0Var.l(this.f13181b);
                int iB = 0;
                while (iB != -1) {
                    int i10 = (int) this.f13182c.f10052b;
                    byte[] bArr = this.f13183d;
                    if (bArr == null) {
                        this.f13183d = new byte[1024];
                    } else if (i10 == bArr.length) {
                        this.f13183d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    l5.i0 i0Var2 = this.f13182c;
                    byte[] bArr2 = this.f13183d;
                    iB = i0Var2.b(bArr2, i10, bArr2.length - i10);
                }
            } finally {
                c3.d.i(this.f13182c);
            }
        }

        @Override // l5.d0.d
        public final void b() {
        }
    }

    public q0(l5.m mVar, l5.j.a aVar, l5.j0 j0Var, n3.s0 s0Var, long j10, l5.c0 c0Var, e0.a aVar2, boolean z10) {
        this.f13163h = mVar;
        this.f13164i = aVar;
        this.f13165j = j0Var;
        this.f13172q = s0Var;
        this.f13170o = j10;
        this.f13166k = c0Var;
        this.f13167l = aVar2;
        this.f13173r = z10;
        this.f13168m = new u0(new t0("", s0Var));
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.f13171p.d();
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return (this.f13174s || this.f13171p.d()) ? Long.MIN_VALUE : 0L;
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        return j10;
    }

    @Override // p4.v, p4.n0
    public final long e() {
        return this.f13174s ? Long.MIN_VALUE : 0L;
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        if (this.f13174s || this.f13171p.d() || this.f13171p.c()) {
            return false;
        }
        l5.j jVarA = this.f13164i.a();
        l5.j0 j0Var = this.f13165j;
        if (j0Var != null) {
            jVarA.j(j0Var);
        }
        b bVar = new b(this.f13163h, jVarA);
        this.f13167l.n(new r(bVar.f13180a, this.f13163h, this.f13171p.g(bVar, this, this.f13166k.c(1))), 1, -1, this.f13172q, 0, null, 0L, this.f13170o);
        return true;
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
    }

    @Override // l5.d0.a
    public final void h(l5.d0.d dVar, long j10, long j11) {
        b bVar = (b) dVar;
        this.f13176u = (int) bVar.f13182c.f10052b;
        byte[] bArr = bVar.f13183d;
        Objects.requireNonNull(bArr);
        this.f13175t = bArr;
        this.f13174s = true;
        l5.i0 i0Var = bVar.f13182c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f13166k.d();
        this.f13167l.h(rVar, 1, -1, this.f13172q, 0, null, 0L, this.f13170o);
    }

    @Override // l5.d0.a
    public final void k(l5.d0.d dVar, long j10, long j11, boolean z10) {
        l5.i0 i0Var = ((b) dVar).f13182c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f13166k.d();
        this.f13167l.e(rVar, 1, -1, null, 0, null, 0L, this.f13170o);
    }

    @Override // p4.v
    public final long l() {
        return -9223372036854775807L;
    }

    @Override // l5.d0.a
    public final l5.d0.b m(l5.d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        l5.d0.b bVar;
        l5.i0 i0Var = ((b) dVar).f13182c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        m5.g0.X(this.f13170o);
        long jB = this.f13166k.b(new l5.c0.c(iOException, i10));
        boolean z10 = jB == -9223372036854775807L || i10 >= this.f13166k.c(1);
        if (this.f13173r && z10) {
            m5.p.h("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f13174s = true;
            bVar = l5.d0.f9990e;
        } else {
            bVar = jB != -9223372036854775807L ? new l5.d0.b(0, jB) : l5.d0.f9991f;
        }
        l5.d0.b bVar2 = bVar;
        boolean z11 = !bVar2.a();
        this.f13167l.j(rVar, 1, -1, this.f13172q, 0, null, 0L, this.f13170o, iOException, z11);
        if (z11) {
            this.f13166k.d();
        }
        return bVar2;
    }

    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < lVarArr.length; i10++) {
            if (m0VarArr[i10] != null && (lVarArr[i10] == null || !zArr[i10])) {
                this.f13169n.remove(m0VarArr[i10]);
                m0VarArr[i10] = null;
            }
            if (m0VarArr[i10] == null && lVarArr[i10] != null) {
                a aVar = new a();
                this.f13169n.add(aVar);
                m0VarArr[i10] = aVar;
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        return this.f13168m;
    }

    @Override // p4.v
    public final void q() {
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
    }

    @Override // p4.v
    public final long t(long j10) {
        for (int i10 = 0; i10 < this.f13169n.size(); i10++) {
            a aVar = this.f13169n.get(i10);
            if (aVar.f13177h == 2) {
                aVar.f13177h = 1;
            }
        }
        return j10;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        aVar.i(this);
    }
}
