package i2;

import android.graphics.Color;
import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: GradientColorParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements l0<f2.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8705a;

    public o(int i10) {
        this.f8705a = i10;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d1  */
    @Override // i2.l0
    public final f2.c a(j2.c cVar, float f10) throws IOException {
        int i10;
        int iArgb;
        int iArgb2;
        float f11;
        int i11;
        ArrayList arrayList = new ArrayList();
        int i12 = 1;
        boolean z10 = cVar.o0() == 1;
        if (z10) {
            cVar.x();
        }
        while (cVar.i0()) {
            arrayList.add(Float.valueOf((float) cVar.k0()));
        }
        int i13 = 4;
        int i14 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.f8705a = 2;
        }
        if (z10) {
            cVar.f0();
        }
        if (this.f8705a == -1) {
            this.f8705a = arrayList.size() / 4;
        }
        int i15 = this.f8705a;
        float[] fArr = new float[i15];
        int[] iArr = new int[i15];
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            i10 = this.f8705a * i13;
            if (i16 >= i10) {
                break;
            }
            int i19 = i16 / 4;
            double dFloatValue = ((Float) arrayList.get(i16)).floatValue();
            int i20 = i16 % 4;
            if (i20 != 0) {
                if (i20 == i12) {
                    i17 = (int) (dFloatValue * 255.0d);
                } else if (i20 == 2) {
                    i18 = (int) (dFloatValue * 255.0d);
                } else if (i20 == 3) {
                    iArr[i19] = Color.argb(255, i17, i18, (int) (dFloatValue * 255.0d));
                }
            } else if (i19 > 0) {
                float f12 = (float) dFloatValue;
                if (fArr[i19 - 1] >= f12) {
                    fArr[i19] = f12 + 0.01f;
                } else {
                    fArr[i19] = (float) dFloatValue;
                }
            } else {
                fArr[i19] = (float) dFloatValue;
            }
            i16++;
            i12 = 1;
            i13 = 4;
        }
        f2.c cVar2 = new f2.c(fArr, iArr);
        if (arrayList.size() <= i10) {
            return cVar2;
        }
        int size = (arrayList.size() - i10) / 2;
        float[] fArr2 = new float[size];
        float[] fArr3 = new float[size];
        int i21 = 0;
        while (i10 < arrayList.size()) {
            if (i10 % 2 == 0) {
                fArr2[i21] = ((Float) arrayList.get(i10)).floatValue();
            } else {
                fArr3[i21] = ((Float) arrayList.get(i10)).floatValue();
                i21++;
            }
            i10++;
        }
        float[] fArrCopyOf = cVar2.f6967a;
        if (fArrCopyOf.length == 0) {
            fArrCopyOf = fArr2;
        } else if (size != 0) {
            int length = fArrCopyOf.length + size;
            float[] fArr4 = new float[length];
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            for (int i25 = 0; i25 < length; i25++) {
                float f13 = i23 < fArrCopyOf.length ? fArrCopyOf[i23] : Float.NaN;
                float f14 = i24 < size ? fArr2[i24] : Float.NaN;
                if (Float.isNaN(f14) || f13 < f14) {
                    fArr4[i25] = f13;
                    i23++;
                } else if (Float.isNaN(f13) || f14 < f13) {
                    fArr4[i25] = f14;
                    i24++;
                } else {
                    fArr4[i25] = f13;
                    i23++;
                    i24++;
                    i22++;
                }
            }
            fArrCopyOf = i22 == 0 ? fArr4 : Arrays.copyOf(fArr4, length - i22);
        }
        int length2 = fArrCopyOf.length;
        int[] iArr2 = new int[length2];
        int i26 = 0;
        while (i26 < length2) {
            float f15 = fArrCopyOf[i26];
            int iBinarySearch = Arrays.binarySearch(fArr, f15);
            int iBinarySearch2 = Arrays.binarySearch(fArr2, f15);
            if (iBinarySearch < 0 || iBinarySearch2 > 0) {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                float f16 = fArr3[iBinarySearch2];
                if (i15 < 2 || f15 == fArr[0]) {
                    iArgb = iArr[0];
                } else {
                    int i27 = 1;
                    while (true) {
                        if (i27 >= i15) {
                            throw new IllegalArgumentException("Unreachable code.");
                        }
                        if (fArr[i27] >= f15 || i27 == i15 - 1) {
                            break;
                        }
                        i27++;
                    }
                    int i28 = i27 - 1;
                    float f17 = (f15 - fArr[i28]) / (fArr[i27] - fArr[i28]);
                    int i29 = iArr[i27];
                    int i30 = iArr[i28];
                    iArgb = Color.argb((int) (f16 * 255.0f), k2.f.e(Color.red(i30), Color.red(i29), f17), k2.f.e(Color.green(i30), Color.green(i29), f17), k2.f.e(Color.blue(i30), Color.blue(i29), f17));
                }
                iArr2[i26] = iArgb;
            } else {
                int i31 = iArr[iBinarySearch];
                if (size < i14 || f15 <= fArr2[0]) {
                    iArgb2 = Color.argb((int) (fArr3[0] * 255.0f), Color.red(i31), Color.green(i31), Color.blue(i31));
                } else {
                    int i32 = 1;
                    while (true) {
                        if (i32 >= size) {
                            throw new IllegalArgumentException("Unreachable code.");
                        }
                        f11 = fArr2[i32];
                        if (f11 >= f15 || i32 == size - 1) {
                            break;
                        }
                        i32++;
                    }
                    if (f11 <= f15) {
                        i11 = (int) (fArr3[i32] * 255.0f);
                    } else {
                        int i33 = i32 - 1;
                        float f18 = (f15 - fArr2[i33]) / (fArr2[i32] - fArr2[i33]);
                        float f19 = fArr3[i33];
                        float f20 = fArr3[i32];
                        PointF pointF = k2.f.f9637a;
                        i11 = (int) ((((f20 - f19) * f18) + f19) * 255.0f);
                    }
                    iArgb2 = Color.argb(i11, Color.red(i31), Color.green(i31), Color.blue(i31));
                }
                iArr2[i26] = iArgb2;
                i15 = i15;
            }
            i26++;
            i15 = i15;
            i14 = 2;
        }
        return new f2.c(fArrCopyOf, iArr2);
    }
}
