package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.s;
import com.google.android.exoplayer2.source.dash.d.c;
import f.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l5.c0;
import l5.e0;
import l5.j0;
import m5.g0;
import n3.s0;
import n3.w1;
import o3.v0;
import p4.m0;
import p4.n0;
import p4.o;
import p4.t0;
import p4.u0;
import p4.v;
import r3.k;
import r3.l;
import r4.h;
import s4.g;
import t4.e;
import t4.f;
import t4.j;

/* JADX INFO: compiled from: DashMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements v, n0.a<h<com.google.android.exoplayer2.source.dash.a>>, h.b<com.google.android.exoplayer2.source.dash.a> {
    public static final Pattern F = Pattern.compile("CC([1-4])=(.+)");
    public static final Pattern G = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");
    public p B;
    public t4.c C;
    public int D;
    public List<f> E;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4559h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.dash.a.InterfaceC0080a f4560i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final j0 f4561j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l f4562k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final c0 f4563l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s4.b f4564m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f4565n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final e0 f4566o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final l5.b f4567p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final u0 f4568q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final a[] f4569r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final p4.h f4570s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final d f4571t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final p4.e0.a f4573v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final k.a f4574w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final v0 f4575x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public v.a f4576y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public h<com.google.android.exoplayer2.source.dash.a>[] f4577z = new h[0];
    public g[] A = new g[0];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final IdentityHashMap<h<com.google.android.exoplayer2.source.dash.a>, d.c> f4572u = new IdentityHashMap<>();

    /* JADX INFO: compiled from: DashMediaPeriod.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f4578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f4579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f4580c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f4581d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f4582e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f4583f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f4584g;

        public a(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15) {
            this.f4579b = i10;
            this.f4578a = iArr;
            this.f4580c = i11;
            this.f4582e = i12;
            this.f4583f = i13;
            this.f4584g = i14;
            this.f4581d = i15;
        }
    }

    public b(int i10, t4.c cVar, s4.b bVar, int i11, com.google.android.exoplayer2.source.dash.a.InterfaceC0080a interfaceC0080a, j0 j0Var, l lVar, k.a aVar, c0 c0Var, p4.e0.a aVar2, long j10, e0 e0Var, l5.b bVar2, p4.h hVar, d.b bVar3, v0 v0Var) {
        int i12;
        int i13;
        boolean z10;
        s0[] s0VarArrK;
        e eVarB;
        l lVar2 = lVar;
        this.f4559h = i10;
        this.C = cVar;
        this.f4564m = bVar;
        this.D = i11;
        this.f4560i = interfaceC0080a;
        this.f4561j = j0Var;
        this.f4562k = lVar2;
        this.f4574w = aVar;
        this.f4563l = c0Var;
        this.f4573v = aVar2;
        this.f4565n = j10;
        this.f4566o = e0Var;
        this.f4567p = bVar2;
        this.f4570s = hVar;
        this.f4575x = v0Var;
        this.f4571t = new d(cVar, bVar3, bVar2);
        int i14 = 0;
        h<com.google.android.exoplayer2.source.dash.a>[] hVarArr = this.f4577z;
        Objects.requireNonNull(hVar);
        this.B = new p(hVarArr);
        t4.g gVarB = cVar.b(i11);
        List<f> list = gVarB.f15479d;
        this.E = list;
        List<t4.a> list2 = gVarB.f15478c;
        int size = list2.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i15 = 0; i15 < size; i15++) {
            sparseIntArray.put(list2.get(i15).f15432a, i15);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i15));
            arrayList.add(arrayList2);
            sparseArray.put(i15, arrayList2);
        }
        for (int i16 = 0; i16 < size; i16++) {
            t4.a aVar3 = list2.get(i16);
            e eVarB2 = b(aVar3.f15436e, "http://dashif.org/guidelines/trickmode");
            eVarB2 = eVarB2 == null ? b(aVar3.f15437f, "http://dashif.org/guidelines/trickmode") : eVarB2;
            int iMin = (eVarB2 == null || (iMin = sparseIntArray.get(Integer.parseInt(eVarB2.f15470b), -1)) == -1) ? i16 : iMin;
            if (iMin == i16 && (eVarB = b(aVar3.f15437f, "urn:mpeg:dash:adaptation-set-switching:2016")) != null) {
                String str = eVarB.f15470b;
                int i17 = g0.f10384a;
                for (String str2 : str.split(",", -1)) {
                    int i18 = sparseIntArray.get(Integer.parseInt(str2), -1);
                    if (i18 != -1) {
                        iMin = Math.min(iMin, i18);
                    }
                }
            }
            if (iMin != i16) {
                List list3 = (List) sparseArray.get(i16);
                List list4 = (List) sparseArray.get(iMin);
                list4.addAll(list3);
                sparseArray.put(i16, list4);
                arrayList.remove(list3);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i19 = 0; i19 < size2; i19++) {
            iArr[i19] = w6.a.d((Collection) arrayList.get(i19));
            Arrays.sort(iArr[i19]);
        }
        boolean[] zArr = new boolean[size2];
        s0[][] s0VarArr = new s0[size2][];
        int i20 = 0;
        int i21 = 0;
        while (i14 < size2) {
            int[] iArr2 = iArr[i14];
            int length = iArr2.length;
            int i22 = i21;
            while (true) {
                if (i21 >= length) {
                    z10 = false;
                    break;
                }
                List<j> list5 = list2.get(iArr2[i21]).f15434c;
                while (i22 < list5.size()) {
                    if (!list5.get(i22).f15492d.isEmpty()) {
                        z10 = true;
                        break;
                    }
                    i22++;
                }
                i21++;
                i22 = 0;
            }
            if (z10) {
                zArr[i14] = true;
                i20++;
            }
            int[] iArr3 = iArr[i14];
            int length2 = iArr3.length;
            int i23 = 0;
            while (true) {
                if (i23 >= length2) {
                    s0VarArrK = new s0[0];
                    break;
                }
                int i24 = iArr3[i23];
                t4.a aVar4 = list2.get(i24);
                List<e> list6 = list2.get(i24).f15435d;
                int i25 = 0;
                int[] iArr4 = iArr3;
                while (i25 < list6.size()) {
                    e eVar = list6.get(i25);
                    int i26 = length2;
                    List<e> list7 = list6;
                    if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f15469a)) {
                        s0.a aVar5 = new s0.a();
                        aVar5.f11705k = "application/cea-608";
                        aVar5.f11695a = s.a(new StringBuilder(), aVar4.f15432a, ":cea608");
                        s0VarArrK = k(eVar, F, new s0(aVar5));
                        break;
                    }
                    if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f15469a)) {
                        s0.a aVar6 = new s0.a();
                        aVar6.f11705k = "application/cea-708";
                        aVar6.f11695a = s.a(new StringBuilder(), aVar4.f15432a, ":cea708");
                        s0VarArrK = k(eVar, G, new s0(aVar6));
                        break;
                    }
                    i25++;
                    length2 = i26;
                    list6 = list7;
                }
                i23++;
                iArr3 = iArr4;
            }
            s0VarArr[i14] = s0VarArrK;
            if (s0VarArr[i14].length != 0) {
                i20++;
            }
            i14++;
            i21 = 0;
        }
        int size3 = list.size() + i20 + size2;
        t0[] t0VarArr = new t0[size3];
        a[] aVarArr = new a[size3];
        int i27 = 0;
        int i28 = 0;
        while (i27 < size2) {
            int[] iArr5 = iArr[i27];
            ArrayList arrayList3 = new ArrayList();
            int length3 = iArr5.length;
            int i29 = size2;
            int i30 = 0;
            while (i30 < length3) {
                arrayList3.addAll(list2.get(iArr5[i30]).f15434c);
                i30++;
                iArr = iArr;
            }
            int[][] iArr6 = iArr;
            int size4 = arrayList3.size();
            s0[] s0VarArr2 = new s0[size4];
            int i31 = 0;
            while (i31 < size4) {
                int i32 = size4;
                s0 s0Var = ((j) arrayList3.get(i31)).f15489a;
                s0VarArr2[i31] = s0Var.c(lVar2.e(s0Var));
                i31++;
                size4 = i32;
                arrayList3 = arrayList3;
            }
            t4.a aVar7 = list2.get(iArr5[0]);
            int i33 = aVar7.f15432a;
            String string = i33 != -1 ? Integer.toString(i33) : androidx.appcompat.widget.e0.d("unset:", i27);
            int i34 = i28 + 1;
            if (zArr[i27]) {
                i12 = i34;
                i34++;
            } else {
                i12 = -1;
            }
            List<t4.a> list8 = list2;
            if (s0VarArr[i27].length != 0) {
                int i35 = i34;
                i34++;
                i13 = i35;
            } else {
                i13 = -1;
            }
            t0VarArr[i28] = new t0(string, s0VarArr2);
            aVarArr[i28] = new a(aVar7.f15433b, 0, iArr5, i28, i12, i13, -1);
            int i36 = -1;
            int i37 = i12;
            if (i37 != -1) {
                String strC = androidx.recyclerview.widget.d.c(string, ":emsg");
                s0.a aVar8 = new s0.a();
                aVar8.f11695a = strC;
                aVar8.f11705k = "application/x-emsg";
                t0VarArr[i37] = new t0(strC, new s0(aVar8));
                aVarArr[i37] = new a(5, 1, iArr5, i28, -1, -1, -1);
                i36 = -1;
            }
            if (i13 != i36) {
                t0VarArr[i13] = new t0(androidx.recyclerview.widget.d.c(string, ":cc"), s0VarArr[i27]);
                aVarArr[i13] = new a(3, 1, iArr5, i28, -1, -1, -1);
            }
            i27++;
            size2 = i29;
            lVar2 = lVar;
            i28 = i34;
            iArr = iArr6;
            list2 = list8;
            zArr = zArr;
        }
        int i38 = 0;
        while (i38 < list.size()) {
            f fVar = list.get(i38);
            s0.a aVar9 = new s0.a();
            aVar9.f11695a = fVar.a();
            aVar9.f11705k = "application/x-emsg";
            t0VarArr[i28] = new t0(fVar.a() + ":" + i38, new s0(aVar9));
            aVarArr[i28] = new a(5, 2, new int[0], -1, -1, -1, i38);
            i38++;
            i28++;
        }
        Pair pairCreate = Pair.create(new u0(t0VarArr), aVarArr);
        this.f4568q = (u0) pairCreate.first;
        this.f4569r = (a[]) pairCreate.second;
    }

    public static e b(List<e> list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            if (str.equals(eVar.f15469a)) {
                return eVar;
            }
        }
        return null;
    }

    public static s0[] k(e eVar, Pattern pattern, s0 s0Var) {
        String str = eVar.f15470b;
        if (str == null) {
            return new s0[]{s0Var};
        }
        int i10 = g0.f10384a;
        String[] strArrSplit = str.split(";", -1);
        s0[] s0VarArr = new s0[strArrSplit.length];
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            Matcher matcher = pattern.matcher(strArrSplit[i11]);
            if (!matcher.matches()) {
                return new s0[]{s0Var};
            }
            int i12 = Integer.parseInt(matcher.group(1));
            s0.a aVar = new s0.a(s0Var);
            aVar.f11695a = s0Var.f11676h + ":" + i12;
            aVar.C = i12;
            aVar.f11697c = matcher.group(2);
            s0VarArr[i11] = new s0(aVar);
        }
        return s0VarArr;
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.B.a();
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return this.B.c();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        for (h<com.google.android.exoplayer2.source.dash.a> hVar : this.f4577z) {
            if (hVar.f14569h == 2) {
                return hVar.f14573l.d(j10, w1Var);
            }
        }
        return j10;
    }

    @Override // p4.v, p4.n0
    public final long e() {
        return this.B.e();
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        return this.B.f(j10);
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        this.B.g(j10);
    }

    public final int h(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.f4569r[i11].f4582e;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.f4569r[i14].f4580c == 0) {
                return i13;
            }
        }
        return -1;
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        this.f4576y.j(this);
    }

    @Override // p4.v
    public final long l() {
        return -9223372036854775807L;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        int i10;
        boolean z10;
        int i11;
        int[] iArr;
        int i12;
        t0 t0VarB;
        t0 t0VarB2;
        int i13;
        d.c cVar;
        j5.l[] lVarArr2 = lVarArr;
        int[] iArr2 = new int[lVarArr2.length];
        int i14 = 0;
        while (true) {
            i10 = -1;
            if (i14 >= lVarArr2.length) {
                break;
            }
            if (lVarArr2[i14] != null) {
                iArr2[i14] = this.f4568q.c(lVarArr2[i14].l());
            } else {
                iArr2[i14] = -1;
            }
            i14++;
        }
        for (int i15 = 0; i15 < lVarArr2.length; i15++) {
            if (lVarArr2[i15] == null || !zArr[i15]) {
                if (m0VarArr[i15] instanceof h) {
                    ((h) m0VarArr[i15]).A(this);
                } else if (m0VarArr[i15] instanceof h.a) {
                    ((h.a) m0VarArr[i15]).c();
                }
                m0VarArr[i15] = null;
            }
        }
        int i16 = 0;
        while (true) {
            z10 = true;
            boolean z11 = true;
            if (i16 >= lVarArr2.length) {
                break;
            }
            if ((m0VarArr[i16] instanceof o) || (m0VarArr[i16] instanceof h.a)) {
                int iH = h(i16, iArr2);
                if (iH == -1) {
                    z11 = m0VarArr[i16] instanceof o;
                } else if (!(m0VarArr[i16] instanceof h.a) || ((h.a) m0VarArr[i16]).f14588h != m0VarArr[iH]) {
                    z11 = false;
                }
                if (!z11) {
                    if (m0VarArr[i16] instanceof h.a) {
                        ((h.a) m0VarArr[i16]).c();
                    }
                    m0VarArr[i16] = null;
                }
            }
            i16++;
        }
        m0[] m0VarArr2 = m0VarArr;
        int i17 = 0;
        while (i17 < lVarArr2.length) {
            j5.l lVar = lVarArr2[i17];
            if (lVar == null) {
                i11 = i17;
                iArr = iArr2;
            } else if (m0VarArr2[i17] == null) {
                zArr2[i17] = z10;
                a aVar = this.f4569r[iArr2[i17]];
                int i18 = aVar.f4580c;
                if (i18 == 0) {
                    int i19 = aVar.f4583f;
                    boolean z12 = i19 != i10 ? z10 ? 1 : 0 : false;
                    if (z12) {
                        t0VarB = this.f4568q.b(i19);
                        i12 = z10 ? 1 : 0;
                    } else {
                        i12 = 0;
                        t0VarB = null;
                    }
                    int i20 = aVar.f4584g;
                    Object[] objArr = i20 != i10 ? z10 ? 1 : 0 : null;
                    if (objArr != null) {
                        t0VarB2 = this.f4568q.b(i20);
                        i12 += t0VarB2.f13221h;
                    } else {
                        t0VarB2 = null;
                    }
                    s0[] s0VarArr = new s0[i12];
                    int[] iArr3 = new int[i12];
                    if (z12) {
                        s0VarArr[0] = t0VarB.f13224k[0];
                        iArr3[0] = 5;
                        i13 = z10 ? 1 : 0;
                    } else {
                        i13 = 0;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (objArr != null) {
                        for (int i21 = 0; i21 < t0VarB2.f13221h; i21++) {
                            s0VarArr[i13] = t0VarB2.f13224k[i21];
                            iArr3[i13] = 3;
                            arrayList.add(s0VarArr[i13]);
                            i13 += z10 ? 1 : 0;
                        }
                    }
                    if (this.C.f15445d && z12) {
                        d dVar = this.f4571t;
                        cVar = dVar.new c(dVar.f4609h);
                    } else {
                        cVar = null;
                    }
                    iArr = iArr2;
                    i11 = i17;
                    d.c cVar2 = cVar;
                    h<com.google.android.exoplayer2.source.dash.a> hVar = new h<>(aVar.f4579b, iArr3, s0VarArr, this.f4560i.a(this.f4566o, this.C, this.f4564m, this.D, aVar.f4578a, lVar, aVar.f4579b, this.f4565n, z12, arrayList, cVar, this.f4561j, this.f4575x), this, this.f4567p, j10, this.f4562k, this.f4574w, this.f4563l, this.f4573v);
                    synchronized (this) {
                        this.f4572u.put(hVar, cVar2);
                    }
                    m0VarArr[i11] = hVar;
                    m0VarArr2 = m0VarArr;
                } else {
                    i11 = i17;
                    iArr = iArr2;
                    if (i18 == 2) {
                        m0VarArr2[i11] = new g(this.E.get(aVar.f4581d), lVar.l().f13224k[0], this.C.f15445d);
                    }
                }
            } else {
                i11 = i17;
                iArr = iArr2;
                if (m0VarArr2[i11] instanceof h) {
                    ((com.google.android.exoplayer2.source.dash.a) ((h) m0VarArr2[i11]).f14573l).c(lVar);
                }
            }
            i17 = i11 + 1;
            lVarArr2 = lVarArr;
            iArr2 = iArr;
            z10 = true;
            i10 = -1;
        }
        int[] iArr4 = iArr2;
        int i22 = 0;
        while (i22 < lVarArr.length) {
            if (m0VarArr2[i22] == null && lVarArr[i22] != null) {
                a aVar2 = this.f4569r[iArr4[i22]];
                if (aVar2.f4580c == 1) {
                    iArr4 = iArr4;
                    int iH2 = h(i22, iArr4);
                    if (iH2 == -1) {
                        m0VarArr2[i22] = new o();
                    } else {
                        h hVar2 = (h) m0VarArr2[iH2];
                        int i23 = aVar2.f4579b;
                        int i24 = 0;
                        while (true) {
                            if (i24 >= hVar2.f14582u.length) {
                                throw new IllegalStateException();
                            }
                            if (hVar2.f14570i[i24] == i23) {
                                m5.a.e(!hVar2.f14572k[i24]);
                                hVar2.f14572k[i24] = true;
                                hVar2.f14582u[i24].D(j10, true);
                                m0VarArr2[i22] = new h.a(hVar2, hVar2.f14582u[i24], i24);
                                break;
                            }
                            i24++;
                        }
                    }
                }
                i22++;
                iArr4 = iArr4;
            }
            i22++;
            iArr4 = iArr4;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (m0 m0Var : m0VarArr2) {
            if (m0Var instanceof h) {
                arrayList2.add((h) m0Var);
            } else if (m0Var instanceof g) {
                arrayList3.add((g) m0Var);
            }
        }
        h<com.google.android.exoplayer2.source.dash.a>[] hVarArr = new h[arrayList2.size()];
        this.f4577z = hVarArr;
        arrayList2.toArray(hVarArr);
        g[] gVarArr = new g[arrayList3.size()];
        this.A = gVarArr;
        arrayList3.toArray(gVarArr);
        p4.h hVar3 = this.f4570s;
        h<com.google.android.exoplayer2.source.dash.a>[] hVarArr2 = this.f4577z;
        Objects.requireNonNull(hVar3);
        this.B = new p(hVarArr2);
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        return this.f4568q;
    }

    @Override // p4.v
    public final void q() throws IOException {
        this.f4566o.b();
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        for (h<com.google.android.exoplayer2.source.dash.a> hVar : this.f4577z) {
            hVar.s(j10, z10);
        }
    }

    @Override // p4.v
    public final long t(long j10) {
        for (h<com.google.android.exoplayer2.source.dash.a> hVar : this.f4577z) {
            hVar.C(j10);
        }
        for (g gVar : this.A) {
            gVar.a(j10);
        }
        return j10;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f4576y = aVar;
        aVar.i(this);
    }
}
