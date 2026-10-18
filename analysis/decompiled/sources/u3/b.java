package u3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import m5.g0;
import m5.p;
import m5.s;
import m5.w;
import n3.i1;
import n3.s0;
import s3.i;
import s3.j;
import s3.t;
import s3.u;

/* JADX INFO: compiled from: AviExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements s3.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15689c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f15691e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f15695i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15699m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15700n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f15687a = new w(12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0274b f15688b = new C0274b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j f15690d = new c3.d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e[] f15693g = new e[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15697k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f15698l = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15696j = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f15692f = -9223372036854775807L;

    /* JADX INFO: compiled from: AviExtractor.java */
    public class a implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15701a;

        public a(long j10) {
            this.f15701a = j10;
        }

        @Override // s3.u
        public final boolean f() {
            return true;
        }

        @Override // s3.u
        public final u.a h(long j10) {
            u.a aVarB = b.this.f15693g[0].b(j10);
            int i10 = 1;
            while (true) {
                e[] eVarArr = b.this.f15693g;
                if (i10 >= eVarArr.length) {
                    return aVarB;
                }
                u.a aVarB2 = eVarArr[i10].b(j10);
                if (aVarB2.f15077a.f15083b < aVarB.f15077a.f15083b) {
                    aVarB = aVarB2;
                }
                i10++;
            }
        }

        @Override // s3.u
        public final long i() {
            return this.f15701a;
        }
    }

    /* JADX INFO: renamed from: u3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AviExtractor.java */
    public static class C0274b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15703a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15705c;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f15694h = -1L;
        this.f15695i = null;
        for (e eVar : this.f15693g) {
            if (eVar.f15723j == 0) {
                eVar.f15721h = 0;
            } else {
                eVar.f15721h = eVar.f15725l[g0.f(eVar.f15724k, j10, true)];
            }
        }
        if (j10 != 0) {
            this.f15689c = 6;
        } else if (this.f15693g.length == 0) {
            this.f15689c = 0;
        } else {
            this.f15689c = 3;
        }
    }

    public final e c(int i10) {
        for (e eVar : this.f15693g) {
            if (eVar.f15715b == i10 || eVar.f15716c == i10) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:141:0x0370  */
    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        boolean z10;
        e eVar;
        long j10;
        if (this.f15694h != -1) {
            long jU = iVar.u();
            long j11 = this.f15694h;
            if (j11 < jU || j11 > 262144 + jU) {
                tVar.f15076a = j11;
                z10 = true;
            } else {
                iVar.k((int) (j11 - jU));
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f15694h = -1L;
        if (z10) {
            return 1;
        }
        switch (this.f15689c) {
            case 0:
                if (!j(iVar)) {
                    throw i1.a("AVI Header List not found", null);
                }
                iVar.k(12);
                this.f15689c = 1;
                return 0;
            case 1:
                iVar.readFully(this.f15687a.f10475a, 0, 12);
                this.f15687a.D(0);
                C0274b c0274b = this.f15688b;
                w wVar = this.f15687a;
                Objects.requireNonNull(c0274b);
                c0274b.f15703a = wVar.g();
                c0274b.f15704b = wVar.g();
                c0274b.f15705c = 0;
                if (c0274b.f15703a != 1414744396) {
                    StringBuilder sbC = a0.b.c("LIST expected, found: ");
                    sbC.append(c0274b.f15703a);
                    throw i1.a(sbC.toString(), null);
                }
                c0274b.f15705c = wVar.g();
                C0274b c0274b2 = this.f15688b;
                if (c0274b2.f15705c == 1819436136) {
                    this.f15696j = c0274b2.f15704b;
                    this.f15689c = 2;
                    return 0;
                }
                StringBuilder sbC2 = a0.b.c("hdrl expected, found: ");
                sbC2.append(this.f15688b.f15705c);
                throw i1.a(sbC2.toString(), null);
            case 2:
                int i10 = this.f15696j - 4;
                w wVar2 = new w(i10);
                iVar.readFully(wVar2.f10475a, 0, i10);
                f fVarB = f.b(1819436136, wVar2);
                if (fVarB.f15727b != 1819436136) {
                    StringBuilder sbC3 = a0.b.c("Unexpected header list type ");
                    sbC3.append(fVarB.f15727b);
                    throw i1.a(sbC3.toString(), null);
                }
                c cVar = (c) fVarB.a(c.class);
                if (cVar == null) {
                    throw i1.a("AviHeader not found", null);
                }
                this.f15691e = cVar;
                this.f15692f = ((long) cVar.f15708c) * ((long) cVar.f15706a);
                ArrayList arrayList = new ArrayList();
                u6.a aVarListIterator = fVarB.f15726a.listIterator(0);
                int i11 = 0;
                while (aVarListIterator.hasNext()) {
                    u3.a aVar = (u3.a) aVarListIterator.next();
                    if (aVar.getType() == 1819440243) {
                        f fVar = (f) aVar;
                        int i12 = i11 + 1;
                        d dVar = (d) fVar.a(d.class);
                        g gVar = (g) fVar.a(g.class);
                        if (dVar == null) {
                            p.g("AviExtractor", "Missing Stream Header");
                        } else if (gVar == null) {
                            p.g("AviExtractor", "Missing Stream Format");
                        } else {
                            long jR = g0.R(dVar.f15712d, ((long) dVar.f15710b) * 1000000, dVar.f15711c);
                            s0 s0Var = gVar.f15728a;
                            s0.a aVar2 = new s0.a(s0Var);
                            aVar2.b(i11);
                            int i13 = dVar.f15713e;
                            if (i13 != 0) {
                                aVar2.f11706l = i13;
                            }
                            h hVar = (h) fVar.a(h.class);
                            if (hVar != null) {
                                aVar2.f11696b = hVar.f15729a;
                            }
                            int i14 = s.i(s0Var.f11687s);
                            if (i14 == 1 || i14 == 2) {
                                s3.w wVarP = this.f15690d.p(i11, i14);
                                wVarP.b(new s0(aVar2));
                                e eVar2 = new e(i11, i14, jR, dVar.f15712d, wVarP);
                                this.f15692f = jR;
                                eVar = eVar2;
                            }
                            if (eVar != null) {
                                arrayList.add(eVar);
                            }
                            i11 = i12;
                        }
                        eVar = null;
                        if (eVar != null) {
                            arrayList.add(eVar);
                        }
                        i11 = i12;
                    }
                }
                this.f15693g = (e[]) arrayList.toArray(new e[0]);
                this.f15690d.b();
                this.f15689c = 3;
                return 0;
            case 3:
                if (this.f15697k != -1) {
                    long jU2 = iVar.u();
                    long j12 = this.f15697k;
                    if (jU2 != j12) {
                        this.f15694h = j12;
                        return 0;
                    }
                }
                iVar.s(this.f15687a.f10475a, 0, 12);
                iVar.i();
                this.f15687a.D(0);
                C0274b c0274b3 = this.f15688b;
                w wVar3 = this.f15687a;
                Objects.requireNonNull(c0274b3);
                c0274b3.f15703a = wVar3.g();
                c0274b3.f15704b = wVar3.g();
                c0274b3.f15705c = 0;
                int iG = this.f15687a.g();
                int i15 = this.f15688b.f15703a;
                if (i15 == 1179011410) {
                    iVar.k(12);
                    return 0;
                }
                if (i15 != 1414744396 || iG != 1769369453) {
                    this.f15694h = iVar.u() + ((long) this.f15688b.f15704b) + 8;
                    return 0;
                }
                long jU3 = iVar.u();
                this.f15697k = jU3;
                this.f15698l = jU3 + ((long) this.f15688b.f15704b) + 8;
                if (!this.f15700n) {
                    c cVar2 = this.f15691e;
                    Objects.requireNonNull(cVar2);
                    if ((cVar2.f15707b & 16) == 16) {
                        this.f15689c = 4;
                        this.f15694h = this.f15698l;
                        return 0;
                    }
                    this.f15690d.j(new u.b(this.f15692f));
                    this.f15700n = true;
                }
                this.f15694h = iVar.u() + 12;
                this.f15689c = 6;
                return 0;
            case 4:
                iVar.readFully(this.f15687a.f10475a, 0, 8);
                this.f15687a.D(0);
                int iG2 = this.f15687a.g();
                int iG3 = this.f15687a.g();
                if (iG2 == 829973609) {
                    this.f15689c = 5;
                    this.f15699m = iG3;
                } else {
                    this.f15694h = iVar.u() + ((long) iG3);
                }
                return 0;
            case 5:
                w wVar4 = new w(this.f15699m);
                iVar.readFully(wVar4.f10475a, 0, this.f15699m);
                int i16 = wVar4.f10477c;
                int i17 = wVar4.f10476b;
                if (i16 - i17 < 16) {
                    j10 = 0;
                } else {
                    wVar4.E(8);
                    long jG = wVar4.g();
                    long j13 = this.f15697k;
                    j10 = jG > j13 ? 0L : j13 + 8;
                    wVar4.D(i17);
                }
                while (wVar4.f10477c - wVar4.f10476b >= 16) {
                    int iG4 = wVar4.g();
                    int iG5 = wVar4.g();
                    long jG2 = ((long) wVar4.g()) + j10;
                    wVar4.g();
                    e eVarC = c(iG4);
                    if (eVarC != null) {
                        if ((iG5 & 16) == 16) {
                            if (eVarC.f15723j == eVarC.f15725l.length) {
                                long[] jArr = eVarC.f15724k;
                                eVarC.f15724k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                                int[] iArr = eVarC.f15725l;
                                eVarC.f15725l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                            }
                            long[] jArr2 = eVarC.f15724k;
                            int i18 = eVarC.f15723j;
                            jArr2[i18] = jG2;
                            eVarC.f15725l[i18] = eVarC.f15722i;
                            eVarC.f15723j = i18 + 1;
                        }
                        eVarC.f15722i++;
                    }
                }
                for (e eVar3 : this.f15693g) {
                    eVar3.f15724k = Arrays.copyOf(eVar3.f15724k, eVar3.f15723j);
                    eVar3.f15725l = Arrays.copyOf(eVar3.f15725l, eVar3.f15723j);
                }
                this.f15700n = true;
                this.f15690d.j(new a(this.f15692f));
                this.f15689c = 6;
                this.f15694h = this.f15697k;
                return 0;
            case 6:
                if (iVar.u() >= this.f15698l) {
                    return -1;
                }
                e eVar4 = this.f15695i;
                if (eVar4 != null) {
                    int i19 = eVar4.f15720g;
                    int iD = i19 - eVar4.f15714a.d(iVar, i19, false);
                    eVar4.f15720g = iD;
                    boolean z11 = iD == 0;
                    if (z11) {
                        if (eVar4.f15719f > 0) {
                            s3.w wVar5 = eVar4.f15714a;
                            int i20 = eVar4.f15721h;
                            wVar5.c((eVar4.f15717d * ((long) i20)) / ((long) eVar4.f15718e), Arrays.binarySearch(eVar4.f15725l, i20) >= 0 ? 1 : 0, eVar4.f15719f, 0, null);
                        }
                        eVar4.f15721h++;
                    }
                    if (!z11) {
                        return 0;
                    }
                    this.f15695i = null;
                    return 0;
                }
                if ((iVar.u() & 1) == 1) {
                    iVar.k(1);
                }
                iVar.s(this.f15687a.f10475a, 0, 12);
                this.f15687a.D(0);
                int iG6 = this.f15687a.g();
                if (iG6 == 1414744396) {
                    this.f15687a.D(8);
                    iVar.k(this.f15687a.g() != 1769369453 ? 8 : 12);
                    iVar.i();
                    return 0;
                }
                int iG7 = this.f15687a.g();
                if (iG6 == 1263424842) {
                    this.f15694h = iVar.u() + ((long) iG7) + 8;
                    return 0;
                }
                iVar.k(8);
                iVar.i();
                e eVarC2 = c(iG6);
                if (eVarC2 == null) {
                    this.f15694h = iVar.u() + ((long) iG7);
                    return 0;
                }
                eVarC2.f15719f = iG7;
                eVarC2.f15720g = iG7;
                this.f15695i = eVarC2;
                return 0;
            default:
                throw new AssertionError();
        }
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f15689c = 0;
        this.f15690d = jVar;
        this.f15694h = -1L;
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        iVar.s(this.f15687a.f10475a, 0, 12);
        this.f15687a.D(0);
        if (this.f15687a.g() != 1179011410) {
            return false;
        }
        this.f15687a.E(4);
        return this.f15687a.g() == 541677121;
    }
}
