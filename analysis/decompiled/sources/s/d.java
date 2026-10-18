package s;

import androidx.recyclerview.widget.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import t.l;
import t.n;

/* JADX INFO: compiled from: ConstraintWidget.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public int A;
    public float B;
    public int[] C;
    public float D;
    public boolean E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public c J;
    public c K;
    public c L;
    public c M;
    public c N;
    public c O;
    public c P;
    public c Q;
    public c[] R;
    public ArrayList<c> S;
    public boolean[] T;
    public int[] U;
    public d V;
    public int W;
    public int X;
    public float Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f14854a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t.c f14855b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f14856b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t.c f14857c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f14858c0;
    public int d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f14861e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f14863f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float f14865g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Object f14867h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f14869i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f14870j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f14871j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14872k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f14873k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f14874l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f14875l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f14876m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public float[] f14877m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f14878n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public d[] f14879n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14880o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public d[] f14881o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14882p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f14883p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14884q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f14885q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14886r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14887s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f14888t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14889u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f14890v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f14891w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14892x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14893y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f14894z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14853a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l f14859d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public n f14860e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean[] f14862f = {true, true};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f14864g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14866h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14868i = -1;

    public d() {
        new HashMap();
        this.f14872k = false;
        this.f14874l = false;
        this.f14876m = false;
        this.f14878n = false;
        this.f14880o = -1;
        this.f14882p = -1;
        this.f14884q = 0;
        this.f14886r = 0;
        this.f14887s = 0;
        this.f14888t = new int[2];
        this.f14889u = 0;
        this.f14890v = 0;
        this.f14891w = 1.0f;
        this.f14892x = 0;
        this.f14893y = 0;
        this.f14894z = 1.0f;
        this.A = -1;
        this.B = 1.0f;
        this.C = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.D = 0.0f;
        this.E = false;
        this.G = false;
        this.H = 0;
        this.I = 0;
        c cVar = new c(this, c.a.LEFT);
        this.J = cVar;
        c cVar2 = new c(this, c.a.TOP);
        this.K = cVar2;
        c cVar3 = new c(this, c.a.RIGHT);
        this.L = cVar3;
        c cVar4 = new c(this, c.a.BOTTOM);
        this.M = cVar4;
        c cVar5 = new c(this, c.a.BASELINE);
        this.N = cVar5;
        this.O = new c(this, c.a.CENTER_X);
        this.P = new c(this, c.a.CENTER_Y);
        c cVar6 = new c(this, c.a.CENTER);
        this.Q = cVar6;
        this.R = new c[]{cVar, cVar3, cVar2, cVar4, cVar5, cVar6};
        ArrayList<c> arrayList = new ArrayList<>();
        this.S = arrayList;
        this.T = new boolean[2];
        this.U = new int[]{1, 1};
        this.V = null;
        this.W = 0;
        this.X = 0;
        this.Y = 0.0f;
        this.Z = -1;
        this.f14854a0 = 0;
        this.f14856b0 = 0;
        this.f14858c0 = 0;
        this.f14863f0 = 0.5f;
        this.f14865g0 = 0.5f;
        this.f14869i0 = 0;
        this.f14871j0 = null;
        this.f14873k0 = 0;
        this.f14875l0 = 0;
        this.f14877m0 = new float[]{-1.0f, -1.0f};
        this.f14879n0 = new d[]{null, null};
        this.f14881o0 = new d[]{null, null};
        this.f14883p0 = -1;
        this.f14885q0 = -1;
        arrayList.add(this.J);
        this.S.add(this.K);
        this.S.add(this.L);
        this.S.add(this.M);
        this.S.add(this.O);
        this.S.add(this.P);
        this.S.add(this.Q);
        this.S.add(this.N);
    }

    public final boolean A() {
        return this.f14864g && this.f14869i0 != 8;
    }

    public boolean B() {
        return this.f14872k || (this.J.f14837c && this.L.f14837c);
    }

    public boolean C() {
        return this.f14874l || (this.K.f14837c && this.M.f14837c);
    }

    public void D() {
        this.J.h();
        this.K.h();
        this.L.h();
        this.M.h();
        this.N.h();
        this.O.h();
        this.P.h();
        this.Q.h();
        this.V = null;
        this.D = 0.0f;
        this.W = 0;
        this.X = 0;
        this.Y = 0.0f;
        this.Z = -1;
        this.f14854a0 = 0;
        this.f14856b0 = 0;
        this.f14858c0 = 0;
        this.d0 = 0;
        this.f14861e0 = 0;
        this.f14863f0 = 0.5f;
        this.f14865g0 = 0.5f;
        int[] iArr = this.U;
        iArr[0] = 1;
        iArr[1] = 1;
        this.f14867h0 = null;
        this.f14869i0 = 0;
        this.f14873k0 = 0;
        this.f14875l0 = 0;
        float[] fArr = this.f14877m0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f14880o = -1;
        this.f14882p = -1;
        int[] iArr2 = this.C;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.f14886r = 0;
        this.f14887s = 0;
        this.f14891w = 1.0f;
        this.f14894z = 1.0f;
        this.f14890v = Integer.MAX_VALUE;
        this.f14893y = Integer.MAX_VALUE;
        this.f14889u = 0;
        this.f14892x = 0;
        this.A = -1;
        this.B = 1.0f;
        boolean[] zArr = this.f14862f;
        zArr[0] = true;
        zArr[1] = true;
        this.G = false;
        boolean[] zArr2 = this.T;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f14864g = true;
        int[] iArr3 = this.f14888t;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.f14866h = -1;
        this.f14868i = -1;
    }

    public final void E() {
        this.f14872k = false;
        this.f14874l = false;
        this.f14876m = false;
        this.f14878n = false;
        int size = this.S.size();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = this.S.get(i10);
            cVar.f14837c = false;
            cVar.f14836b = 0;
        }
    }

    public void F(q.c cVar) {
        this.J.i();
        this.K.i();
        this.L.i();
        this.M.i();
        this.N.i();
        this.Q.i();
        this.O.i();
        this.P.i();
    }

    public final void G(StringBuilder sb2, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(f10);
        sb2.append(",\n");
    }

    public final void H(StringBuilder sb2, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(i10);
        sb2.append(",\n");
    }

    public final void I(int i10) {
        this.f14858c0 = i10;
        this.E = i10 > 0;
    }

    public final void J(int i10, int i11) {
        if (this.f14872k) {
            return;
        }
        this.J.j(i10);
        this.L.j(i11);
        this.f14854a0 = i10;
        this.W = i11 - i10;
        this.f14872k = true;
    }

    public final void K(int i10, int i11) {
        if (this.f14874l) {
            return;
        }
        this.K.j(i10);
        this.M.j(i11);
        this.f14856b0 = i10;
        this.X = i11 - i10;
        if (this.E) {
            this.N.j(i10 + this.f14858c0);
        }
        this.f14874l = true;
    }

    public final void L(int i10) {
        this.X = i10;
        int i11 = this.f14861e0;
        if (i10 < i11) {
            this.X = i11;
        }
    }

    public final void M(int i10) {
        this.U[0] = i10;
    }

    public final void N(int i10) {
        if (i10 < 0) {
            this.f14861e0 = 0;
        } else {
            this.f14861e0 = i10;
        }
    }

    public final void O(int i10) {
        if (i10 < 0) {
            this.d0 = 0;
        } else {
            this.d0 = i10;
        }
    }

    public final void P(int i10) {
        this.U[1] = i10;
    }

    public final void Q(int i10) {
        this.W = i10;
        int i11 = this.d0;
        if (i10 < i11) {
            this.W = i11;
        }
    }

    public void R(boolean z10, boolean z11) {
        int i10;
        int i11;
        l lVar = this.f14859d;
        boolean z12 = z10 & lVar.f15321g;
        n nVar = this.f14860e;
        boolean z13 = z11 & nVar.f15321g;
        int i12 = lVar.f15322h.f15296g;
        int i13 = nVar.f15322h.f15296g;
        int i14 = lVar.f15323i.f15296g;
        int i15 = nVar.f15323i.f15296g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i15 = 0;
            i12 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (z12) {
            this.f14854a0 = i12;
        }
        if (z13) {
            this.f14856b0 = i13;
        }
        if (this.f14869i0 == 8) {
            this.W = 0;
            this.X = 0;
            return;
        }
        if (z12) {
            if (this.U[0] == 1 && i17 < (i11 = this.W)) {
                i17 = i11;
            }
            this.W = i17;
            int i19 = this.d0;
            if (i17 < i19) {
                this.W = i19;
            }
        }
        if (z13) {
            if (this.U[1] == 1 && i18 < (i10 = this.X)) {
                i18 = i10;
            }
            this.X = i18;
            int i20 = this.f14861e0;
            if (i18 < i20) {
                this.X = i20;
            }
        }
    }

    public void S(q.d dVar, boolean z10) {
        int i10;
        int i11;
        n nVar;
        l lVar;
        int iO = dVar.o(this.J);
        int iO2 = dVar.o(this.K);
        int iO3 = dVar.o(this.L);
        int iO4 = dVar.o(this.M);
        if (z10 && (lVar = this.f14859d) != null) {
            t.f fVar = lVar.f15322h;
            if (fVar.f15299j) {
                t.f fVar2 = lVar.f15323i;
                if (fVar2.f15299j) {
                    iO = fVar.f15296g;
                    iO3 = fVar2.f15296g;
                }
            }
        }
        if (z10 && (nVar = this.f14860e) != null) {
            t.f fVar3 = nVar.f15322h;
            if (fVar3.f15299j) {
                t.f fVar4 = nVar.f15323i;
                if (fVar4.f15299j) {
                    iO2 = fVar3.f15296g;
                    iO4 = fVar4.f15296g;
                }
            }
        }
        int i12 = iO4 - iO2;
        if (iO3 - iO < 0 || i12 < 0 || iO == Integer.MIN_VALUE || iO == Integer.MAX_VALUE || iO2 == Integer.MIN_VALUE || iO2 == Integer.MAX_VALUE || iO3 == Integer.MIN_VALUE || iO3 == Integer.MAX_VALUE || iO4 == Integer.MIN_VALUE || iO4 == Integer.MAX_VALUE) {
            iO4 = 0;
            iO = 0;
            iO2 = 0;
            iO3 = 0;
        }
        int i13 = iO3 - iO;
        int i14 = iO4 - iO2;
        this.f14854a0 = iO;
        this.f14856b0 = iO2;
        if (this.f14869i0 == 8) {
            this.W = 0;
            this.X = 0;
            return;
        }
        int[] iArr = this.U;
        if (iArr[0] == 1 && i13 < (i11 = this.W)) {
            i13 = i11;
        }
        if (iArr[1] == 1 && i14 < (i10 = this.X)) {
            i14 = i10;
        }
        this.W = i13;
        this.X = i14;
        int i15 = this.f14861e0;
        if (i14 < i15) {
            this.X = i15;
        }
        int i16 = this.d0;
        if (i13 < i16) {
            this.W = i16;
        }
        int i17 = this.f14890v;
        if (i17 > 0 && iArr[0] == 3) {
            this.W = Math.min(this.W, i17);
        }
        int i18 = this.f14893y;
        if (i18 > 0 && this.U[1] == 3) {
            this.X = Math.min(this.X, i18);
        }
        int i19 = this.W;
        if (i13 != i19) {
            this.f14866h = i19;
        }
        int i20 = this.X;
        if (i14 != i20) {
            this.f14868i = i20;
        }
    }

    public final void a(e eVar, q.d dVar, HashSet<d> hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            androidx.emoji2.text.b.g(eVar, dVar, this);
            hashSet.remove(this);
            c(dVar, eVar.d0(64));
        }
        if (i10 == 0) {
            HashSet<c> hashSet2 = this.J.f14835a;
            if (hashSet2 != null) {
                Iterator<c> it = hashSet2.iterator();
                while (it.hasNext()) {
                    it.next().f14838d.a(eVar, dVar, hashSet, i10, true);
                }
            }
            HashSet<c> hashSet3 = this.L.f14835a;
            if (hashSet3 != null) {
                Iterator<c> it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    it2.next().f14838d.a(eVar, dVar, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<c> hashSet4 = this.K.f14835a;
        if (hashSet4 != null) {
            Iterator<c> it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                it3.next().f14838d.a(eVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<c> hashSet5 = this.M.f14835a;
        if (hashSet5 != null) {
            Iterator<c> it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                it4.next().f14838d.a(eVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<c> hashSet6 = this.N.f14835a;
        if (hashSet6 != null) {
            Iterator<c> it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                it5.next().f14838d.a(eVar, dVar, hashSet, i10, true);
            }
        }
    }

    public final boolean b() {
        return (this instanceof i) || (this instanceof f);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 17381. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public void c(q.d r49, boolean r50) {
        /*
            Method dump skipped, instruction units count: 1738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s.d.c(q.d, boolean):void");
    }

    public boolean d() {
        return this.f14869i0 != 8;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:229:0x037b  */
    /* JADX WARN: Code duplicated, block: B:231:0x0381  */
    /* JADX WARN: Code duplicated, block: B:237:0x0393  */
    /* JADX WARN: Code duplicated, block: B:239:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:246:0x03e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:247:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:255:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:257:0x0409  */
    /* JADX WARN: Code duplicated, block: B:267:0x0421  */
    /* JADX WARN: Code duplicated, block: B:270:0x0427  */
    /* JADX WARN: Code duplicated, block: B:271:0x0429 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:274:0x042f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:279:0x0438  */
    /* JADX WARN: Code duplicated, block: B:281:0x043c  */
    /* JADX WARN: Code duplicated, block: B:284:0x0442  */
    /* JADX WARN: Code duplicated, block: B:286:0x0446  */
    /* JADX WARN: Code duplicated, block: B:288:0x044a  */
    /* JADX WARN: Code duplicated, block: B:289:0x044c  */
    /* JADX WARN: Code duplicated, block: B:292:0x0454  */
    /* JADX WARN: Code duplicated, block: B:294:0x045a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:298:0x0462  */
    /* JADX WARN: Code duplicated, block: B:301:0x0474  */
    /* JADX WARN: Code duplicated, block: B:303:0x0479  */
    /* JADX WARN: Code duplicated, block: B:304:0x047e  */
    /* JADX WARN: Code duplicated, block: B:306:0x0481  */
    /* JADX WARN: Code duplicated, block: B:307:0x0486  */
    /* JADX WARN: Code duplicated, block: B:309:0x0489 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:317:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:351:0x050a  */
    public final void e(q.d dVar, boolean z10, boolean z11, boolean z12, boolean z13, q.h hVar, q.h hVar2, int i10, boolean z14, c cVar, c cVar2, int i11, int i12, int i13, int i14, float f10, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i15, int i16, int i17, int i18, float f11, boolean z20) {
        boolean z21;
        boolean z22;
        int iMin;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z23;
        boolean z24;
        c.a aVar;
        q.h hVarL;
        q.h hVarL2;
        char c10;
        boolean z25;
        c cVar3;
        q.h hVar3;
        int i23;
        int i24;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        d dVar2;
        boolean z31;
        q.h hVar4;
        d dVar3;
        int iMax;
        int i25;
        int iD;
        int iMin2;
        int i26;
        int i27;
        boolean z32;
        boolean z33;
        int i28;
        int i29;
        int i30;
        int i31;
        boolean z34;
        int i32;
        int i33;
        int i34 = i17;
        int i35 = i18;
        c.a aVar2 = c.a.BOTTOM;
        q.h hVarL3 = dVar.l(cVar);
        q.h hVarL4 = dVar.l(cVar2);
        q.h hVarL5 = dVar.l(cVar.f14840f);
        q.h hVarL6 = dVar.l(cVar2.f14840f);
        boolean zG = cVar.g();
        boolean zG2 = cVar2.g();
        boolean zG3 = this.Q.g();
        int i36 = zG2 ? (zG ? 1 : 0) + 1 : zG ? 1 : 0;
        if (zG3) {
            i36++;
        }
        int i37 = i36;
        int i38 = z15 ? 3 : i15;
        if (i10 == 0) {
            throw null;
        }
        int i39 = i10 - 1;
        boolean z35 = (i39 == 0 || i39 == 1 || i39 != 2 || i38 == 4) ? false : true;
        int i40 = this.f14866h;
        if (i40 == -1 || !z10) {
            i40 = i12;
            z21 = z35;
        } else {
            this.f14866h = -1;
            z21 = false;
        }
        int i41 = this.f14868i;
        if (i41 == -1 || z10) {
            z22 = z21;
        } else {
            this.f14868i = -1;
            i40 = i41;
            z22 = false;
        }
        int i42 = i40;
        if (this.f14869i0 == 8) {
            iMin = 0;
            z22 = false;
        } else {
            iMin = i42;
        }
        if (z20) {
            if (!zG && !zG2 && !zG3) {
                dVar.e(hVarL3, i11);
            } else if (zG && !zG2) {
                i19 = 8;
                dVar.d(hVarL3, hVarL5, cVar.d(), 8);
            }
            i19 = 8;
        } else {
            i19 = 8;
        }
        if (z22) {
            i20 = 3;
            if (i37 == 2 || z15 || !(i38 == 1 || i38 == 0)) {
                if (i34 == -2) {
                    i34 = iMin;
                }
                if (i35 == -2) {
                    i35 = iMin;
                }
                if (iMin > 0 && i38 != 1) {
                    iMin = 0;
                }
                if (i34 > 0) {
                    dVar.f(hVarL4, hVarL3, i34, 8);
                    iMin = Math.max(iMin, i34);
                }
                if (i35 > 0) {
                    if ((z11 && i38 == 1) ? false : true) {
                        i21 = 8;
                        dVar.g(hVarL4, hVarL3, i35, 8);
                    } else {
                        i21 = 8;
                    }
                    iMin = Math.min(iMin, i35);
                } else {
                    i21 = 8;
                }
                if (i38 == 1) {
                    if (z11) {
                        dVar.d(hVarL4, hVarL3, iMin, i21);
                    } else if (z17) {
                        dVar.d(hVarL4, hVarL3, iMin, 5);
                        dVar.g(hVarL4, hVarL3, iMin, i21);
                    } else {
                        dVar.d(hVarL4, hVarL3, iMin, 5);
                        dVar.g(hVarL4, hVarL3, iMin, i21);
                    }
                } else if (i38 == 2) {
                    c.a aVar3 = cVar.f14839e;
                    c.a aVar4 = c.a.TOP;
                    if (aVar3 != aVar4) {
                        aVar = aVar2;
                        if (aVar3 != aVar) {
                            hVarL = dVar.l(this.V.h(c.a.LEFT));
                            hVarL2 = dVar.l(this.V.h(c.a.RIGHT));
                        }
                        q.h hVar5 = hVarL;
                        q.b bVarM = dVar.m();
                        bVarM.c(hVarL4, hVarL3, hVarL2, hVar5, f11);
                        dVar.c(bVarM);
                        if (z11) {
                            z22 = false;
                        }
                    } else {
                        aVar = aVar2;
                    }
                    hVarL = dVar.l(this.V.h(aVar4));
                    hVarL2 = dVar.l(this.V.h(aVar));
                    q.h hVar6 = hVarL;
                    q.b bVarM2 = dVar.m();
                    bVarM2.c(hVarL4, hVarL3, hVarL2, hVar6, f11);
                    dVar.c(bVarM2);
                    if (z11) {
                        z22 = false;
                    }
                } else {
                    i22 = i34;
                    z23 = z22;
                    z24 = true;
                }
            } else {
                int iMax2 = Math.max(i34, iMin);
                if (i35 > 0) {
                    iMax2 = Math.min(i35, iMax2);
                }
                dVar.d(hVarL4, hVarL3, iMax2, 8);
                z24 = z13;
                i22 = i34;
                z23 = false;
            }
            if (z20 || z17) {
                if (i37 >= c10 && z11 && z24) {
                    dVar.f(hVarL3, hVar, 0, 8);
                    boolean z36 = z10 || this.N.f14840f == null;
                    if (z10 || (cVar3 = this.N.f14840f) == null) {
                        z25 = z36;
                    } else {
                        d dVar4 = cVar3.f14838d;
                        if (dVar4.Y != 0.0f) {
                            int[] iArr = dVar4.U;
                            if (iArr[0] == i20 && iArr[1] == i20) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                        } else {
                            z25 = false;
                        }
                    }
                    if (z25) {
                        dVar.f(hVar2, hVarL4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (zG || zG2 || zG3) {
                if (!zG || zG2) {
                    if (zG || !zG2) {
                        hVar3 = hVarL6;
                        if (zG && zG2) {
                            d dVar5 = cVar.f14840f.f14838d;
                            d dVar6 = cVar2.f14840f.f14838d;
                            d dVar7 = this.V;
                            int i43 = 6;
                            if (z23) {
                                if (i38 == 0) {
                                    if (i35 != 0 || i22 != 0) {
                                        i30 = 5;
                                        i31 = 5;
                                        z34 = false;
                                        z27 = true;
                                        z26 = true;
                                    } else if (hVarL5.f13490m && hVar3.f13490m) {
                                        dVar.d(hVarL3, hVarL5, cVar.d(), 8);
                                        dVar.d(hVarL4, hVar3, -cVar2.d(), 8);
                                        return;
                                    } else {
                                        i30 = 8;
                                        i31 = 8;
                                        z34 = true;
                                        z27 = false;
                                        z26 = false;
                                    }
                                    if ((dVar5 instanceof a) || (dVar6 instanceof a)) {
                                        i23 = i30;
                                        hVar2 = hVar2;
                                        i38 = i38;
                                        i43 = 6;
                                        z28 = z34;
                                        i24 = 4;
                                    } else {
                                        i23 = i30;
                                        hVar2 = hVar2;
                                        z28 = z34;
                                        i24 = i31;
                                        i38 = i38;
                                        i43 = 6;
                                    }
                                } else if (i38 == 2) {
                                    if (!(dVar5 instanceof a) && !(dVar6 instanceof a)) {
                                        hVar2 = hVar2;
                                        i38 = i38;
                                        i43 = 6;
                                        i23 = 5;
                                        i24 = 5;
                                    }
                                    z27 = true;
                                    z26 = true;
                                    z28 = false;
                                } else if (i38 == 1) {
                                    hVar2 = hVar2;
                                    i38 = i38;
                                    i23 = 8;
                                    i24 = 4;
                                    z27 = true;
                                    z26 = true;
                                    z28 = false;
                                } else if (i38 == 3) {
                                    i38 = i38;
                                    if (this.A == -1) {
                                        hVar2 = hVar2;
                                        i23 = 8;
                                        if (z18) {
                                            i43 = z11 ? 5 : 4;
                                        } else {
                                            i43 = 8;
                                        }
                                    } else if (z15) {
                                        if (i16 == 2 || i16 == 1) {
                                            i23 = 5;
                                            i29 = 4;
                                        } else {
                                            i23 = 8;
                                            i29 = 5;
                                        }
                                        i24 = i29;
                                        i43 = 6;
                                        z27 = true;
                                        z26 = true;
                                        z28 = true;
                                        hVar2 = hVar2;
                                    } else {
                                        if (i35 > 0) {
                                            hVar2 = hVar2;
                                            i43 = 6;
                                            i23 = 5;
                                        } else {
                                            if (i35 != 0 || i22 != 0) {
                                                i23 = 5;
                                            } else if (z18) {
                                                i23 = (dVar5 == dVar7 || dVar6 == dVar7) ? 5 : 4;
                                            } else {
                                                hVar2 = hVar2;
                                                i43 = 6;
                                                i23 = 5;
                                                i24 = 8;
                                            }
                                            i24 = 4;
                                        }
                                        z27 = true;
                                        z26 = true;
                                        z28 = true;
                                    }
                                    i24 = 5;
                                    z27 = true;
                                    z26 = true;
                                    z28 = true;
                                } else {
                                    i38 = i38;
                                    hVar2 = hVar2;
                                    i43 = 6;
                                    i23 = 5;
                                    i24 = 4;
                                    z27 = false;
                                    z26 = false;
                                    z28 = false;
                                }
                                if (z27 || hVarL5 != hVar3 || dVar5 == dVar7) {
                                    z29 = z27;
                                    z30 = true;
                                } else {
                                    z30 = false;
                                    z29 = false;
                                }
                                if (z26) {
                                    if (z23 && !z16 && !z18 && hVarL5 == hVar && hVar3 == hVar2) {
                                        z33 = false;
                                        i28 = 8;
                                        i27 = 8;
                                        z32 = false;
                                    } else {
                                        i27 = i43;
                                        z32 = z30;
                                        z33 = z11;
                                        i28 = i23;
                                    }
                                    dVar2 = dVar7;
                                    dVar.b(hVarL3, hVarL5, cVar.d(), f10, hVar3, hVarL4, cVar2.d(), i27);
                                    z31 = z33;
                                    i23 = i28;
                                    z30 = z32;
                                } else {
                                    dVar2 = dVar7;
                                    z31 = z11;
                                }
                                if (this.f14869i0 != 8 && !cVar2.f()) {
                                    return;
                                }
                                if (z29) {
                                    if (z31) {
                                        hVar4 = hVar3;
                                        if (hVarL5 != hVar4 && !z23 && ((dVar5 instanceof a) || (dVar6 instanceof a))) {
                                            i23 = 6;
                                        }
                                    } else {
                                        hVar4 = hVar3;
                                    }
                                    dVar.f(hVarL3, hVarL5, cVar.d(), i23);
                                    dVar.g(hVarL4, hVar4, -cVar2.d(), i23);
                                } else {
                                    hVar4 = hVar3;
                                }
                                if (z31 || !z19 || (dVar5 instanceof a) || (dVar6 instanceof a)) {
                                    dVar3 = dVar2;
                                } else {
                                    dVar3 = dVar2;
                                    if (dVar6 != dVar3) {
                                        i23 = 6;
                                        iMax = 6;
                                        z30 = true;
                                    }
                                    if (z30) {
                                        if (z28 && (!z18 || z12)) {
                                            if (dVar5 != dVar3 && dVar6 != dVar3) {
                                                i43 = iMax;
                                            }
                                            if ((dVar5 instanceof f) || (dVar6 instanceof f)) {
                                                i43 = 5;
                                            }
                                            if ((dVar5 instanceof a) || (dVar6 instanceof a)) {
                                                i43 = 5;
                                            }
                                            if (z18) {
                                                i26 = 5;
                                            } else {
                                                i26 = i43;
                                            }
                                            iMax = Math.max(i26, iMax);
                                        }
                                        if (z31) {
                                            iMin2 = Math.min(i23, iMax);
                                            if (z15 && !z18 && (dVar5 == dVar3 || dVar6 == dVar3)) {
                                                iMin2 = 4;
                                            }
                                        } else {
                                            iMin2 = iMax;
                                        }
                                        dVar.d(hVarL3, hVarL5, cVar.d(), iMin2);
                                        dVar.d(hVarL4, hVar4, -cVar2.d(), iMin2);
                                    }
                                    if (z31) {
                                        hVarL4 = hVarL4;
                                        if (hVar == hVarL5) {
                                            iD = cVar.d();
                                        } else {
                                            iD = 0;
                                        }
                                        if (hVarL5 != hVar) {
                                            dVar.f(hVarL3, hVar, iD, 5);
                                        }
                                    } else {
                                        hVarL4 = hVarL4;
                                    }
                                    if (z31 || !z23 || i13 != 0 || i22 != 0) {
                                        i25 = 5;
                                    } else if (z23 && i38 == 3) {
                                        dVar.f(hVarL4, hVarL3, 0, 8);
                                        i25 = 5;
                                    } else {
                                        i25 = 5;
                                        dVar.f(hVarL4, hVarL3, 0, 5);
                                    }
                                }
                                iMax = i24;
                                if (z30) {
                                    if (z28) {
                                        if (dVar5 != dVar3) {
                                            i43 = iMax;
                                        }
                                        if (dVar5 instanceof f) {
                                            i43 = 5;
                                        } else {
                                            i43 = 5;
                                        }
                                        if (dVar5 instanceof a) {
                                            i43 = 5;
                                        } else {
                                            i43 = 5;
                                        }
                                        if (z18) {
                                            i26 = 5;
                                        } else {
                                            i26 = i43;
                                        }
                                        iMax = Math.max(i26, iMax);
                                    }
                                    if (z31) {
                                        iMin2 = Math.min(i23, iMax);
                                        if (z15) {
                                            iMin2 = 4;
                                        }
                                    } else {
                                        iMin2 = iMax;
                                    }
                                    dVar.d(hVarL3, hVarL5, cVar.d(), iMin2);
                                    dVar.d(hVarL4, hVar4, -cVar2.d(), iMin2);
                                }
                                if (z31) {
                                    hVarL4 = hVarL4;
                                    if (hVar == hVarL5) {
                                        iD = cVar.d();
                                    } else {
                                        iD = 0;
                                    }
                                    if (hVarL5 != hVar) {
                                        dVar.f(hVarL3, hVar, iD, 5);
                                    }
                                } else {
                                    hVarL4 = hVarL4;
                                }
                                if (z31) {
                                    i25 = 5;
                                } else {
                                    i25 = 5;
                                }
                            } else if (hVarL5.f13490m && hVar3.f13490m) {
                                dVar.b(hVarL3, hVarL5, cVar.d(), f10, hVar3, hVarL4, cVar2.d(), 8);
                                if (z11 && z24) {
                                    int iD2 = cVar2.f14840f != null ? cVar2.d() : 0;
                                    if (hVar3 != hVar2) {
                                        dVar.f(hVar2, hVarL4, iD2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i23 = 5;
                            i24 = 4;
                            z27 = true;
                            z26 = true;
                            z28 = false;
                            if (z27) {
                                z29 = z27;
                                z30 = true;
                            } else {
                                z29 = z27;
                                z30 = true;
                            }
                            if (z26) {
                                if (z23) {
                                    i27 = i43;
                                    z32 = z30;
                                    z33 = z11;
                                    i28 = i23;
                                } else {
                                    i27 = i43;
                                    z32 = z30;
                                    z33 = z11;
                                    i28 = i23;
                                }
                                dVar2 = dVar7;
                                dVar.b(hVarL3, hVarL5, cVar.d(), f10, hVar3, hVarL4, cVar2.d(), i27);
                                z31 = z33;
                                i23 = i28;
                                z30 = z32;
                            } else {
                                dVar2 = dVar7;
                                z31 = z11;
                            }
                            if (this.f14869i0 != 8) {
                            }
                            if (z29) {
                                if (z31) {
                                    hVar4 = hVar3;
                                    if (hVarL5 != hVar4) {
                                        i23 = 6;
                                    }
                                } else {
                                    hVar4 = hVar3;
                                }
                                dVar.f(hVarL3, hVarL5, cVar.d(), i23);
                                dVar.g(hVarL4, hVar4, -cVar2.d(), i23);
                            } else {
                                hVar4 = hVar3;
                            }
                            if (z31) {
                                dVar3 = dVar2;
                                iMax = i24;
                            } else {
                                dVar3 = dVar2;
                                iMax = i24;
                            }
                            if (z30) {
                                if (z28) {
                                    if (dVar5 != dVar3) {
                                        i43 = iMax;
                                    }
                                    if (dVar5 instanceof f) {
                                        i43 = 5;
                                    } else {
                                        i43 = 5;
                                    }
                                    if (dVar5 instanceof a) {
                                        i43 = 5;
                                    } else {
                                        i43 = 5;
                                    }
                                    if (z18) {
                                        i26 = 5;
                                    } else {
                                        i26 = i43;
                                    }
                                    iMax = Math.max(i26, iMax);
                                }
                                if (z31) {
                                    iMin2 = Math.min(i23, iMax);
                                    if (z15) {
                                        iMin2 = 4;
                                    }
                                } else {
                                    iMin2 = iMax;
                                }
                                dVar.d(hVarL3, hVarL5, cVar.d(), iMin2);
                                dVar.d(hVarL4, hVar4, -cVar2.d(), iMin2);
                            }
                            if (z31) {
                                hVarL4 = hVarL4;
                                if (hVar == hVarL5) {
                                    iD = cVar.d();
                                } else {
                                    iD = 0;
                                }
                                if (hVarL5 != hVar) {
                                    dVar.f(hVarL3, hVar, iD, 5);
                                }
                            } else {
                                hVarL4 = hVarL4;
                            }
                            if (z31) {
                                i25 = 5;
                            } else {
                                i25 = 5;
                            }
                        }
                        i32 = i25;
                    } else {
                        dVar.d(hVarL4, hVar3, -cVar2.d(), 8);
                        if (z11) {
                            hVar3 = hVarL6;
                            dVar.f(hVarL3, hVar, 0, 5);
                            i25 = 5;
                            hVar4 = hVar3;
                            hVarL4 = hVarL4;
                            z24 = z24;
                        }
                        z31 = z11;
                        i32 = i25;
                    }
                    hVar3 = hVarL6;
                    hVar4 = hVar3;
                } else {
                    i32 = (z11 && (cVar.f14840f.f14838d instanceof a)) ? 8 : 5;
                    z31 = z11;
                    hVarL4 = hVarL4;
                    z24 = z24;
                    hVar4 = hVarL6;
                }
                if (z31 || !z24) {
                    return;
                }
                int iD3 = cVar2.f14840f != null ? cVar2.d() : 0;
                if (hVar4 != hVar2) {
                    dVar.f(hVar2, hVarL4, iD3, i32);
                    return;
                }
                return;
            }
            hVar4 = hVarL6;
            i25 = 5;
            z31 = z11;
            i32 = i25;
            if (z31) {
                return;
            } else {
                return;
            }
        }
        if (z14) {
            i20 = 3;
            dVar.d(hVarL4, hVarL3, 0, 3);
            if (i13 > 0) {
                i33 = 8;
                dVar.f(hVarL4, hVarL3, i13, 8);
            } else {
                i33 = 8;
            }
            if (i14 < Integer.MAX_VALUE) {
                dVar.g(hVarL4, hVarL3, i14, i33);
            }
        } else {
            i20 = 3;
            dVar.d(hVarL4, hVarL3, iMin, i19);
        }
        z24 = z13;
        i22 = i34;
        z23 = z22;
        c10 = z20 ? (char) 2 : (char) 2;
        if (i37 >= c10) {
        }
    }

    public final void f(q.d dVar) {
        dVar.l(this.J);
        dVar.l(this.K);
        dVar.l(this.L);
        dVar.l(this.M);
        if (this.f14858c0 > 0) {
            dVar.l(this.N);
        }
    }

    public final void g() {
        if (this.f14859d == null) {
            this.f14859d = new l(this);
        }
        if (this.f14860e == null) {
            this.f14860e = new n(this);
        }
    }

    public c h(c.a aVar) {
        switch (aVar.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.J;
            case 2:
                return this.K;
            case 3:
                return this.L;
            case 4:
                return this.M;
            case 5:
                return this.N;
            case 6:
                return this.Q;
            case 7:
                return this.O;
            case 8:
                return this.P;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public final int i() {
        return t() + this.X;
    }

    public final int j(int i10) {
        if (i10 == 0) {
            return this.U[0];
        }
        if (i10 == 1) {
            return this.U[1];
        }
        return 0;
    }

    public final int k() {
        if (this.f14869i0 == 8) {
            return 0;
        }
        return this.X;
    }

    public final d l(int i10) {
        c cVar;
        c cVar2;
        if (i10 != 0) {
            if (i10 == 1 && (cVar2 = (cVar = this.M).f14840f) != null && cVar2.f14840f == cVar) {
                return cVar2.f14838d;
            }
            return null;
        }
        c cVar3 = this.L;
        c cVar4 = cVar3.f14840f;
        if (cVar4 == null || cVar4.f14840f != cVar3) {
            return null;
        }
        return cVar4.f14838d;
    }

    public final d m(int i10) {
        c cVar;
        c cVar2;
        if (i10 != 0) {
            if (i10 == 1 && (cVar2 = (cVar = this.K).f14840f) != null && cVar2.f14840f == cVar) {
                return cVar2.f14838d;
            }
            return null;
        }
        c cVar3 = this.J;
        c cVar4 = cVar3.f14840f;
        if (cVar4 == null || cVar4.f14840f != cVar3) {
            return null;
        }
        return cVar4.f14838d;
    }

    public final int n() {
        return s() + this.W;
    }

    public void o(StringBuilder sb2) {
        StringBuilder sbC = a0.b.c("  ");
        sbC.append(this.f14870j);
        sbC.append(":{\n");
        sb2.append(sbC.toString());
        sb2.append("    actualWidth:" + this.W);
        sb2.append("\n");
        sb2.append("    actualHeight:" + this.X);
        sb2.append("\n");
        sb2.append("    actualLeft:" + this.f14854a0);
        sb2.append("\n");
        sb2.append("    actualTop:" + this.f14856b0);
        sb2.append("\n");
        q(sb2, "left", this.J);
        q(sb2, "top", this.K);
        q(sb2, "right", this.L);
        q(sb2, "bottom", this.M);
        q(sb2, "baseline", this.N);
        q(sb2, "centerX", this.O);
        q(sb2, "centerY", this.P);
        int i10 = this.W;
        int i11 = this.d0;
        int i12 = this.C[0];
        int i13 = this.f14889u;
        int i14 = this.f14886r;
        float f10 = this.f14891w;
        float f11 = this.f14877m0[0];
        p(sb2, "    width", i10, i11, i12, i13, i14, f10);
        int i15 = this.X;
        int i16 = this.f14861e0;
        int i17 = this.C[1];
        int i18 = this.f14892x;
        int i19 = this.f14887s;
        float f12 = this.f14894z;
        float f13 = this.f14877m0[1];
        p(sb2, "    height", i15, i16, i17, i18, i19, f12);
        float f14 = this.Y;
        int i20 = this.Z;
        if (f14 != 0.0f) {
            sb2.append("    dimensionRatio");
            sb2.append(" :  [");
            sb2.append(f14);
            sb2.append(",");
            sb2.append(i20);
            sb2.append("");
            sb2.append("],\n");
        }
        G(sb2, "    horizontalBias", this.f14863f0, 0.5f);
        G(sb2, "    verticalBias", this.f14865g0, 0.5f);
        H(sb2, "    horizontalChainStyle", this.f14873k0, 0);
        H(sb2, "    verticalChainStyle", this.f14875l0, 0);
        sb2.append("  }");
    }

    public final void p(StringBuilder sb2, String str, int i10, int i11, int i12, int i13, int i14, float f10) {
        sb2.append(str);
        sb2.append(" :  {\n");
        H(sb2, "      size", i10, 0);
        H(sb2, "      min", i11, 0);
        H(sb2, "      max", i12, Integer.MAX_VALUE);
        H(sb2, "      matchMin", i13, 0);
        H(sb2, "      matchDef", i14, 0);
        G(sb2, "      matchPercent", f10, 1.0f);
        sb2.append("    },\n");
    }

    public final void q(StringBuilder sb2, String str, c cVar) {
        if (cVar.f14840f == null) {
            return;
        }
        sb2.append("    ");
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append(cVar.f14840f);
        sb2.append("'");
        if (cVar.f14842h != Integer.MIN_VALUE || cVar.f14841g != 0) {
            sb2.append(",");
            sb2.append(cVar.f14841g);
            if (cVar.f14842h != Integer.MIN_VALUE) {
                sb2.append(",");
                sb2.append(cVar.f14842h);
                sb2.append(",");
            }
        }
        sb2.append(" ] ,\n");
    }

    public final int r() {
        if (this.f14869i0 == 8) {
            return 0;
        }
        return this.W;
    }

    public final int s() {
        d dVar = this.V;
        return (dVar == null || !(dVar instanceof e)) ? this.f14854a0 : ((e) dVar).f14901y0 + this.f14854a0;
    }

    public final int t() {
        d dVar = this.V;
        return (dVar == null || !(dVar instanceof e)) ? this.f14856b0 : ((e) dVar).f14902z0 + this.f14856b0;
    }

    public String toString() {
        StringBuilder sbC = a0.b.c("");
        sbC.append(this.f14871j0 != null ? a1.f.d(a0.b.c("id: "), this.f14871j0, " ") : "");
        sbC.append("(");
        sbC.append(this.f14854a0);
        sbC.append(", ");
        sbC.append(this.f14856b0);
        sbC.append(") - (");
        sbC.append(this.W);
        sbC.append(" x ");
        return s.a(sbC, this.X, ")");
    }

    public final boolean u(int i10) {
        if (i10 == 0) {
            return (this.J.f14840f != null ? 1 : 0) + (this.L.f14840f != null ? 1 : 0) < 2;
        }
        return ((this.K.f14840f != null ? 1 : 0) + (this.M.f14840f != null ? 1 : 0)) + (this.N.f14840f != null ? 1 : 0) < 2;
    }

    public final boolean v(int i10, int i11) {
        c cVar;
        c cVar2;
        if (i10 == 0) {
            c cVar3 = this.J.f14840f;
            if (cVar3 != null && cVar3.f14837c && (cVar2 = this.L.f14840f) != null && cVar2.f14837c) {
                return (cVar2.c() - this.L.d()) - (this.J.d() + this.J.f14840f.c()) >= i11;
            }
        } else {
            c cVar4 = this.K.f14840f;
            if (cVar4 != null && cVar4.f14837c && (cVar = this.M.f14840f) != null && cVar.f14837c) {
                return (cVar.c() - this.M.d()) - (this.K.d() + this.K.f14840f.c()) >= i11;
            }
        }
        return false;
    }

    public final void w(c.a aVar, d dVar, c.a aVar2, int i10, int i11) {
        h(aVar).a(dVar.h(aVar2), i10, i11);
    }

    public final boolean x(int i10) {
        int i11 = i10 * 2;
        c[] cVarArr = this.R;
        if (cVarArr[i11].f14840f != null && cVarArr[i11].f14840f.f14840f != cVarArr[i11]) {
            int i12 = i11 + 1;
            if (cVarArr[i12].f14840f != null && cVarArr[i12].f14840f.f14840f == cVarArr[i12]) {
                return true;
            }
        }
        return false;
    }

    public final boolean y() {
        c cVar = this.J;
        c cVar2 = cVar.f14840f;
        if (cVar2 != null && cVar2.f14840f == cVar) {
            return true;
        }
        c cVar3 = this.L;
        c cVar4 = cVar3.f14840f;
        return cVar4 != null && cVar4.f14840f == cVar3;
    }

    public final boolean z() {
        c cVar = this.K;
        c cVar2 = cVar.f14840f;
        if (cVar2 != null && cVar2.f14840f == cVar) {
            return true;
        }
        c cVar3 = this.M;
        c cVar4 = cVar3.f14840f;
        return cVar4 != null && cVar4.f14840f == cVar3;
    }
}
