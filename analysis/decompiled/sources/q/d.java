package q;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: LinearSystem.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f13459p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f13460q = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f13463c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b[] f13466f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final c f13472l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b f13475o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13461a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13462b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13464d = 32;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13465e = 32;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13467g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean[] f13468h = new boolean[32];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13469i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13470j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13471k = 32;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h[] f13473m = new h[f13460q];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13474n = 0;

    /* JADX INFO: compiled from: LinearSystem.java */
    public interface a {
        h a(boolean[] zArr);
    }

    public d() {
        this.f13466f = null;
        this.f13466f = new b[32];
        t();
        c cVar = new c();
        this.f13472l = cVar;
        this.f13463c = new f(cVar);
        this.f13475o = new b(cVar);
    }

    public final h a(int i10, String str) {
        h hVar = (h) ((e) this.f13472l.f13457c).a();
        if (hVar == null) {
            hVar = new h(i10);
            hVar.f13493p = i10;
        } else {
            hVar.i();
            hVar.f13493p = i10;
        }
        int i11 = this.f13474n;
        int i12 = f13460q;
        if (i11 >= i12) {
            int i13 = i12 * 2;
            f13460q = i13;
            this.f13473m = (h[]) Arrays.copyOf(this.f13473m, i13);
        }
        h[] hVarArr = this.f13473m;
        int i14 = this.f13474n;
        this.f13474n = i14 + 1;
        hVarArr[i14] = hVar;
        return hVar;
    }

    public final void b(h hVar, h hVar2, int i10, float f10, h hVar3, h hVar4, int i11, int i12) {
        b bVarM = m();
        if (hVar2 == hVar3) {
            bVarM.f13453d.d(hVar, 1.0f);
            bVarM.f13453d.d(hVar4, 1.0f);
            bVarM.f13453d.d(hVar2, -2.0f);
        } else if (f10 == 0.5f) {
            bVarM.f13453d.d(hVar, 1.0f);
            bVarM.f13453d.d(hVar2, -1.0f);
            bVarM.f13453d.d(hVar3, -1.0f);
            bVarM.f13453d.d(hVar4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                bVarM.f13451b = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            bVarM.f13453d.d(hVar, -1.0f);
            bVarM.f13453d.d(hVar2, 1.0f);
            bVarM.f13451b = i10;
        } else if (f10 >= 1.0f) {
            bVarM.f13453d.d(hVar4, -1.0f);
            bVarM.f13453d.d(hVar3, 1.0f);
            bVarM.f13451b = -i11;
        } else {
            float f11 = 1.0f - f10;
            bVarM.f13453d.d(hVar, f11 * 1.0f);
            bVarM.f13453d.d(hVar2, f11 * (-1.0f));
            bVarM.f13453d.d(hVar3, (-1.0f) * f10);
            bVarM.f13453d.d(hVar4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                bVarM.f13451b = (i11 * f10) + ((-i10) * f11);
            }
        }
        if (i12 != 8) {
            bVarM.b(this, i12);
        }
        c(bVarM);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f2  */
    public final void c(b bVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        h hVarH;
        boolean z13 = true;
        if (this.f13470j + 1 >= this.f13471k || this.f13469i + 1 >= this.f13465e) {
            p();
        }
        if (bVar.f13454e) {
            z10 = false;
        } else {
            if (this.f13466f.length != 0) {
                boolean z14 = false;
                while (!z14) {
                    int iE = bVar.f13453d.e();
                    for (int i10 = 0; i10 < iE; i10++) {
                        h hVarG = bVar.f13453d.g(i10);
                        if (hVarG.f13487j != -1 || hVarG.f13490m) {
                            bVar.f13452c.add(hVarG);
                        }
                    }
                    int size = bVar.f13452c.size();
                    if (size > 0) {
                        for (int i11 = 0; i11 < size; i11++) {
                            h hVar = bVar.f13452c.get(i11);
                            if (hVar.f13490m) {
                                bVar.j(this, hVar, true);
                            } else {
                                bVar.k(this, this.f13466f[hVar.f13487j], true);
                            }
                        }
                        bVar.f13452c.clear();
                    } else {
                        z14 = true;
                    }
                }
                if (bVar.f13450a != null && bVar.f13453d.e() == 0) {
                    bVar.f13454e = true;
                    this.f13461a = true;
                }
            }
            if (bVar.g()) {
                return;
            }
            float f10 = bVar.f13451b;
            if (f10 < 0.0f) {
                bVar.f13451b = f10 * (-1.0f);
                bVar.f13453d.k();
            }
            int iE2 = bVar.f13453d.e();
            float f11 = 0.0f;
            float f12 = 0.0f;
            h hVar2 = null;
            h hVar3 = null;
            boolean z15 = false;
            boolean z16 = false;
            for (int i12 = 0; i12 < iE2; i12++) {
                float fA = bVar.f13453d.a(i12);
                h hVarG2 = bVar.f13453d.g(i12);
                if (hVarG2.f13493p == 1) {
                    if (hVar2 == null) {
                        if (hVarG2.f13496s <= 1) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        hVar2 = hVarG2;
                        f11 = fA;
                    } else {
                        if (f11 > fA) {
                            if (hVarG2.f13496s > 1) {
                                z15 = false;
                            }
                            hVar2 = hVarG2;
                            f11 = fA;
                        } else if (!z15) {
                            if (hVarG2.f13496s <= 1) {
                            }
                        }
                        z15 = true;
                        hVar2 = hVarG2;
                        f11 = fA;
                    }
                } else if (hVar2 == null && fA < 0.0f) {
                    if (hVar3 == null) {
                        if (hVarG2.f13496s <= 1) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        hVar3 = hVarG2;
                        f12 = fA;
                    } else {
                        if (f12 > fA) {
                            if (hVarG2.f13496s > 1) {
                                z16 = false;
                            }
                            hVar3 = hVarG2;
                            f12 = fA;
                        } else if (!z16) {
                            if (hVarG2.f13496s <= 1) {
                            }
                        }
                        z16 = true;
                        hVar3 = hVarG2;
                        f12 = fA;
                    }
                }
            }
            if (hVar2 == null) {
                hVar2 = hVar3;
            }
            if (hVar2 == null) {
                z11 = true;
            } else {
                bVar.i(hVar2);
                z11 = false;
            }
            if (bVar.f13453d.e() == 0) {
                bVar.f13454e = true;
            }
            if (z11) {
                if (this.f13469i + 1 >= this.f13465e) {
                    p();
                }
                h hVarA = a(3, null);
                int i13 = this.f13462b + 1;
                this.f13462b = i13;
                this.f13469i++;
                hVarA.f13486i = i13;
                ((h[]) this.f13472l.f13458d)[i13] = hVarA;
                bVar.f13450a = hVarA;
                int i14 = this.f13470j;
                i(bVar);
                if (this.f13470j == i14 + 1) {
                    b bVar2 = this.f13475o;
                    Objects.requireNonNull(bVar2);
                    bVar2.f13450a = null;
                    bVar2.f13453d.clear();
                    for (int i15 = 0; i15 < bVar.f13453d.e(); i15++) {
                        bVar2.f13453d.b(bVar.f13453d.g(i15), bVar.f13453d.a(i15), true);
                    }
                    s(this.f13475o);
                    if (hVarA.f13487j == -1) {
                        if (bVar.f13450a == hVarA && (hVarH = bVar.h(null, hVarA)) != null) {
                            bVar.i(hVarH);
                        }
                        if (!bVar.f13454e) {
                            bVar.f13450a.k(this, bVar);
                        }
                        ((e) this.f13472l.f13456b).b(bVar);
                        this.f13470j--;
                    }
                    z12 = true;
                } else {
                    z12 = false;
                }
            } else {
                z12 = false;
            }
            h hVar4 = bVar.f13450a;
            if (hVar4 == null || (hVar4.f13493p != 1 && bVar.f13451b < 0.0f)) {
                z13 = false;
            }
            if (!z13) {
                return;
            } else {
                z10 = z12;
            }
        }
        if (z10) {
            return;
        }
        i(bVar);
    }

    public final b d(h hVar, h hVar2, int i10, int i11) {
        if (i11 == 8 && hVar2.f13490m && hVar.f13487j == -1) {
            hVar.j(this, hVar2.f13489l + i10);
            return null;
        }
        b bVarM = m();
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            bVarM.f13451b = i10;
        }
        if (z10) {
            bVarM.f13453d.d(hVar, 1.0f);
            bVarM.f13453d.d(hVar2, -1.0f);
        } else {
            bVarM.f13453d.d(hVar, -1.0f);
            bVarM.f13453d.d(hVar2, 1.0f);
        }
        if (i11 != 8) {
            bVarM.b(this, i11);
        }
        c(bVarM);
        return bVarM;
    }

    public final void e(h hVar, int i10) {
        int i11 = hVar.f13487j;
        if (i11 == -1) {
            hVar.j(this, i10);
            for (int i12 = 0; i12 < this.f13462b + 1; i12++) {
                h hVar2 = ((h[]) this.f13472l.f13458d)[i12];
            }
            return;
        }
        if (i11 == -1) {
            b bVarM = m();
            bVarM.f13450a = hVar;
            float f10 = i10;
            hVar.f13489l = f10;
            bVarM.f13451b = f10;
            bVarM.f13454e = true;
            c(bVarM);
            return;
        }
        b bVar = this.f13466f[i11];
        if (bVar.f13454e) {
            bVar.f13451b = i10;
            return;
        }
        if (bVar.f13453d.e() == 0) {
            bVar.f13454e = true;
            bVar.f13451b = i10;
            return;
        }
        b bVarM2 = m();
        if (i10 < 0) {
            bVarM2.f13451b = i10 * (-1);
            bVarM2.f13453d.d(hVar, 1.0f);
        } else {
            bVarM2.f13451b = i10;
            bVarM2.f13453d.d(hVar, -1.0f);
        }
        c(bVarM2);
    }

    public final void f(h hVar, h hVar2, int i10, int i11) {
        b bVarM = m();
        h hVarN = n();
        hVarN.f13488k = 0;
        bVarM.d(hVar, hVar2, hVarN, i10);
        if (i11 != 8) {
            bVarM.f13453d.d(k(i11, null), (int) (bVarM.f13453d.c(hVarN) * (-1.0f)));
        }
        c(bVarM);
    }

    public final void g(h hVar, h hVar2, int i10, int i11) {
        b bVarM = m();
        h hVarN = n();
        hVarN.f13488k = 0;
        bVarM.e(hVar, hVar2, hVarN, i10);
        if (i11 != 8) {
            bVarM.f13453d.d(k(i11, null), (int) (bVarM.f13453d.c(hVarN) * (-1.0f)));
        }
        c(bVarM);
    }

    public final void h(h hVar, h hVar2, h hVar3, h hVar4, float f10) {
        b bVarM = m();
        bVarM.c(hVar, hVar2, hVar3, hVar4, f10);
        c(bVarM);
    }

    public final void i(b bVar) {
        int i10;
        if (bVar.f13454e) {
            bVar.f13450a.j(this, bVar.f13451b);
        } else {
            b[] bVarArr = this.f13466f;
            int i11 = this.f13470j;
            bVarArr[i11] = bVar;
            h hVar = bVar.f13450a;
            hVar.f13487j = i11;
            this.f13470j = i11 + 1;
            hVar.k(this, bVar);
        }
        if (this.f13461a) {
            int i12 = 0;
            while (i12 < this.f13470j) {
                if (this.f13466f[i12] == null) {
                    System.out.println("WTF");
                }
                b[] bVarArr2 = this.f13466f;
                if (bVarArr2[i12] != null && bVarArr2[i12].f13454e) {
                    b bVar2 = bVarArr2[i12];
                    bVar2.f13450a.j(this, bVar2.f13451b);
                    ((e) this.f13472l.f13456b).b(bVar2);
                    this.f13466f[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f13470j;
                        if (i13 >= i10) {
                            break;
                        }
                        b[] bVarArr3 = this.f13466f;
                        int i15 = i13 - 1;
                        bVarArr3[i15] = bVarArr3[i13];
                        if (bVarArr3[i15].f13450a.f13487j == i13) {
                            bVarArr3[i15].f13450a.f13487j = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f13466f[i14] = null;
                    }
                    this.f13470j = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f13461a = false;
        }
    }

    public final void j() {
        for (int i10 = 0; i10 < this.f13470j; i10++) {
            b bVar = this.f13466f[i10];
            bVar.f13450a.f13489l = bVar.f13451b;
        }
    }

    public final h k(int i10, String str) {
        if (this.f13469i + 1 >= this.f13465e) {
            p();
        }
        h hVarA = a(4, str);
        int i11 = this.f13462b + 1;
        this.f13462b = i11;
        this.f13469i++;
        hVarA.f13486i = i11;
        hVarA.f13488k = i10;
        ((h[]) this.f13472l.f13458d)[i11] = hVarA;
        f fVar = this.f13463c;
        fVar.f13481i.f13482a = hVarA;
        Arrays.fill(hVarA.f13492o, 0.0f);
        hVarA.f13492o[hVarA.f13488k] = 1.0f;
        fVar.l(hVarA);
        return hVarA;
    }

    public final h l(Object obj) {
        h hVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f13469i + 1 >= this.f13465e) {
            p();
        }
        if (obj instanceof s.c) {
            s.c cVar = (s.c) obj;
            hVar = cVar.f14843i;
            if (hVar == null) {
                cVar.i();
                hVar = cVar.f14843i;
            }
            int i10 = hVar.f13486i;
            if (i10 == -1 || i10 > this.f13462b || ((h[]) this.f13472l.f13458d)[i10] == null) {
                if (i10 != -1) {
                    hVar.i();
                }
                int i11 = this.f13462b + 1;
                this.f13462b = i11;
                this.f13469i++;
                hVar.f13486i = i11;
                hVar.f13493p = 1;
                ((h[]) this.f13472l.f13458d)[i11] = hVar;
            }
        }
        return hVar;
    }

    public final b m() {
        b bVar = (b) ((e) this.f13472l.f13456b).a();
        if (bVar == null) {
            return new b(this.f13472l);
        }
        bVar.f13450a = null;
        bVar.f13453d.clear();
        bVar.f13451b = 0.0f;
        bVar.f13454e = false;
        return bVar;
    }

    public final h n() {
        if (this.f13469i + 1 >= this.f13465e) {
            p();
        }
        h hVarA = a(3, null);
        int i10 = this.f13462b + 1;
        this.f13462b = i10;
        this.f13469i++;
        hVarA.f13486i = i10;
        ((h[]) this.f13472l.f13458d)[i10] = hVarA;
        return hVarA;
    }

    public final int o(Object obj) {
        h hVar = ((s.c) obj).f14843i;
        if (hVar != null) {
            return (int) (hVar.f13489l + 0.5f);
        }
        return 0;
    }

    public final void p() {
        int i10 = this.f13464d * 2;
        this.f13464d = i10;
        this.f13466f = (b[]) Arrays.copyOf(this.f13466f, i10);
        c cVar = this.f13472l;
        cVar.f13458d = (h[]) Arrays.copyOf((h[]) cVar.f13458d, this.f13464d);
        int i11 = this.f13464d;
        this.f13468h = new boolean[i11];
        this.f13465e = i11;
        this.f13471k = i11;
    }

    public final void q() throws Exception {
        f fVar = this.f13463c;
        boolean z10 = true;
        if (fVar.f13480h == 0) {
            j();
            return;
        }
        if (!this.f13467g) {
            r(fVar);
            return;
        }
        for (int i10 = 0; i10 < this.f13470j; i10++) {
            if (!this.f13466f[i10].f13454e) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            j();
        } else {
            r(this.f13463c);
        }
    }

    public final void r(a aVar) throws Exception {
        float f10;
        int i10;
        boolean z10;
        int i11 = 0;
        while (true) {
            f10 = 0.0f;
            i10 = 1;
            if (i11 >= this.f13470j) {
                z10 = false;
                break;
            }
            b[] bVarArr = this.f13466f;
            if (bVarArr[i11].f13450a.f13493p != 1 && bVarArr[i11].f13451b < 0.0f) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (z10) {
            boolean z11 = false;
            int i12 = 0;
            while (!z11) {
                i12 += i10;
                float f11 = Float.MAX_VALUE;
                int i13 = -1;
                int i14 = -1;
                int i15 = 0;
                int i16 = 0;
                while (i15 < this.f13470j) {
                    b bVar = this.f13466f[i15];
                    if (bVar.f13450a.f13493p != i10 && !bVar.f13454e && bVar.f13451b < f10) {
                        int iE = bVar.f13453d.e();
                        int i17 = 0;
                        while (i17 < iE) {
                            h hVarG = bVar.f13453d.g(i17);
                            float fC = bVar.f13453d.c(hVarG);
                            if (fC > f10) {
                                for (int i18 = 0; i18 < 9; i18++) {
                                    float f12 = hVarG.f13491n[i18] / fC;
                                    if ((f12 < f11 && i18 == i16) || i18 > i16) {
                                        i14 = hVarG.f13486i;
                                        i16 = i18;
                                        f11 = f12;
                                        i13 = i15;
                                    }
                                }
                            }
                            i17++;
                            f10 = 0.0f;
                        }
                    }
                    i15++;
                    f10 = 0.0f;
                    i10 = 1;
                }
                if (i13 != -1) {
                    b bVar2 = this.f13466f[i13];
                    bVar2.f13450a.f13487j = -1;
                    bVar2.i(((h[]) this.f13472l.f13458d)[i14]);
                    h hVar = bVar2.f13450a;
                    hVar.f13487j = i13;
                    hVar.k(this, bVar2);
                } else {
                    z11 = true;
                }
                if (i12 > this.f13469i / 2) {
                    z11 = true;
                }
                f10 = 0.0f;
                i10 = 1;
            }
        }
        s(aVar);
        j();
    }

    public final int s(a aVar) {
        for (int i10 = 0; i10 < this.f13469i; i10++) {
            this.f13468h[i10] = false;
        }
        boolean z10 = false;
        int i11 = 0;
        while (!z10) {
            i11++;
            if (i11 >= this.f13469i * 2) {
                return i11;
            }
            h hVar = ((b) aVar).f13450a;
            if (hVar != null) {
                this.f13468h[hVar.f13486i] = true;
            }
            h hVarA = aVar.a(this.f13468h);
            if (hVarA != null) {
                boolean[] zArr = this.f13468h;
                int i12 = hVarA.f13486i;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (hVarA != null) {
                float f10 = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.f13470j; i14++) {
                    b bVar = this.f13466f[i14];
                    if (bVar.f13450a.f13493p != 1 && !bVar.f13454e && bVar.f13453d.i(hVarA)) {
                        float fC = bVar.f13453d.c(hVarA);
                        if (fC < 0.0f) {
                            float f11 = (-bVar.f13451b) / fC;
                            if (f11 < f10) {
                                i13 = i14;
                                f10 = f11;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    b bVar2 = this.f13466f[i13];
                    bVar2.f13450a.f13487j = -1;
                    bVar2.i(hVarA);
                    h hVar2 = bVar2.f13450a;
                    hVar2.f13487j = i13;
                    hVar2.k(this, bVar2);
                }
            } else {
                z10 = true;
            }
        }
        return i11;
    }

    public final void t() {
        for (int i10 = 0; i10 < this.f13470j; i10++) {
            b bVar = this.f13466f[i10];
            if (bVar != null) {
                ((e) this.f13472l.f13456b).b(bVar);
            }
            this.f13466f[i10] = null;
        }
    }

    public final void u() {
        c cVar;
        int i10 = 0;
        while (true) {
            cVar = this.f13472l;
            h[] hVarArr = (h[]) cVar.f13458d;
            if (i10 >= hVarArr.length) {
                break;
            }
            h hVar = hVarArr[i10];
            if (hVar != null) {
                hVar.i();
            }
            i10++;
        }
        e eVar = (e) cVar.f13457c;
        h[] hVarArr2 = this.f13473m;
        int length = this.f13474n;
        Objects.requireNonNull(eVar);
        if (length > hVarArr2.length) {
            length = hVarArr2.length;
        }
        for (int i11 = 0; i11 < length; i11++) {
            h hVar2 = hVarArr2[i11];
            int i12 = eVar.f13476a;
            Object[] objArr = (Object[]) eVar.f13477b;
            if (i12 < objArr.length) {
                objArr[i12] = hVar2;
                eVar.f13476a = i12 + 1;
            }
        }
        this.f13474n = 0;
        Arrays.fill((h[]) this.f13472l.f13458d, (Object) null);
        this.f13462b = 0;
        f fVar = this.f13463c;
        fVar.f13480h = 0;
        fVar.f13451b = 0.0f;
        this.f13469i = 1;
        for (int i13 = 0; i13 < this.f13470j; i13++) {
            b[] bVarArr = this.f13466f;
            if (bVarArr[i13] != null) {
                Objects.requireNonNull(bVarArr[i13]);
            }
        }
        t();
        this.f13470j = 0;
        this.f13475o = new b(this.f13472l);
    }
}
