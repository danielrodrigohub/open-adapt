package t3;

import a0.b;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import m5.g0;
import n3.i1;
import n3.n1;
import n3.s0;
import s3.d;
import s3.h;
import s3.i;
import s3.j;
import s3.t;
import s3.u;
import s3.w;

/* JADX INFO: compiled from: AmrExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f15412p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f15413q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final byte[] f15414r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final byte[] f15415s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f15416t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f15420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f15423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public j f15428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public w f15429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u f15430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f15431o;

    static {
        n1 n1Var = n1.f11553d;
        f15412p = new int[]{13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f15413q = iArr;
        f15414r = g0.F("#!AMR\n");
        f15415s = g0.F("#!AMR-WB\n");
        f15416t = iArr[8];
    }

    public a() {
        this.f15418b = 0;
        this.f15417a = new byte[1];
        this.f15425i = -1;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f15420d = 0L;
        this.f15421e = 0;
        this.f15422f = 0;
        if (j10 != 0) {
            u uVar = this.f15430n;
            if (uVar instanceof d) {
                this.f15427k = ((d) uVar).a(j10);
                return;
            }
        }
        this.f15427k = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003c  */
    public final int c(i iVar) throws IOException {
        iVar.i();
        boolean z10 = false;
        iVar.s(this.f15417a, 0, 1);
        byte b10 = this.f15417a[0];
        if ((b10 & 131) > 0) {
            throw i1.a("Invalid padding bits for frame header " + ((int) b10), null);
        }
        int i10 = (b10 >> 3) & 15;
        if (i10 >= 0 && i10 <= 15) {
            boolean z11 = this.f15419c;
            if (z11 && (i10 < 10 || i10 > 13)) {
                z10 = true;
            } else {
                if (!z11 && (i10 < 12 || i10 > 14)) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            return this.f15419c ? f15413q[i10] : f15412p[i10];
        }
        StringBuilder sbC = b.c("Illegal AMR ");
        sbC.append(this.f15419c ? "WB" : "NB");
        sbC.append(" frame type ");
        sbC.append(i10);
        throw i1.a(sbC.toString(), null);
    }

    public final boolean d(i iVar) throws IOException {
        byte[] bArr = f15414r;
        iVar.i();
        byte[] bArr2 = new byte[bArr.length];
        iVar.s(bArr2, 0, bArr.length);
        if (Arrays.equals(bArr2, bArr)) {
            this.f15419c = false;
            iVar.k(bArr.length);
            return true;
        }
        byte[] bArr3 = f15415s;
        iVar.i();
        byte[] bArr4 = new byte[bArr3.length];
        iVar.s(bArr4, 0, bArr3.length);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f15419c = true;
        iVar.k(bArr3.length);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085  */
    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        int i10;
        int i11;
        int iD;
        int i12;
        m5.a.f(this.f15429m);
        int i13 = g0.f10384a;
        if (iVar.u() == 0 && !d(iVar)) {
            throw i1.a("Could not find AMR header.", null);
        }
        if (!this.f15431o) {
            this.f15431o = true;
            boolean z10 = this.f15419c;
            String str = z10 ? "audio/amr-wb" : "audio/3gpp";
            int i14 = z10 ? 16000 : 8000;
            w wVar = this.f15429m;
            s0.a aVar = new s0.a();
            aVar.f11705k = str;
            aVar.f11706l = f15416t;
            aVar.f11718x = 1;
            aVar.f11719y = i14;
            wVar.b(new s0(aVar));
        }
        if (this.f15422f == 0) {
            try {
                int iC = c(iVar);
                this.f15421e = iC;
                this.f15422f = iC;
                if (this.f15425i == -1) {
                    this.f15424h = iVar.u();
                    this.f15425i = this.f15421e;
                }
                if (this.f15425i == this.f15421e) {
                    this.f15426j++;
                }
                iD = this.f15429m.d(iVar, this.f15422f, true);
                if (iD == -1) {
                    i10 = -1;
                } else {
                    i12 = this.f15422f - iD;
                    this.f15422f = i12;
                    if (i12 <= 0) {
                        this.f15429m.c(this.f15427k + this.f15420d, 1, this.f15421e, 0, null);
                        this.f15420d += 20000;
                    }
                    i10 = 0;
                }
            } catch (EOFException unused) {
            }
        } else {
            iD = this.f15429m.d(iVar, this.f15422f, true);
            if (iD == -1) {
                i10 = -1;
            } else {
                i12 = this.f15422f - iD;
                this.f15422f = i12;
                if (i12 <= 0) {
                    this.f15429m.c(this.f15427k + this.f15420d, 1, this.f15421e, 0, null);
                    this.f15420d += 20000;
                }
                i10 = 0;
            }
        }
        long jA = iVar.a();
        if (!this.f15423g) {
            int i15 = this.f15418b;
            if ((i15 & 1) == 0 || jA == -1 || !((i11 = this.f15425i) == -1 || i11 == this.f15421e)) {
                u.b bVar = new u.b(-9223372036854775807L);
                this.f15430n = bVar;
                this.f15428l.j(bVar);
                this.f15423g = true;
            } else if (this.f15426j >= 20 || i10 == -1) {
                d dVar = new d(jA, this.f15424h, (int) (((((long) i11) * 8) * 1000000) / 20000), i11, (i15 & 2) != 0);
                this.f15430n = dVar;
                this.f15428l.j(dVar);
                this.f15423g = true;
            }
        }
        return i10;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f15428l = jVar;
        this.f15429m = jVar.p(0, 1);
        jVar.b();
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        return d(iVar);
    }

    public a(int i10) {
        this.f15418b = 0;
        this.f15417a = new byte[1];
        this.f15425i = -1;
    }
}
