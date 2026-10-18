package a4;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import m5.g0;
import m5.p;
import m5.t;
import m5.w;
import n3.i1;
import n3.r0;
import n3.s0;
import s3.q;
import s3.u;
import s3.v;
import s3.x;

/* JADX INFO: compiled from: Mp4Extractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements s3.h, u {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f291y = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f301j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f302k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f303l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public w f304m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f306o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f307p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f308q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long[][] f311t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f312u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f313v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f314w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public l4.b f315x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f292a = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f300i = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final j f298g = new j();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<f4.a.b> f299h = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w f296e = new w(16);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque<a4.a.C0004a> f297f = new ArrayDeque<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f293b = new w(t.f10435a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f294c = new w(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f295d = new w();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f305n = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public s3.j f309r = s3.j.f15050g;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public a[] f310s = new a[0];

    /* JADX INFO: compiled from: Mp4Extractor.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l f316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o f317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s3.w f318c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final x f319d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f320e;

        public a(l lVar, o oVar, s3.w wVar) {
            this.f316a = lVar;
            this.f317b = oVar;
            this.f318c = wVar;
            this.f319d = "audio/true-hd".equals(lVar.f337f.f11687s) ? new x() : null;
        }
    }

    static {
        r0 r0Var = r0.f11667e;
    }

    public h(int i10) {
    }

    public static long l(o oVar, long j10, long j11) {
        int iA = oVar.a(j10);
        if (iA == -1) {
            iA = oVar.b(j10);
        }
        return iA == -1 ? j11 : Math.min(oVar.f367c[iA], j11);
    }

    @Override // s3.h
    public final void a() {
    }

    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList, java.util.List<f4.a$b>] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f297f.clear();
        this.f303l = 0;
        this.f305n = -1;
        this.f306o = 0;
        this.f307p = 0;
        this.f308q = 0;
        if (j10 == 0) {
            if (this.f300i != 3) {
                k();
                return;
            }
            j jVar = this.f298g;
            jVar.f326a.clear();
            jVar.f327b = 0;
            this.f299h.clear();
            return;
        }
        for (a aVar : this.f310s) {
            o oVar = aVar.f317b;
            int iA = oVar.a(j11);
            if (iA == -1) {
                iA = oVar.b(j11);
            }
            aVar.f320e = iA;
            x xVar = aVar.f319d;
            if (xVar != null) {
                xVar.f15089b = false;
                xVar.f15090c = 0;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:260:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:261:0x050e  */
    /* JADX WARN: Code duplicated, block: B:263:0x0514  */
    /* JADX WARN: Code duplicated, block: B:270:0x052e  */
    /* JADX WARN: Code duplicated, block: B:273:0x0542  */
    /* JADX WARN: Code duplicated, block: B:288:0x056a  */
    /* JADX WARN: Code duplicated, block: B:290:0x056d  */
    /* JADX WARN: Code duplicated, block: B:297:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:298:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:300:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:337:0x0616  */
    /* JADX WARN: Code duplicated, block: B:339:0x0619  */
    /* JADX WARN: Code duplicated, block: B:341:0x061d  */
    /* JADX WARN: Code duplicated, block: B:342:0x061f  */
    /* JADX WARN: Code duplicated, block: B:345:0x062c  */
    /* JADX WARN: Code duplicated, block: B:346:0x062e  */
    /* JADX WARN: Code duplicated, block: B:348:0x064b  */
    /* JADX WARN: Code duplicated, block: B:350:0x065b  */
    /* JADX WARN: Code duplicated, block: B:362:0x047c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x067c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r3v29, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r5v17, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    /* JADX WARN: Type inference failed for: r5v19, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.util.ArrayList, java.util.List<a4.j$a>] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v40 */
    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        int i10;
        int i11;
        char c10;
        ?? r10;
        boolean z10;
        long j10;
        long jA;
        a4.a.C0004a c0004aPeek;
        long j11;
        int i12;
        int i13;
        boolean z11;
        boolean z12;
        long j12;
        long j13;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        long j14;
        long j15;
        long j16;
        while (true) {
            int i14 = this.f300i;
            int i15 = 4;
            boolean z17 = false;
            if (i14 == 0) {
                if (this.f303l != 0) {
                    j10 = this.f302k;
                    if (j10 == 1) {
                        iVar.readFully(this.f296e.f10475a, 8, 8);
                        this.f303l += 8;
                        this.f302k = this.f296e.x();
                    } else if (j10 == 0) {
                        jA = iVar.a();
                        if (jA == -1 && (c0004aPeek = this.f297f.peek()) != null) {
                            jA = c0004aPeek.f212b;
                        }
                        if (jA != -1) {
                            this.f302k = (jA - iVar.u()) + ((long) this.f303l);
                        }
                    }
                    j11 = this.f302k;
                    i12 = this.f303l;
                    if (j11 >= i12) {
                        throw i1.c("Atom size less than header length (unsupported).");
                    }
                    i13 = this.f301j;
                    if (i13 != 1836019574 || i13 == 1953653099 || i13 == 1835297121 || i13 == 1835626086 || i13 == 1937007212 || i13 == 1701082227 || i13 == 1835365473) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        long jU = iVar.u();
                        j14 = this.f302k;
                        j15 = this.f303l;
                        j16 = (jU + j14) - j15;
                        if (j14 != j15 && this.f301j == 1835365473) {
                            this.f295d.A(8);
                            iVar.s(this.f295d.f10475a, 0, 8);
                            b.a(this.f295d);
                            iVar.k(this.f295d.f10476b);
                            iVar.i();
                        }
                        this.f297f.push(new a4.a.C0004a(this.f301j, j16));
                        if (this.f302k == this.f303l) {
                            m(j16);
                        } else {
                            k();
                        }
                        z13 = true;
                    } else {
                        if (i13 != 1835296868 || i13 == 1836476516 || i13 == 1751411826 || i13 == 1937011556 || i13 == 1937011827 || i13 == 1937011571 || i13 == 1668576371 || i13 == 1701606260 || i13 == 1937011555 || i13 == 1937011578 || i13 == 1937013298 || i13 == 1937007471 || i13 == 1668232756 || i13 == 1953196132 || i13 == 1718909296 || i13 == 1969517665 || i13 == 1801812339 || i13 == 1768715124) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            if (i12 == 8) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            m5.a.e(z14);
                            if (this.f302k <= 2147483647L) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            m5.a.e(z15);
                            w wVar = new w((int) this.f302k);
                            System.arraycopy(this.f296e.f10475a, 0, wVar.f10475a, 0, 8);
                            this.f304m = wVar;
                            z13 = true;
                            this.f300i = 1;
                        } else {
                            long jU2 = iVar.u();
                            j12 = this.f303l;
                            j13 = jU2 - j12;
                            if (this.f301j == 1836086884) {
                                this.f315x = new l4.b(0L, j13, -9223372036854775807L, j13 + j12, this.f302k - j12);
                            }
                            this.f304m = null;
                            z13 = true;
                            this.f300i = 1;
                        }
                    }
                    z16 = z13;
                } else if (iVar.e(this.f296e.f10475a, 0, 8, true)) {
                    this.f303l = 8;
                    this.f296e.D(0);
                    this.f302k = this.f296e.u();
                    this.f301j = this.f296e.e();
                    j10 = this.f302k;
                    if (j10 == 1) {
                        iVar.readFully(this.f296e.f10475a, 8, 8);
                        this.f303l += 8;
                        this.f302k = this.f296e.x();
                    } else if (j10 == 0) {
                        jA = iVar.a();
                        if (jA == -1) {
                            jA = c0004aPeek.f212b;
                        }
                        if (jA != -1) {
                            this.f302k = (jA - iVar.u()) + ((long) this.f303l);
                        }
                    }
                    j11 = this.f302k;
                    i12 = this.f303l;
                    if (j11 >= i12) {
                        throw i1.c("Atom size less than header length (unsupported).");
                    }
                    i13 = this.f301j;
                    if (i13 != 1836019574) {
                        z11 = true;
                    } else {
                        z11 = true;
                    }
                    if (z11) {
                        long jU3 = iVar.u();
                        j14 = this.f302k;
                        j15 = this.f303l;
                        j16 = (jU3 + j14) - j15;
                        if (j14 != j15) {
                            this.f295d.A(8);
                            iVar.s(this.f295d.f10475a, 0, 8);
                            b.a(this.f295d);
                            iVar.k(this.f295d.f10476b);
                            iVar.i();
                        }
                        this.f297f.push(new a4.a.C0004a(this.f301j, j16));
                        if (this.f302k == this.f303l) {
                            m(j16);
                        } else {
                            k();
                        }
                        z13 = true;
                    } else {
                        if (i13 != 1835296868) {
                            z12 = true;
                        } else {
                            z12 = true;
                        }
                        if (z12) {
                            if (i12 == 8) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            m5.a.e(z14);
                            if (this.f302k <= 2147483647L) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            m5.a.e(z15);
                            w wVar2 = new w((int) this.f302k);
                            System.arraycopy(this.f296e.f10475a, 0, wVar2.f10475a, 0, 8);
                            this.f304m = wVar2;
                            z13 = true;
                            this.f300i = 1;
                        } else {
                            long jU4 = iVar.u();
                            j12 = this.f303l;
                            j13 = jU4 - j12;
                            if (this.f301j == 1836086884) {
                                this.f315x = new l4.b(0L, j13, -9223372036854775807L, j13 + j12, this.f302k - j12);
                            }
                            this.f304m = null;
                            z13 = true;
                            this.f300i = 1;
                        }
                    }
                    z16 = z13;
                } else {
                    if (this.f314w == 2 && (this.f292a & 2) != 0) {
                        s3.w wVarP = this.f309r.p(0, 4);
                        l4.b bVar = this.f315x;
                        f4.a aVar = bVar == null ? null : new f4.a(bVar);
                        s0.a aVar2 = new s0.a();
                        aVar2.f11703i = aVar;
                        wVarP.b(new s0(aVar2));
                        this.f309r.b();
                        this.f309r.j(new u.b(-9223372036854775807L));
                    }
                    z16 = false;
                }
                if (!z16) {
                    return -1;
                }
            } else {
                if (i14 != 1) {
                    if (i14 == 2) {
                        long jU5 = iVar.u();
                        if (this.f305n == -1) {
                            long j17 = Long.MAX_VALUE;
                            long j18 = Long.MAX_VALUE;
                            long j19 = Long.MAX_VALUE;
                            int i16 = 0;
                            int i17 = -1;
                            int i18 = -1;
                            boolean z18 = true;
                            boolean z19 = true;
                            while (true) {
                                a[] aVarArr = this.f310s;
                                if (i16 >= aVarArr.length) {
                                    break;
                                }
                                a aVar3 = aVarArr[i16];
                                int i19 = aVar3.f320e;
                                o oVar = aVar3.f317b;
                                if (i19 != oVar.f366b) {
                                    long j20 = oVar.f367c[i19];
                                    long[][] jArr = this.f311t;
                                    int i20 = g0.f10384a;
                                    long j21 = jArr[i16][i19];
                                    long j22 = j20 - jU5;
                                    boolean z20 = j22 < 0 || j22 >= 262144;
                                    if ((!z20 && z19) || (z20 == z19 && j22 < j19)) {
                                        z19 = z20;
                                        i18 = i16;
                                        j19 = j22;
                                        j18 = j21;
                                    }
                                    if (j21 < j17) {
                                        z18 = z20;
                                        i17 = i16;
                                        j17 = j21;
                                    }
                                }
                                i16++;
                            }
                            if (j17 == Long.MAX_VALUE || !z18 || j18 < j17 + 10485760) {
                                i17 = i18;
                            }
                            this.f305n = i17;
                            if (i17 == -1) {
                                return -1;
                            }
                        }
                        a aVar4 = this.f310s[this.f305n];
                        s3.w wVar3 = aVar4.f318c;
                        int i21 = aVar4.f320e;
                        o oVar2 = aVar4.f317b;
                        long j23 = oVar2.f367c[i21];
                        int i22 = oVar2.f368d[i21];
                        x xVar = aVar4.f319d;
                        long j24 = (j23 - jU5) + ((long) this.f306o);
                        if (j24 < 0 || j24 >= 262144) {
                            tVar.f15076a = j23;
                            return 1;
                        }
                        if (aVar4.f316a.f338g == 1) {
                            j24 += 8;
                            i22 -= 8;
                        }
                        iVar.k((int) j24);
                        l lVar = aVar4.f316a;
                        int i23 = lVar.f341j;
                        if (i23 == 0) {
                            if ("audio/ac4".equals(lVar.f337f.f11687s)) {
                                if (this.f307p == 0) {
                                    p3.c.a(i22, this.f295d);
                                    wVar3.f(this.f295d, 7);
                                    this.f307p += 7;
                                }
                                i22 += 7;
                            } else if (xVar != null) {
                                xVar.c(iVar);
                            }
                            while (true) {
                                int i24 = this.f307p;
                                if (i24 >= i22) {
                                    break;
                                }
                                int iD = wVar3.d(iVar, i22 - i24, false);
                                this.f306o += iD;
                                this.f307p += iD;
                                this.f308q -= iD;
                            }
                        } else {
                            byte[] bArr = this.f294c.f10475a;
                            bArr[0] = 0;
                            bArr[1] = 0;
                            bArr[2] = 0;
                            int i25 = 4 - i23;
                            while (this.f307p < i22) {
                                int i26 = this.f308q;
                                if (i26 == 0) {
                                    iVar.readFully(bArr, i25, i23);
                                    this.f306o += i23;
                                    this.f294c.D(0);
                                    int iE = this.f294c.e();
                                    if (iE < 0) {
                                        throw i1.a("Invalid NAL length", null);
                                    }
                                    this.f308q = iE;
                                    this.f293b.D(0);
                                    wVar3.f(this.f293b, 4);
                                    this.f307p += 4;
                                    i22 += i25;
                                } else {
                                    int iD2 = wVar3.d(iVar, i26, false);
                                    this.f306o += iD2;
                                    this.f307p += iD2;
                                    this.f308q -= iD2;
                                }
                            }
                        }
                        int i27 = i22;
                        o oVar3 = aVar4.f317b;
                        long j25 = oVar3.f370f[i21];
                        int i28 = oVar3.f371g[i21];
                        if (xVar != null) {
                            xVar.b(wVar3, j25, i28, i27, 0, null);
                            if (i21 + 1 == aVar4.f317b.f366b) {
                                xVar.a(wVar3, null);
                            }
                        } else {
                            wVar3.c(j25, i28, i27, 0, null);
                        }
                        aVar4.f320e++;
                        this.f305n = -1;
                        this.f306o = 0;
                        this.f307p = 0;
                        this.f308q = 0;
                        return 0;
                    }
                    if (i14 != 3) {
                        throw new IllegalStateException();
                    }
                    j jVar = this.f298g;
                    List<f4.a.b> list = this.f299h;
                    int i29 = jVar.f327b;
                    if (i29 != 0) {
                        if (i29 != 1) {
                            short s10 = 2816;
                            short s11 = 2192;
                            if (i29 == 2) {
                                long jA2 = iVar.a();
                                int i30 = (jVar.f328c - 12) - 8;
                                w wVar4 = new w(i30);
                                iVar.readFully(wVar4.f10475a, 0, i30);
                                int i31 = 0;
                                while (i31 < i30 / 12) {
                                    wVar4.E(2);
                                    short sI = wVar4.i();
                                    if (sI != s11 && sI != s10 && sI != 2817 && sI != 2819) {
                                        if (sI != 2820) {
                                            wVar4.E(8);
                                        }
                                        i31++;
                                        jA2 = jA2;
                                        s10 = 2816;
                                        s11 = 2192;
                                    }
                                    jVar.f326a.add(new j.a((jA2 - ((long) jVar.f328c)) - ((long) wVar4.g()), wVar4.g()));
                                    i31++;
                                    jA2 = jA2;
                                    s10 = 2816;
                                    s11 = 2192;
                                }
                                if (jVar.f326a.isEmpty()) {
                                    tVar.f15076a = 0L;
                                } else {
                                    jVar.f327b = 3;
                                    tVar.f15076a = ((j.a) jVar.f326a.get(0)).f329a;
                                }
                            } else {
                                if (i29 != 3) {
                                    throw new IllegalStateException();
                                }
                                long jU6 = iVar.u();
                                int iA = (int) ((iVar.a() - iVar.u()) - ((long) jVar.f328c));
                                w wVar5 = new w(iA);
                                iVar.readFully(wVar5.f10475a, 0, iA);
                                int i32 = 0;
                                ?? r11 = list;
                                while (i32 < jVar.f326a.size()) {
                                    j.a aVar5 = (j.a) jVar.f326a.get(i32);
                                    ?? r24 = r11;
                                    wVar5.D((int) (aVar5.f329a - jU6));
                                    wVar5.E(i15);
                                    int iG = wVar5.g();
                                    switch (wVar5.q(iG)) {
                                        case "SlowMotion_Data":
                                            i11 = 0;
                                            break;
                                        case "Super_SlowMotion_Edit_Data":
                                            i11 = 1;
                                            break;
                                        case "Super_SlowMotion_Data":
                                            i11 = 2;
                                            break;
                                        case "Super_SlowMotion_Deflickering_On":
                                            i11 = 3;
                                            break;
                                        case "Super_SlowMotion_BGM":
                                            i11 = i15;
                                            break;
                                        default:
                                            i11 = -1;
                                            break;
                                    }
                                    if (i11 == 0) {
                                        c10 = 2192;
                                    } else if (i11 == 1) {
                                        c10 = 2819;
                                    } else if (i11 == 2) {
                                        c10 = 2816;
                                    } else if (i11 == 3) {
                                        c10 = 2820;
                                    } else {
                                        if (i11 != i15) {
                                            throw i1.a("Invalid SEF name", null);
                                        }
                                        c10 = 2817;
                                    }
                                    int i33 = aVar5.f330b - (iG + 8);
                                    if (c10 == 2192) {
                                        ArrayList arrayList = new ArrayList();
                                        List<String> listA = j.f325e.a(wVar5.q(i33));
                                        for (int i34 = 0; i34 < listA.size(); i34++) {
                                            List<String> listA2 = j.f324d.a(listA.get(i34));
                                            if (listA2.size() != 3) {
                                                throw i1.a(null, null);
                                            }
                                            try {
                                                arrayList.add(new l4.c.b(Long.parseLong(listA2.get(0)), Long.parseLong(listA2.get(1)), 1 << (Integer.parseInt(listA2.get(2)) - 1)));
                                            } catch (NumberFormatException e10) {
                                                throw i1.a(null, e10);
                                            }
                                        }
                                        r10 = r24;
                                        r10.add(new l4.c(arrayList));
                                    } else {
                                        if (c10 != 2816 && c10 != 2817 && c10 != 2819 && c10 != 2820) {
                                            throw new IllegalStateException();
                                        }
                                        r10 = r24;
                                    }
                                    i32++;
                                    r11 = r10;
                                    i15 = 4;
                                }
                                tVar.f15076a = 0L;
                                i10 = 1;
                            }
                        } else {
                            w wVar6 = new w(8);
                            iVar.readFully(wVar6.f10475a, 0, 8);
                            jVar.f328c = wVar6.g() + 8;
                            if (wVar6.e() != 1397048916) {
                                tVar.f15076a = 0L;
                            } else {
                                tVar.f15076a = iVar.u() - ((long) (jVar.f328c - 12));
                                jVar.f327b = 2;
                            }
                        }
                        i10 = 1;
                    } else {
                        long jA3 = iVar.a();
                        tVar.f15076a = (jA3 == -1 || jA3 < 8) ? 0L : jA3 - 8;
                        i10 = 1;
                        jVar.f327b = 1;
                    }
                    if (tVar.f15076a == 0) {
                        k();
                    }
                    return i10;
                }
                long j26 = this.f302k - ((long) this.f303l);
                long jU7 = iVar.u() + j26;
                w wVar7 = this.f304m;
                if (wVar7 != null) {
                    iVar.readFully(wVar7.f10475a, this.f303l, (int) j26);
                    if (this.f301j == 1718909296) {
                        wVar7.D(8);
                        int iE2 = wVar7.e();
                        int i35 = iE2 != 1751476579 ? iE2 != 1903435808 ? 0 : 1 : 2;
                        if (i35 == 0) {
                            wVar7.E(4);
                            do {
                                if (wVar7.f10477c - wVar7.f10476b <= 0) {
                                    i35 = 0;
                                    break;
                                }
                                int iE3 = wVar7.e();
                                i35 = iE3 != 1751476579 ? iE3 != 1903435808 ? 0 : 1 : 2;
                            } while (i35 == 0);
                        }
                        this.f314w = i35;
                    } else if (!this.f297f.isEmpty()) {
                        this.f297f.peek().f213c.add(new a4.a.b(this.f301j, wVar7));
                    }
                } else {
                    if (j26 < 262144) {
                        iVar.k((int) j26);
                    } else {
                        tVar.f15076a = iVar.u() + j26;
                        z10 = true;
                    }
                    m(jU7);
                    if (z10 && this.f300i != 2) {
                        z17 = true;
                    }
                    if (z17) {
                        return 1;
                    }
                }
                z10 = false;
                m(jU7);
                if (z10) {
                    z17 = true;
                }
                if (z17) {
                    return 1;
                }
            }
        }
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f309r = jVar;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:28:0x006f  */
    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:35:0x008c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0092  */
    /* JADX WARN: Code duplicated, block: B:38:0x0083 A[EDGE_INSN: B:38:0x0083->B:33:0x0083 BREAK  A[LOOP:0: B:24:0x0066->B:32:0x0080], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0080 A[SYNTHETIC] */
    @Override // s3.u
    public final u.a h(long j10) {
        long j11;
        long j12;
        long j13;
        int i10;
        a[] aVarArr;
        o oVar;
        int iB;
        long j14 = j10;
        a[] aVarArr2 = this.f310s;
        if (aVarArr2.length == 0) {
            v vVar = v.f15081c;
            return new u.a(vVar, vVar);
        }
        long jL = -1;
        int i11 = this.f312u;
        if (i11 != -1) {
            o oVar2 = aVarArr2[i11].f317b;
            int iA = oVar2.a(j14);
            if (iA == -1) {
                iA = oVar2.b(j14);
            }
            if (iA == -1) {
                v vVar2 = v.f15081c;
                return new u.a(vVar2, vVar2);
            }
            j12 = oVar2.f370f[iA];
            j11 = oVar2.f367c[iA];
            if (j12 >= j14 || iA >= oVar2.f366b - 1 || (iB = oVar2.b(j14)) == -1 || iB == iA) {
                j14 = j12;
            } else {
                long j15 = oVar2.f370f[iB];
                long j16 = oVar2.f367c[iB];
                j13 = j15;
                jL = j16;
            }
            i10 = 0;
            while (true) {
                aVarArr = this.f310s;
                if (i10 < aVarArr.length) {
                    break;
                }
                if (i10 != this.f312u) {
                    oVar = aVarArr[i10].f317b;
                    long jL2 = l(oVar, j12, j11);
                    if (j13 != -9223372036854775807L) {
                        jL = l(oVar, j13, jL);
                    }
                    j11 = jL2;
                }
                i10++;
            }
            v vVar3 = new v(j12, j11);
            return j13 == -9223372036854775807L ? new u.a(vVar3, vVar3) : new u.a(vVar3, new v(j13, jL));
        }
        j11 = Long.MAX_VALUE;
        j12 = j14;
        j13 = -9223372036854775807L;
        i10 = 0;
        while (true) {
            aVarArr = this.f310s;
            if (i10 < aVarArr.length) {
                break;
                break;
            }
            if (i10 != this.f312u) {
                oVar = aVarArr[i10].f317b;
                long jL3 = l(oVar, j12, j11);
                if (j13 != -9223372036854775807L) {
                    jL = l(oVar, j13, jL);
                }
                j11 = jL3;
            }
            i10++;
        }
        v vVar4 = new v(j12, j11);
        if (j13 == -9223372036854775807L) {
        }
    }

    @Override // s3.u
    public final long i() {
        return this.f313v;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        return k.a(iVar, false, (this.f292a & 2) != 0);
    }

    public final void k() {
        this.f300i = 0;
        this.f303l = 0;
    }

    /* JADX WARN: Code duplicated, block: B:230:0x0446  */
    /* JADX WARN: Code duplicated, block: B:287:0x054c A[PHI: r0
      0x054c: PHI (r0v27 f4.a) = (r0v13 f4.a), (r0v13 f4.a), (r0v21 f4.a), (r0v13 f4.a) binds: [B:275:0x051b, B:276:0x051d, B:368:0x054c, B:272:0x0514] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2  */
    /* JADX WARN: Type inference failed for: r0v93, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.ArrayList, java.util.List<f4.a$b>] */
    public final void m(long j10) throws i1 {
        ArrayList arrayList;
        f4.a aVar;
        f4.a aVar2;
        f4.a aVar3;
        f4.a aVar4;
        ArrayList arrayList2;
        int i10;
        int i11;
        String[] strArr;
        l4.a aVar5;
        ArrayList arrayList3;
        f4.a aVar6;
        ArrayList arrayList4;
        k4.h hVarD;
        String str;
        k4.h hVarE;
        while (!this.f297f.isEmpty() && this.f297f.peek().f212b == j10) {
            a4.a.C0004a c0004aPop = this.f297f.pop();
            if (c0004aPop.f211a == 1836019574) {
                ArrayList arrayList5 = new ArrayList();
                boolean z10 = this.f314w == 1;
                q qVar = new q();
                a4.a.b bVarC = c0004aPop.c(1969517665);
                int i12 = 1768715124;
                int i13 = 1835365473;
                int i14 = 8;
                if (bVarC != null) {
                    byte[] bArr = b.f216a;
                    w wVar = bVarC.f215b;
                    wVar.D(8);
                    f4.a aVar7 = null;
                    f4.a aVar8 = null;
                    while (true) {
                        int i15 = wVar.f10477c;
                        int i16 = wVar.f10476b;
                        if (i15 - i16 < i14) {
                            break;
                        }
                        int iE = wVar.e();
                        int iE2 = wVar.e();
                        if (iE2 == i13) {
                            wVar.D(i16);
                            int i17 = i16 + iE;
                            wVar.E(i14);
                            b.a(wVar);
                            while (true) {
                                int i18 = wVar.f10476b;
                                if (i18 < i17) {
                                    int iE3 = wVar.e();
                                    if (wVar.e() == i12) {
                                        wVar.D(i18);
                                        int i19 = i18 + iE3;
                                        wVar.E(i14);
                                        ArrayList arrayList6 = new ArrayList();
                                        while (true) {
                                            int i20 = wVar.f10476b;
                                            if (i20 >= i19) {
                                                break;
                                            }
                                            int iE4 = wVar.e() + i20;
                                            int iE5 = wVar.e();
                                            int i21 = (iE5 >> 24) & 255;
                                            int i22 = i19;
                                            if (i21 == 169 || i21 == 253) {
                                                arrayList4 = arrayList5;
                                                int i23 = 16777215 & iE5;
                                                if (i23 == 6516084) {
                                                    hVarD = f.a(iE5, wVar);
                                                } else if (i23 == 7233901 || i23 == 7631467) {
                                                    hVarD = f.d(iE5, "TIT2", wVar);
                                                } else if (i23 == 6516589 || i23 == 7828084) {
                                                    hVarD = f.d(iE5, "TCOM", wVar);
                                                } else if (i23 == 6578553) {
                                                    hVarD = f.d(iE5, "TDRC", wVar);
                                                } else if (i23 == 4280916) {
                                                    hVarD = f.d(iE5, "TPE1", wVar);
                                                } else if (i23 == 7630703) {
                                                    hVarD = f.d(iE5, "TSSE", wVar);
                                                } else if (i23 == 6384738) {
                                                    hVarD = f.d(iE5, "TALB", wVar);
                                                } else if (i23 == 7108978) {
                                                    hVarD = f.d(iE5, "USLT", wVar);
                                                } else if (i23 == 6776174) {
                                                    hVarD = f.d(iE5, "TCON", wVar);
                                                } else if (i23 == 6779504) {
                                                    hVarD = f.d(iE5, "TIT1", wVar);
                                                } else {
                                                    p.b("MetadataUtil", "Skipped unknown metadata entry: " + a4.a.a(iE5));
                                                    hVarD = null;
                                                }
                                            } else if (iE5 == 1735291493) {
                                                try {
                                                    int iF = f.f(wVar);
                                                    if (iF > 0) {
                                                        String[] strArr2 = f.f288a;
                                                        if (iF <= 192) {
                                                            str = strArr2[iF - 1];
                                                        } else {
                                                            str = null;
                                                        }
                                                    } else {
                                                        str = null;
                                                    }
                                                    if (str != null) {
                                                        hVarD = new k4.l("TCON", null, str);
                                                        arrayList4 = arrayList5;
                                                    } else {
                                                        p.g("MetadataUtil", "Failed to parse standard genre code");
                                                        arrayList4 = arrayList5;
                                                        hVarD = null;
                                                    }
                                                } catch (Throwable th) {
                                                    wVar.D(iE4);
                                                    throw th;
                                                }
                                            } else {
                                                String strO = null;
                                                if (iE5 == 1684632427) {
                                                    hVarD = f.c(iE5, "TPOS", wVar);
                                                } else if (iE5 == 1953655662) {
                                                    hVarD = f.c(iE5, "TRCK", wVar);
                                                } else {
                                                    if (iE5 == 1953329263) {
                                                        hVarE = f.e(iE5, "TBPM", wVar, true, false);
                                                    } else if (iE5 == 1668311404) {
                                                        hVarE = f.e(iE5, "TCMP", wVar, true, true);
                                                    } else if (iE5 == 1668249202) {
                                                        hVarD = f.b(wVar);
                                                    } else if (iE5 == 1631670868) {
                                                        hVarD = f.d(iE5, "TPE2", wVar);
                                                    } else if (iE5 == 1936682605) {
                                                        hVarD = f.d(iE5, "TSOT", wVar);
                                                    } else if (iE5 == 1936679276) {
                                                        hVarD = f.d(iE5, "TSO2", wVar);
                                                    } else if (iE5 == 1936679282) {
                                                        hVarD = f.d(iE5, "TSOA", wVar);
                                                    } else if (iE5 == 1936679265) {
                                                        hVarD = f.d(iE5, "TSOP", wVar);
                                                    } else if (iE5 == 1936679791) {
                                                        hVarD = f.d(iE5, "TSOC", wVar);
                                                    } else if (iE5 == 1920233063) {
                                                        hVarE = f.e(iE5, "ITUNESADVISORY", wVar, false, false);
                                                    } else if (iE5 == 1885823344) {
                                                        hVarE = f.e(iE5, "ITUNESGAPLESS", wVar, false, true);
                                                    } else if (iE5 == 1936683886) {
                                                        hVarD = f.d(iE5, "TVSHOWSORT", wVar);
                                                    } else if (iE5 == 1953919848) {
                                                        hVarD = f.d(iE5, "TVSHOW", wVar);
                                                    } else if (iE5 == 757935405) {
                                                        int i24 = -1;
                                                        int i25 = -1;
                                                        String strO2 = null;
                                                        while (true) {
                                                            int i26 = wVar.f10476b;
                                                            if (i26 >= iE4) {
                                                                break;
                                                            }
                                                            int iE6 = wVar.e();
                                                            int iE7 = wVar.e();
                                                            ArrayList arrayList7 = arrayList5;
                                                            wVar.E(4);
                                                            if (iE7 == 1835360622) {
                                                                strO = wVar.o(iE6 - 12);
                                                            } else if (iE7 == 1851878757) {
                                                                strO2 = wVar.o(iE6 - 12);
                                                            } else {
                                                                if (iE7 == 1684108385) {
                                                                    i25 = iE6;
                                                                    i24 = i26;
                                                                }
                                                                wVar.E(iE6 - 12);
                                                            }
                                                            arrayList5 = arrayList7;
                                                        }
                                                        arrayList4 = arrayList5;
                                                        if (strO == null || strO2 == null || i24 == -1) {
                                                            hVarD = null;
                                                        } else {
                                                            wVar.D(i24);
                                                            wVar.E(16);
                                                            hVarD = new k4.i(strO, strO2, wVar.o(i25 - 16));
                                                        }
                                                    } else {
                                                        arrayList4 = arrayList5;
                                                        p.b("MetadataUtil", "Skipped unknown metadata entry: " + a4.a.a(iE5));
                                                        hVarD = null;
                                                    }
                                                    hVarD = hVarE;
                                                }
                                                arrayList4 = arrayList5;
                                            }
                                            wVar.D(iE4);
                                            if (hVarD != null) {
                                                arrayList6.add(hVarD);
                                            }
                                            i19 = i22;
                                            arrayList5 = arrayList4;
                                        }
                                        arrayList3 = arrayList5;
                                        if (!arrayList6.isEmpty()) {
                                            aVar6 = new f4.a(arrayList6);
                                            break;
                                        }
                                        break;
                                    }
                                    wVar.D(i18 + iE3);
                                    i12 = 1768715124;
                                    i14 = 8;
                                } else {
                                    arrayList3 = arrayList5;
                                }
                                aVar6 = null;
                                break;
                            }
                            aVar7 = aVar6;
                        } else {
                            arrayList3 = arrayList5;
                            if (iE2 == 1936553057) {
                                wVar.D(i16);
                                int i27 = i16 + iE;
                                wVar.E(12);
                                while (true) {
                                    int i28 = wVar.f10476b;
                                    if (i28 < i27) {
                                        int iE8 = wVar.e();
                                        if (wVar.e() != 1935766900) {
                                            wVar.D(i28 + iE8);
                                        } else if (iE8 >= 14) {
                                            wVar.E(5);
                                            int iT = wVar.t();
                                            if (iT == 12 || iT == 13) {
                                                float f10 = iT == 12 ? 240.0f : 120.0f;
                                                wVar.E(1);
                                                aVar8 = new f4.a(new l4.e(f10, wVar.t()));
                                                break;
                                            }
                                        }
                                    }
                                    aVar8 = null;
                                    break;
                                }
                            }
                        }
                        wVar.D(i16 + iE);
                        i12 = 1768715124;
                        i13 = 1835365473;
                        i14 = 8;
                        arrayList5 = arrayList3;
                    }
                    arrayList = arrayList5;
                    Pair pairCreate = Pair.create(aVar7, aVar8);
                    aVar2 = (f4.a) pairCreate.first;
                    aVar = (f4.a) pairCreate.second;
                    if (aVar2 != null) {
                        qVar.b(aVar2);
                    }
                    i13 = 1835365473;
                } else {
                    arrayList = arrayList5;
                    aVar = null;
                    aVar2 = null;
                }
                f4.a aVar9 = aVar2;
                a4.a.C0004a c0004aB = c0004aPop.b(i13);
                if (c0004aB != null) {
                    byte[] bArr2 = b.f216a;
                    a4.a.b bVarC2 = c0004aB.c(1751411826);
                    a4.a.b bVarC3 = c0004aB.c(1801812339);
                    a4.a.b bVarC4 = c0004aB.c(1768715124);
                    if (bVarC2 == null || bVarC3 == null || bVarC4 == null) {
                        aVar3 = null;
                    } else {
                        w wVar2 = bVarC2.f215b;
                        wVar2.D(16);
                        if (wVar2.e() != 1835299937) {
                            aVar3 = null;
                        } else {
                            w wVar3 = bVarC3.f215b;
                            wVar3.D(12);
                            int iE9 = wVar3.e();
                            String[] strArr3 = new String[iE9];
                            for (int i29 = 0; i29 < iE9; i29++) {
                                int iE10 = wVar3.e();
                                wVar3.E(4);
                                strArr3[i29] = wVar3.q(iE10 - 8);
                            }
                            int i30 = 8;
                            w wVar4 = bVarC4.f215b;
                            wVar4.D(8);
                            ArrayList arrayList8 = new ArrayList();
                            while (true) {
                                int i31 = wVar4.f10477c;
                                int i32 = wVar4.f10476b;
                                if (i31 - i32 <= i30) {
                                    break;
                                }
                                int iE11 = wVar4.e();
                                int iE12 = wVar4.e() - 1;
                                if (iE12 < 0 || iE12 >= iE9) {
                                    i11 = iE9;
                                    strArr = strArr3;
                                    da.c.b("Skipped metadata with unknown key index: ", iE12, "AtomParsers");
                                } else {
                                    String str2 = strArr3[iE12];
                                    int i33 = i32 + iE11;
                                    while (true) {
                                        int i34 = wVar4.f10476b;
                                        if (i34 >= i33) {
                                            i11 = iE9;
                                            strArr = strArr3;
                                            aVar5 = null;
                                            break;
                                        }
                                        int iE13 = wVar4.e();
                                        i11 = iE9;
                                        strArr = strArr3;
                                        if (wVar4.e() == 1684108385) {
                                            int iE14 = wVar4.e();
                                            int iE15 = wVar4.e();
                                            int i35 = iE13 - 16;
                                            byte[] bArr3 = new byte[i35];
                                            wVar4.d(bArr3, 0, i35);
                                            aVar5 = new l4.a(str2, bArr3, iE15, iE14);
                                            break;
                                        }
                                        wVar4.D(i34 + iE13);
                                        iE9 = i11;
                                        strArr3 = strArr;
                                    }
                                    if (aVar5 != null) {
                                        arrayList8.add(aVar5);
                                    }
                                }
                                wVar4.D(i32 + iE11);
                                i30 = 8;
                                iE9 = i11;
                                strArr3 = strArr;
                            }
                            if (arrayList8.isEmpty()) {
                                aVar3 = null;
                            } else {
                                aVar3 = new f4.a(arrayList8);
                            }
                        }
                    }
                } else {
                    aVar3 = null;
                }
                f4.a aVar10 = aVar3;
                long j11 = -9223372036854775807L;
                ArrayList arrayList9 = (ArrayList) b.f(c0004aPop, qVar, -9223372036854775807L, null, (this.f292a & 1) != 0, z10, g.f289a);
                int size = arrayList9.size();
                int i36 = 0;
                int size2 = -1;
                while (i36 < size) {
                    o oVar = (o) arrayList9.get(i36);
                    if (oVar.f366b == 0) {
                        aVar4 = aVar;
                        arrayList2 = arrayList;
                    } else {
                        l lVar = oVar.f365a;
                        long j12 = lVar.f336e;
                        if (j12 == -9223372036854775807L) {
                            j12 = oVar.f372h;
                        }
                        long jMax = Math.max(j11, j12);
                        a aVar11 = new a(lVar, oVar, this.f309r.p(i36, lVar.f333b));
                        int i37 = "audio/true-hd".equals(lVar.f337f.f11687s) ? oVar.f369e * 16 : oVar.f369e + 30;
                        s0.a aVar12 = new s0.a(lVar.f337f);
                        aVar12.f11706l = i37;
                        int i38 = lVar.f333b;
                        if (i38 == 2 && j12 > 0 && (i10 = oVar.f366b) > 1) {
                            aVar12.f11712r = i10 / (j12 / 1000000.0f);
                        }
                        if (i38 == 1) {
                            int i39 = qVar.f15069a;
                            if ((i39 == -1 || qVar.f15070b == -1) ? false : true) {
                                aVar12.A = i39;
                                aVar12.B = qVar.f15070b;
                            }
                        }
                        f4.a[] aVarArr = new f4.a[2];
                        aVarArr[0] = aVar;
                        aVarArr[1] = this.f299h.isEmpty() ? null : new f4.a(this.f299h);
                        f4.a aVar13 = new f4.a(new f4.a.b[0]);
                        if (i38 != 1) {
                            if (i38 != 2 || aVar10 == null) {
                                aVar4 = aVar;
                                break;
                            }
                            int i40 = 0;
                            while (true) {
                                f4.a.b[] bVarArr = aVar10.f7052h;
                                if (i40 >= bVarArr.length) {
                                    aVar4 = aVar;
                                    break;
                                }
                                f4.a.b bVar = bVarArr[i40];
                                if (bVar instanceof l4.a) {
                                    l4.a aVar14 = (l4.a) bVar;
                                    aVar4 = aVar;
                                    if ("com.android.capture.fps".equals(aVar14.f9949h)) {
                                        aVar13 = new f4.a(aVar14);
                                        break;
                                    }
                                } else {
                                    aVar4 = aVar;
                                }
                                i40++;
                                aVar = aVar4;
                            }
                        } else if (aVar9 == null) {
                            aVar4 = aVar;
                            break;
                        } else {
                            aVar4 = aVar;
                            aVar13 = aVar9;
                        }
                        for (int i41 = 0; i41 < 2; i41++) {
                            aVar13 = aVar13.b(aVarArr[i41]);
                        }
                        if (aVar13.f7052h.length > 0) {
                            aVar12.f11703i = aVar13;
                        }
                        aVar11.f318c.b(new s0(aVar12));
                        if (lVar.f333b == 2 && size2 == -1) {
                            size2 = arrayList.size();
                        }
                        arrayList2 = arrayList;
                        arrayList2.add(aVar11);
                        j11 = jMax;
                    }
                    i36++;
                    arrayList = arrayList2;
                    arrayList9 = arrayList9;
                    size = size;
                    aVar = aVar4;
                }
                long j13 = 0;
                this.f312u = size2;
                this.f313v = j11;
                a[] aVarArr2 = (a[]) arrayList.toArray(new a[0]);
                this.f310s = aVarArr2;
                long[][] jArr = new long[aVarArr2.length][];
                int[] iArr = new int[aVarArr2.length];
                long[] jArr2 = new long[aVarArr2.length];
                boolean[] zArr = new boolean[aVarArr2.length];
                for (int i42 = 0; i42 < aVarArr2.length; i42++) {
                    jArr[i42] = new long[aVarArr2[i42].f317b.f366b];
                    jArr2[i42] = aVarArr2[i42].f317b.f370f[0];
                }
                int i43 = 0;
                while (i43 < aVarArr2.length) {
                    long j14 = Long.MAX_VALUE;
                    int i44 = -1;
                    for (int i45 = 0; i45 < aVarArr2.length; i45++) {
                        if (!zArr[i45] && jArr2[i45] <= j14) {
                            j14 = jArr2[i45];
                            i44 = i45;
                        }
                    }
                    int i46 = iArr[i44];
                    jArr[i44][i46] = j13;
                    j13 += (long) aVarArr2[i44].f317b.f368d[i46];
                    int i47 = i46 + 1;
                    iArr[i44] = i47;
                    if (i47 < jArr[i44].length) {
                        jArr2[i44] = aVarArr2[i44].f317b.f370f[i47];
                    } else {
                        zArr[i44] = true;
                        i43++;
                    }
                }
                this.f311t = jArr;
                this.f309r.b();
                this.f309r.j(this);
                this.f297f.clear();
                this.f300i = 2;
            } else if (!this.f297f.isEmpty()) {
                this.f297f.peek().f214d.add(c0004aPop);
            }
        }
        if (this.f300i != 2) {
            k();
        }
    }
}
