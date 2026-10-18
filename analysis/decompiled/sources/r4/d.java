package r4;

import android.util.SparseArray;
import java.io.IOException;
import m5.g0;
import n3.s0;
import n3.t0;
import s3.t;
import s3.u;
import s3.w;

/* JADX INFO: compiled from: BundledChunkExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements s3.j, f {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final t0 f14540q = t0.f11726g;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final t f14541r = new t();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s3.h f14542h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14543i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s0 f14544j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SparseArray<a> f14545k = new SparseArray<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f14546l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f.b f14547m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f14548n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public u f14549o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public s0[] f14550p;

    /* JADX INFO: compiled from: BundledChunkExtractor.java */
    public static final class a implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s0 f14553c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final s3.g f14554d = new s3.g();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public s0 f14555e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public w f14556f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f14557g;

        public a(int i10, int i11, s0 s0Var) {
            this.f14551a = i10;
            this.f14552b = i11;
            this.f14553c = s0Var;
        }

        @Override // s3.w
        public final void a(m5.w wVar, int i10) {
            w wVar2 = this.f14556f;
            int i11 = g0.f10384a;
            wVar2.f(wVar, i10);
        }

        @Override // s3.w
        public final void b(s0 s0Var) {
            s0 s0Var2 = this.f14553c;
            if (s0Var2 != null) {
                s0Var = s0Var.g(s0Var2);
            }
            this.f14555e = s0Var;
            w wVar = this.f14556f;
            int i10 = g0.f10384a;
            wVar.b(s0Var);
        }

        @Override // s3.w
        public final void c(long j10, int i10, int i11, int i12, w.a aVar) {
            long j11 = this.f14557g;
            if (j11 != -9223372036854775807L && j10 >= j11) {
                this.f14556f = this.f14554d;
            }
            w wVar = this.f14556f;
            int i13 = g0.f10384a;
            wVar.c(j10, i10, i11, i12, aVar);
        }

        @Override // s3.w
        public final int e(l5.h hVar, int i10, boolean z10) throws IOException {
            w wVar = this.f14556f;
            int i11 = g0.f10384a;
            return wVar.d(hVar, i10, z10);
        }

        public final void g(f.b bVar, long j10) {
            if (bVar == null) {
                this.f14556f = this.f14554d;
                return;
            }
            this.f14557g = j10;
            w wVarA = ((c) bVar).a(this.f14552b);
            this.f14556f = wVarA;
            s0 s0Var = this.f14555e;
            if (s0Var != null) {
                wVarA.b(s0Var);
            }
        }
    }

    public d(s3.h hVar, int i10, s0 s0Var) {
        this.f14542h = hVar;
        this.f14543i = i10;
        this.f14544j = s0Var;
    }

    public final void a(f.b bVar, long j10, long j11) {
        this.f14547m = bVar;
        this.f14548n = j11;
        if (!this.f14546l) {
            this.f14542h.g(this);
            if (j10 != -9223372036854775807L) {
                this.f14542h.b(0L, j10);
            }
            this.f14546l = true;
            return;
        }
        s3.h hVar = this.f14542h;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        hVar.b(0L, j10);
        for (int i10 = 0; i10 < this.f14545k.size(); i10++) {
            this.f14545k.valueAt(i10).g(bVar, j11);
        }
    }

    @Override // s3.j
    public final void b() {
        s0[] s0VarArr = new s0[this.f14545k.size()];
        for (int i10 = 0; i10 < this.f14545k.size(); i10++) {
            s0 s0Var = this.f14545k.valueAt(i10).f14555e;
            m5.a.f(s0Var);
            s0VarArr[i10] = s0Var;
        }
        this.f14550p = s0VarArr;
    }

    public final boolean c(s3.i iVar) throws IOException {
        int iE = this.f14542h.e(iVar, f14541r);
        m5.a.e(iE != 1);
        return iE == 0;
    }

    @Override // s3.j
    public final void j(u uVar) {
        this.f14549o = uVar;
    }

    @Override // s3.j
    public final w p(int i10, int i11) {
        a aVar = this.f14545k.get(i10);
        if (aVar == null) {
            m5.a.e(this.f14550p == null);
            aVar = new a(i10, i11, i11 == this.f14543i ? this.f14544j : null);
            aVar.g(this.f14547m, this.f14548n);
            this.f14545k.put(i10, aVar);
        }
        return aVar;
    }
}
