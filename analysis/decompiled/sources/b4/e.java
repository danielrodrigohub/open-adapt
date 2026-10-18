package b4;

import java.io.IOException;
import m5.w;
import n3.i1;
import s3.k;

/* JADX INFO: compiled from: OggPageHeader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f3261f = new int[255];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f3262g = new w(255);

    public final boolean a(s3.i iVar, boolean z10) throws IOException {
        b();
        this.f3262g.A(27);
        if (!k.b(iVar, this.f3262g.f10475a, 27, z10) || this.f3262g.u() != 1332176723) {
            return false;
        }
        if (this.f3262g.t() != 0) {
            if (z10) {
                return false;
            }
            throw i1.c("unsupported bit stream revision");
        }
        this.f3256a = this.f3262g.t();
        this.f3257b = this.f3262g.h();
        this.f3262g.j();
        this.f3262g.j();
        this.f3262g.j();
        int iT = this.f3262g.t();
        this.f3258c = iT;
        this.f3259d = iT + 27;
        this.f3262g.A(iT);
        if (!k.b(iVar, this.f3262g.f10475a, this.f3258c, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f3258c; i10++) {
            this.f3261f[i10] = this.f3262g.t();
            this.f3260e += this.f3261f[i10];
        }
        return true;
    }

    public final void b() {
        this.f3256a = 0;
        this.f3257b = 0L;
        this.f3258c = 0;
        this.f3259d = 0;
        this.f3260e = 0;
    }

    public final boolean c(s3.i iVar, long j10) throws IOException {
        m5.a.a(iVar.u() == iVar.q());
        this.f3262g.A(4);
        while (true) {
            if ((j10 != -1 && iVar.u() + 4 >= j10) || !k.b(iVar, this.f3262g.f10475a, 4, true)) {
                break;
            }
            this.f3262g.D(0);
            if (this.f3262g.u() == 1332176723) {
                iVar.i();
                return true;
            }
            iVar.k(1);
        }
        do {
            if (j10 != -1 && iVar.u() >= j10) {
                break;
            }
        } while (iVar.d(1) != -1);
        return false;
    }
}
