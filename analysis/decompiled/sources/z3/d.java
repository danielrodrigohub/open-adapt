package z3;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;
import k4.l;
import m5.g0;
import m5.w;
import n3.i1;
import n3.p;
import n3.s0;
import p3.b0;
import s3.h;
import s3.i;
import s3.j;
import s3.q;
import s3.r;
import s3.t;

/* JADX INFO: compiled from: Mp3Extractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final y0.e f19261u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f19263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f19264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b0.a f19265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f19266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r f19267f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s3.g f19268g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j f19269h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public s3.w f19270i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s3.w f19271j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f19272k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public f4.a f19273l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f19274m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19275n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f19276o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f19277p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public e f19278q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f19279r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f19280s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f19281t;

    static {
        p pVar = p.f11615e;
        f19261u = y0.e.f18182d;
    }

    public d() {
        this(-9223372036854775807L);
    }

    public static long f(f4.a aVar) {
        if (aVar == null) {
            return -9223372036854775807L;
        }
        int length = aVar.f7052h.length;
        for (int i10 = 0; i10 < length; i10++) {
            f4.a.b bVar = aVar.f7052h[i10];
            if (bVar instanceof l) {
                l lVar = (l) bVar;
                if (lVar.f9676h.equals("TLEN")) {
                    return g0.L(Long.parseLong(lVar.f9688j));
                }
            }
        }
        return -9223372036854775807L;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f19272k = 0;
        this.f19274m = -9223372036854775807L;
        this.f19275n = 0L;
        this.f19277p = 0;
        this.f19281t = j11;
        e eVar = this.f19278q;
        if (!(eVar instanceof b) || ((b) eVar).a(j11)) {
            return;
        }
        this.f19280s = true;
        this.f19271j = this.f19268g;
    }

    public final long c(long j10) {
        return ((j10 * 1000000) / ((long) this.f19265d.f12678d)) + this.f19274m;
    }

    public final e d(i iVar, boolean z10) throws IOException {
        iVar.s(this.f19264c.f10475a, 0, 4);
        this.f19264c.D(0);
        this.f19265d.a(this.f19264c.e());
        return new a(iVar.a(), iVar.u(), this.f19265d, z10);
    }

    /* JADX WARN: Code duplicated, block: B:147:0x0336  */
    /* JADX WARN: Code duplicated, block: B:148:0x0339  */
    /* JADX WARN: Code duplicated, block: B:187:0x042b  */
    /* JADX WARN: Code duplicated, block: B:188:0x042d  */
    /* JADX WARN: Code duplicated, block: B:191:0x0436  */
    /* JADX WARN: Code duplicated, block: B:24:0x0063  */
    /* JADX WARN: Code duplicated, block: B:26:0x0069  */
    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        d dVar;
        int i10;
        int i11;
        i iVar2;
        int iD;
        int i12;
        int i13;
        int iE;
        e eVarD;
        int iW;
        g gVar;
        c cVar;
        long jF;
        f4.a aVar;
        int iT;
        m5.a.f(this.f19270i);
        int i14 = g0.f10384a;
        if (this.f19272k == 0) {
            try {
                i(iVar, false);
            } catch (EOFException unused) {
                dVar = this;
                i10 = -1;
                i11 = -1;
            }
        }
        if (this.f19278q == null) {
            w wVar = new w(this.f19265d.f12677c);
            iVar.s(wVar.f10475a, 0, this.f19265d.f12677c);
            b0.a aVar2 = this.f19265d;
            int i15 = 21;
            if ((aVar2.f12675a & 1) != 0) {
                if (aVar2.f12679e != 1) {
                    i15 = 36;
                }
            } else if (aVar2.f12679e == 1) {
                i15 = 13;
            }
            if (wVar.f10477c >= i15 + 4) {
                wVar.D(i15);
                iE = wVar.e();
                if (iE != 1483304551 && iE != 1231971951) {
                    if (wVar.f10477c >= 40) {
                        wVar.D(36);
                        if (wVar.e() == 1447187017) {
                            iE = 1447187017;
                        } else {
                            iE = 0;
                        }
                    } else {
                        iE = 0;
                    }
                }
            } else if (wVar.f10477c >= 40) {
                wVar.D(36);
                if (wVar.e() == 1447187017) {
                    iE = 1447187017;
                } else {
                    iE = 0;
                }
            } else {
                iE = 0;
            }
            long jD = -1;
            if (iE == 1483304551 || iE == 1231971951) {
                dVar = this;
                long jA = iVar.a();
                long jU = iVar.u();
                b0.a aVar3 = dVar.f19265d;
                int i16 = aVar3.f12681g;
                int i17 = aVar3.f12678d;
                int iE2 = wVar.e();
                if ((iE2 & 1) != 1 || (iW = wVar.w()) == 0) {
                    eVarD = null;
                } else {
                    long jR = g0.R(iW, ((long) i16) * 1000000, i17);
                    if ((iE2 & 6) != 6) {
                        gVar = new g(jU, aVar3.f12677c, jR, -1L, null);
                    } else {
                        long jU2 = wVar.u();
                        long[] jArr = new long[100];
                        for (int i18 = 0; i18 < 100; i18++) {
                            jArr[i18] = wVar.t();
                        }
                        if (jA != -1) {
                            long j10 = jU + jU2;
                            if (jA != j10) {
                                m5.p.g("XingSeeker", "XING data size mismatch: " + jA + ", " + j10);
                            }
                        }
                        gVar = new g(jU, aVar3.f12677c, jR, jU2, jArr);
                    }
                    eVarD = gVar;
                }
                if (eVarD != null) {
                    q qVar = dVar.f19266e;
                    if (!((qVar.f15069a == -1 || qVar.f15070b == -1) ? false : true)) {
                        iVar.i();
                        iVar.t(i15 + 141);
                        iVar.s(dVar.f19264c.f10475a, 0, 3);
                        dVar.f19264c.D(0);
                        q qVar2 = dVar.f19266e;
                        int iV = dVar.f19264c.v();
                        Objects.requireNonNull(qVar2);
                        int i19 = iV >> 12;
                        int i20 = iV & 4095;
                        if (i19 > 0 || i20 > 0) {
                            qVar2.f15069a = i19;
                            qVar2.f15070b = i20;
                        }
                    }
                }
                iVar.k(dVar.f19265d.f12677c);
                if (eVarD != null && !eVarD.f() && iE == 1231971951) {
                    eVarD = dVar.d(iVar, false);
                }
            } else if (iE == 1447187017) {
                long jA2 = iVar.a();
                long jU3 = iVar.u();
                b0.a aVar4 = this.f19265d;
                wVar.E(10);
                int iE3 = wVar.e();
                if (iE3 <= 0) {
                    eVarD = null;
                    break;
                }
                int i21 = aVar4.f12678d;
                long jR2 = g0.R(iE3, ((long) (i21 >= 32000 ? 1152 : 576)) * 1000000, i21);
                int iY = wVar.y();
                int iY2 = wVar.y();
                int iY3 = wVar.y();
                wVar.E(2);
                long j11 = ((long) aVar4.f12677c) + jU3;
                long[] jArr2 = new long[iY];
                long[] jArr3 = new long[iY];
                long j12 = jU3;
                int i22 = 0;
                while (true) {
                    if (i22 >= iY) {
                        if (jA2 != -1 && jA2 != j12) {
                            m5.p.g("VbriSeeker", "VBRI data size mismatch: " + jA2 + ", " + j12);
                        }
                        eVarD = new f(jArr2, jArr3, jR2, j12);
                        break;
                    }
                    int i23 = iY3;
                    jArr2[i22] = (((long) i22) * jR2) / ((long) iY);
                    jArr3[i22] = Math.max(j12, j11);
                    if (i23 == 1) {
                        iT = wVar.t();
                    } else if (i23 == 2) {
                        iT = wVar.y();
                    } else if (i23 == 3) {
                        iT = wVar.v();
                    } else {
                        if (i23 != 4) {
                            eVarD = null;
                            break;
                        }
                        iT = wVar.w();
                    }
                    j12 += ((long) iT) * ((long) iY2);
                    i22++;
                    iY3 = i23;
                }
                dVar = this;
                iVar.k(dVar.f19265d.f12677c);
            } else {
                dVar = this;
                iVar.i();
                eVarD = null;
            }
            f4.a aVar5 = dVar.f19273l;
            long jU4 = iVar.u();
            if (aVar5 == null) {
                cVar = null;
                break;
            }
            int length = aVar5.f7052h.length;
            int i24 = 0;
            while (true) {
                if (i24 >= length) {
                    cVar = null;
                    break;
                }
                f4.a.b bVar = aVar5.f7052h[i24];
                if (bVar instanceof k4.j) {
                    k4.j jVar = (k4.j) bVar;
                    long jF2 = f(aVar5);
                    int length2 = jVar.f9683l.length;
                    int i25 = length2 + 1;
                    long[] jArr4 = new long[i25];
                    long[] jArr5 = new long[i25];
                    jArr4[0] = jU4;
                    jArr5[0] = 0;
                    int i26 = 1;
                    long j13 = 0;
                    while (i26 <= length2) {
                        int i27 = i26 - 1;
                        jU4 += (long) (jVar.f9681j + jVar.f9683l[i27]);
                        j13 += (long) (jVar.f9682k + jVar.f9684m[i27]);
                        jArr4[i26] = jU4;
                        jArr5[i26] = j13;
                        i26++;
                        length2 = length2;
                    }
                    cVar = new c(jArr4, jArr5, jF2);
                    break;
                }
                i24++;
            }
            if (dVar.f19279r) {
                eVarD = new e.a();
            } else {
                if ((dVar.f19262a & 4) != 0) {
                    if (cVar != null) {
                        jF = cVar.f19260c;
                    } else if (eVarD != null) {
                        jF = eVarD.i();
                        jD = eVarD.d();
                    } else {
                        jF = f(dVar.f19273l);
                    }
                    eVarD = new b(jF, iVar.u(), jD);
                } else if (cVar != null) {
                    eVarD = cVar;
                } else if (eVarD == null) {
                    eVarD = null;
                }
                if (eVarD == null || (!eVarD.f() && (dVar.f19262a & 1) != 0)) {
                    iVar2 = iVar;
                    eVarD = dVar.d(iVar2, (dVar.f19262a & 2) != 0);
                }
                dVar.f19278q = eVarD;
                dVar.f19269h.j(eVarD);
                s3.w wVar2 = dVar.f19271j;
                s0.a aVar6 = new s0.a();
                b0.a aVar7 = dVar.f19265d;
                aVar6.f11705k = aVar7.f12676b;
                aVar6.f11706l = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                aVar6.f11718x = aVar7.f12679e;
                aVar6.f11719y = aVar7.f12678d;
                q qVar3 = dVar.f19266e;
                aVar6.A = qVar3.f15069a;
                aVar6.B = qVar3.f15070b;
                if ((dVar.f19262a & 8) != 0) {
                    aVar = null;
                } else {
                    aVar = dVar.f19273l;
                }
                aVar6.f11703i = aVar;
                wVar2.b(new s0(aVar6));
                dVar.f19276o = iVar.u();
            }
            iVar2 = iVar;
            dVar.f19278q = eVarD;
            dVar.f19269h.j(eVarD);
            s3.w wVar3 = dVar.f19271j;
            s0.a aVar8 = new s0.a();
            b0.a aVar9 = dVar.f19265d;
            aVar8.f11705k = aVar9.f12676b;
            aVar8.f11706l = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
            aVar8.f11718x = aVar9.f12679e;
            aVar8.f11719y = aVar9.f12678d;
            q qVar4 = dVar.f19266e;
            aVar8.A = qVar4.f15069a;
            aVar8.B = qVar4.f15070b;
            if ((dVar.f19262a & 8) != 0) {
                aVar = null;
            } else {
                aVar = dVar.f19273l;
            }
            aVar8.f11703i = aVar;
            wVar3.b(new s0(aVar8));
            dVar.f19276o = iVar.u();
        } else {
            iVar2 = iVar;
            dVar = this;
            if (dVar.f19276o != 0) {
                long jU5 = iVar.u();
                long j14 = dVar.f19276o;
                if (jU5 < j14) {
                    iVar2.k((int) (j14 - jU5));
                }
            }
        }
        if (dVar.f19277p == 0) {
            iVar.i();
            if (h(iVar)) {
                i13 = -1;
            } else {
                dVar.f19264c.D(0);
                int iE4 = dVar.f19264c.e();
                if (!(((long) ((-128000) & iE4)) == (((long) dVar.f19272k) & (-128000))) || b0.a(iE4) == -1) {
                    iVar2.k(1);
                    dVar.f19272k = 0;
                } else {
                    dVar.f19265d.a(iE4);
                    if (dVar.f19274m == -9223372036854775807L) {
                        dVar.f19274m = dVar.f19278q.c(iVar.u());
                        if (dVar.f19263b != -9223372036854775807L) {
                            dVar.f19274m = (dVar.f19263b - dVar.f19278q.c(0L)) + dVar.f19274m;
                        }
                    }
                    b0.a aVar10 = dVar.f19265d;
                    dVar.f19277p = aVar10.f12677c;
                    e eVar = dVar.f19278q;
                    if (eVar instanceof b) {
                        b bVar2 = (b) eVar;
                        long jC = dVar.c(dVar.f19275n + ((long) aVar10.f12681g));
                        long jU6 = iVar.u() + ((long) dVar.f19265d.f12677c);
                        if (!bVar2.a(jC)) {
                            bVar2.f19255b.a(jC);
                            bVar2.f19256c.a(jU6);
                        }
                        if (dVar.f19280s && bVar2.a(dVar.f19281t)) {
                            dVar.f19280s = false;
                            dVar.f19271j = dVar.f19270i;
                        }
                    }
                    iD = dVar.f19271j.d(iVar2, dVar.f19277p, true);
                    if (iD == -1) {
                        i13 = -1;
                    } else {
                        i12 = dVar.f19277p - iD;
                        dVar.f19277p = i12;
                        if (i12 <= 0) {
                            dVar.f19271j.c(dVar.c(dVar.f19275n), 1, dVar.f19265d.f12677c, 0, null);
                            dVar.f19275n += (long) dVar.f19265d.f12681g;
                            dVar.f19277p = 0;
                            i13 = 0;
                        }
                    }
                }
                i13 = 0;
            }
        } else {
            iD = dVar.f19271j.d(iVar2, dVar.f19277p, true);
            if (iD == -1) {
                i13 = -1;
            } else {
                i12 = dVar.f19277p - iD;
                dVar.f19277p = i12;
                if (i12 <= 0) {
                    i13 = 0;
                } else {
                    dVar.f19271j.c(dVar.c(dVar.f19275n), 1, dVar.f19265d.f12677c, 0, null);
                    dVar.f19275n += (long) dVar.f19265d.f12681g;
                    dVar.f19277p = 0;
                    i13 = 0;
                }
            }
        }
        i11 = i13;
        i10 = -1;
        if (i11 == i10 && (dVar.f19278q instanceof b)) {
            long jC2 = dVar.c(dVar.f19275n);
            if (dVar.f19278q.i() != jC2) {
                e eVar2 = dVar.f19278q;
                ((b) eVar2).f19257d = jC2;
                dVar.f19269h.j(eVar2);
            }
        }
        return i11;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f19269h = jVar;
        s3.w wVarP = jVar.p(0, 1);
        this.f19270i = wVarP;
        this.f19271j = wVarP;
        this.f19269h.b();
    }

    public final boolean h(i iVar) throws IOException {
        e eVar = this.f19278q;
        if (eVar != null) {
            long jD = eVar.d();
            if (jD != -1 && iVar.q() > jD - 4) {
                return true;
            }
        }
        try {
            return !iVar.p(this.f19264c.f10475a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x0085 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x008d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x008f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0098  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad A[EDGE_INSN: B:64:0x00ad->B:53:0x00ad BREAK  A[LOOP:0: B:23:0x0049->B:65:0x0049], SYNTHETIC] */
    public final boolean i(i iVar, boolean z10) throws IOException {
        int iQ;
        int iA;
        int i10;
        int i11 = z10 ? 32768 : 131072;
        iVar.i();
        if (iVar.u() == 0) {
            f4.a aVarA = this.f19267f.a(iVar, (this.f19262a & 8) == 0 ? null : f19261u);
            this.f19273l = aVarA;
            if (aVarA != null) {
                this.f19266e.b(aVarA);
            }
            iQ = (int) iVar.q();
            if (!z10) {
                iVar.k(iQ);
            }
        } else {
            iQ = 0;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (h(iVar)) {
                if (i13 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.f19264c.D(0);
            int iE = this.f19264c.e();
            if (i12 == 0) {
                iA = b0.a(iE);
                if (iA != -1) {
                    i10 = i14 + 1;
                    if (i14 == i11) {
                        if (z10) {
                            return false;
                        }
                        throw i1.a("Searched too many bytes.", null);
                    }
                    if (z10) {
                        iVar.i();
                        iVar.t(iQ + i10);
                    } else {
                        iVar.k(1);
                    }
                    i13 = 0;
                    i14 = i10;
                    i12 = 0;
                } else {
                    i13++;
                    if (i13 == 1) {
                        if (i13 == 4) {
                            break;
                        }
                    } else {
                        this.f19265d.a(iE);
                        i12 = iE;
                    }
                    iVar.t(iA - 4);
                }
            } else {
                if (((long) ((-128000) & iE)) == (((long) i12) & (-128000))) {
                    iA = b0.a(iE);
                    if (iA != -1) {
                        i13++;
                        if (i13 == 1) {
                            if (i13 == 4) {
                                break;
                                break;
                            }
                        } else {
                            this.f19265d.a(iE);
                            i12 = iE;
                        }
                        iVar.t(iA - 4);
                    }
                }
                i10 = i14 + 1;
                if (i14 == i11) {
                    if (z10) {
                        return false;
                    }
                    throw i1.a("Searched too many bytes.", null);
                }
                if (z10) {
                    iVar.i();
                    iVar.t(iQ + i10);
                } else {
                    iVar.k(1);
                }
                i13 = 0;
                i14 = i10;
                i12 = 0;
            }
        }
        if (z10) {
            iVar.k(iQ + i14);
        } else {
            iVar.i();
        }
        this.f19272k = i12;
        return true;
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        return i(iVar, true);
    }

    public d(long j10) {
        this.f19262a = 0;
        this.f19263b = j10;
        this.f19264c = new w(10);
        this.f19265d = new b0.a();
        this.f19266e = new q();
        this.f19274m = -9223372036854775807L;
        this.f19267f = new r();
        s3.g gVar = new s3.g();
        this.f19268g = gVar;
        this.f19271j = gVar;
    }
}
