package v3;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
import m5.g0;
import m5.v;
import n3.i1;
import s3.e;
import s3.h;
import s3.i;
import s3.j;
import s3.m;
import s3.n;
import s3.o;
import s3.p;
import s3.t;
import s3.u;
import s3.w;
import s3.z;
import y0.g;

/* JADX INFO: compiled from: FlacExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f16223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public w f16224f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f4.a f16226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f16227i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16228j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16229k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f16230l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16231m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f16232n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16219a = new byte[42];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f16220b = new m5.w(new byte[32768], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16221c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m.a f16222d = new m.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f16225g = 0;

    static {
        g gVar = g.f18209g;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        if (j10 == 0) {
            this.f16225g = 0;
        } else {
            a aVar = this.f16230l;
            if (aVar != null) {
                aVar.e(j11);
            }
        }
        this.f16232n = j11 != 0 ? -1L : 0L;
        this.f16231m = 0;
        this.f16220b.A(0);
    }

    public final void c() {
        long j10 = this.f16232n * 1000000;
        p pVar = this.f16227i;
        int i10 = g0.f10384a;
        this.f16224f.c(j10 / ((long) pVar.f15058e), 1, this.f16231m, 0, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v8, types: [boolean, int] */
    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        boolean z10;
        p pVar;
        u bVar;
        long j10;
        boolean zA;
        int i10 = this.f16225g;
        boolean z11 = true;
        ?? r10 = 0;
        if (i10 == 0) {
            boolean z12 = !this.f16221c;
            iVar.i();
            long jQ = iVar.q();
            f4.a aVarA = n.a(iVar, z12);
            iVar.k((int) (iVar.q() - jQ));
            this.f16226h = aVarA;
            this.f16225g = 1;
            return 0;
        }
        if (i10 == 1) {
            byte[] bArr = this.f16219a;
            iVar.s(bArr, 0, bArr.length);
            iVar.i();
            this.f16225g = 2;
            return 0;
        }
        int i11 = 3;
        int i12 = 4;
        if (i10 == 2) {
            byte[] bArr2 = new byte[4];
            iVar.readFully(bArr2, 0, 4);
            if ((((((long) bArr2[0]) & 255) << 24) | ((((long) bArr2[1]) & 255) << 16) | ((((long) bArr2[2]) & 255) << 8) | (((long) bArr2[3]) & 255)) != 1716281667) {
                throw i1.a("Failed to read FLAC stream marker.", null);
            }
            this.f16225g = 3;
            return 0;
        }
        int i13 = 6;
        int i14 = 7;
        if (i10 == 3) {
            p pVarA = this.f16227i;
            boolean z13 = false;
            while (!z13) {
                iVar.i();
                v vVar = new v(new byte[i12], i12);
                iVar.s(vVar.f10471a, r10, i12);
                boolean zF = vVar.f();
                int iG = vVar.g(i14);
                int iG2 = vVar.g(24) + i12;
                if (iG == 0) {
                    byte[] bArr3 = new byte[38];
                    iVar.readFully(bArr3, r10, 38);
                    pVarA = new p(bArr3, i12);
                } else {
                    if (pVarA == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iG == i11) {
                        m5.w wVar = new m5.w(iG2);
                        iVar.readFully(wVar.f10475a, r10, iG2);
                        pVarA = pVarA.a(n.b(wVar));
                    } else {
                        if (iG == i12) {
                            m5.w wVar2 = new m5.w(iG2);
                            iVar.readFully(wVar2.f10475a, r10, iG2);
                            wVar2.E(i12);
                            z10 = zF;
                            pVar = new p(pVarA.f15054a, pVarA.f15055b, pVarA.f15056c, pVarA.f15057d, pVarA.f15058e, pVarA.f15060g, pVarA.f15061h, pVarA.f15063j, pVarA.f15064k, pVarA.e(z.b(Arrays.asList(z.c(wVar2, r10, r10).f15099a))));
                        } else {
                            z10 = zF;
                            if (iG == i13) {
                                m5.w wVar3 = new m5.w(iG2);
                                iVar.readFully(wVar3.f10475a, 0, iG2);
                                wVar3.E(i12);
                                pVar = new p(pVarA.f15054a, pVarA.f15055b, pVarA.f15056c, pVarA.f15057d, pVarA.f15058e, pVarA.f15060g, pVarA.f15061h, pVarA.f15063j, pVarA.f15064k, pVarA.e(new f4.a(u6.v.v(i4.a.a(wVar3)))));
                            } else {
                                iVar.k(iG2);
                            }
                        }
                        pVarA = pVar;
                    }
                    int i15 = g0.f10384a;
                    this.f16227i = pVarA;
                    z13 = z10;
                    r10 = 0;
                    i11 = 3;
                    i12 = 4;
                    i13 = 6;
                    i14 = 7;
                }
                z10 = zF;
                int i16 = g0.f10384a;
                this.f16227i = pVarA;
                z13 = z10;
                r10 = 0;
                i11 = 3;
                i12 = 4;
                i13 = 6;
                i14 = 7;
            }
            Objects.requireNonNull(this.f16227i);
            this.f16228j = Math.max(this.f16227i.f15056c, 6);
            w wVar4 = this.f16224f;
            int i17 = g0.f10384a;
            wVar4.b(this.f16227i.d(this.f16219a, this.f16226h));
            this.f16225g = 4;
            return 0;
        }
        long j11 = 0;
        if (i10 == 4) {
            iVar.i();
            byte[] bArr4 = new byte[2];
            iVar.s(bArr4, 0, 2);
            int i18 = (bArr4[1] & 255) | ((bArr4[0] & 255) << 8);
            if ((i18 >> 2) != 16382) {
                iVar.i();
                throw i1.a("First frame does not start with sync code.", null);
            }
            iVar.i();
            this.f16229k = i18;
            j jVar = this.f16223e;
            int i19 = g0.f10384a;
            long jU = iVar.u();
            long jA = iVar.a();
            Objects.requireNonNull(this.f16227i);
            p pVar2 = this.f16227i;
            if (pVar2.f15064k != null) {
                bVar = new o(pVar2, jU);
            } else if (jA == -1 || pVar2.f15063j <= 0) {
                bVar = new u.b(pVar2.c());
            } else {
                a aVar = new a(pVar2, this.f16229k, jU, jA);
                this.f16230l = aVar;
                bVar = aVar.f15001a;
            }
            jVar.j(bVar);
            this.f16225g = 5;
            return 0;
        }
        if (i10 != 5) {
            throw new IllegalStateException();
        }
        Objects.requireNonNull(this.f16224f);
        Objects.requireNonNull(this.f16227i);
        a aVar2 = this.f16230l;
        if (aVar2 != null && aVar2.b()) {
            return this.f16230l.a(iVar, tVar);
        }
        if (this.f16232n == -1) {
            p pVar3 = this.f16227i;
            iVar.i();
            iVar.t(1);
            byte[] bArr5 = new byte[1];
            iVar.s(bArr5, 0, 1);
            boolean z14 = (bArr5[0] & 1) == 1;
            iVar.t(2);
            i13 = z14 ? 7 : 6;
            m5.w wVar5 = new m5.w(i13);
            byte[] bArr6 = wVar5.f10475a;
            int i20 = 0;
            while (i20 < i13) {
                int iG3 = iVar.g(bArr6, 0 + i20, i13 - i20);
                if (iG3 == -1) {
                    break;
                }
                i20 += iG3;
            }
            wVar5.C(i20);
            iVar.i();
            try {
                long jZ = wVar5.z();
                if (!z14) {
                    jZ *= (long) pVar3.f15055b;
                }
                j11 = jZ;
            } catch (NumberFormatException unused) {
                z11 = false;
            }
            if (!z11) {
                throw i1.a(null, null);
            }
            this.f16232n = j11;
            return 0;
        }
        m5.w wVar6 = this.f16220b;
        int i21 = wVar6.f10477c;
        if (i21 < 32768) {
            int iB = iVar.b(wVar6.f10475a, i21, 32768 - i21);
            z11 = iB == -1;
            if (z11) {
                m5.w wVar7 = this.f16220b;
                if (wVar7.f10477c - wVar7.f10476b == 0) {
                    c();
                    return -1;
                }
            } else {
                this.f16220b.C(i21 + iB);
            }
        } else {
            z11 = false;
        }
        m5.w wVar8 = this.f16220b;
        int i22 = wVar8.f10476b;
        int i23 = this.f16231m;
        int i24 = this.f16228j;
        if (i23 < i24) {
            wVar8.E(Math.min(i24 - i23, wVar8.f10477c - i22));
        }
        m5.w wVar9 = this.f16220b;
        Objects.requireNonNull(this.f16227i);
        int i25 = wVar9.f10476b;
        while (true) {
            if (i25 > wVar9.f10477c - 16) {
                if (z11) {
                    while (true) {
                        int i26 = wVar9.f10477c;
                        if (i25 <= i26 - this.f16228j) {
                            wVar9.D(i25);
                            try {
                                zA = m.a(wVar9, this.f16227i, this.f16229k, this.f16222d);
                            } catch (IndexOutOfBoundsException unused2) {
                                zA = false;
                            }
                            if (wVar9.f10476b > wVar9.f10477c) {
                                zA = false;
                            }
                            if (zA) {
                                wVar9.D(i25);
                                j10 = this.f16222d.f15051a;
                                break;
                            }
                            i25++;
                        } else {
                            wVar9.D(i26);
                        }
                    }
                } else {
                    wVar9.D(i25);
                }
                j10 = -1;
                break;
            }
            wVar9.D(i25);
            if (m.a(wVar9, this.f16227i, this.f16229k, this.f16222d)) {
                wVar9.D(i25);
                j10 = this.f16222d.f15051a;
                break;
            }
            i25++;
        }
        m5.w wVar10 = this.f16220b;
        int i27 = wVar10.f10476b - i22;
        wVar10.D(i22);
        this.f16224f.f(this.f16220b, i27);
        this.f16231m += i27;
        if (j10 != -1) {
            c();
            this.f16231m = 0;
            this.f16232n = j10;
        }
        m5.w wVar11 = this.f16220b;
        int i28 = wVar11.f10477c;
        int i29 = wVar11.f10476b;
        int i30 = i28 - i29;
        if (i30 >= 16) {
            return 0;
        }
        byte[] bArr7 = wVar11.f10475a;
        System.arraycopy(bArr7, i29, bArr7, 0, i30);
        this.f16220b.D(0);
        this.f16220b.C(i30);
        return 0;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f16223e = jVar;
        this.f16224f = jVar.p(0, 1);
        jVar.b();
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        n.a(iVar, false);
        byte[] bArr = new byte[4];
        ((e) iVar).p(bArr, 0, 4, false);
        return (((((((long) bArr[0]) & 255) << 24) | ((((long) bArr[1]) & 255) << 16)) | ((((long) bArr[2]) & 255) << 8)) | (255 & ((long) bArr[3]))) == 1716281667;
    }
}
