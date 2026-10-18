package j5;

import android.os.Looper;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import m5.g0;
import n3.c2;
import n3.t1;
import n3.u1;
import o3.h0;
import o3.i0;
import p4.t0;
import p4.u0;
import u6.j0;
import u6.k0;
import u6.m0;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: MappingTrackSelector.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class n extends s {

    /* JADX INFO: compiled from: MappingTrackSelector.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f9382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final u0[] f9383c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f9384d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[][][] f9385e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final u0 f9386f;

        public a(int[] iArr, u0[] u0VarArr, int[] iArr2, int[][][] iArr3, u0 u0Var) {
            this.f9382b = iArr;
            this.f9383c = u0VarArr;
            this.f9385e = iArr3;
            this.f9384d = iArr2;
            this.f9386f = u0Var;
            this.f9381a = iArr.length;
        }
    }

    @Override // j5.s
    public final void a(Object obj) {
    }

    /* JADX WARN: Code duplicated, block: B:268:0x055f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // j5.s
    public final t c(t1[] t1VarArr, u0 u0Var) throws n3.q {
        final i.c cVar;
        int i10;
        final boolean z10;
        String str;
        boolean z11;
        v<Object> vVarV;
        boolean z12;
        boolean z13;
        l aVar;
        a aVar2;
        l5.e eVar;
        int[][] iArr;
        i.e eVar2;
        int[] iArr2;
        u0 u0Var2 = u0Var;
        boolean z14 = true;
        int[] iArr3 = new int[t1VarArr.length + 1];
        int length = t1VarArr.length + 1;
        t0[][] t0VarArr = new t0[length][];
        int[][][] iArr4 = new int[t1VarArr.length + 1][][];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = u0Var2.f13235h;
            t0VarArr[i11] = new t0[i12];
            iArr4[i11] = new int[i12][];
        }
        int length2 = t1VarArr.length;
        int[] iArr5 = new int[length2];
        for (int i13 = 0; i13 < length2; i13++) {
            iArr5[i13] = t1VarArr[i13].j();
        }
        int i14 = 0;
        while (i14 < u0Var2.f13235h) {
            t0 t0VarB = u0Var2.b(i14);
            boolean z15 = t0VarB.f13223j == 5 ? z14 : false;
            int length3 = t1VarArr.length;
            boolean z16 = z14;
            int i15 = 0;
            for (int i16 = 0; i16 < t1VarArr.length; i16++) {
                t1 t1Var = t1VarArr[i16];
                int iMax = 0;
                for (int i17 = 0; i17 < t0VarB.f13221h; i17++) {
                    iMax = Math.max(iMax, t1Var.a(t0VarB.f13224k[i17]) & 7);
                }
                boolean z17 = iArr3[i16] == 0;
                if (iMax > i15 || (iMax == i15 && z15 && !z16 && z17)) {
                    z16 = z17;
                    i15 = iMax;
                    length3 = i16;
                }
            }
            if (length3 == t1VarArr.length) {
                iArr2 = new int[t0VarB.f13221h];
            } else {
                t1 t1Var2 = t1VarArr[length3];
                int[] iArr6 = new int[t0VarB.f13221h];
                for (int i18 = 0; i18 < t0VarB.f13221h; i18++) {
                    iArr6[i18] = t1Var2.a(t0VarB.f13224k[i18]);
                }
                iArr2 = iArr6;
            }
            int i19 = iArr3[length3];
            t0VarArr[length3][i19] = t0VarB;
            iArr4[length3][i19] = iArr2;
            iArr3[length3] = iArr3[length3] + 1;
            i14++;
            u0Var2 = u0Var;
            z14 = true;
        }
        u0[] u0VarArr = new u0[t1VarArr.length];
        String[] strArr = new String[t1VarArr.length];
        int[] iArr7 = new int[t1VarArr.length];
        for (int i20 = 0; i20 < t1VarArr.length; i20++) {
            int i21 = iArr3[i20];
            u0VarArr[i20] = new u0((t0[]) g0.N(t0VarArr[i20], i21));
            iArr4[i20] = (int[][]) g0.N(iArr4[i20], i21);
            strArr[i20] = t1VarArr[i20].getName();
            iArr7[i20] = ((n3.f) t1VarArr[i20]).f11381h;
        }
        a aVar3 = new a(iArr7, u0VarArr, iArr5, iArr4, new u0((t0[]) g0.N(t0VarArr[t1VarArr.length], iArr3[t1VarArr.length])));
        final i iVar = (i) this;
        synchronized (iVar.f9317c) {
            cVar = iVar.f9320f;
            if (cVar.R && g0.f10384a >= 32 && (eVar2 = iVar.f9321g) != null) {
                Looper looperMyLooper = Looper.myLooper();
                m5.a.f(looperMyLooper);
                eVar2.b(iVar, looperMyLooper);
            }
        }
        int i22 = aVar3.f9381a;
        l.a[] aVarArr = new l.a[i22];
        int i23 = 3;
        Pair<l.a, Integer> pairK = iVar.k(2, aVar3, iArr4, new i0(cVar, iArr5, i23), l4.d.f9962i);
        if (pairK != null) {
            aVarArr[((Integer) pairK.second).intValue()] = (l.a) pairK.first;
        }
        int i24 = 0;
        while (true) {
            i10 = 2;
            if (i24 >= aVar3.f9381a) {
                z10 = false;
                break;
            }
            if (2 == aVar3.f9382b[i24] && aVar3.f9383c[i24].f13235h > 0) {
                z10 = true;
                break;
            }
            i24++;
        }
        Pair<l.a, Integer> pairK2 = iVar.k(1, aVar3, iArr4, new i.g.a() { // from class: j5.d
            @Override // j5.i.g.a
            public final List a(int i25, t0 t0Var, int[] iArr8) {
                i iVar2 = iVar;
                i.c cVar2 = cVar;
                boolean z18 = z10;
                Objects.requireNonNull(iVar2);
                h hVar = new h(iVar2);
                u6.a aVar4 = v.f16002i;
                u6.h.b(4, "initialCapacity");
                Object[] objArrCopyOf = new Object[4];
                int i26 = 0;
                int i27 = 0;
                while (i26 < t0Var.f13221h) {
                    i.a aVar5 = new i.a(i25, t0Var, i26, cVar2, iArr8[i26], z18, hVar);
                    int i28 = i27 + 1;
                    if (objArrCopyOf.length < i28) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i28));
                    }
                    objArrCopyOf[i27] = aVar5;
                    i26++;
                    i27 = i28;
                }
                return v.q(objArrCopyOf, i27);
            }
        }, e.f9302i);
        if (pairK2 != null) {
            aVarArr[((Integer) pairK2.second).intValue()] = (l.a) pairK2.first;
        }
        if (pairK2 == null) {
            str = null;
        } else {
            l.a aVar4 = (l.a) pairK2.first;
            str = aVar4.f9378a.f13224k[aVar4.f9379b[0]].f11678j;
        }
        Pair<l.a, Integer> pairK3 = iVar.k(3, aVar3, iArr4, new h0(cVar, str, i10), s4.a.f15109j);
        if (pairK3 != null) {
            aVarArr[((Integer) pairK3.second).intValue()] = (l.a) pairK3.first;
        }
        int i25 = 0;
        while (i25 < i22) {
            int i26 = aVar3.f9382b[i25];
            if (i26 != i10 && i26 != 1 && i26 != i23) {
                u0 u0Var3 = aVar3.f9383c[i25];
                int[][] iArr8 = iArr4[i25];
                int i27 = 0;
                int i28 = 0;
                t0 t0Var = null;
                i.b bVar = null;
                while (i27 < u0Var3.f13235h) {
                    t0 t0VarB2 = u0Var3.b(i27);
                    int[] iArr9 = iArr8[i27];
                    i.b bVar2 = bVar;
                    int i29 = 0;
                    while (i29 < t0VarB2.f13221h) {
                        u0 u0Var4 = u0Var3;
                        if (i.h(iArr9[i29], cVar.S)) {
                            iArr = iArr8;
                            i.b bVar3 = new i.b(t0VarB2.f13224k[i29], iArr9[i29]);
                            if (bVar2 == null || bVar3.compareTo(bVar2) > 0) {
                                i28 = i29;
                                t0Var = t0VarB2;
                                bVar2 = bVar3;
                            }
                        } else {
                            iArr = iArr8;
                        }
                        i29++;
                        u0Var3 = u0Var4;
                        iArr8 = iArr;
                    }
                    i27++;
                    bVar = bVar2;
                }
                aVarArr[i25] = t0Var == null ? null : new l.a(t0Var, new int[]{i28}, 0);
            }
            i25++;
            i23 = 3;
            i10 = 2;
        }
        int i30 = aVar3.f9381a;
        HashMap map = new HashMap();
        for (int i31 = 0; i31 < i30; i31++) {
            i.f(aVar3.f9383c[i31], cVar, map);
        }
        i.f(aVar3.f9386f, cVar, map);
        for (int i32 = 0; i32 < i30; i32++) {
            p pVar = (p) map.get(Integer.valueOf(aVar3.f9382b[i32]));
            if (pVar != null) {
                aVarArr[i32] = (pVar.f9389i.isEmpty() || aVar3.f9383c[i32].c(pVar.f9388h) == -1) ? null : new l.a(pVar.f9388h, w6.a.d(pVar.f9389i), 0);
            }
        }
        int i33 = aVar3.f9381a;
        for (int i34 = 0; i34 < i33; i34++) {
            u0 u0Var5 = aVar3.f9383c[i34];
            Map<u0, i.d> map2 = cVar.V.get(i34);
            if (map2 != null && map2.containsKey(u0Var5)) {
                Map<u0, i.d> map3 = cVar.V.get(i34);
                i.d dVar = map3 != null ? map3.get(u0Var5) : null;
                aVarArr[i34] = (dVar == null || dVar.f9342i.length == 0) ? null : new l.a(u0Var5.b(dVar.f9341h), dVar.f9342i, dVar.f9343j);
            }
        }
        for (int i35 = 0; i35 < i22; i35++) {
            int i36 = aVar3.f9382b[i35];
            if (cVar.W.get(i35) || cVar.G.contains(Integer.valueOf(i36))) {
                aVarArr[i35] = null;
            }
        }
        l.b bVar4 = iVar.f9318d;
        l5.e eVar3 = iVar.f9436b;
        m5.a.f(eVar3);
        Objects.requireNonNull((j5.a.b) bVar4);
        ArrayList arrayList = new ArrayList();
        for (int i37 = 0; i37 < i22; i37++) {
            if (aVarArr[i37] == null || aVarArr[i37].f9379b.length <= 1) {
                arrayList.add(null);
            } else {
                u6.a aVar5 = v.f16002i;
                v.a aVar6 = new v.a();
                aVar6.c(new j5.a.C0181a(0L, 0L));
                arrayList.add(aVar6);
            }
        }
        long[][] jArr = new long[i22][];
        for (int i38 = 0; i38 < i22; i38++) {
            l.a aVar7 = aVarArr[i38];
            if (aVar7 == null) {
                jArr[i38] = new long[0];
            } else {
                jArr[i38] = new long[aVar7.f9379b.length];
                int i39 = 0;
                while (true) {
                    int[] iArr10 = aVar7.f9379b;
                    if (i39 >= iArr10.length) {
                        break;
                    }
                    jArr[i38][i39] = aVar7.f9378a.f13224k[iArr10[i39]].f11683o;
                    i39++;
                }
                Arrays.sort(jArr[i38]);
            }
        }
        int[] iArr11 = new int[i22];
        long[] jArr2 = new long[i22];
        for (int i40 = 0; i40 < i22; i40++) {
            jArr2[i40] = jArr[i40].length == 0 ? 0L : jArr[i40][0];
        }
        j5.a.u(arrayList, jArr2);
        m0 m0Var = m0.f15961h;
        u6.h.b(2, "expectedValuesPerKey");
        k0 k0Var = new k0(new TreeMap(m0Var), new j0(2));
        int i41 = 0;
        while (i41 < i22) {
            if (jArr[i41].length <= 1) {
                aVar2 = aVar3;
                eVar = eVar3;
            } else {
                int length4 = jArr[i41].length;
                double[] dArr = new double[length4];
                int i42 = 0;
                while (true) {
                    double dLog = 0.0d;
                    if (i42 >= jArr[i41].length) {
                        break;
                    }
                    if (jArr[i41][i42] != -1) {
                        dLog = Math.log(jArr[i41][i42]);
                    }
                    dArr[i42] = dLog;
                    i42++;
                    aVar3 = aVar3;
                    eVar3 = eVar3;
                }
                aVar2 = aVar3;
                eVar = eVar3;
                int i43 = length4 - 1;
                double d10 = dArr[i43] - dArr[0];
                int i44 = 0;
                while (i44 < i43) {
                    double d11 = dArr[i44];
                    i44++;
                    k0Var.l(Double.valueOf(d10 == 0.0d ? 1.0d : (((d11 + dArr[i44]) * 0.5d) - dArr[0]) / d10), Integer.valueOf(i41));
                    d10 = d10;
                }
            }
            i41++;
            aVar3 = aVar2;
            eVar3 = eVar;
        }
        a aVar8 = aVar3;
        l5.e eVar4 = eVar3;
        Collection aVar9 = k0Var.f15927i;
        if (aVar9 == null) {
            aVar9 = new u6.f.a();
            k0Var.f15927i = aVar9;
        }
        v vVarS = v.s(aVar9);
        for (int i45 = 0; i45 < vVarS.size(); i45++) {
            int iIntValue = ((Integer) vVarS.get(i45)).intValue();
            int i46 = iArr11[iIntValue] + 1;
            iArr11[iIntValue] = i46;
            jArr2[iIntValue] = jArr[iIntValue][i46];
            j5.a.u(arrayList, jArr2);
        }
        for (int i47 = 0; i47 < i22; i47++) {
            if (arrayList.get(i47) != null) {
                jArr2[i47] = jArr2[i47] * 2;
            }
        }
        j5.a.u(arrayList, jArr2);
        int i48 = 4;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i49 = 0;
        int i50 = 0;
        while (i49 < arrayList.size()) {
            v.a aVar10 = (v.a) arrayList.get(i49);
            v<Object> vVarE = aVar10 == null ? p0.f15967l : aVar10.e();
            Objects.requireNonNull(vVarE);
            int i51 = i50 + 1;
            if (objArrCopyOf.length < i51) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i51));
            }
            objArrCopyOf[i50] = vVarE;
            i49++;
            i50 = i51;
        }
        v vVarQ = v.q(objArrCopyOf, i50);
        l[] lVarArr = new l[i22];
        for (int i52 = 0; i52 < i22; i52++) {
            l.a aVar11 = aVarArr[i52];
            if (aVar11 != null) {
                int[] iArr12 = aVar11.f9379b;
                if (iArr12.length != 0) {
                    if (iArr12.length == 1) {
                        aVar = new m(aVar11.f9378a, iArr12[0], aVar11.f9380c);
                    } else {
                        long j10 = 25000;
                        aVar = new j5.a(aVar11.f9378a, iArr12, aVar11.f9380c, eVar4, 10000, j10, j10, (v) ((p0) vVarQ).get(i52));
                    }
                    lVarArr[i52] = aVar;
                }
            }
        }
        u1[] u1VarArr = new u1[i22];
        int i53 = 0;
        while (i53 < i22) {
            a aVar12 = aVar8;
            u1VarArr[i53] = !(cVar.W.get(i53) || cVar.G.contains(Integer.valueOf(aVar12.f9382b[i53]))) && (aVar12.f9382b[i53] == -2 || lVarArr[i53] != null) ? u1.f11732b : null;
            i53++;
            aVar8 = aVar12;
        }
        a aVar13 = aVar8;
        if (cVar.T) {
            int i54 = -1;
            int i55 = -1;
            int i56 = 0;
            while (true) {
                if (i56 >= aVar13.f9381a) {
                    z12 = true;
                    break;
                }
                int i57 = aVar13.f9382b[i56];
                l lVar = lVarArr[i56];
                if (i57 == 1 || i57 == 2) {
                    if (lVar != null) {
                        int[][] iArr13 = iArr4[i56];
                        int iC = aVar13.f9383c[i56].c(lVar.l());
                        int i58 = 0;
                        while (true) {
                            if (i58 >= lVar.length()) {
                                z13 = true;
                                break;
                            }
                            if ((iArr13[iC][lVar.i(i58)] & 32) != 32) {
                                z13 = false;
                                break;
                            }
                            i58++;
                        }
                        if (!z13) {
                            continue;
                        } else if (i57 == 1) {
                            if (i55 != -1) {
                                z12 = false;
                                break;
                            }
                            i55 = i56;
                        } else {
                            if (i54 != -1) {
                                z12 = false;
                                break;
                            }
                            i54 = i56;
                        }
                    }
                }
                i56++;
            }
            if (z12 & ((i55 == -1 || i54 == -1) ? false : true)) {
                u1 u1Var = new u1(true);
                u1VarArr[i55] = u1Var;
                u1VarArr[i54] = u1Var;
            }
        }
        Pair pairCreate = Pair.create(u1VarArr, lVarArr);
        o[] oVarArr = (o[]) pairCreate.second;
        List[] listArr = new List[oVarArr.length];
        for (int i59 = 0; i59 < oVarArr.length; i59++) {
            o oVar = oVarArr[i59];
            if (oVar != null) {
                vVarV = v.v(oVar);
            } else {
                u6.a aVar14 = v.f16002i;
                vVarV = p0.f15967l;
            }
            listArr[i59] = vVarV;
        }
        v.a aVar15 = new v.a();
        int i60 = 0;
        while (i60 < aVar13.f9381a) {
            u0 u0Var6 = aVar13.f9383c[i60];
            List list = listArr[i60];
            int i61 = 0;
            while (i61 < u0Var6.f13235h) {
                t0 t0VarB3 = u0Var6.b(i61);
                int i62 = aVar13.f9383c[i60].b(i61).f13221h;
                int[] iArr14 = new int[i62];
                int i63 = 0;
                for (int i64 = 0; i64 < i62; i64++) {
                    if ((aVar13.f9385e[i60][i61][i64] & 7) == i48) {
                        iArr14[i63] = i64;
                        i63++;
                    }
                }
                int[] iArrCopyOf = Arrays.copyOf(iArr14, i63);
                int iMin = 16;
                String str2 = null;
                int i65 = 0;
                boolean z18 = false;
                int i66 = 0;
                while (i65 < iArrCopyOf.length) {
                    List[] listArr2 = listArr;
                    String str3 = aVar13.f9383c[i60].b(i61).f13224k[iArrCopyOf[i65]].f11687s;
                    int i67 = i66 + 1;
                    if (i66 == 0) {
                        str2 = str3;
                    } else {
                        z18 = (!g0.a(str2, str3)) | z18;
                    }
                    iMin = Math.min(iMin, aVar13.f9385e[i60][i61][i65] & 24);
                    i65++;
                    i66 = i67;
                    listArr = listArr2;
                }
                List[] listArr3 = listArr;
                if (z18) {
                    iMin = Math.min(iMin, aVar13.f9384d[i60]);
                }
                boolean z19 = iMin != 0;
                int i68 = t0VarB3.f13221h;
                int[] iArr15 = new int[i68];
                boolean[] zArr = new boolean[i68];
                for (int i69 = 0; i69 < t0VarB3.f13221h; i69++) {
                    iArr15[i69] = aVar13.f9385e[i60][i61][i69] & 7;
                    int i70 = 0;
                    while (true) {
                        if (i70 >= list.size()) {
                            z11 = false;
                            break;
                        }
                        o oVar2 = (o) list.get(i70);
                        if (oVar2.l().equals(t0VarB3) && oVar2.t(i69) != -1) {
                            z11 = true;
                            break;
                        }
                        i70++;
                    }
                    zArr[i69] = z11;
                }
                aVar15.c(new c2.a(t0VarB3, z19, iArr15, zArr));
                i61++;
                listArr = listArr3;
                i48 = 4;
            }
            i60++;
            i48 = 4;
        }
        u0 u0Var7 = aVar13.f9386f;
        for (int i71 = 0; i71 < u0Var7.f13235h; i71++) {
            t0 t0VarB4 = u0Var7.b(i71);
            int[] iArr16 = new int[t0VarB4.f13221h];
            Arrays.fill(iArr16, 0);
            aVar15.c(new c2.a(t0VarB4, false, iArr16, new boolean[t0VarB4.f13221h]));
        }
        return new t((u1[]) pairCreate.first, (l[]) pairCreate.second, new c2(aVar15.e()), aVar13);
    }
}
