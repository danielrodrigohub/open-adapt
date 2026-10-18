package c4;

import java.io.EOFException;
import java.io.IOException;
import n3.i1;

/* JADX INFO: compiled from: AdtsExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements s3.h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m5.w f3958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m5.v f3959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s3.j f3960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3961g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3964j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3965k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3966l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3955a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f3956b = new f(true, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.w f3957c = new m5.w(2048);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3963i = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3962h = -1;

    static {
        n3.n nVar = n3.n.f11548i;
    }

    public e(int i10) {
        m5.w wVar = new m5.w(10);
        this.f3958d = wVar;
        byte[] bArr = wVar.f10475a;
        this.f3959e = new m5.v(bArr, bArr.length);
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f3965k = false;
        this.f3956b.a();
        this.f3961g = j11;
    }

    public final int c(s3.i iVar) throws IOException {
        int i10 = 0;
        while (true) {
            iVar.s(this.f3958d.f10475a, 0, 10);
            this.f3958d.D(0);
            if (this.f3958d.v() != 4801587) {
                break;
            }
            this.f3958d.E(3);
            int iS = this.f3958d.s();
            i10 += iS + 10;
            iVar.t(iS);
        }
        iVar.i();
        iVar.t(i10);
        if (this.f3962h == -1) {
            this.f3962h = i10;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x010b  */
    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        m5.a.f(this.f3960f);
        long jA = iVar.a();
        int i10 = this.f3955a;
        int i11 = 4;
        if ((((i10 & 2) == 0 && ((i10 & 1) == 0 || jA == -1)) ? false : true) && !this.f3964j) {
            this.f3963i = -1;
            iVar.i();
            long j10 = 0;
            if (iVar.u() == 0) {
                c(iVar);
            }
            int i12 = 0;
            while (iVar.p(this.f3958d.f10475a, 0, 2, true)) {
                try {
                    this.f3958d.D(0);
                    if (!f.g(this.f3958d.y())) {
                        i12 = 0;
                        break;
                    }
                    if (!iVar.p(this.f3958d.f10475a, 0, i11, true)) {
                        break;
                    }
                    this.f3959e.k(14);
                    int iG = this.f3959e.g(13);
                    if (iG <= 6) {
                        this.f3964j = true;
                        throw i1.a("Malformed ADTS stream", null);
                    }
                    j10 += (long) iG;
                    i12++;
                    if (i12 == 1000 || !iVar.n(iG - 6, true)) {
                        break;
                        break;
                    }
                    i11 = 4;
                } catch (EOFException unused) {
                }
            }
            iVar.i();
            if (i12 > 0) {
                this.f3963i = (int) (j10 / ((long) i12));
            } else {
                this.f3963i = -1;
            }
            this.f3964j = true;
        }
        int iB = iVar.b(this.f3957c.f10475a, 0, 2048);
        boolean z10 = iB == -1;
        if (!this.f3966l) {
            int i13 = this.f3955a;
            boolean z11 = (i13 & 1) != 0 && this.f3963i > 0;
            if (!z11 || this.f3956b.f3986q != -9223372036854775807L || z10) {
                if (z11) {
                    long j11 = this.f3956b.f3986q;
                    if (j11 != -9223372036854775807L) {
                        s3.j jVar = this.f3960f;
                        boolean z12 = (2 & i13) != 0;
                        int i14 = this.f3963i;
                        jVar.j(new s3.d(jA, this.f3962h, (int) (((((long) i14) * 8) * 1000000) / j11), i14, z12));
                    } else {
                        this.f3960f.j(new s3.u.b(-9223372036854775807L));
                    }
                } else {
                    this.f3960f.j(new s3.u.b(-9223372036854775807L));
                }
                this.f3966l = true;
            }
        }
        if (z10) {
            return -1;
        }
        this.f3957c.D(0);
        this.f3957c.C(iB);
        if (!this.f3965k) {
            this.f3956b.e(this.f3961g, 4);
            this.f3965k = true;
        }
        this.f3956b.c(this.f3957c);
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f3960f = jVar;
        this.f3956b.f(jVar, new d0.d(0, 1));
        jVar.b();
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        int iC = c(iVar);
        int i10 = iC;
        int i11 = 0;
        int i12 = 0;
        do {
            s3.e eVar = (s3.e) iVar;
            eVar.p(this.f3958d.f10475a, 0, 2, false);
            this.f3958d.D(0);
            if (f.g(this.f3958d.y())) {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                eVar.p(this.f3958d.f10475a, 0, 4, false);
                this.f3959e.k(14);
                int iG = this.f3959e.g(13);
                if (iG <= 6) {
                    i10++;
                    eVar.f15042f = 0;
                    eVar.n(i10, false);
                } else {
                    eVar.n(iG - 6, false);
                    i12 += iG;
                }
            } else {
                i10++;
                eVar.f15042f = 0;
                eVar.n(i10, false);
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iC < 8192);
        return false;
    }
}
