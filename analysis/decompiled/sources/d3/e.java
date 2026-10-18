package d3;

import androidx.appcompat.widget.y0;
import fd.f;
import g7.p;
import g7.q;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import m5.w;
import q.h;
import v9.t;

/* JADX INFO: compiled from: UnitTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements c, q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final e f5999h = new e();

    /* JADX WARN: Code duplicated, block: B:119:0x01b1 A[PHI: r23 r24
      0x01b1: PHI (r23v3 boolean) = (r23v1 boolean), (r23v7 boolean) binds: [B:118:0x01af, B:109:0x0199] A[DONT_GENERATE, DONT_INLINE]
      0x01b1: PHI (r24v3 boolean) = (r24v1 boolean), (r24v6 boolean) binds: [B:118:0x01af, B:109:0x0199] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:120:0x01b3 A[PHI: r23 r24
      0x01b3: PHI (r23v5 boolean) = (r23v1 boolean), (r23v7 boolean) binds: [B:118:0x01af, B:109:0x0199] A[DONT_GENERATE, DONT_INLINE]
      0x01b3: PHI (r24v5 boolean) = (r24v1 boolean), (r24v6 boolean) binds: [B:118:0x01af, B:109:0x0199] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:173:0x0288  */
    /* JADX WARN: Code duplicated, block: B:193:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:195:0x02df  */
    /* JADX WARN: Code duplicated, block: B:197:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:199:0x0306  */
    /* JADX WARN: Code duplicated, block: B:287:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:65:0x010c  */
    public static void a(s.e eVar, q.d dVar, ArrayList arrayList, int i10) {
        int i11;
        s.b[] bVarArr;
        int i12;
        boolean z10;
        boolean z11;
        int i13;
        boolean z12;
        boolean z13;
        int i14;
        s.b[] bVarArr2;
        s.d dVar2;
        s.d dVar3;
        int i15;
        int i16;
        int i17;
        s.d dVar4;
        s.c cVar;
        h hVar;
        h hVar2;
        s.c cVar2;
        h hVar3;
        int size;
        float f10;
        boolean z14;
        s.c cVar3;
        s.d dVar5;
        int i18;
        int i19;
        s.d dVar6;
        s.e eVar2 = eVar;
        int i20 = 2;
        if (i10 == 0) {
            i11 = eVar2.A0;
            bVarArr = eVar2.D0;
            i12 = 0;
        } else {
            i11 = eVar2.B0;
            bVarArr = eVar2.C0;
            i12 = 2;
        }
        int i21 = 0;
        while (i21 < i11) {
            s.b bVar = bVarArr[i21];
            int i22 = 8;
            int i23 = 1;
            if (bVar.f14834q) {
                z10 = true;
            } else {
                int i24 = bVar.f14829l * i20;
                s.d dVar7 = bVar.f14818a;
                s.d dVar8 = dVar7;
                boolean z15 = false;
                while (!z15) {
                    bVar.f14826i += i23;
                    s.d[] dVarArr = dVar7.f14881o0;
                    int i25 = bVar.f14829l;
                    dVarArr[i25] = null;
                    dVar7.f14879n0[i25] = null;
                    if (dVar7.f14869i0 != i22) {
                        if (dVar7.j(i25) != 3) {
                            int i26 = bVar.f14829l;
                        }
                        dVar7.R[i24].d();
                        int i27 = i24 + 1;
                        dVar7.R[i27].d();
                        dVar7.R[i24].d();
                        dVar7.R[i27].d();
                        if (bVar.f14819b == null) {
                            bVar.f14819b = dVar7;
                        }
                        bVar.f14821d = dVar7;
                        int[] iArr = dVar7.U;
                        int i28 = bVar.f14829l;
                        if (iArr[i28] == 3) {
                            int[] iArr2 = dVar7.f14888t;
                            if (iArr2[i28] == 0 || iArr2[i28] == 3 || iArr2[i28] == i20) {
                                bVar.f14827j++;
                                float[] fArr = dVar7.f14877m0;
                                float f11 = fArr[i28];
                                if (f11 > 0.0f) {
                                    bVar.f14828k += fArr[i28];
                                }
                                if (dVar7.f14869i0 != 8 && iArr[i28] == 3 && (iArr2[i28] == 0 || iArr2[i28] == 3)) {
                                    if (f11 < 0.0f) {
                                        bVar.f14831n = true;
                                    } else {
                                        bVar.f14832o = true;
                                    }
                                    if (bVar.f14825h == null) {
                                        bVar.f14825h = new ArrayList<>();
                                    }
                                    bVar.f14825h.add(dVar7);
                                }
                                if (bVar.f14823f == null) {
                                    bVar.f14823f = dVar7;
                                }
                                s.d dVar9 = bVar.f14824g;
                                if (dVar9 != null) {
                                    dVar9.f14879n0[bVar.f14829l] = dVar7;
                                }
                                bVar.f14824g = dVar7;
                            }
                        }
                    }
                    if (dVar8 != dVar7) {
                        dVar8.f14881o0[bVar.f14829l] = dVar7;
                    }
                    s.c cVar4 = dVar7.R[i24 + 1].f14840f;
                    if (cVar4 != null) {
                        dVar6 = cVar4.f14838d;
                        s.c[] cVarArr = dVar6.R;
                        if (cVarArr[i24].f14840f == null || cVarArr[i24].f14840f.f14838d != dVar7) {
                            dVar6 = null;
                        }
                    } else {
                        dVar6 = null;
                    }
                    if (dVar6 == null) {
                        dVar6 = dVar7;
                        z15 = true;
                    }
                    dVar8 = dVar7;
                    i23 = 1;
                    i22 = 8;
                    i20 = 2;
                    dVar7 = dVar6;
                }
                s.d dVar10 = bVar.f14819b;
                if (dVar10 != null) {
                    dVar10.R[i24].d();
                }
                s.d dVar11 = bVar.f14821d;
                if (dVar11 != null) {
                    dVar11.R[i24 + 1].d();
                }
                bVar.f14820c = dVar7;
                if (bVar.f14829l == 0 && bVar.f14830m) {
                    bVar.f14822e = dVar7;
                } else {
                    bVar.f14822e = bVar.f14818a;
                }
                bVar.f14833p = bVar.f14832o && bVar.f14831n;
                z10 = true;
            }
            bVar.f14834q = z10;
            if (arrayList == 0 || arrayList.contains(bVar.f14818a)) {
                s.d dVar12 = bVar.f14818a;
                s.d dVar13 = bVar.f14820c;
                s.d dVar14 = bVar.f14819b;
                s.d dVar15 = bVar.f14821d;
                s.d dVar16 = bVar.f14822e;
                float f12 = bVar.f14828k;
                boolean z16 = eVar2.U[i10] == 2;
                if (i10 == 0) {
                    int i29 = dVar16.f14873k0;
                    boolean z17 = i29 == 0;
                    if (i29 == 1) {
                        z12 = true;
                        i19 = 2;
                    } else {
                        i19 = 2;
                        z12 = false;
                    }
                    z11 = z17;
                    if (i29 == i19) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                } else {
                    int i30 = dVar16.f14875l0;
                    z11 = i30 == 0;
                    if (i30 == 1) {
                        i13 = 2;
                        z12 = true;
                    } else {
                        i13 = 2;
                        z12 = false;
                    }
                    if (i30 == i13) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                }
                s.d dVar17 = dVar12;
                boolean z18 = false;
                while (!z18) {
                    s.c cVar5 = dVar17.R[i12];
                    int i31 = z13 ? 1 : 4;
                    int iD = cVar5.d();
                    int i32 = i21;
                    boolean z19 = dVar17.U[i10] == 3 && dVar17.f14888t[i10] == 0;
                    s.c cVar6 = cVar5.f14840f;
                    if (cVar6 != null && dVar17 != dVar12) {
                        iD = cVar6.d() + iD;
                    }
                    int i33 = iD;
                    if (z13 && dVar17 != dVar12 && dVar17 != dVar14) {
                        i31 = 8;
                    }
                    s.c cVar7 = cVar5.f14840f;
                    if (cVar7 != null) {
                        if (dVar17 == dVar14) {
                            dVar.f(cVar5.f14843i, cVar7.f14843i, i33, 6);
                        } else {
                            dVar.f(cVar5.f14843i, cVar7.f14843i, i33, 8);
                        }
                        if (z19 && !z13) {
                            i31 = 5;
                        }
                        dVar.d(cVar5.f14843i, cVar5.f14840f.f14843i, i33, (dVar17 == dVar14 && z13 && dVar17.T[i10]) ? 5 : i31);
                    } else {
                        dVar16 = dVar16;
                        bVarArr = bVarArr;
                    }
                    if (z16) {
                        if (dVar17.f14869i0 == 8 || dVar17.U[i10] != 3) {
                            i18 = 0;
                        } else {
                            s.c[] cVarArr2 = dVar17.R;
                            i18 = 0;
                            dVar.f(cVarArr2[i12 + 1].f14843i, cVarArr2[i12].f14843i, 0, 5);
                        }
                        dVar.f(dVar17.R[i12].f14843i, eVar2.R[i12].f14843i, i18, 8);
                    }
                    s.c cVar8 = dVar17.R[i12 + 1].f14840f;
                    if (cVar8 != null) {
                        dVar5 = cVar8.f14838d;
                        s.c[] cVarArr3 = dVar5.R;
                        if (cVarArr3[i12].f14840f == null || cVarArr3[i12].f14840f.f14838d != dVar17) {
                            dVar5 = null;
                        }
                    } else {
                        dVar5 = null;
                    }
                    if (dVar5 != null) {
                        dVar17 = dVar5;
                    } else {
                        z18 = true;
                    }
                    i11 = i11;
                    i21 = i32;
                    bVarArr = bVarArr;
                    dVar16 = dVar16;
                }
                s.d dVar18 = dVar16;
                int i34 = i21;
                i14 = i11;
                bVarArr2 = bVarArr;
                if (dVar15 != null) {
                    int i35 = i12 + 1;
                    if (dVar13.R[i35].f14840f != null) {
                        s.c cVar9 = dVar15.R[i35];
                        if ((dVar15.U[i10] == 3 && dVar15.f14888t[i10] == 0) && !z13) {
                            s.c cVar10 = cVar9.f14840f;
                            if (cVar10.f14838d == eVar2) {
                                dVar.d(cVar9.f14843i, cVar10.f14843i, -cVar9.d(), 5);
                            } else if (z13) {
                                cVar3 = cVar9.f14840f;
                                if (cVar3.f14838d == eVar2) {
                                    dVar.d(cVar9.f14843i, cVar3.f14843i, -cVar9.d(), 4);
                                }
                            }
                        } else if (z13) {
                            cVar3 = cVar9.f14840f;
                            if (cVar3.f14838d == eVar2) {
                                dVar.d(cVar9.f14843i, cVar3.f14843i, -cVar9.d(), 4);
                            }
                        }
                        dVar.g(cVar9.f14843i, dVar13.R[i35].f14840f.f14843i, -cVar9.d(), 6);
                    }
                }
                if (z16) {
                    int i36 = i12 + 1;
                    h hVar4 = eVar2.R[i36].f14843i;
                    s.c[] cVarArr4 = dVar13.R;
                    dVar.f(hVar4, cVarArr4[i36].f14843i, cVarArr4[i36].d(), 8);
                }
                ArrayList<s.d> arrayList2 = bVar.f14825h;
                if (arrayList2 != null && (size = arrayList2.size()) > 1) {
                    float f13 = (!bVar.f14831n || bVar.f14833p) ? f12 : bVar.f14827j;
                    s.d dVar19 = null;
                    float f14 = 0.0f;
                    int i37 = 0;
                    while (i37 < size) {
                        s.d dVar20 = arrayList2.get(i37);
                        float f15 = dVar20.f14877m0[i10];
                        if (f15 < 0.0f) {
                            if (bVar.f14833p) {
                                s.c[] cVarArr5 = dVar20.R;
                                arrayList2 = arrayList2;
                                dVar.d(cVarArr5[i12 + 1].f14843i, cVarArr5[i12].f14843i, 0, 4);
                                z14 = false;
                            } else {
                                f10 = 0.0f;
                                f15 = 1.0f;
                            }
                            bVar = bVar;
                            size = size;
                            f13 = f13;
                            i37++;
                            arrayList2 = arrayList2;
                            f13 = f13;
                            size = size;
                            bVar = bVar;
                        } else {
                            f10 = 0.0f;
                        }
                        if (f15 == f10) {
                            s.c[] cVarArr6 = dVar20.R;
                            z14 = false;
                            dVar.d(cVarArr6[i12 + 1].f14843i, cVarArr6[i12].f14843i, 0, 8);
                            bVar = bVar;
                            size = size;
                            f13 = f13;
                        } else {
                            if (dVar19 != null) {
                                s.c[] cVarArr7 = dVar19.R;
                                h hVar5 = cVarArr7[i12].f14843i;
                                int i38 = i12 + 1;
                                h hVar6 = cVarArr7[i38].f14843i;
                                s.c[] cVarArr8 = dVar20.R;
                                h hVar7 = cVarArr8[i12].f14843i;
                                h hVar8 = cVarArr8[i38].f14843i;
                                q.b bVarM = dVar.m();
                                bVarM.f13451b = 0.0f;
                                if (f13 == 0.0f || f14 == f15) {
                                    bVarM.f13453d.d(hVar5, 1.0f);
                                    bVarM.f13453d.d(hVar6, -1.0f);
                                    bVarM.f13453d.d(hVar8, 1.0f);
                                    bVarM.f13453d.d(hVar7, -1.0f);
                                } else if (f14 == 0.0f) {
                                    bVarM.f13453d.d(hVar5, 1.0f);
                                    bVarM.f13453d.d(hVar6, -1.0f);
                                } else if (f15 == f10) {
                                    bVarM.f13453d.d(hVar7, 1.0f);
                                    bVarM.f13453d.d(hVar8, -1.0f);
                                } else {
                                    float f16 = (f14 / f13) / (f15 / f13);
                                    bVarM.f13453d.d(hVar5, 1.0f);
                                    bVarM.f13453d.d(hVar6, -1.0f);
                                    bVarM.f13453d.d(hVar8, f16);
                                    bVarM.f13453d.d(hVar7, -f16);
                                }
                                dVar.c(bVarM);
                            } else {
                                f13 = f13;
                            }
                            f14 = f15;
                            dVar19 = dVar20;
                        }
                        i37++;
                        arrayList2 = arrayList2;
                        f13 = f13;
                        size = size;
                        bVar = bVar;
                    }
                }
                s.b bVar2 = bVar;
                if (dVar14 == null || !(dVar14 == dVar15 || z13)) {
                    dVar2 = dVar15;
                    dVar3 = dVar14;
                    i15 = i34;
                    if (!z11 || dVar3 == null) {
                        int i39 = 8;
                        if (z12 && dVar3 != null) {
                            int i40 = bVar2.f14827j;
                            boolean z20 = i40 > 0 && bVar2.f14826i == i40;
                            s.d dVar21 = dVar3;
                            s.d dVar22 = dVar21;
                            while (dVar21 != null) {
                                s.d dVar23 = dVar21.f14881o0[i10];
                                while (dVar23 != null && dVar23.f14869i0 == i39) {
                                    dVar23 = dVar23.f14881o0[i10];
                                }
                                if (dVar21 == dVar3 || dVar21 == dVar2 || dVar23 == null) {
                                    dVar22 = dVar22;
                                    i17 = i39;
                                    dVar4 = dVar23;
                                } else {
                                    s.d dVar24 = dVar23 == dVar2 ? null : dVar23;
                                    s.c cVar11 = dVar21.R[i12];
                                    h hVar9 = cVar11.f14843i;
                                    int i41 = i12 + 1;
                                    h hVar10 = dVar22.R[i41].f14843i;
                                    int iD2 = cVar11.d();
                                    int iD3 = dVar21.R[i41].d();
                                    if (dVar24 != null) {
                                        cVar = dVar24.R[i12];
                                        hVar = cVar.f14843i;
                                        s.c cVar12 = cVar.f14840f;
                                        hVar2 = cVar12 != null ? cVar12.f14843i : null;
                                    } else {
                                        cVar = dVar2.R[i12];
                                        hVar = cVar != null ? cVar.f14843i : null;
                                        hVar2 = dVar21.R[i41].f14843i;
                                    }
                                    int iD4 = cVar != null ? cVar.d() + iD3 : iD3;
                                    int iD5 = dVar22.R[i41].d() + iD2;
                                    int i42 = z20 ? 8 : 4;
                                    if (hVar9 == null || hVar10 == null || hVar == null || hVar2 == null) {
                                        i17 = 8;
                                    } else {
                                        i17 = 8;
                                        dVar.b(hVar9, hVar10, iD5, 0.5f, hVar, hVar2, iD4, i42);
                                    }
                                    dVar4 = dVar24;
                                }
                                if (dVar21.f14869i0 != i17) {
                                    dVar22 = dVar21;
                                }
                                dVar21 = dVar4;
                                i39 = i17;
                                dVar22 = dVar22;
                            }
                            s.c cVar13 = dVar3.R[i12];
                            s.c cVar14 = dVar12.R[i12].f14840f;
                            int i43 = i12 + 1;
                            s.c cVar15 = dVar2.R[i43];
                            s.c cVar16 = dVar13.R[i43].f14840f;
                            if (cVar14 == null) {
                                i16 = 5;
                            } else if (dVar3 != dVar2) {
                                i16 = 5;
                                dVar.d(cVar13.f14843i, cVar14.f14843i, cVar13.d(), 5);
                            } else {
                                i16 = 5;
                                if (cVar16 != null) {
                                    dVar.b(cVar13.f14843i, cVar14.f14843i, cVar13.d(), 0.5f, cVar15.f14843i, cVar16.f14843i, cVar15.d(), 5);
                                }
                            }
                            if (cVar16 != null && dVar3 != dVar2) {
                                dVar.d(cVar15.f14843i, cVar16.f14843i, -cVar15.d(), i16);
                            }
                        }
                    } else {
                        int i44 = bVar2.f14827j;
                        boolean z21 = i44 > 0 && bVar2.f14826i == i44;
                        s.d dVar25 = dVar3;
                        s.d dVar26 = dVar25;
                        while (dVar26 != null) {
                            s.d dVar27 = dVar26.f14881o0[i10];
                            while (dVar27 != null && dVar27.f14869i0 == 8) {
                                dVar27 = dVar27.f14881o0[i10];
                            }
                            if (dVar27 != null || dVar26 == dVar2) {
                                s.c cVar17 = dVar26.R[i12];
                                h hVar11 = cVar17.f14843i;
                                s.c cVar18 = cVar17.f14840f;
                                h hVar12 = cVar18 != null ? cVar18.f14843i : null;
                                if (dVar25 != dVar26) {
                                    hVar12 = dVar25.R[i12 + 1].f14843i;
                                } else if (dVar26 == dVar3) {
                                    s.c[] cVarArr9 = dVar12.R;
                                    hVar12 = cVarArr9[i12].f14840f != null ? cVarArr9[i12].f14840f.f14843i : null;
                                }
                                int iD6 = cVar17.d();
                                int i45 = i12 + 1;
                                int iD7 = dVar26.R[i45].d();
                                if (dVar27 != null) {
                                    cVar2 = dVar27.R[i12];
                                    hVar3 = cVar2.f14843i;
                                } else {
                                    cVar2 = dVar13.R[i45].f14840f;
                                    hVar3 = cVar2 != null ? cVar2.f14843i : null;
                                }
                                h hVar13 = dVar26.R[i45].f14843i;
                                if (cVar2 != null) {
                                    iD7 += cVar2.d();
                                }
                                int iD8 = dVar25.R[i45].d() + iD6;
                                if (hVar11 != null && hVar12 != null && hVar3 != null && hVar13 != null) {
                                    if (dVar26 == dVar3) {
                                        iD8 = dVar3.R[i12].d();
                                    }
                                    dVar.b(hVar11, hVar12, iD8, 0.5f, hVar3, hVar13, dVar26 == dVar2 ? dVar2.R[i45].d() : iD7, z21 ? 8 : 5);
                                }
                            }
                            if (dVar26.f14869i0 != 8) {
                                dVar25 = dVar26;
                            }
                            dVar26 = dVar27;
                            dVar25 = dVar25;
                        }
                    }
                } else {
                    s.c cVar19 = dVar12.R[i12];
                    int i46 = i12 + 1;
                    s.c cVar20 = dVar13.R[i46];
                    s.c cVar21 = cVar19.f14840f;
                    h hVar14 = cVar21 != null ? cVar21.f14843i : null;
                    s.c cVar22 = cVar20.f14840f;
                    h hVar15 = cVar22 != null ? cVar22.f14843i : null;
                    s.c cVar23 = dVar14.R[i12];
                    if (dVar15 != null) {
                        cVar20 = dVar15.R[i46];
                    }
                    if (hVar14 == null || hVar15 == null) {
                        dVar2 = dVar15;
                        dVar3 = dVar14;
                        i15 = i34;
                    } else {
                        float f17 = i10 == 0 ? dVar18.f14863f0 : dVar18.f14865g0;
                        int iD9 = cVar23.d();
                        dVar2 = dVar15;
                        dVar3 = dVar14;
                        i15 = i34;
                        dVar.b(cVar23.f14843i, hVar14, iD9, f17, hVar15, cVar20.f14843i, cVar20.d(), 7);
                    }
                }
                if ((z11 || z12) && dVar3 != null && dVar3 != dVar2) {
                    s.c[] cVarArr10 = dVar3.R;
                    s.c cVar24 = cVarArr10[i12];
                    s.d dVar28 = dVar2 == null ? dVar3 : dVar2;
                    int i47 = i12 + 1;
                    s.c cVar25 = dVar28.R[i47];
                    s.c cVar26 = cVar24.f14840f;
                    h hVar16 = cVar26 != null ? cVar26.f14843i : null;
                    s.c cVar27 = cVar25.f14840f;
                    h hVar17 = cVar27 != null ? cVar27.f14843i : null;
                    if (dVar13 != dVar28) {
                        s.c cVar28 = dVar13.R[i47].f14840f;
                        hVar17 = cVar28 != null ? cVar28.f14843i : null;
                    }
                    if (dVar3 == dVar28) {
                        cVar24 = cVarArr10[i12];
                        cVar25 = cVarArr10[i47];
                    }
                    if (hVar16 != null && hVar17 != null) {
                        dVar.b(cVar24.f14843i, hVar16, cVar24.d(), 0.5f, hVar17, cVar25.f14843i, dVar28.R[i47].d(), 5);
                    }
                }
            } else {
                i15 = i21;
                i14 = i11;
                bVarArr2 = bVarArr;
            }
            i21 = i15 + 1;
            i20 = 2;
            eVar2 = eVar;
            i11 = i14;
            bVarArr = bVarArr2;
        }
    }

    public static final int c(int i10) {
        if (new vd.e(2, 36).o(i10)) {
            return i10;
        }
        StringBuilder sbC = y0.c("radix ", i10, " was not in valid range ");
        sbC.append(new vd.e(2, 36));
        throw new IllegalArgumentException(sbC.toString());
    }

    public static final void d(Closeable closeable, Throwable th) throws IOException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                p4.h.b(th, th2);
            }
        }
    }

    public static final double e(double d10, zd.c cVar, zd.c cVar2) {
        p4.h.j(cVar, "sourceUnit");
        p4.h.j(cVar2, "targetUnit");
        long jConvert = cVar2.f19491h.convert(1L, cVar.f19491h);
        return jConvert > 0 ? d10 * jConvert : d10 / cVar.f19491h.convert(1L, cVar2.f19491h);
    }

    public static final long f(long j10, zd.c cVar, zd.c cVar2) {
        p4.h.j(cVar, "sourceUnit");
        p4.h.j(cVar2, "targetUnit");
        return cVar2.f19491h.convert(j10, cVar.f19491h);
    }

    public static final Object g(Throwable th) {
        p4.h.j(th, "exception");
        return new f.a(th);
    }

    public static float h(float f10, float f11, float f12, float f13) {
        return (float) Math.hypot(f12 - f10, f13 - f11);
    }

    public static final boolean i(char c10, char c11, boolean z10) {
        if (c10 == c11) {
            return true;
        }
        if (!z10) {
            return false;
        }
        char upperCase = Character.toUpperCase(c10);
        char upperCase2 = Character.toUpperCase(c11);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static final fb.e j() {
        t tVar = t.f16822a;
        fb.e eVar = t.f16825d;
        if (eVar != null) {
            return eVar;
        }
        p4.h.C("adaptKitLog");
        throw null;
    }

    public static final eb.e k() {
        t tVar = t.f16822a;
        return t.f16830i;
    }

    public static boolean l() {
        try {
            return Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    public static final boolean m(char c10) {
        return Character.isWhitespace(c10) || Character.isSpaceChar(c10);
    }

    public static float n(float f10, float f11, float f12) {
        return (f12 * f11) + ((1.0f - f12) * f10);
    }

    public static long o(w wVar, int i10, int i11) {
        wVar.D(i10);
        if (wVar.f10477c - wVar.f10476b < 5) {
            return -9223372036854775807L;
        }
        int iE = wVar.e();
        if ((8388608 & iE) != 0 || ((2096896 & iE) >> 8) != i11) {
            return -9223372036854775807L;
        }
        if (((iE & 32) != 0) && wVar.t() >= 7 && wVar.f10477c - wVar.f10476b >= 7) {
            if ((wVar.t() & 16) == 16) {
                byte[] bArr = new byte[6];
                wVar.d(bArr, 0, 6);
                return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((((long) bArr[4]) & 255) >> 7);
            }
        }
        return -9223372036854775807L;
    }

    public static final void p(Object obj) throws Throwable {
        if (obj instanceof f.a) {
            throw ((f.a) obj).f7390h;
        }
    }

    @Override // d3.c
    public r2.w b(r2.w wVar, p2.h hVar) {
        return wVar;
    }

    @Override // g7.q
    public Object construct() {
        return new p();
    }
}
