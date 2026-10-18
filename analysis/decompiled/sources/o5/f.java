package o5;

import java.util.ArrayList;
import java.util.zip.Inflater;
import m5.g0;
import m5.v;
import m5.w;

/* JADX INFO: compiled from: ProjectionDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    public static ArrayList<e.a> a(w wVar) {
        ArrayList<e.a> arrayList;
        boolean z10;
        int i10;
        ArrayList<e.a> arrayList2;
        e.a aVar;
        w wVar2 = wVar;
        if (wVar.t() != 0) {
            return null;
        }
        wVar2.E(7);
        int iE = wVar.e();
        boolean z11 = true;
        if (iE == 1684433976) {
            w wVar3 = new w();
            Inflater inflater = new Inflater(true);
            try {
                if (!g0.H(wVar2, wVar3, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                wVar2 = wVar3;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iE != 1918990112) {
            return null;
        }
        ArrayList<e.a> arrayList3 = new ArrayList<>();
        int i11 = wVar2.f10476b;
        int i12 = wVar2.f10477c;
        while (i11 < i12) {
            int iE2 = wVar2.e() + i11;
            if (iE2 > i11 && iE2 <= i12) {
                if (wVar2.e() == 1835365224) {
                    int iE3 = wVar2.e();
                    if (iE3 > 10000) {
                        arrayList2 = arrayList3;
                        z10 = z11;
                        i10 = i12;
                        aVar = null;
                    } else {
                        float[] fArr = new float[iE3];
                        for (int i13 = 0; i13 < iE3; i13++) {
                            fArr[i13] = Float.intBitsToFloat(wVar2.e());
                        }
                        int iE4 = wVar2.e();
                        if (iE4 > 32000) {
                            arrayList2 = arrayList3;
                        } else {
                            double dLog = Math.log(2.0d);
                            arrayList2 = arrayList3;
                            int iCeil = (int) Math.ceil(Math.log(((double) iE3) * 2.0d) / dLog);
                            byte[] bArr = wVar2.f10475a;
                            v vVar = new v(bArr, bArr.length);
                            vVar.k(wVar2.f10476b * 8);
                            float[] fArr2 = new float[iE4 * 5];
                            int i14 = 5;
                            int[] iArr = new int[5];
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                if (i15 < iE4) {
                                    int i17 = 0;
                                    while (true) {
                                        if (i17 < i14) {
                                            int i18 = iArr[i17];
                                            int iG = vVar.g(iCeil);
                                            int i19 = i18 + ((-(iG & 1)) ^ (iG >> 1));
                                            if (i19 < iE3 && i19 >= 0) {
                                                fArr2[i16] = fArr[i19];
                                                iArr[i17] = i19;
                                                i17++;
                                                i16++;
                                                i14 = 5;
                                            }
                                        } else {
                                            i15++;
                                            i14 = 5;
                                        }
                                    }
                                } else {
                                    vVar.k((vVar.e() + 7) & (-8));
                                    int i20 = 32;
                                    int iG2 = vVar.g(32);
                                    e.b[] bVarArr = new e.b[iG2];
                                    int i21 = 0;
                                    while (true) {
                                        if (i21 < iG2) {
                                            int iG3 = vVar.g(8);
                                            int iG4 = vVar.g(8);
                                            int iG5 = vVar.g(i20);
                                            if (iG5 <= 128000) {
                                                i10 = i12;
                                                int iCeil2 = (int) Math.ceil(Math.log(((double) iE4) * 2.0d) / dLog);
                                                float[] fArr3 = new float[iG5 * 3];
                                                float[] fArr4 = new float[iG5 * 2];
                                                int i22 = 0;
                                                int i23 = 0;
                                                while (true) {
                                                    if (i22 < iG5) {
                                                        int iG6 = vVar.g(iCeil2);
                                                        int i24 = iG6 >> 1;
                                                        v vVar2 = vVar;
                                                        int i25 = iG6 & 1;
                                                        int i26 = iG2;
                                                        float[] fArr5 = fArr4;
                                                        int i27 = i23 + ((-i25) ^ i24);
                                                        if (i27 < 0 || i27 >= iE4) {
                                                            z10 = true;
                                                        } else {
                                                            int i28 = i22 * 3;
                                                            int i29 = i27 * 5;
                                                            fArr3[i28] = fArr2[i29];
                                                            fArr3[i28 + 1] = fArr2[i29 + 1];
                                                            fArr3[i28 + 2] = fArr2[i29 + 2];
                                                            int i30 = i22 * 2;
                                                            fArr5[i30] = fArr2[i29 + 3];
                                                            fArr5[i30 + 1] = fArr2[i29 + 4];
                                                            i22++;
                                                            i23 = i27;
                                                            fArr4 = fArr5;
                                                            iG2 = i26;
                                                            vVar = vVar2;
                                                        }
                                                    } else {
                                                        bVarArr[i21] = new e.b(iG3, fArr3, fArr4, iG4);
                                                        i21++;
                                                        i12 = i10;
                                                        z11 = true;
                                                        iG2 = iG2;
                                                        i20 = 32;
                                                    }
                                                }
                                            }
                                            aVar = null;
                                        } else {
                                            z10 = z11;
                                            i10 = i12;
                                            aVar = new e.a(bVarArr);
                                        }
                                    }
                                }
                            }
                        }
                        z10 = z11;
                        i10 = i12;
                        aVar = null;
                    }
                    if (aVar != null) {
                        arrayList = arrayList2;
                        arrayList.add(aVar);
                    }
                } else {
                    arrayList = arrayList3;
                    z10 = z11;
                    i10 = i12;
                }
                wVar2.D(iE2);
                arrayList3 = arrayList;
                i11 = iE2;
                i12 = i10;
                z11 = z10;
            }
            return null;
        }
        return arrayList3;
    }
}
