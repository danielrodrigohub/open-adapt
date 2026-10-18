package b7;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: MessageSchema.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0<T> implements e1<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f3517r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Unsafe f3518s = p1.o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f3519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f3520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q0 f3523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3524f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3525g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f3526h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3527i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f3528j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3529k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3530l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v0 f3531m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final g0 f3532n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final l1<?, ?> f3533o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final q<?> f3534p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final l0 f3535q;

    public t0(int[] iArr, Object[] objArr, int i10, int i11, q0 q0Var, boolean z10, int[] iArr2, int i12, int i13, v0 v0Var, g0 g0Var, l1 l1Var, q qVar, l0 l0Var) {
        this.f3519a = iArr;
        this.f3520b = objArr;
        this.f3521c = i10;
        this.f3522d = i11;
        this.f3525g = q0Var instanceof x;
        this.f3526h = z10;
        this.f3524f = qVar != null && qVar.e(q0Var);
        this.f3527i = false;
        this.f3528j = iArr2;
        this.f3529k = i12;
        this.f3530l = i13;
        this.f3531m = v0Var;
        this.f3532n = g0Var;
        this.f3533o = l1Var;
        this.f3534p = qVar;
        this.f3523e = q0Var;
        this.f3535q = l0Var;
    }

    public static <T> t0<T> A(c1 c1Var, v0 v0Var, g0 g0Var, l1<?, ?> l1Var, q<?> qVar, l0 l0Var) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr;
        int i16;
        int i17;
        char cCharAt;
        int i18;
        char cCharAt2;
        int i19;
        char cCharAt3;
        int i20;
        char cCharAt4;
        int i21;
        char cCharAt5;
        int i22;
        char cCharAt6;
        int i23;
        char cCharAt7;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        boolean z10;
        int i27;
        int i28;
        int i29;
        int i30;
        int iObjectFieldOffset;
        int i31;
        int i32;
        Field fieldS;
        char cCharAt9;
        int i33;
        int i34;
        int i35;
        Field fieldS2;
        Field fieldS3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        char cCharAt14;
        int i40 = 0;
        boolean z11 = ((c1Var.f3378d & 1) == 1 ? (char) 1 : (char) 2) == 2;
        String str = c1Var.f3376b;
        int length = str.length();
        int iCharAt3 = str.charAt(0);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 1;
            int i43 = 13;
            while (true) {
                i10 = i42 + 1;
                cCharAt14 = str.charAt(i42);
                if (cCharAt14 < 55296) {
                    break;
                }
                i41 |= (cCharAt14 & 8191) << i43;
                i43 += 13;
                i42 = i10;
            }
            iCharAt3 = i41 | (cCharAt14 << i43);
        } else {
            i10 = 1;
        }
        int i44 = i10 + 1;
        int iCharAt4 = str.charAt(i10);
        if (iCharAt4 >= 55296) {
            int i45 = iCharAt4 & 8191;
            int i46 = 13;
            while (true) {
                i39 = i44 + 1;
                cCharAt13 = str.charAt(i44);
                if (cCharAt13 < 55296) {
                    break;
                }
                i45 |= (cCharAt13 & 8191) << i46;
                i46 += 13;
                i44 = i39;
            }
            iCharAt4 = i45 | (cCharAt13 << i46);
            i44 = i39;
        }
        if (iCharAt4 == 0) {
            i16 = 0;
            i15 = 0;
            iCharAt = 0;
            i14 = 0;
            iCharAt2 = 0;
            iArr = f3517r;
            i13 = 0;
        } else {
            int i47 = i44 + 1;
            int iCharAt5 = str.charAt(i44);
            if (iCharAt5 >= 55296) {
                int i48 = iCharAt5 & 8191;
                int i49 = 13;
                while (true) {
                    i24 = i47 + 1;
                    cCharAt8 = str.charAt(i47);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt8 & 8191) << i49;
                    i49 += 13;
                    i47 = i24;
                }
                iCharAt5 = i48 | (cCharAt8 << i49);
                i47 = i24;
            }
            int i50 = i47 + 1;
            int iCharAt6 = str.charAt(i47);
            if (iCharAt6 >= 55296) {
                int i51 = iCharAt6 & 8191;
                int i52 = 13;
                while (true) {
                    i23 = i50 + 1;
                    cCharAt7 = str.charAt(i50);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt7 & 8191) << i52;
                    i52 += 13;
                    i50 = i23;
                }
                iCharAt6 = i51 | (cCharAt7 << i52);
                i50 = i23;
            }
            int i53 = i50 + 1;
            int iCharAt7 = str.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i22 = i53 + 1;
                    cCharAt6 = str.charAt(i53);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt6 & 8191) << i55;
                    i55 += 13;
                    i53 = i22;
                }
                iCharAt7 = i54 | (cCharAt6 << i55);
                i53 = i22;
            }
            int i56 = i53 + 1;
            iCharAt = str.charAt(i53);
            if (iCharAt >= 55296) {
                int i57 = iCharAt & 8191;
                int i58 = 13;
                while (true) {
                    i21 = i56 + 1;
                    cCharAt5 = str.charAt(i56);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt5 & 8191) << i58;
                    i58 += 13;
                    i56 = i21;
                }
                iCharAt = i57 | (cCharAt5 << i58);
                i56 = i21;
            }
            int i59 = i56 + 1;
            int iCharAt8 = str.charAt(i56);
            if (iCharAt8 >= 55296) {
                int i60 = iCharAt8 & 8191;
                int i61 = 13;
                while (true) {
                    i20 = i59 + 1;
                    cCharAt4 = str.charAt(i59);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt4 & 8191) << i61;
                    i61 += 13;
                    i59 = i20;
                }
                iCharAt8 = i60 | (cCharAt4 << i61);
                i59 = i20;
            }
            int i62 = i59 + 1;
            iCharAt2 = str.charAt(i59);
            if (iCharAt2 >= 55296) {
                int i63 = iCharAt2 & 8191;
                int i64 = i62;
                int i65 = 13;
                while (true) {
                    i19 = i64 + 1;
                    cCharAt3 = str.charAt(i64);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt3 & 8191) << i65;
                    i65 += 13;
                    i64 = i19;
                }
                iCharAt2 = i63 | (cCharAt3 << i65);
                i11 = i19;
            } else {
                i11 = i62;
            }
            int i66 = i11 + 1;
            int iCharAt9 = str.charAt(i11);
            if (iCharAt9 >= 55296) {
                int i67 = iCharAt9 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i18 = i68 + 1;
                    cCharAt2 = str.charAt(i68);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i67 |= (cCharAt2 & 8191) << i69;
                    i69 += 13;
                    i68 = i18;
                }
                iCharAt9 = i67 | (cCharAt2 << i69);
                i12 = i18;
            } else {
                i12 = i66;
            }
            int i70 = i12 + 1;
            int iCharAt10 = str.charAt(i12);
            if (iCharAt10 >= 55296) {
                int i71 = iCharAt10 & 8191;
                int i72 = i70;
                int i73 = 13;
                while (true) {
                    i17 = i72 + 1;
                    cCharAt = str.charAt(i72);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i71 |= (cCharAt & 8191) << i73;
                    i73 += 13;
                    i72 = i17;
                }
                iCharAt10 = i71 | (cCharAt << i73);
                i70 = i17;
            }
            int[] iArr2 = new int[iCharAt10 + iCharAt2 + iCharAt9];
            i40 = (iCharAt5 * 2) + iCharAt6;
            i13 = iCharAt8;
            i14 = iCharAt10;
            i15 = iCharAt7;
            iArr = iArr2;
            i16 = iCharAt5;
            i44 = i70;
        }
        Unsafe unsafe = f3518s;
        Object[] objArr = c1Var.f3377c;
        int i74 = i40;
        Class<?> cls = c1Var.f3375a.getClass();
        int i75 = i44;
        int[] iArr3 = new int[i13 * 3];
        Object[] objArr2 = new Object[i13 * 2];
        int i76 = i14;
        int i77 = iCharAt2 + i14;
        int i78 = 0;
        int i79 = 0;
        int i80 = i75;
        while (i80 < length) {
            int i81 = i80 + 1;
            int iCharAt11 = str.charAt(i80);
            int i82 = length;
            if (iCharAt11 >= 55296) {
                int i83 = iCharAt11 & 8191;
                int i84 = i81;
                int i85 = 13;
                while (true) {
                    i38 = i84 + 1;
                    cCharAt12 = str.charAt(i84);
                    i25 = i14;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i83 |= (cCharAt12 & 8191) << i85;
                    i85 += 13;
                    i84 = i38;
                    i14 = i25;
                }
                iCharAt11 = i83 | (cCharAt12 << i85);
                i26 = i38;
            } else {
                i25 = i14;
                i26 = i81;
            }
            int i86 = i26 + 1;
            int iCharAt12 = str.charAt(i26);
            if (iCharAt12 >= 55296) {
                int i87 = iCharAt12 & 8191;
                int i88 = i86;
                int i89 = 13;
                while (true) {
                    i37 = i88 + 1;
                    cCharAt11 = str.charAt(i88);
                    z10 = z11;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i87 |= (cCharAt11 & 8191) << i89;
                    i89 += 13;
                    i88 = i37;
                    z11 = z10;
                }
                iCharAt12 = i87 | (cCharAt11 << i89);
                i27 = i37;
            } else {
                z10 = z11;
                i27 = i86;
            }
            int i90 = iCharAt12 & 255;
            int i91 = iCharAt;
            if ((iCharAt12 & 1024) != 0) {
                iArr[i78] = i79;
                i78++;
            }
            if (i90 >= 51) {
                int i92 = i27 + 1;
                int iCharAt13 = str.charAt(i27);
                char c10 = 55296;
                if (iCharAt13 >= 55296) {
                    int i93 = 13;
                    int i94 = iCharAt13 & 8191;
                    int i95 = i92;
                    while (true) {
                        i36 = i95 + 1;
                        cCharAt10 = str.charAt(i95);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i94 |= (cCharAt10 & 8191) << i93;
                        i93 += 13;
                        i95 = i36;
                        c10 = 55296;
                    }
                    iCharAt13 = i94 | (cCharAt10 << i93);
                    i34 = i36;
                } else {
                    i34 = i92;
                }
                int i96 = i34;
                int i97 = i90 - 51;
                if (i97 == 9 || i97 == 17) {
                    i35 = 2;
                    objArr2[((i79 / 3) * 2) + 1] = objArr[i74];
                    i74++;
                } else {
                    if (i97 == 12 && (iCharAt3 & 1) == 1) {
                        objArr2[((i79 / 3) * 2) + 1] = objArr[i74];
                        i74++;
                    }
                    i35 = 2;
                }
                int i98 = iCharAt13 * i35;
                Object obj = objArr[i98];
                if (obj instanceof Field) {
                    fieldS2 = (Field) obj;
                } else {
                    fieldS2 = S(cls, (String) obj);
                    objArr[i98] = fieldS2;
                }
                int iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldS2);
                int i99 = i98 + 1;
                Object obj2 = objArr[i99];
                if (obj2 instanceof Field) {
                    fieldS3 = (Field) obj2;
                } else {
                    fieldS3 = S(cls, (String) obj2);
                    objArr[i99] = fieldS3;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldS3);
                str = str;
                i29 = iCharAt3;
                iObjectFieldOffset = iObjectFieldOffset3;
                i32 = iObjectFieldOffset2;
                i31 = 0;
                i30 = i96;
                i28 = iCharAt12;
            } else {
                int i100 = i74 + 1;
                Field fieldS4 = S(cls, (String) objArr[i74]);
                if (i90 == 9 || i90 == 17) {
                    i28 = iCharAt12;
                    objArr2[((i79 / 3) * 2) + 1] = fieldS4.getType();
                } else {
                    if (i90 == 27 || i90 == 49) {
                        i28 = iCharAt12;
                        i33 = i100 + 1;
                        objArr2[((i79 / 3) * 2) + 1] = objArr[i100];
                    } else if (i90 == 12 || i90 == 30 || i90 == 44) {
                        i28 = iCharAt12;
                        if ((iCharAt3 & 1) == 1) {
                            i33 = i100 + 1;
                            objArr2[((i79 / 3) * 2) + 1] = objArr[i100];
                        }
                    } else if (i90 == 50) {
                        int i101 = i76 + 1;
                        iArr[i76] = i79;
                        int i102 = (i79 / 3) * 2;
                        int i103 = i100 + 1;
                        objArr2[i102] = objArr[i100];
                        if ((iCharAt12 & 2048) != 0) {
                            i100 = i103 + 1;
                            objArr2[i102 + 1] = objArr[i103];
                        } else {
                            i100 = i103;
                        }
                        i76 = i101;
                        i28 = iCharAt12;
                    } else {
                        i28 = iCharAt12;
                    }
                    i100 = i33;
                }
                i29 = iCharAt3;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldS4);
                if ((i29 & 1) != 1 || i90 > 17) {
                    i30 = i27;
                    iObjectFieldOffset = 0;
                    i31 = 0;
                } else {
                    int i104 = i27 + 1;
                    int iCharAt14 = str.charAt(i27);
                    if (iCharAt14 >= 55296) {
                        int i105 = iCharAt14 & 8191;
                        int i106 = 13;
                        while (true) {
                            i30 = i104 + 1;
                            cCharAt9 = str.charAt(i104);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i105 |= (cCharAt9 & 8191) << i106;
                            i106 += 13;
                            i104 = i30;
                        }
                        iCharAt14 = i105 | (cCharAt9 << i106);
                    } else {
                        i30 = i104;
                    }
                    int i107 = (iCharAt14 / 32) + (i16 * 2);
                    Object obj3 = objArr[i107];
                    if (obj3 instanceof Field) {
                        fieldS = (Field) obj3;
                    } else {
                        fieldS = S(cls, (String) obj3);
                        objArr[i107] = fieldS;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldS);
                    i31 = iCharAt14 % 32;
                }
                if (i90 >= 18 && i90 <= 49) {
                    iArr[i77] = iObjectFieldOffset4;
                    i77++;
                }
                i74 = i100;
                i32 = iObjectFieldOffset4;
            }
            int i108 = i79 + 1;
            iArr3[i79] = iCharAt11;
            int i109 = i108 + 1;
            int i110 = i28;
            iArr3[i108] = ((i110 & 256) != 0 ? 268435456 : 0) | ((i110 & 512) != 0 ? 536870912 : 0) | (i90 << 20) | i32;
            i79 = i109 + 1;
            iArr3[i109] = iObjectFieldOffset | (i31 << 20);
            str = str;
            iArr3 = iArr3;
            iCharAt3 = i29;
            iCharAt = i91;
            length = i82;
            i14 = i25;
            z11 = z10;
            i80 = i30;
            i15 = i15;
        }
        return new t0<>(iArr3, objArr2, i15, iCharAt, c1Var.f3375a, z11, iArr, i14, i77, v0Var, g0Var, l1Var, qVar, l0Var);
    }

    public static long B(int i10) {
        return i10 & 1048575;
    }

    public static <T> boolean C(T t10, long j10) {
        return ((Boolean) p1.n(t10, j10)).booleanValue();
    }

    public static <T> double D(T t10, long j10) {
        return ((Double) p1.n(t10, j10)).doubleValue();
    }

    public static <T> float E(T t10, long j10) {
        return ((Float) p1.n(t10, j10)).floatValue();
    }

    public static <T> int F(T t10, long j10) {
        return ((Integer) p1.n(t10, j10)).intValue();
    }

    public static <T> long G(T t10, long j10) {
        return ((Long) p1.n(t10, j10)).longValue();
    }

    public static Field S(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbE = a4.g.e("Field ", str, " for ");
            sbE.append(cls.getName());
            sbE.append(" not found. Known fields are ");
            sbE.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbE.toString());
        }
    }

    public static int W(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    public static m1 p(Object obj) {
        x xVar = (x) obj;
        m1 m1Var = xVar.unknownFields;
        if (m1Var != m1.f3452f) {
            return m1Var;
        }
        m1 m1Var2 = new m1();
        xVar.unknownFields = m1Var2;
        return m1Var2;
    }

    public static List<?> u(Object obj, long j10) {
        return (List) p1.n(obj, j10);
    }

    public static t0 z(o0 o0Var, v0 v0Var, g0 g0Var, l1 l1Var, q qVar, l0 l0Var) {
        if (o0Var instanceof c1) {
            return A((c1) o0Var, v0Var, g0Var, l1Var, qVar, l0Var);
        }
        throw null;
    }

    public final <K, V> int H(T t10, byte[] bArr, int i10, int i11, int i12, long j10, e.a aVar) throws IOException {
        Unsafe unsafe = f3518s;
        Object objN = n(i12);
        Object object = unsafe.getObject(t10, j10);
        if (this.f3535q.c(object)) {
            Object objF = this.f3535q.f();
            this.f3535q.a(objF, object);
            unsafe.putObject(t10, j10, objF);
            object = objF;
        }
        this.f3535q.e(objN);
        this.f3535q.h(object);
        int iT = e.t(bArr, i10, aVar);
        int i13 = aVar.f3383a;
        if (i13 < 0 || i13 > i11 - iT) {
            throw a0.h();
        }
        throw null;
    }

    public final int I(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, e.a aVar) throws IOException {
        Unsafe unsafe = f3518s;
        long j11 = this.f3519a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Double.valueOf(Double.longBitsToDouble(e.c(bArr, i10))));
                int i18 = i10 + 8;
                unsafe.putInt(t10, j11, i13);
                return i18;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Float.valueOf(Float.intBitsToFloat(e.b(bArr, i10))));
                int i19 = i10 + 4;
                unsafe.putInt(t10, j11, i13);
                return i19;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iV = e.v(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Long.valueOf(aVar.f3384b));
                unsafe.putInt(t10, j11, i13);
                return iV;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iT = e.t(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Integer.valueOf(aVar.f3383a));
                unsafe.putInt(t10, j11, i13);
                return iT;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Long.valueOf(e.c(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(t10, j11, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Integer.valueOf(e.b(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(t10, j11, i13);
                return i21;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iV2 = e.v(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Boolean.valueOf(aVar.f3384b != 0));
                unsafe.putInt(t10, j11, i13);
                return iV2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iT2 = e.t(bArr, i10, aVar);
                int i22 = aVar.f3383a;
                if (i22 == 0) {
                    unsafe.putObject(t10, j10, "");
                } else {
                    if ((i15 & 536870912) != 0 && !q1.e(bArr, iT2, iT2 + i22)) {
                        throw a0.c();
                    }
                    unsafe.putObject(t10, j10, new String(bArr, iT2, i22, z.f3564a));
                    iT2 += i22;
                }
                unsafe.putInt(t10, j11, i13);
                return iT2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iE = e.e(o(i17), bArr, i10, i11, aVar);
                Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object == null) {
                    unsafe.putObject(t10, j10, aVar.f3385c);
                } else {
                    unsafe.putObject(t10, j10, z.c(object, aVar.f3385c));
                }
                unsafe.putInt(t10, j11, i13);
                return iE;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iA = e.a(bArr, i10, aVar);
                unsafe.putObject(t10, j10, aVar.f3385c);
                unsafe.putInt(t10, j11, i13);
                return iA;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iT3 = e.t(bArr, i10, aVar);
                int i23 = aVar.f3383a;
                z.b bVarM = m(i17);
                if (bVarM == null || bVarM.a()) {
                    unsafe.putObject(t10, j10, Integer.valueOf(i23));
                    unsafe.putInt(t10, j11, i13);
                } else {
                    p(t10).b(i12, Long.valueOf(i23));
                }
                return iT3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iT4 = e.t(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Integer.valueOf(j.b(aVar.f3383a)));
                unsafe.putInt(t10, j11, i13);
                return iT4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iV3 = e.v(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Long.valueOf(j.c(aVar.f3384b)));
                unsafe.putInt(t10, j11, i13);
                return iV3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iD = e.d(o(i17), bArr, i10, i11, (i12 & (-8)) | 4, aVar);
                Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(t10, j10, aVar.f3385c);
                } else {
                    unsafe.putObject(t10, j10, z.c(object2, aVar.f3385c));
                }
                unsafe.putInt(t10, j11, i13);
                return iD;
            default:
                return i10;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12601. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int J(T r30, byte[] r31, int r32, int r33, int r34, b7.e.a r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b7.t0.J(java.lang.Object, byte[], int, int, int, b7.e$a):int");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0202  */
    /* JADX WARN: Code duplicated, block: B:105:0x021c  */
    /* JADX WARN: Code duplicated, block: B:117:0x006f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x00db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x010a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x011a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x014c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x015e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0208 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x006d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0088  */
    /* JADX WARN: Code duplicated, block: B:30:0x009b  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:56:0x0106  */
    /* JADX WARN: Code duplicated, block: B:60:0x0117  */
    /* JADX WARN: Code duplicated, block: B:63:0x0127  */
    /* JADX WARN: Code duplicated, block: B:66:0x0135  */
    /* JADX WARN: Code duplicated, block: B:70:0x0147  */
    /* JADX WARN: Code duplicated, block: B:73:0x015a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0171  */
    /* JADX WARN: Code duplicated, block: B:81:0x0175 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0183  */
    /* JADX WARN: Code duplicated, block: B:86:0x0189  */
    /* JADX WARN: Code duplicated, block: B:87:0x018c  */
    /* JADX WARN: Code duplicated, block: B:95:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:98:0x01ef  */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0236, code lost:
    
        if (r0 != r15) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0239, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ec, code lost:
    
        if (r0 != r15) goto L110;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0068. Please report as an issue. */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0067, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int K(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        int i12;
        int iS;
        int iM;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe;
        int i16;
        int i17;
        int i18;
        int i19;
        long j10;
        int i20;
        z.c cVarB;
        int i21;
        int size;
        int i22;
        int i23;
        int iV;
        Object object;
        t0<T> t0Var = this;
        T t11 = t10;
        byte[] bArr2 = bArr;
        int i24 = i11;
        e.a aVar2 = aVar;
        Unsafe unsafe2 = f3518s;
        int i25 = -1;
        int iR = i10;
        int i26 = -1;
        int i27 = 0;
        while (iR < i24) {
            int i28 = iR + 1;
            byte b10 = bArr2[iR];
            if (b10 < 0) {
                iS = e.s(b10, bArr2, i28, aVar2);
                i12 = aVar2.f3383a;
            } else {
                i12 = b10;
                iS = i28;
            }
            int i29 = i12 >>> 3;
            int i30 = i12 & 7;
            if (i29 > i26) {
                int i31 = i27 / 3;
                if (i29 < t0Var.f3521c || i29 > t0Var.f3522d) {
                    i13 = i25;
                } else {
                    iM = t0Var.V(i29, i31);
                }
                if (i13 == i25) {
                    i14 = i29;
                    i15 = iS;
                    unsafe = unsafe2;
                    i16 = i25;
                    i17 = 0;
                } else {
                    i18 = t0Var.f3519a[i13 + 1];
                    i19 = (267386880 & i18) >>> 20;
                    j10 = 1048575 & i18;
                    if (i19 <= 17) {
                        switch (i19) {
                            case 0:
                                i23 = i13;
                                if (i30 == 1) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    p1.t(t11, j10, Double.longBitsToDouble(e.c(bArr2, iS)));
                                    iR = iS + 8;
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 1:
                                i23 = i13;
                                if (i30 == 5) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    p1.u(t11, j10, Float.intBitsToFloat(e.b(bArr2, iS)));
                                    iR = iS + 4;
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 2:
                            case 3:
                                i23 = i13;
                                if (i30 == 0) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iV = e.v(bArr2, iS, aVar2);
                                    unsafe2.putLong(t10, j10, aVar2.f3384b);
                                    iR = iV;
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 4:
                            case 11:
                                i23 = i13;
                                if (i30 == 0) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, iS, aVar2);
                                    unsafe2.putInt(t11, j10, aVar2.f3383a);
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 5:
                            case 14:
                                if (i30 == 1) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    i23 = i13;
                                    unsafe2.putLong(t10, j10, e.c(bArr2, iS));
                                    iR = iS + 8;
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 6:
                            case 13:
                                if (i30 == 5) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    unsafe2.putInt(t11, j10, e.b(bArr2, iS));
                                    iR = iS + 4;
                                    i21 = i13;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 7:
                                if (i30 == 0) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    int iV2 = e.v(bArr2, iS, aVar2);
                                    p1.p(t11, j10, aVar2.f3384b != 0);
                                    iR = iV2;
                                    i21 = i13;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 8:
                                if (i30 == 2) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    if ((536870912 & i18) == 0) {
                                        iR = e.p(bArr2, iS, aVar2);
                                    } else {
                                        iR = e.q(bArr2, iS, aVar2);
                                    }
                                    unsafe2.putObject(t11, j10, aVar2.f3385c);
                                    i21 = i13;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 9:
                                if (i30 == 2) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iR = e.e(t0Var.o(i13), bArr2, iS, i24, aVar2);
                                    object = unsafe2.getObject(t11, j10);
                                    if (object == null) {
                                        unsafe2.putObject(t11, j10, aVar2.f3385c);
                                    } else {
                                        unsafe2.putObject(t11, j10, z.c(object, aVar2.f3385c));
                                    }
                                    i21 = i13;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 10:
                                if (i30 == 2) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iR = e.a(bArr2, iS, aVar2);
                                    unsafe2.putObject(t11, j10, aVar2.f3385c);
                                    i21 = i13;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 12:
                                i23 = i13;
                                if (i30 == 0) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, iS, aVar2);
                                    unsafe2.putInt(t11, j10, aVar2.f3383a);
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 15:
                                i23 = i13;
                                if (i30 == 0) {
                                    i17 = i23;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, iS, aVar2);
                                    unsafe2.putInt(t11, j10, j.b(aVar2.f3383a));
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            case 16:
                                if (i30 == 0) {
                                    i17 = i13;
                                    i14 = i29;
                                    i20 = iS;
                                    unsafe = unsafe2;
                                    i16 = -1;
                                } else {
                                    iV = e.v(bArr2, iS, aVar2);
                                    i23 = i13;
                                    unsafe2.putLong(t10, j10, j.c(aVar2.f3384b));
                                    iR = iV;
                                    i21 = i23;
                                    i26 = i29;
                                    i27 = i21;
                                    i25 = -1;
                                }
                                break;
                            default:
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                                break;
                        }
                    } else {
                        if (i19 == 27) {
                            i17 = i13;
                            if (i19 <= 49) {
                                i14 = i29;
                                int i32 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                                iR = L(t10, bArr, iS, i11, i12, i29, i30, i17, i18, i19, j10, aVar);
                            } else {
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                                if (i19 == 50) {
                                    iR = I(t10, bArr, i20, i11, i12, i14, i30, i18, i19, j10, i17, aVar);
                                } else if (i30 == 2) {
                                    H(t10, bArr, i20, i11, i17, j10, aVar);
                                    throw null;
                                }
                            }
                        } else if (i30 == 2) {
                            cVarB = (z.c) unsafe2.getObject(t11, j10);
                            if (!cVarB.f()) {
                                size = cVarB.size();
                                if (size == 0) {
                                    i22 = 10;
                                } else {
                                    i22 = size * 2;
                                }
                                cVarB = cVarB.b(i22);
                                unsafe2.putObject(t11, j10, cVarB);
                            }
                            i21 = i13;
                            iR = e.f(t0Var.o(i13), i12, bArr, iS, i11, cVarB, aVar);
                            i26 = i29;
                            i27 = i21;
                            i25 = -1;
                        } else {
                            i17 = i13;
                            i14 = i29;
                            i20 = iS;
                            unsafe = unsafe2;
                            i16 = -1;
                        }
                        i27 = i17;
                        t0Var = this;
                        t11 = t10;
                        bArr2 = bArr;
                        i24 = i11;
                        aVar2 = aVar;
                        unsafe2 = unsafe;
                        i26 = i14;
                        i25 = i16;
                    }
                    i15 = i20;
                }
                iR = e.r(i12, bArr, i15, i11, p(t10), aVar);
                i27 = i17;
                t0Var = this;
                t11 = t10;
                bArr2 = bArr;
                i24 = i11;
                aVar2 = aVar;
                unsafe2 = unsafe;
                i26 = i14;
                i25 = i16;
            } else {
                iM = t0Var.M(i29);
            }
            i13 = iM;
            if (i13 == i25) {
                i14 = i29;
                i15 = iS;
                unsafe = unsafe2;
                i16 = i25;
                i17 = 0;
            } else {
                i18 = t0Var.f3519a[i13 + 1];
                i19 = (267386880 & i18) >>> 20;
                j10 = 1048575 & i18;
                if (i19 <= 17) {
                    switch (i19) {
                        case 0:
                            i23 = i13;
                            if (i30 == 1) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                p1.t(t11, j10, Double.longBitsToDouble(e.c(bArr2, iS)));
                                iR = iS + 8;
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 1:
                            i23 = i13;
                            if (i30 == 5) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                p1.u(t11, j10, Float.intBitsToFloat(e.b(bArr2, iS)));
                                iR = iS + 4;
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            i23 = i13;
                            if (i30 == 0) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iV = e.v(bArr2, iS, aVar2);
                                unsafe2.putLong(t10, j10, aVar2.f3384b);
                                iR = iV;
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            i23 = i13;
                            if (i30 == 0) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, iS, aVar2);
                                unsafe2.putInt(t11, j10, aVar2.f3383a);
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            if (i30 == 1) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                i23 = i13;
                                unsafe2.putLong(t10, j10, e.c(bArr2, iS));
                                iR = iS + 8;
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            if (i30 == 5) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                unsafe2.putInt(t11, j10, e.b(bArr2, iS));
                                iR = iS + 4;
                                i21 = i13;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 7:
                            if (i30 == 0) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                int iV3 = e.v(bArr2, iS, aVar2);
                                p1.p(t11, j10, aVar2.f3384b != 0);
                                iR = iV3;
                                i21 = i13;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 8:
                            if (i30 == 2) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                if ((536870912 & i18) == 0) {
                                    iR = e.p(bArr2, iS, aVar2);
                                } else {
                                    iR = e.q(bArr2, iS, aVar2);
                                }
                                unsafe2.putObject(t11, j10, aVar2.f3385c);
                                i21 = i13;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 9:
                            if (i30 == 2) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iR = e.e(t0Var.o(i13), bArr2, iS, i24, aVar2);
                                object = unsafe2.getObject(t11, j10);
                                if (object == null) {
                                    unsafe2.putObject(t11, j10, aVar2.f3385c);
                                } else {
                                    unsafe2.putObject(t11, j10, z.c(object, aVar2.f3385c));
                                }
                                i21 = i13;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 10:
                            if (i30 == 2) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iR = e.a(bArr2, iS, aVar2);
                                unsafe2.putObject(t11, j10, aVar2.f3385c);
                                i21 = i13;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 12:
                            i23 = i13;
                            if (i30 == 0) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, iS, aVar2);
                                unsafe2.putInt(t11, j10, aVar2.f3383a);
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 15:
                            i23 = i13;
                            if (i30 == 0) {
                                i17 = i23;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, iS, aVar2);
                                unsafe2.putInt(t11, j10, j.b(aVar2.f3383a));
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        case 16:
                            if (i30 == 0) {
                                i17 = i13;
                                i14 = i29;
                                i20 = iS;
                                unsafe = unsafe2;
                                i16 = -1;
                            } else {
                                iV = e.v(bArr2, iS, aVar2);
                                i23 = i13;
                                unsafe2.putLong(t10, j10, j.c(aVar2.f3384b));
                                iR = iV;
                                i21 = i23;
                                i26 = i29;
                                i27 = i21;
                                i25 = -1;
                            }
                            break;
                        default:
                            i17 = i13;
                            i14 = i29;
                            i20 = iS;
                            unsafe = unsafe2;
                            i16 = -1;
                            break;
                    }
                } else {
                    if (i19 == 27) {
                        i17 = i13;
                        if (i19 <= 49) {
                            i14 = i29;
                            int i33 = iS;
                            unsafe = unsafe2;
                            i16 = -1;
                            iR = L(t10, bArr, iS, i11, i12, i29, i30, i17, i18, i19, j10, aVar);
                        } else {
                            i14 = i29;
                            i20 = iS;
                            unsafe = unsafe2;
                            i16 = -1;
                            if (i19 == 50) {
                                iR = I(t10, bArr, i20, i11, i12, i14, i30, i18, i19, j10, i17, aVar);
                            } else if (i30 == 2) {
                                H(t10, bArr, i20, i11, i17, j10, aVar);
                                throw null;
                            }
                        }
                    } else if (i30 == 2) {
                        cVarB = (z.c) unsafe2.getObject(t11, j10);
                        if (!cVarB.f()) {
                            size = cVarB.size();
                            if (size == 0) {
                                i22 = 10;
                            } else {
                                i22 = size * 2;
                            }
                            cVarB = cVarB.b(i22);
                            unsafe2.putObject(t11, j10, cVarB);
                        }
                        i21 = i13;
                        iR = e.f(t0Var.o(i13), i12, bArr, iS, i11, cVarB, aVar);
                        i26 = i29;
                        i27 = i21;
                        i25 = -1;
                    } else {
                        i17 = i13;
                        i14 = i29;
                        i20 = iS;
                        unsafe = unsafe2;
                        i16 = -1;
                    }
                    i27 = i17;
                    t0Var = this;
                    t11 = t10;
                    bArr2 = bArr;
                    i24 = i11;
                    aVar2 = aVar;
                    unsafe2 = unsafe;
                    i26 = i14;
                    i25 = i16;
                }
                i15 = i20;
            }
            iR = e.r(i12, bArr, i15, i11, p(t10), aVar);
            i27 = i17;
            t0Var = this;
            t11 = t10;
            bArr2 = bArr;
            i24 = i11;
            aVar2 = aVar;
            unsafe2 = unsafe;
            i26 = i14;
            i25 = i16;
        }
        if (iR == i24) {
            return iR;
        }
        throw a0.g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int L(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, e.a aVar) throws IOException {
        int iU;
        int iT = i10;
        Unsafe unsafe = f3518s;
        z.c cVarB = (z.c) unsafe.getObject(t10, j11);
        if (!cVarB.f()) {
            int size = cVarB.size();
            cVarB = cVarB.b(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, cVarB);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return e.h(bArr, iT, cVarB, aVar);
                }
                if (i14 == 1) {
                    n nVar = (n) cVarB;
                    nVar.k(Double.longBitsToDouble(e.c(bArr, i10)));
                    while (true) {
                        int i17 = iT + 8;
                        if (i17 >= i11) {
                            return i17;
                        }
                        iT = e.t(bArr, i17, aVar);
                        if (i12 != aVar.f3383a) {
                            return i17;
                        }
                        nVar.k(Double.longBitsToDouble(e.c(bArr, iT)));
                    }
                }
                break;
            case 19:
            case 36:
                if (i14 == 2) {
                    return e.k(bArr, iT, cVarB, aVar);
                }
                if (i14 == 5) {
                    v vVar = (v) cVarB;
                    vVar.k(Float.intBitsToFloat(e.b(bArr, i10)));
                    while (true) {
                        int i18 = iT + 4;
                        if (i18 >= i11) {
                            return i18;
                        }
                        iT = e.t(bArr, i18, aVar);
                        if (i12 != aVar.f3383a) {
                            return i18;
                        }
                        vVar.k(Float.intBitsToFloat(e.b(bArr, iT)));
                    }
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return e.o(bArr, iT, cVarB, aVar);
                }
                if (i14 == 0) {
                    h0 h0Var = (h0) cVarB;
                    int iV = e.v(bArr, iT, aVar);
                    h0Var.k(aVar.f3384b);
                    while (iV < i11) {
                        int iT2 = e.t(bArr, iV, aVar);
                        if (i12 != aVar.f3383a) {
                            return iV;
                        }
                        iV = e.v(bArr, iT2, aVar);
                        h0Var.k(aVar.f3384b);
                    }
                    return iV;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return e.n(bArr, iT, cVarB, aVar);
                }
                if (i14 == 0) {
                    return e.u(i12, bArr, i10, i11, cVarB, aVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return e.j(bArr, iT, cVarB, aVar);
                }
                if (i14 == 1) {
                    h0 h0Var2 = (h0) cVarB;
                    h0Var2.k(e.c(bArr, i10));
                    while (true) {
                        int i19 = iT + 8;
                        if (i19 >= i11) {
                            return i19;
                        }
                        iT = e.t(bArr, i19, aVar);
                        if (i12 != aVar.f3383a) {
                            return i19;
                        }
                        h0Var2.k(e.c(bArr, iT));
                    }
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return e.i(bArr, iT, cVarB, aVar);
                }
                if (i14 == 5) {
                    y yVar = (y) cVarB;
                    yVar.k(e.b(bArr, i10));
                    while (true) {
                        int i20 = iT + 4;
                        if (i20 >= i11) {
                            return i20;
                        }
                        iT = e.t(bArr, i20, aVar);
                        if (i12 != aVar.f3383a) {
                            return i20;
                        }
                        yVar.k(e.b(bArr, iT));
                    }
                }
                break;
            case 25:
            case 42:
                if (i14 == 2) {
                    return e.g(bArr, iT, cVarB, aVar);
                }
                if (i14 == 0) {
                    f fVar = (f) cVarB;
                    int iV2 = e.v(bArr, iT, aVar);
                    fVar.k(aVar.f3384b != 0);
                    while (iV2 < i11) {
                        int iT3 = e.t(bArr, iV2, aVar);
                        if (i12 != aVar.f3383a) {
                            return iV2;
                        }
                        iV2 = e.v(bArr, iT3, aVar);
                        fVar.k(aVar.f3384b != 0);
                    }
                    return iV2;
                }
                break;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        int iT4 = e.t(bArr, iT, aVar);
                        int i21 = aVar.f3383a;
                        if (i21 < 0) {
                            throw a0.f();
                        }
                        if (i21 == 0) {
                            cVarB.add("");
                        } else {
                            cVarB.add(new String(bArr, iT4, i21, z.f3564a));
                            iT4 += i21;
                        }
                        while (iT4 < i11) {
                            int iT5 = e.t(bArr, iT4, aVar);
                            if (i12 != aVar.f3383a) {
                                return iT4;
                            }
                            iT4 = e.t(bArr, iT5, aVar);
                            int i22 = aVar.f3383a;
                            if (i22 < 0) {
                                throw a0.f();
                            }
                            if (i22 == 0) {
                                cVarB.add("");
                            } else {
                                cVarB.add(new String(bArr, iT4, i22, z.f3564a));
                                iT4 += i22;
                            }
                        }
                        return iT4;
                    }
                    int iT6 = e.t(bArr, iT, aVar);
                    int i23 = aVar.f3383a;
                    if (i23 < 0) {
                        throw a0.f();
                    }
                    if (i23 == 0) {
                        cVarB.add("");
                    } else {
                        int i24 = iT6 + i23;
                        if (!q1.e(bArr, iT6, i24)) {
                            throw a0.c();
                        }
                        cVarB.add(new String(bArr, iT6, i23, z.f3564a));
                        iT6 = i24;
                    }
                    while (iT6 < i11) {
                        int iT7 = e.t(bArr, iT6, aVar);
                        if (i12 != aVar.f3383a) {
                            return iT6;
                        }
                        iT6 = e.t(bArr, iT7, aVar);
                        int i25 = aVar.f3383a;
                        if (i25 < 0) {
                            throw a0.f();
                        }
                        if (i25 == 0) {
                            cVarB.add("");
                        } else {
                            int i26 = iT6 + i25;
                            if (!q1.e(bArr, iT6, i26)) {
                                throw a0.c();
                            }
                            cVarB.add(new String(bArr, iT6, i25, z.f3564a));
                            iT6 = i26;
                        }
                    }
                    return iT6;
                }
                break;
            case 27:
                if (i14 == 2) {
                    return e.f(o(i15), i12, bArr, i10, i11, cVarB, aVar);
                }
                break;
            case 28:
                if (i14 == 2) {
                    int iT8 = e.t(bArr, iT, aVar);
                    int i27 = aVar.f3383a;
                    if (i27 < 0) {
                        throw a0.f();
                    }
                    if (i27 > bArr.length - iT8) {
                        throw a0.h();
                    }
                    if (i27 == 0) {
                        cVarB.add(i.f3419i);
                    } else {
                        cVarB.add(i.l(bArr, iT8, i27));
                        iT8 += i27;
                    }
                    while (iT8 < i11) {
                        int iT9 = e.t(bArr, iT8, aVar);
                        if (i12 != aVar.f3383a) {
                            return iT8;
                        }
                        iT8 = e.t(bArr, iT9, aVar);
                        int i28 = aVar.f3383a;
                        if (i28 < 0) {
                            throw a0.f();
                        }
                        if (i28 > bArr.length - iT8) {
                            throw a0.h();
                        }
                        if (i28 == 0) {
                            cVarB.add(i.f3419i);
                        } else {
                            cVarB.add(i.l(bArr, iT8, i28));
                            iT8 += i28;
                        }
                    }
                    return iT8;
                }
                break;
            case 30:
            case 44:
                if (i14 == 2) {
                    iU = e.n(bArr, iT, cVarB, aVar);
                } else if (i14 == 0) {
                    iU = e.u(i12, bArr, i10, i11, cVarB, aVar);
                }
                x xVar = (x) t10;
                m1 m1Var = xVar.unknownFields;
                if (m1Var == m1.f3452f) {
                    m1Var = null;
                }
                m1 m1Var2 = (m1) f1.y(i13, cVarB, m(i15), m1Var, this.f3533o);
                if (m1Var2 != null) {
                    xVar.unknownFields = m1Var2;
                }
                return iU;
            case 33:
            case 47:
                if (i14 == 2) {
                    return e.l(bArr, iT, cVarB, aVar);
                }
                if (i14 == 0) {
                    y yVar2 = (y) cVarB;
                    int iT10 = e.t(bArr, iT, aVar);
                    yVar2.k(j.b(aVar.f3383a));
                    while (iT10 < i11) {
                        int iT11 = e.t(bArr, iT10, aVar);
                        if (i12 != aVar.f3383a) {
                            return iT10;
                        }
                        iT10 = e.t(bArr, iT11, aVar);
                        yVar2.k(j.b(aVar.f3383a));
                    }
                    return iT10;
                }
                break;
            case 34:
            case 48:
                if (i14 == 2) {
                    return e.m(bArr, iT, cVarB, aVar);
                }
                if (i14 == 0) {
                    h0 h0Var3 = (h0) cVarB;
                    int iV3 = e.v(bArr, iT, aVar);
                    h0Var3.k(j.c(aVar.f3384b));
                    while (iV3 < i11) {
                        int iT12 = e.t(bArr, iV3, aVar);
                        if (i12 != aVar.f3383a) {
                            return iV3;
                        }
                        iV3 = e.v(bArr, iT12, aVar);
                        h0Var3.k(j.c(aVar.f3384b));
                    }
                    return iV3;
                }
                break;
            case 49:
                if (i14 == 3) {
                    e1 e1VarO = o(i15);
                    int i29 = (i12 & (-8)) | 4;
                    iT = e.d(e1VarO, bArr, i10, i11, i29, aVar);
                    cVarB.add(aVar.f3385c);
                    while (iT < i11) {
                        int iT13 = e.t(bArr, iT, aVar);
                        if (i12 == aVar.f3383a) {
                            iT = e.d(e1VarO, bArr, iT13, i11, i29, aVar);
                            cVarB.add(aVar.f3385c);
                        }
                    }
                }
                break;
        }
        return iT;
    }

    public final int M(int i10) {
        if (i10 < this.f3521c || i10 > this.f3522d) {
            return -1;
        }
        return V(i10, 0);
    }

    public final int N(int i10) {
        return this.f3519a[i10 + 2];
    }

    public final <E> void O(Object obj, long j10, d1 d1Var, e1<E> e1Var, p pVar) throws IOException {
        d1Var.F(this.f3532n.c(obj, j10), e1Var, pVar);
    }

    public final <E> void P(Object obj, int i10, d1 d1Var, e1<E> e1Var, p pVar) throws IOException {
        d1Var.g(this.f3532n.c(obj, i10 & 1048575), e1Var, pVar);
    }

    public final void Q(Object obj, int i10, d1 d1Var) throws IOException {
        if ((536870912 & i10) != 0) {
            p1.x(obj, i10 & 1048575, d1Var.K());
        } else if (this.f3525g) {
            p1.x(obj, i10 & 1048575, d1Var.o());
        } else {
            p1.x(obj, i10 & 1048575, d1Var.w());
        }
    }

    public final void R(Object obj, int i10, d1 d1Var) throws IOException {
        if ((536870912 & i10) != 0) {
            d1Var.v(this.f3532n.c(obj, i10 & 1048575));
        } else {
            d1Var.s(this.f3532n.c(obj, i10 & 1048575));
        }
    }

    public final void T(T t10, int i10) {
        if (this.f3526h) {
            return;
        }
        int iN = N(i10);
        long j10 = iN & 1048575;
        p1.v(t10, j10, p1.l(t10, j10) | (1 << (iN >>> 20)));
    }

    public final void U(T t10, int i10, int i11) {
        p1.v(t10, N(i11) & 1048575, i10);
    }

    public final int V(int i10, int i11) {
        int length = (this.f3519a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f3519a[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    public final int X(int i10) {
        return this.f3519a[i10 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:101:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:102:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:103:0x0306  */
    /* JADX WARN: Code duplicated, block: B:104:0x0316  */
    /* JADX WARN: Code duplicated, block: B:105:0x0326  */
    /* JADX WARN: Code duplicated, block: B:106:0x0335  */
    /* JADX WARN: Code duplicated, block: B:107:0x0348  */
    /* JADX WARN: Code duplicated, block: B:108:0x0357  */
    /* JADX WARN: Code duplicated, block: B:109:0x0367  */
    /* JADX WARN: Code duplicated, block: B:110:0x0377  */
    /* JADX WARN: Code duplicated, block: B:111:0x0387  */
    /* JADX WARN: Code duplicated, block: B:112:0x0397  */
    /* JADX WARN: Code duplicated, block: B:113:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:114:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:115:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:116:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:118:0x03db  */
    /* JADX WARN: Code duplicated, block: B:119:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:121:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:122:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:124:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:125:0x040b  */
    /* JADX WARN: Code duplicated, block: B:127:0x040f  */
    /* JADX WARN: Code duplicated, block: B:128:0x041b  */
    /* JADX WARN: Code duplicated, block: B:130:0x041f  */
    /* JADX WARN: Code duplicated, block: B:131:0x042b  */
    /* JADX WARN: Code duplicated, block: B:133:0x042f  */
    /* JADX WARN: Code duplicated, block: B:134:0x043b  */
    /* JADX WARN: Code duplicated, block: B:136:0x043f  */
    /* JADX WARN: Code duplicated, block: B:137:0x044b  */
    /* JADX WARN: Code duplicated, block: B:139:0x044f  */
    /* JADX WARN: Code duplicated, block: B:140:0x045d  */
    /* JADX WARN: Code duplicated, block: B:142:0x0461  */
    /* JADX WARN: Code duplicated, block: B:143:0x0471  */
    /* JADX WARN: Code duplicated, block: B:145:0x0475  */
    /* JADX WARN: Code duplicated, block: B:146:0x047e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0482  */
    /* JADX WARN: Code duplicated, block: B:149:0x048d  */
    /* JADX WARN: Code duplicated, block: B:151:0x0491  */
    /* JADX WARN: Code duplicated, block: B:152:0x049c  */
    /* JADX WARN: Code duplicated, block: B:154:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:155:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:157:0x04af  */
    /* JADX WARN: Code duplicated, block: B:158:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:160:0x04be  */
    /* JADX WARN: Code duplicated, block: B:161:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:163:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:164:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:166:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:167:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:169:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:195:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0086  */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:32:0x009b  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:50:0x0101  */
    /* JADX WARN: Code duplicated, block: B:52:0x0107  */
    /* JADX WARN: Code duplicated, block: B:53:0x0115  */
    /* JADX WARN: Code duplicated, block: B:55:0x011b  */
    /* JADX WARN: Code duplicated, block: B:56:0x012b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0131  */
    /* JADX WARN: Code duplicated, block: B:59:0x013a  */
    /* JADX WARN: Code duplicated, block: B:61:0x0140  */
    /* JADX WARN: Code duplicated, block: B:62:0x014c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0152  */
    /* JADX WARN: Code duplicated, block: B:65:0x015e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0164  */
    /* JADX WARN: Code duplicated, block: B:68:0x0170  */
    /* JADX WARN: Code duplicated, block: B:70:0x0176  */
    /* JADX WARN: Code duplicated, block: B:71:0x0182  */
    /* JADX WARN: Code duplicated, block: B:73:0x0188  */
    /* JADX WARN: Code duplicated, block: B:74:0x0194  */
    /* JADX WARN: Code duplicated, block: B:76:0x019a  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01be  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:87:0x0206  */
    /* JADX WARN: Code duplicated, block: B:88:0x0216  */
    /* JADX WARN: Code duplicated, block: B:89:0x0226  */
    /* JADX WARN: Code duplicated, block: B:90:0x0236  */
    /* JADX WARN: Code duplicated, block: B:91:0x0246  */
    /* JADX WARN: Code duplicated, block: B:92:0x0256  */
    /* JADX WARN: Code duplicated, block: B:93:0x0266  */
    /* JADX WARN: Code duplicated, block: B:94:0x0276  */
    /* JADX WARN: Code duplicated, block: B:95:0x0286  */
    /* JADX WARN: Code duplicated, block: B:96:0x0296  */
    /* JADX WARN: Code duplicated, block: B:97:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:98:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:99:0x02c6  */
    public final void Y(T t10, t1 t1Var) throws IOException {
        Iterator itK;
        Map.Entry entry;
        int i10;
        long j10;
        int i11;
        if (this.f3524f) {
            t<T> tVarC = this.f3534p.c(t10);
            if (tVarC.h()) {
                itK = null;
                entry = null;
            } else {
                itK = tVarC.k();
                entry = (Map.Entry) itK.next();
            }
        } else {
            itK = null;
            entry = null;
        }
        int i12 = -1;
        int length = this.f3519a.length;
        Unsafe unsafe = f3518s;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length) {
            int iX = X(i13);
            int[] iArr = this.f3519a;
            int i15 = iArr[i13];
            int i16 = (267386880 & iX) >>> 20;
            if (this.f3526h || i16 > 17) {
                i10 = 0;
            } else {
                int i17 = iArr[i13 + 2];
                int i18 = i17 & 1048575;
                if (i18 != i12) {
                    i14 = unsafe.getInt(t10, i18);
                    i12 = i18;
                }
                i10 = 1 << (i17 >>> 20);
            }
            while (entry != null) {
                this.f3534p.a(entry);
                if (i15 >= 0) {
                    this.f3534p.j(entry);
                    entry = itK.hasNext() ? (Map.Entry) itK.next() : null;
                } else {
                    j10 = iX & 1048575;
                    i11 = i13;
                    switch (i16) {
                        case 0:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).c(i15, p1.j(t10, j10));
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 1:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).g(i15, p1.k(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 2:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).j(i15, unsafe.getLong(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 3:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).r(i15, unsafe.getLong(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 4:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).i(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 5:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).f(i15, unsafe.getLong(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 6:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).e(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 7:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).a(i15, p1.h(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 8:
                            if ((i10 & i14) != 0) {
                                a0(i15, unsafe.getObject(t10, j10), t1Var);
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 9:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).k(i15, unsafe.getObject(t10, j10), o(i11));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 10:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).b(i15, (i) unsafe.getObject(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 11:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).q(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 12:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).d(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 13:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).m(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 14:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).n(i15, unsafe.getLong(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 15:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).o(i15, unsafe.getInt(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 16:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).p(i15, unsafe.getLong(t10, j10));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 17:
                            if ((i10 & i14) != 0) {
                                ((m) t1Var).h(i15, unsafe.getObject(t10, j10), o(i11));
                            } else {
                                continue;
                                continue;
                            }
                            i13 = i11 + 3;
                            break;
                        case 18:
                            f1.F(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 19:
                            f1.J(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 20:
                            f1.M(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 21:
                            f1.U(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 22:
                            f1.L(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 23:
                            f1.I(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 24:
                            f1.H(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 25:
                            f1.D(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 26:
                            f1.S(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var);
                            break;
                        case 27:
                            f1.N(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, o(i11));
                            break;
                        case 28:
                            f1.E(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var);
                            break;
                        case 29:
                            f1.T(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 30:
                            f1.G(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 31:
                            f1.O(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 32:
                            f1.P(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 33:
                            f1.Q(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 34:
                            f1.R(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                            continue;
                            continue;
                            i13 = i11 + 3;
                            break;
                        case 35:
                            f1.F(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 36:
                            f1.J(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 37:
                            f1.M(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 38:
                            f1.U(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 39:
                            f1.L(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 40:
                            f1.I(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 41:
                            f1.H(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 42:
                            f1.D(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 43:
                            f1.T(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 44:
                            f1.G(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 45:
                            f1.O(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 46:
                            f1.P(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 47:
                            f1.Q(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 48:
                            f1.R(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                            break;
                        case 49:
                            f1.K(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, o(i11));
                            break;
                        case 50:
                            Z(t1Var, i15, unsafe.getObject(t10, j10), i11);
                            break;
                        case 51:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).c(i15, D(t10, j10));
                            }
                            break;
                        case 52:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).g(i15, E(t10, j10));
                            }
                            break;
                        case 53:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).j(i15, G(t10, j10));
                            }
                            break;
                        case 54:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).r(i15, G(t10, j10));
                            }
                            break;
                        case 55:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).i(i15, F(t10, j10));
                            }
                            break;
                        case 56:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).f(i15, G(t10, j10));
                            }
                            break;
                        case 57:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).e(i15, F(t10, j10));
                            }
                            break;
                        case 58:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).a(i15, C(t10, j10));
                            }
                            break;
                        case 59:
                            if (t(t10, i15, i11)) {
                                a0(i15, unsafe.getObject(t10, j10), t1Var);
                            }
                            break;
                        case 60:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).k(i15, unsafe.getObject(t10, j10), o(i11));
                            }
                            break;
                        case 61:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).b(i15, (i) unsafe.getObject(t10, j10));
                            }
                            break;
                        case 62:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).q(i15, F(t10, j10));
                            }
                            break;
                        case 63:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).d(i15, F(t10, j10));
                            }
                            break;
                        case 64:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).m(i15, F(t10, j10));
                            }
                            break;
                        case 65:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).n(i15, G(t10, j10));
                            }
                            break;
                        case 66:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).o(i15, F(t10, j10));
                            }
                            break;
                        case 67:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).p(i15, G(t10, j10));
                            }
                            break;
                        case 68:
                            if (t(t10, i15, i11)) {
                                ((m) t1Var).h(i15, unsafe.getObject(t10, j10), o(i11));
                            }
                            break;
                    }
                    i13 = i11 + 3;
                }
            }
            j10 = iX & 1048575;
            i11 = i13;
            switch (i16) {
                case 0:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).c(i15, p1.j(t10, j10));
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 1:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).g(i15, p1.k(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 2:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).j(i15, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 3:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).r(i15, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 4:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).i(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 5:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).f(i15, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 6:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).e(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 7:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).a(i15, p1.h(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 8:
                    if ((i10 & i14) != 0) {
                        a0(i15, unsafe.getObject(t10, j10), t1Var);
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 9:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).k(i15, unsafe.getObject(t10, j10), o(i11));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 10:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).b(i15, (i) unsafe.getObject(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 11:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).q(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 12:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).d(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 13:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).m(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 14:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).n(i15, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 15:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).o(i15, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 16:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).p(i15, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 17:
                    if ((i10 & i14) != 0) {
                        ((m) t1Var).h(i15, unsafe.getObject(t10, j10), o(i11));
                    } else {
                        continue;
                        continue;
                    }
                    i13 = i11 + 3;
                    break;
                case 18:
                    f1.F(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 19:
                    f1.J(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 20:
                    f1.M(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 21:
                    f1.U(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 22:
                    f1.L(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 23:
                    f1.I(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 24:
                    f1.H(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 25:
                    f1.D(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 26:
                    f1.S(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var);
                    break;
                case 27:
                    f1.N(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, o(i11));
                    break;
                case 28:
                    f1.E(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var);
                    break;
                case 29:
                    f1.T(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 30:
                    f1.G(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 31:
                    f1.O(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 32:
                    f1.P(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 33:
                    f1.Q(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 34:
                    f1.R(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, false);
                    continue;
                    continue;
                    i13 = i11 + 3;
                    break;
                case 35:
                    f1.F(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 36:
                    f1.J(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 37:
                    f1.M(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 38:
                    f1.U(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 39:
                    f1.L(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 40:
                    f1.I(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 41:
                    f1.H(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 42:
                    f1.D(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 43:
                    f1.T(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 44:
                    f1.G(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 45:
                    f1.O(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 46:
                    f1.P(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 47:
                    f1.Q(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 48:
                    f1.R(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, true);
                    break;
                case 49:
                    f1.K(this.f3519a[i11], (List) unsafe.getObject(t10, j10), t1Var, o(i11));
                    break;
                case 50:
                    Z(t1Var, i15, unsafe.getObject(t10, j10), i11);
                    break;
                case 51:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).c(i15, D(t10, j10));
                    }
                    break;
                case 52:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).g(i15, E(t10, j10));
                    }
                    break;
                case 53:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).j(i15, G(t10, j10));
                    }
                    break;
                case 54:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).r(i15, G(t10, j10));
                    }
                    break;
                case 55:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).i(i15, F(t10, j10));
                    }
                    break;
                case 56:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).f(i15, G(t10, j10));
                    }
                    break;
                case 57:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).e(i15, F(t10, j10));
                    }
                    break;
                case 58:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).a(i15, C(t10, j10));
                    }
                    break;
                case 59:
                    if (t(t10, i15, i11)) {
                        a0(i15, unsafe.getObject(t10, j10), t1Var);
                    }
                    break;
                case 60:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).k(i15, unsafe.getObject(t10, j10), o(i11));
                    }
                    break;
                case 61:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).b(i15, (i) unsafe.getObject(t10, j10));
                    }
                    break;
                case 62:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).q(i15, F(t10, j10));
                    }
                    break;
                case 63:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).d(i15, F(t10, j10));
                    }
                    break;
                case 64:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).m(i15, F(t10, j10));
                    }
                    break;
                case 65:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).n(i15, G(t10, j10));
                    }
                    break;
                case 66:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).o(i15, F(t10, j10));
                    }
                    break;
                case 67:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).p(i15, G(t10, j10));
                    }
                    break;
                case 68:
                    if (t(t10, i15, i11)) {
                        ((m) t1Var).h(i15, unsafe.getObject(t10, j10), o(i11));
                    }
                    break;
            }
            i13 = i11 + 3;
        }
        while (entry != null) {
            this.f3534p.j(entry);
            entry = itK.hasNext() ? (Map.Entry) itK.next() : null;
        }
        b0(this.f3533o, t10, t1Var);
    }

    public final <K, V> void Z(t1 t1Var, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            this.f3535q.e(n(i11));
            Map<?, ?> mapG = this.f3535q.g(obj);
            m mVar = (m) t1Var;
            Objects.requireNonNull(mVar.f3451a);
            Iterator<Map.Entry<?, ?>> it = mapG.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                mVar.f3451a.P(i10, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    @Override // b7.e1
    public final void a(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f3519a.length; i10 += 3) {
            int iX = X(i10);
            long j10 = 1048575 & iX;
            int i11 = this.f3519a[i10];
            switch ((iX & 267386880) >>> 20) {
                case 0:
                    if (s(t11, i10)) {
                        p1.t(t10, j10, p1.j(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 1:
                    if (s(t11, i10)) {
                        p1.u(t10, j10, p1.k(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 2:
                    if (s(t11, i10)) {
                        p1.w(t10, j10, p1.m(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 3:
                    if (s(t11, i10)) {
                        p1.w(t10, j10, p1.m(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 4:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 5:
                    if (s(t11, i10)) {
                        p1.w(t10, j10, p1.m(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 6:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 7:
                    if (s(t11, i10)) {
                        p1.p(t10, j10, p1.h(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 8:
                    if (s(t11, i10)) {
                        p1.x(t10, j10, p1.n(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 9:
                    x(t10, t11, i10);
                    break;
                case 10:
                    if (s(t11, i10)) {
                        p1.x(t10, j10, p1.n(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 11:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 12:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 13:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 14:
                    if (s(t11, i10)) {
                        p1.w(t10, j10, p1.m(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 15:
                    if (s(t11, i10)) {
                        p1.v(t10, j10, p1.l(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 16:
                    if (s(t11, i10)) {
                        p1.w(t10, j10, p1.m(t11, j10));
                        T(t10, i10);
                    }
                    break;
                case 17:
                    x(t10, t11, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f3532n.b(t10, t11, j10);
                    break;
                case 50:
                    l0 l0Var = this.f3535q;
                    Class<?> cls = f1.f3390a;
                    p1.x(t10, j10, l0Var.a(p1.n(t10, j10), p1.n(t11, j10)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (t(t11, i11, i10)) {
                        p1.x(t10, j10, p1.n(t11, j10));
                        U(t10, i11, i10);
                    }
                    break;
                case 60:
                    y(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (t(t11, i11, i10)) {
                        p1.x(t10, j10, p1.n(t11, j10));
                        U(t10, i11, i10);
                    }
                    break;
                case 68:
                    y(t10, t11, i10);
                    break;
            }
        }
        l1<?, ?> l1Var = this.f3533o;
        Class<?> cls2 = f1.f3390a;
        l1Var.o(t10, l1Var.k(l1Var.g(t10), l1Var.g(t11)));
        if (this.f3524f) {
            f1.A(this.f3534p, t10, t11);
        }
    }

    public final void a0(int i10, Object obj, t1 t1Var) throws IOException {
        if (obj instanceof String) {
            ((m) t1Var).f3451a.O(i10, (String) obj);
        } else {
            ((m) t1Var).b(i10, (i) obj);
        }
    }

    @Override // b7.e1
    public final void b(T t10) {
        int i10;
        int i11 = this.f3529k;
        while (true) {
            i10 = this.f3530l;
            if (i11 >= i10) {
                break;
            }
            long jX = X(this.f3528j[i11]) & 1048575;
            Object objN = p1.n(t10, jX);
            if (objN != null) {
                p1.x(t10, jX, this.f3535q.d(objN));
            }
            i11++;
        }
        int length = this.f3528j.length;
        while (i10 < length) {
            this.f3532n.a(t10, this.f3528j[i10]);
            i10++;
        }
        this.f3533o.j(t10);
        if (this.f3524f) {
            this.f3534p.f(t10);
        }
    }

    public final <UT, UB> void b0(l1<UT, UB> l1Var, T t10, t1 t1Var) throws IOException {
        l1Var.s(l1Var.g(t10), t1Var);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d3 A[LOOP:1: B:54:0x00c1->B:59:0x00d3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // b7.e1
    public final boolean c(T t10) {
        int i10;
        List list;
        e1 e1VarO;
        int i11;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            boolean zS = true;
            if (i13 >= this.f3529k) {
                return !this.f3524f || this.f3534p.c(t10).i();
            }
            int i15 = this.f3528j[i13];
            int i16 = this.f3519a[i15];
            int iX = X(i15);
            if (this.f3526h) {
                i10 = 0;
            } else {
                int i17 = this.f3519a[i15 + 2];
                int i18 = i17 & 1048575;
                i10 = 1 << (i17 >>> 20);
                if (i18 != i12) {
                    i14 = f3518s.getInt(t10, i18);
                    i12 = i18;
                }
            }
            if ((268435456 & iX) != 0) {
                if (!(this.f3526h ? s(t10, i15) : (i14 & i10) != 0)) {
                    return false;
                }
            }
            int i19 = (267386880 & iX) >>> 20;
            if (i19 == 9 || i19 == 17) {
                if (this.f3526h) {
                    zS = s(t10, i15);
                } else if ((i14 & i10) == 0) {
                    zS = false;
                }
                if (zS && !o(i15).c(p1.n(t10, iX & 1048575))) {
                    return false;
                }
            } else if (i19 == 27) {
                list = (List) p1.n(t10, iX & 1048575);
                if (!list.isEmpty()) {
                    e1VarO = o(i15);
                    for (i11 = 0; i11 < list.size(); i11++) {
                        if (!e1VarO.c(list.get(i11))) {
                            zS = false;
                            break;
                        }
                    }
                }
                if (!zS) {
                    return false;
                }
            } else if (i19 == 60 || i19 == 68) {
                if (t(t10, i16, i15) && !o(i15).c(p1.n(t10, iX & 1048575))) {
                    return false;
                }
            } else if (i19 == 49) {
                list = (List) p1.n(t10, iX & 1048575);
                if (!list.isEmpty()) {
                    e1VarO = o(i15);
                    while (i11 < list.size()) {
                        if (!e1VarO.c(list.get(i11))) {
                            zS = false;
                            break;
                        }
                    }
                }
                if (!zS) {
                    return false;
                }
            } else if (i19 == 50 && !this.f3535q.g(p1.n(t10, iX & 1048575)).isEmpty()) {
                this.f3535q.e(n(i15));
                throw null;
            }
            i13++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    @Override // b7.e1
    public final boolean d(T t10, T t11) {
        int length = this.f3519a.length;
        int i10 = 0;
        while (true) {
            boolean zB = true;
            if (i10 >= length) {
                if (!this.f3533o.g(t10).equals(this.f3533o.g(t11))) {
                    return false;
                }
                if (this.f3524f) {
                    return this.f3534p.c(t10).equals(this.f3534p.c(t11));
                }
                return true;
            }
            int iX = X(i10);
            long j10 = iX & 1048575;
            switch ((iX & 267386880) >>> 20) {
                case 0:
                    if (!k(t10, t11, i10) || Double.doubleToLongBits(p1.j(t10, j10)) != Double.doubleToLongBits(p1.j(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 1:
                    if (!k(t10, t11, i10) || Float.floatToIntBits(p1.k(t10, j10)) != Float.floatToIntBits(p1.k(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 2:
                    if (!k(t10, t11, i10) || p1.m(t10, j10) != p1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 3:
                    if (!k(t10, t11, i10) || p1.m(t10, j10) != p1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 4:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 5:
                    if (!k(t10, t11, i10) || p1.m(t10, j10) != p1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 6:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 7:
                    if (!k(t10, t11, i10) || p1.h(t10, j10) != p1.h(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 8:
                    if (!k(t10, t11, i10) || !f1.B(p1.n(t10, j10), p1.n(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 9:
                    if (!k(t10, t11, i10) || !f1.B(p1.n(t10, j10), p1.n(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 10:
                    if (!k(t10, t11, i10) || !f1.B(p1.n(t10, j10), p1.n(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 11:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 12:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 13:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 14:
                    if (!k(t10, t11, i10) || p1.m(t10, j10) != p1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 15:
                    if (!k(t10, t11, i10) || p1.l(t10, j10) != p1.l(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 16:
                    if (!k(t10, t11, i10) || p1.m(t10, j10) != p1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 17:
                    if (!k(t10, t11, i10) || !f1.B(p1.n(t10, j10), p1.n(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zB = f1.B(p1.n(t10, j10), p1.n(t11, j10));
                    break;
                case 50:
                    zB = f1.B(p1.n(t10, j10), p1.n(t11, j10));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jN = N(i10) & 1048575;
                    if (!(p1.l(t10, jN) == p1.l(t11, jN)) || !f1.B(p1.n(t10, j10), p1.n(t11, j10))) {
                        zB = false;
                    }
                    break;
            }
            if (!zB) {
                return false;
            }
            i10 += 3;
        }
    }

    @Override // b7.e1
    public final int e(T t10) {
        return this.f3526h ? r(t10) : q(t10);
    }

    @Override // b7.e1
    public final T f() {
        return (T) this.f3531m.a(this.f3523e);
    }

    @Override // b7.e1
    public final int g(T t10) {
        int i10;
        int iB;
        int length = this.f3519a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iX = X(i12);
            int i13 = this.f3519a[i12];
            long j10 = 1048575 & iX;
            int iHashCode = 37;
            switch ((iX & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    iB = z.b(Double.doubleToLongBits(p1.j(t10, j10)));
                    i11 = iB + i10;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iB = Float.floatToIntBits(p1.k(t10, j10));
                    i11 = iB + i10;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iB = z.b(p1.m(t10, j10));
                    i11 = iB + i10;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iB = z.b(p1.m(t10, j10));
                    i11 = iB + i10;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iB = z.b(p1.m(t10, j10));
                    i11 = iB + i10;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iB = z.a(p1.h(t10, j10));
                    i11 = iB + i10;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iB = ((String) p1.n(t10, j10)).hashCode();
                    i11 = iB + i10;
                    break;
                case 9:
                    Object objN = p1.n(t10, j10);
                    if (objN != null) {
                        iHashCode = objN.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iB = p1.n(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iB = z.b(p1.m(t10, j10));
                    i11 = iB + i10;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iB = p1.l(t10, j10);
                    i11 = iB + i10;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iB = z.b(p1.m(t10, j10));
                    i11 = iB + i10;
                    break;
                case 17:
                    Object objN2 = p1.n(t10, j10);
                    if (objN2 != null) {
                        iHashCode = objN2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iB = p1.n(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iB = p1.n(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 51:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(Double.doubleToLongBits(D(t10, j10)));
                        i11 = iB + i10;
                    }
                    break;
                case 52:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = Float.floatToIntBits(E(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 53:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(G(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 54:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(G(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 55:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 56:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(G(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 57:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 58:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.a(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 59:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = ((String) p1.n(t10, j10)).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 60:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = p1.n(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 61:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = p1.n(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 62:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 63:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 64:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 65:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(G(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 66:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = F(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 67:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = z.b(G(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 68:
                    if (t(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = p1.n(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
            }
        }
        int iHashCode2 = this.f3533o.g(t10).hashCode() + (i11 * 53);
        return this.f3524f ? (iHashCode2 * 53) + this.f3534p.c(t10).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0353  */
    /* JADX WARN: Code duplicated, block: B:101:0x0368  */
    /* JADX WARN: Code duplicated, block: B:102:0x0379  */
    /* JADX WARN: Code duplicated, block: B:103:0x038a  */
    /* JADX WARN: Code duplicated, block: B:104:0x039b  */
    /* JADX WARN: Code duplicated, block: B:105:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:106:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:107:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:108:0x03df  */
    /* JADX WARN: Code duplicated, block: B:109:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:110:0x0401  */
    /* JADX WARN: Code duplicated, block: B:112:0x0407  */
    /* JADX WARN: Code duplicated, block: B:113:0x0419  */
    /* JADX WARN: Code duplicated, block: B:115:0x041f  */
    /* JADX WARN: Code duplicated, block: B:116:0x042d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0433  */
    /* JADX WARN: Code duplicated, block: B:119:0x0441  */
    /* JADX WARN: Code duplicated, block: B:121:0x0447  */
    /* JADX WARN: Code duplicated, block: B:122:0x0455  */
    /* JADX WARN: Code duplicated, block: B:124:0x045b  */
    /* JADX WARN: Code duplicated, block: B:125:0x0469  */
    /* JADX WARN: Code duplicated, block: B:127:0x046f  */
    /* JADX WARN: Code duplicated, block: B:128:0x047d  */
    /* JADX WARN: Code duplicated, block: B:130:0x0483  */
    /* JADX WARN: Code duplicated, block: B:131:0x0491  */
    /* JADX WARN: Code duplicated, block: B:133:0x0497  */
    /* JADX WARN: Code duplicated, block: B:134:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:136:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:137:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:139:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:140:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:142:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:143:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:145:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:146:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:148:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:149:0x050b  */
    /* JADX WARN: Code duplicated, block: B:151:0x0511  */
    /* JADX WARN: Code duplicated, block: B:152:0x051e  */
    /* JADX WARN: Code duplicated, block: B:154:0x0524  */
    /* JADX WARN: Code duplicated, block: B:155:0x0531  */
    /* JADX WARN: Code duplicated, block: B:157:0x0537  */
    /* JADX WARN: Code duplicated, block: B:158:0x0544  */
    /* JADX WARN: Code duplicated, block: B:160:0x054a  */
    /* JADX WARN: Code duplicated, block: B:161:0x0557  */
    /* JADX WARN: Code duplicated, block: B:163:0x055d  */
    /* JADX WARN: Code duplicated, block: B:175:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code duplicated, block: B:244:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:260:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0077  */
    /* JADX WARN: Code duplicated, block: B:270:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:279:0x0569 A[DONT_GENERATE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x007d  */
    /* JADX WARN: Code duplicated, block: B:29:0x008b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    /* JADX WARN: Code duplicated, block: B:32:0x009f  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00db  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:47:0x0105  */
    /* JADX WARN: Code duplicated, block: B:49:0x010b  */
    /* JADX WARN: Code duplicated, block: B:50:0x011d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0123  */
    /* JADX WARN: Code duplicated, block: B:53:0x012e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0134  */
    /* JADX WARN: Code duplicated, block: B:56:0x0142  */
    /* JADX WARN: Code duplicated, block: B:58:0x0148  */
    /* JADX WARN: Code duplicated, block: B:59:0x0156  */
    /* JADX WARN: Code duplicated, block: B:61:0x015c  */
    /* JADX WARN: Code duplicated, block: B:62:0x016a  */
    /* JADX WARN: Code duplicated, block: B:64:0x0170  */
    /* JADX WARN: Code duplicated, block: B:65:0x017e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0184  */
    /* JADX WARN: Code duplicated, block: B:68:0x0192  */
    /* JADX WARN: Code duplicated, block: B:70:0x0198  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:74:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:81:0x0210  */
    /* JADX WARN: Code duplicated, block: B:82:0x0221  */
    /* JADX WARN: Code duplicated, block: B:83:0x0232  */
    /* JADX WARN: Code duplicated, block: B:84:0x0243  */
    /* JADX WARN: Code duplicated, block: B:85:0x0254  */
    /* JADX WARN: Code duplicated, block: B:86:0x0265  */
    /* JADX WARN: Code duplicated, block: B:87:0x0276  */
    /* JADX WARN: Code duplicated, block: B:88:0x0287  */
    /* JADX WARN: Code duplicated, block: B:89:0x0298  */
    /* JADX WARN: Code duplicated, block: B:90:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:91:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:92:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:93:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:94:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:95:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:96:0x030f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0320  */
    /* JADX WARN: Code duplicated, block: B:98:0x0331  */
    /* JADX WARN: Code duplicated, block: B:99:0x0342  */
    /* JADX WARN: Code duplicated, block: B:9:0x0023  */
    @Override // b7.e1
    public final void h(T t10, t1 t1Var) throws IOException {
        Iterator itK;
        Map.Entry entry;
        Objects.requireNonNull(t1Var);
        if (!this.f3526h) {
            Y(t10, t1Var);
            return;
        }
        if (this.f3524f) {
            t<T> tVarC = this.f3534p.c(t10);
            if (tVarC.h()) {
                itK = null;
                entry = null;
            } else {
                itK = tVarC.k();
                entry = (Map.Entry) itK.next();
            }
        } else {
            itK = null;
            entry = null;
        }
        int length = this.f3519a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iX = X(i10);
            int i11 = this.f3519a[i10];
            while (entry != null) {
                this.f3534p.a(entry);
                if (i11 >= 0) {
                    this.f3534p.j(entry);
                    entry = itK.hasNext() ? (Map.Entry) itK.next() : null;
                } else {
                    switch ((267386880 & iX) >>> 20) {
                        case 0:
                            if (s(t10, i10)) {
                                ((m) t1Var).c(i11, p1.j(t10, iX & 1048575));
                            }
                            break;
                        case 1:
                            if (s(t10, i10)) {
                                ((m) t1Var).g(i11, p1.k(t10, iX & 1048575));
                            }
                            break;
                        case 2:
                            if (s(t10, i10)) {
                                ((m) t1Var).j(i11, p1.m(t10, iX & 1048575));
                            }
                            break;
                        case 3:
                            if (s(t10, i10)) {
                                ((m) t1Var).r(i11, p1.m(t10, iX & 1048575));
                            }
                            break;
                        case 4:
                            if (s(t10, i10)) {
                                ((m) t1Var).i(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 5:
                            if (s(t10, i10)) {
                                ((m) t1Var).f(i11, p1.m(t10, iX & 1048575));
                            }
                            break;
                        case 6:
                            if (s(t10, i10)) {
                                ((m) t1Var).e(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 7:
                            if (s(t10, i10)) {
                                ((m) t1Var).a(i11, p1.h(t10, iX & 1048575));
                            }
                            break;
                        case 8:
                            if (s(t10, i10)) {
                                a0(i11, p1.n(t10, iX & 1048575), t1Var);
                            }
                            break;
                        case 9:
                            if (s(t10, i10)) {
                                ((m) t1Var).k(i11, p1.n(t10, iX & 1048575), o(i10));
                            }
                            break;
                        case 10:
                            if (s(t10, i10)) {
                                ((m) t1Var).b(i11, (i) p1.n(t10, iX & 1048575));
                            }
                            break;
                        case 11:
                            if (s(t10, i10)) {
                                ((m) t1Var).q(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 12:
                            if (s(t10, i10)) {
                                ((m) t1Var).d(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 13:
                            if (s(t10, i10)) {
                                ((m) t1Var).m(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 14:
                            if (s(t10, i10)) {
                                ((m) t1Var).n(i11, p1.m(t10, iX & 1048575));
                            }
                            break;
                        case 15:
                            if (s(t10, i10)) {
                                ((m) t1Var).o(i11, p1.l(t10, iX & 1048575));
                            }
                            break;
                        case 16:
                            if (s(t10, i10)) {
                                ((m) t1Var).p(i11, p1.m(t10, iX & 1048575));
                            }
                            break;
                        case 17:
                            if (s(t10, i10)) {
                                ((m) t1Var).h(i11, p1.n(t10, iX & 1048575), o(i10));
                            }
                            break;
                        case 18:
                            f1.F(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 19:
                            f1.J(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 20:
                            f1.M(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 21:
                            f1.U(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 22:
                            f1.L(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 23:
                            f1.I(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 24:
                            f1.H(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 25:
                            f1.D(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 26:
                            f1.S(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var);
                            break;
                        case 27:
                            f1.N(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, o(i10));
                            break;
                        case 28:
                            f1.E(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var);
                            break;
                        case 29:
                            f1.T(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 30:
                            f1.G(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 31:
                            f1.O(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 32:
                            f1.P(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 33:
                            f1.Q(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 34:
                            f1.R(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                            break;
                        case 35:
                            f1.F(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 36:
                            f1.J(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 37:
                            f1.M(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 38:
                            f1.U(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 39:
                            f1.L(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 40:
                            f1.I(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 41:
                            f1.H(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 42:
                            f1.D(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 43:
                            f1.T(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 44:
                            f1.G(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 45:
                            f1.O(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 46:
                            f1.P(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 47:
                            f1.Q(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 48:
                            f1.R(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                            break;
                        case 49:
                            f1.K(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, o(i10));
                            break;
                        case 50:
                            Z(t1Var, i11, p1.n(t10, iX & 1048575), i10);
                            break;
                        case 51:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).c(i11, D(t10, iX & 1048575));
                            }
                            break;
                        case 52:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).g(i11, E(t10, iX & 1048575));
                            }
                            break;
                        case 53:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).j(i11, G(t10, iX & 1048575));
                            }
                            break;
                        case 54:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).r(i11, G(t10, iX & 1048575));
                            }
                            break;
                        case 55:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).i(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 56:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).f(i11, G(t10, iX & 1048575));
                            }
                            break;
                        case 57:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).e(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 58:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).a(i11, C(t10, iX & 1048575));
                            }
                            break;
                        case 59:
                            if (t(t10, i11, i10)) {
                                a0(i11, p1.n(t10, iX & 1048575), t1Var);
                            }
                            break;
                        case 60:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).k(i11, p1.n(t10, iX & 1048575), o(i10));
                            }
                            break;
                        case 61:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).b(i11, (i) p1.n(t10, iX & 1048575));
                            }
                            break;
                        case 62:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).q(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 63:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).d(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 64:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).m(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 65:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).n(i11, G(t10, iX & 1048575));
                            }
                            break;
                        case 66:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).o(i11, F(t10, iX & 1048575));
                            }
                            break;
                        case 67:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).p(i11, G(t10, iX & 1048575));
                            }
                            break;
                        case 68:
                            if (t(t10, i11, i10)) {
                                ((m) t1Var).h(i11, p1.n(t10, iX & 1048575), o(i10));
                            }
                            break;
                    }
                }
            }
            switch ((267386880 & iX) >>> 20) {
                case 0:
                    if (s(t10, i10)) {
                        ((m) t1Var).c(i11, p1.j(t10, iX & 1048575));
                    }
                    break;
                case 1:
                    if (s(t10, i10)) {
                        ((m) t1Var).g(i11, p1.k(t10, iX & 1048575));
                    }
                    break;
                case 2:
                    if (s(t10, i10)) {
                        ((m) t1Var).j(i11, p1.m(t10, iX & 1048575));
                    }
                    break;
                case 3:
                    if (s(t10, i10)) {
                        ((m) t1Var).r(i11, p1.m(t10, iX & 1048575));
                    }
                    break;
                case 4:
                    if (s(t10, i10)) {
                        ((m) t1Var).i(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 5:
                    if (s(t10, i10)) {
                        ((m) t1Var).f(i11, p1.m(t10, iX & 1048575));
                    }
                    break;
                case 6:
                    if (s(t10, i10)) {
                        ((m) t1Var).e(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 7:
                    if (s(t10, i10)) {
                        ((m) t1Var).a(i11, p1.h(t10, iX & 1048575));
                    }
                    break;
                case 8:
                    if (s(t10, i10)) {
                        a0(i11, p1.n(t10, iX & 1048575), t1Var);
                    }
                    break;
                case 9:
                    if (s(t10, i10)) {
                        ((m) t1Var).k(i11, p1.n(t10, iX & 1048575), o(i10));
                    }
                    break;
                case 10:
                    if (s(t10, i10)) {
                        ((m) t1Var).b(i11, (i) p1.n(t10, iX & 1048575));
                    }
                    break;
                case 11:
                    if (s(t10, i10)) {
                        ((m) t1Var).q(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 12:
                    if (s(t10, i10)) {
                        ((m) t1Var).d(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 13:
                    if (s(t10, i10)) {
                        ((m) t1Var).m(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 14:
                    if (s(t10, i10)) {
                        ((m) t1Var).n(i11, p1.m(t10, iX & 1048575));
                    }
                    break;
                case 15:
                    if (s(t10, i10)) {
                        ((m) t1Var).o(i11, p1.l(t10, iX & 1048575));
                    }
                    break;
                case 16:
                    if (s(t10, i10)) {
                        ((m) t1Var).p(i11, p1.m(t10, iX & 1048575));
                    }
                    break;
                case 17:
                    if (s(t10, i10)) {
                        ((m) t1Var).h(i11, p1.n(t10, iX & 1048575), o(i10));
                    }
                    break;
                case 18:
                    f1.F(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 19:
                    f1.J(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 20:
                    f1.M(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 21:
                    f1.U(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 22:
                    f1.L(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 23:
                    f1.I(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 24:
                    f1.H(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 25:
                    f1.D(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 26:
                    f1.S(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var);
                    break;
                case 27:
                    f1.N(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, o(i10));
                    break;
                case 28:
                    f1.E(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var);
                    break;
                case 29:
                    f1.T(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 30:
                    f1.G(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 31:
                    f1.O(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 32:
                    f1.P(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 33:
                    f1.Q(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 34:
                    f1.R(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, false);
                    break;
                case 35:
                    f1.F(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 36:
                    f1.J(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 37:
                    f1.M(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 38:
                    f1.U(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 39:
                    f1.L(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 40:
                    f1.I(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 41:
                    f1.H(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 42:
                    f1.D(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 43:
                    f1.T(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 44:
                    f1.G(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 45:
                    f1.O(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 46:
                    f1.P(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 47:
                    f1.Q(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 48:
                    f1.R(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, true);
                    break;
                case 49:
                    f1.K(this.f3519a[i10], (List) p1.n(t10, iX & 1048575), t1Var, o(i10));
                    break;
                case 50:
                    Z(t1Var, i11, p1.n(t10, iX & 1048575), i10);
                    break;
                case 51:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).c(i11, D(t10, iX & 1048575));
                    }
                    break;
                case 52:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).g(i11, E(t10, iX & 1048575));
                    }
                    break;
                case 53:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).j(i11, G(t10, iX & 1048575));
                    }
                    break;
                case 54:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).r(i11, G(t10, iX & 1048575));
                    }
                    break;
                case 55:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).i(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 56:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).f(i11, G(t10, iX & 1048575));
                    }
                    break;
                case 57:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).e(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 58:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).a(i11, C(t10, iX & 1048575));
                    }
                    break;
                case 59:
                    if (t(t10, i11, i10)) {
                        a0(i11, p1.n(t10, iX & 1048575), t1Var);
                    }
                    break;
                case 60:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).k(i11, p1.n(t10, iX & 1048575), o(i10));
                    }
                    break;
                case 61:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).b(i11, (i) p1.n(t10, iX & 1048575));
                    }
                    break;
                case 62:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).q(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 63:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).d(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 64:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).m(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 65:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).n(i11, G(t10, iX & 1048575));
                    }
                    break;
                case 66:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).o(i11, F(t10, iX & 1048575));
                    }
                    break;
                case 67:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).p(i11, G(t10, iX & 1048575));
                    }
                    break;
                case 68:
                    if (t(t10, i11, i10)) {
                        ((m) t1Var).h(i11, p1.n(t10, iX & 1048575), o(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.f3534p.j(entry);
            entry = itK.hasNext() ? (Map.Entry) itK.next() : null;
        }
        b0(this.f3533o, t10, t1Var);
    }

    @Override // b7.e1
    public final void i(T t10, d1 d1Var, p pVar) throws IOException {
        Objects.requireNonNull(pVar);
        v(this.f3533o, this.f3534p, t10, d1Var, pVar);
    }

    @Override // b7.e1
    public final void j(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        if (this.f3526h) {
            K(t10, bArr, i10, i11, aVar);
        } else {
            J(t10, bArr, i10, i11, 0, aVar);
        }
    }

    public final boolean k(T t10, T t11, int i10) {
        return s(t10, i10) == s(t11, i10);
    }

    public final <UT, UB> UB l(Object obj, int i10, UB ub2, l1<UT, UB> l1Var) {
        z.b bVarM;
        int i11 = this.f3519a[i10];
        Object objN = p1.n(obj, X(i10) & 1048575);
        if (objN == null || (bVarM = m(i10)) == null) {
            return ub2;
        }
        Map<?, ?> mapH = this.f3535q.h(objN);
        this.f3535q.e(n(i10));
        for (Map.Entry<?, ?> entry : mapH.entrySet()) {
            ((Integer) entry.getValue()).intValue();
            if (!bVarM.a()) {
                if (ub2 == null) {
                    l1Var.m();
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
        return ub2;
    }

    public final z.b m(int i10) {
        return (z.b) this.f3520b[((i10 / 3) * 2) + 1];
    }

    public final Object n(int i10) {
        return this.f3520b[(i10 / 3) * 2];
    }

    public final e1 o(int i10) {
        int i11 = (i10 / 3) * 2;
        Object[] objArr = this.f3520b;
        e1 e1Var = (e1) objArr[i11];
        if (e1Var != null) {
            return e1Var;
        }
        e1<T> e1VarA = a1.f3353c.a((Class) objArr[i11 + 1]);
        this.f3520b[i11] = e1VarA;
        return e1VarA;
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
    public final int q(T t10) {
        int i10;
        int i11;
        int iE;
        int iC;
        int iH;
        int iW;
        int iY;
        Unsafe unsafe = f3518s;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.f3519a.length; i15 += 3) {
            int iX = X(i15);
            int[] iArr = this.f3519a;
            int i16 = iArr[i15];
            int i17 = (267386880 & iX) >>> 20;
            if (i17 <= 17) {
                i10 = iArr[i15 + 2];
                int i18 = i10 & 1048575;
                i11 = 1 << (i10 >>> 20);
                if (i18 != i12) {
                    i14 = unsafe.getInt(t10, i18);
                    i12 = i18;
                }
            } else {
                i10 = (!this.f3527i || i17 < u.f3536i.f3540h || i17 > u.f3537j.f3540h) ? 0 : iArr[i15 + 2] & 1048575;
                i11 = 0;
            }
            long j10 = iX & 1048575;
            switch (i17) {
                case 0:
                    if ((i14 & i11) != 0) {
                        iE = l.e(i16);
                        i13 += iE;
                    }
                    break;
                case 1:
                    if ((i14 & i11) != 0) {
                        iE = l.i(i16);
                        i13 += iE;
                    }
                    break;
                case 2:
                    if ((i14 & i11) != 0) {
                        iE = l.m(i16, unsafe.getLong(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 3:
                    if ((i14 & i11) != 0) {
                        iE = l.z(i16, unsafe.getLong(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 4:
                    if ((i14 & i11) != 0) {
                        iE = l.k(i16, unsafe.getInt(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 5:
                    if ((i14 & i11) != 0) {
                        iE = l.h(i16);
                        i13 += iE;
                    }
                    break;
                case 6:
                    if ((i14 & i11) != 0) {
                        iE = l.g(i16);
                        i13 += iE;
                    }
                    break;
                case 7:
                    if ((i14 & i11) != 0) {
                        iE = l.b(i16);
                        i13 += iE;
                    }
                    break;
                case 8:
                    if ((i14 & i11) != 0) {
                        Object object = unsafe.getObject(t10, j10);
                        iC = object instanceof i ? l.c(i16, (i) object) : l.u(i16, (String) object);
                        i13 += iC;
                    }
                    break;
                case 9:
                    if ((i14 & i11) != 0) {
                        iE = f1.n(i16, unsafe.getObject(t10, j10), o(i15));
                        i13 += iE;
                    }
                    break;
                case 10:
                    if ((i14 & i11) != 0) {
                        iE = l.c(i16, (i) unsafe.getObject(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 11:
                    if ((i14 & i11) != 0) {
                        iE = l.x(i16, unsafe.getInt(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 12:
                    if ((i14 & i11) != 0) {
                        iE = l.f(i16, unsafe.getInt(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 13:
                    if ((i14 & i11) != 0) {
                        iE = l.o(i16);
                        i13 += iE;
                    }
                    break;
                case 14:
                    if ((i14 & i11) != 0) {
                        iE = l.p(i16);
                        i13 += iE;
                    }
                    break;
                case 15:
                    if ((i14 & i11) != 0) {
                        iE = l.q(i16, unsafe.getInt(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 16:
                    if ((i14 & i11) != 0) {
                        iE = l.s(i16, unsafe.getLong(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 17:
                    if ((i14 & i11) != 0) {
                        iE = l.j(i16, (q0) unsafe.getObject(t10, j10), o(i15));
                        i13 += iE;
                    }
                    break;
                case 18:
                    iE = f1.g(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 19:
                    iE = f1.e(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 20:
                    iE = f1.l(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 21:
                    iE = f1.w(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 22:
                    iE = f1.j(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 23:
                    iE = f1.g(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 24:
                    iE = f1.e(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 25:
                    iE = f1.a(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 26:
                    iE = f1.t(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 27:
                    iE = f1.o(i16, (List) unsafe.getObject(t10, j10), o(i15));
                    i13 += iE;
                    break;
                case 28:
                    iE = f1.b(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 29:
                    iE = f1.u(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 30:
                    iE = f1.c(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 31:
                    iE = f1.e(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 32:
                    iE = f1.g(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 33:
                    iE = f1.p(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 34:
                    iE = f1.r(i16, (List) unsafe.getObject(t10, j10));
                    i13 += iE;
                    break;
                case 35:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 36:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 37:
                    iH = f1.m((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 38:
                    iH = f1.x((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 39:
                    iH = f1.k((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 40:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 41:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(t10, j10);
                    Class<?> cls = f1.f3390a;
                    iH = list.size();
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 43:
                    iH = f1.v((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 44:
                    iH = f1.d((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 45:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 46:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 47:
                    iH = f1.q((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 48:
                    iH = f1.s((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = l.w(i16);
                        iY = l.y(iH);
                        i13 += iY + iW + iH;
                    }
                    break;
                case 49:
                    iE = f1.i(i16, (List) unsafe.getObject(t10, j10), o(i15));
                    i13 += iE;
                    break;
                case 50:
                    iE = this.f3535q.b(i16, unsafe.getObject(t10, j10), n(i15));
                    i13 += iE;
                    break;
                case 51:
                    if (t(t10, i16, i15)) {
                        iE = l.e(i16);
                        i13 += iE;
                    }
                    break;
                case 52:
                    if (t(t10, i16, i15)) {
                        iE = l.i(i16);
                        i13 += iE;
                    }
                    break;
                case 53:
                    if (t(t10, i16, i15)) {
                        iE = l.m(i16, G(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 54:
                    if (t(t10, i16, i15)) {
                        iE = l.z(i16, G(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 55:
                    if (t(t10, i16, i15)) {
                        iE = l.k(i16, F(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 56:
                    if (t(t10, i16, i15)) {
                        iE = l.h(i16);
                        i13 += iE;
                    }
                    break;
                case 57:
                    if (t(t10, i16, i15)) {
                        iE = l.g(i16);
                        i13 += iE;
                    }
                    break;
                case 58:
                    if (t(t10, i16, i15)) {
                        iE = l.b(i16);
                        i13 += iE;
                    }
                    break;
                case 59:
                    if (t(t10, i16, i15)) {
                        Object object2 = unsafe.getObject(t10, j10);
                        iC = object2 instanceof i ? l.c(i16, (i) object2) : l.u(i16, (String) object2);
                        i13 += iC;
                    }
                    break;
                case 60:
                    if (t(t10, i16, i15)) {
                        iE = f1.n(i16, unsafe.getObject(t10, j10), o(i15));
                        i13 += iE;
                    }
                    break;
                case 61:
                    if (t(t10, i16, i15)) {
                        iE = l.c(i16, (i) unsafe.getObject(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 62:
                    if (t(t10, i16, i15)) {
                        iE = l.x(i16, F(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 63:
                    if (t(t10, i16, i15)) {
                        iE = l.f(i16, F(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 64:
                    if (t(t10, i16, i15)) {
                        iE = l.o(i16);
                        i13 += iE;
                    }
                    break;
                case 65:
                    if (t(t10, i16, i15)) {
                        iE = l.p(i16);
                        i13 += iE;
                    }
                    break;
                case 66:
                    if (t(t10, i16, i15)) {
                        iE = l.q(i16, F(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 67:
                    if (t(t10, i16, i15)) {
                        iE = l.s(i16, G(t10, j10));
                        i13 += iE;
                    }
                    break;
                case 68:
                    if (t(t10, i16, i15)) {
                        iE = l.j(i16, (q0) unsafe.getObject(t10, j10), o(i15));
                        i13 += iE;
                    }
                    break;
            }
        }
        l1<?, ?> l1Var = this.f3533o;
        int iH2 = l1Var.h(l1Var.g(t10)) + i13;
        if (!this.f3524f) {
            return iH2;
        }
        t<T> tVarC = this.f3534p.c(t10);
        int iE2 = 0;
        for (int i19 = 0; i19 < tVarC.f3514a.d(); i19++) {
            Map.Entry entryC = tVarC.f3514a.c(i19);
            iE2 += t.e((t.a) entryC.getKey(), entryC.getValue());
        }
        for (Map.Entry entry : tVarC.f3514a.e()) {
            iE2 += t.e((t.a) entry.getKey(), entry.getValue());
        }
        return iH2 + iE2;
    }

    public final int r(T t10) {
        int iE;
        int iC;
        int iH;
        int iW;
        int iY;
        Unsafe unsafe = f3518s;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f3519a.length; i11 += 3) {
            int iX = X(i11);
            int i12 = (267386880 & iX) >>> 20;
            int[] iArr = this.f3519a;
            int i13 = iArr[i11];
            long j10 = iX & 1048575;
            int i14 = (i12 < u.f3536i.f3540h || i12 > u.f3537j.f3540h) ? 0 : iArr[i11 + 2] & 1048575;
            switch (i12) {
                case 0:
                    if (s(t10, i11)) {
                        iE = l.e(i13);
                        i10 += iE;
                    }
                    break;
                case 1:
                    if (s(t10, i11)) {
                        iE = l.i(i13);
                        i10 += iE;
                    }
                    break;
                case 2:
                    if (s(t10, i11)) {
                        iE = l.m(i13, p1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 3:
                    if (s(t10, i11)) {
                        iE = l.z(i13, p1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 4:
                    if (s(t10, i11)) {
                        iE = l.k(i13, p1.l(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 5:
                    if (s(t10, i11)) {
                        iE = l.h(i13);
                        i10 += iE;
                    }
                    break;
                case 6:
                    if (s(t10, i11)) {
                        iE = l.g(i13);
                        i10 += iE;
                    }
                    break;
                case 7:
                    if (s(t10, i11)) {
                        iE = l.b(i13);
                        i10 += iE;
                    }
                    break;
                case 8:
                    if (s(t10, i11)) {
                        Object objN = p1.n(t10, j10);
                        iC = objN instanceof i ? l.c(i13, (i) objN) : l.u(i13, (String) objN);
                        i10 += iC;
                    }
                    break;
                case 9:
                    if (s(t10, i11)) {
                        iE = f1.n(i13, p1.n(t10, j10), o(i11));
                        i10 += iE;
                    }
                    break;
                case 10:
                    if (s(t10, i11)) {
                        iE = l.c(i13, (i) p1.n(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 11:
                    if (s(t10, i11)) {
                        iE = l.x(i13, p1.l(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 12:
                    if (s(t10, i11)) {
                        iE = l.f(i13, p1.l(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 13:
                    if (s(t10, i11)) {
                        iE = l.o(i13);
                        i10 += iE;
                    }
                    break;
                case 14:
                    if (s(t10, i11)) {
                        iE = l.p(i13);
                        i10 += iE;
                    }
                    break;
                case 15:
                    if (s(t10, i11)) {
                        iE = l.q(i13, p1.l(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 16:
                    if (s(t10, i11)) {
                        iE = l.s(i13, p1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 17:
                    if (s(t10, i11)) {
                        iE = l.j(i13, (q0) p1.n(t10, j10), o(i11));
                        i10 += iE;
                    }
                    break;
                case 18:
                    iE = f1.g(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 19:
                    iE = f1.e(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 20:
                    iE = f1.l(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 21:
                    iE = f1.w(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 22:
                    iE = f1.j(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 23:
                    iE = f1.g(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 24:
                    iE = f1.e(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 25:
                    iE = f1.a(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 26:
                    iE = f1.t(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 27:
                    iE = f1.o(i13, u(t10, j10), o(i11));
                    i10 += iE;
                    break;
                case 28:
                    iE = f1.b(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 29:
                    iE = f1.u(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 30:
                    iE = f1.c(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 31:
                    iE = f1.e(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 32:
                    iE = f1.g(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 33:
                    iE = f1.p(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 34:
                    iE = f1.r(i13, u(t10, j10));
                    i10 += iE;
                    break;
                case 35:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 36:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 37:
                    iH = f1.m((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 38:
                    iH = f1.x((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 39:
                    iH = f1.k((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 40:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 41:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(t10, j10);
                    Class<?> cls = f1.f3390a;
                    iH = list.size();
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 43:
                    iH = f1.v((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 44:
                    iH = f1.d((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 45:
                    iH = f1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 46:
                    iH = f1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 47:
                    iH = f1.q((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 48:
                    iH = f1.s((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f3527i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = l.w(i13);
                        iY = l.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 49:
                    iE = f1.i(i13, u(t10, j10), o(i11));
                    i10 += iE;
                    break;
                case 50:
                    iE = this.f3535q.b(i13, p1.n(t10, j10), n(i11));
                    i10 += iE;
                    break;
                case 51:
                    if (t(t10, i13, i11)) {
                        iE = l.e(i13);
                        i10 += iE;
                    }
                    break;
                case 52:
                    if (t(t10, i13, i11)) {
                        iE = l.i(i13);
                        i10 += iE;
                    }
                    break;
                case 53:
                    if (t(t10, i13, i11)) {
                        iE = l.m(i13, G(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 54:
                    if (t(t10, i13, i11)) {
                        iE = l.z(i13, G(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 55:
                    if (t(t10, i13, i11)) {
                        iE = l.k(i13, F(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 56:
                    if (t(t10, i13, i11)) {
                        iE = l.h(i13);
                        i10 += iE;
                    }
                    break;
                case 57:
                    if (t(t10, i13, i11)) {
                        iE = l.g(i13);
                        i10 += iE;
                    }
                    break;
                case 58:
                    if (t(t10, i13, i11)) {
                        iE = l.b(i13);
                        i10 += iE;
                    }
                    break;
                case 59:
                    if (t(t10, i13, i11)) {
                        Object objN2 = p1.n(t10, j10);
                        iC = objN2 instanceof i ? l.c(i13, (i) objN2) : l.u(i13, (String) objN2);
                        i10 += iC;
                    }
                    break;
                case 60:
                    if (t(t10, i13, i11)) {
                        iE = f1.n(i13, p1.n(t10, j10), o(i11));
                        i10 += iE;
                    }
                    break;
                case 61:
                    if (t(t10, i13, i11)) {
                        iE = l.c(i13, (i) p1.n(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 62:
                    if (t(t10, i13, i11)) {
                        iE = l.x(i13, F(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 63:
                    if (t(t10, i13, i11)) {
                        iE = l.f(i13, F(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 64:
                    if (t(t10, i13, i11)) {
                        iE = l.o(i13);
                        i10 += iE;
                    }
                    break;
                case 65:
                    if (t(t10, i13, i11)) {
                        iE = l.p(i13);
                        i10 += iE;
                    }
                    break;
                case 66:
                    if (t(t10, i13, i11)) {
                        iE = l.q(i13, F(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 67:
                    if (t(t10, i13, i11)) {
                        iE = l.s(i13, G(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 68:
                    if (t(t10, i13, i11)) {
                        iE = l.j(i13, (q0) p1.n(t10, j10), o(i11));
                        i10 += iE;
                    }
                    break;
            }
        }
        l1<?, ?> l1Var = this.f3533o;
        return l1Var.h(l1Var.g(t10)) + i10;
    }

    public final boolean s(T t10, int i10) {
        boolean zEquals;
        if (!this.f3526h) {
            int iN = N(i10);
            return (p1.l(t10, (long) (iN & 1048575)) & (1 << (iN >>> 20))) != 0;
        }
        int iX = X(i10);
        long j10 = iX & 1048575;
        switch ((iX & 267386880) >>> 20) {
            case 0:
                return p1.j(t10, j10) != 0.0d;
            case 1:
                return p1.k(t10, j10) != 0.0f;
            case 2:
                return p1.m(t10, j10) != 0;
            case 3:
                return p1.m(t10, j10) != 0;
            case 4:
                return p1.l(t10, j10) != 0;
            case 5:
                return p1.m(t10, j10) != 0;
            case 6:
                return p1.l(t10, j10) != 0;
            case 7:
                return p1.h(t10, j10);
            case 8:
                Object objN = p1.n(t10, j10);
                if (objN instanceof String) {
                    zEquals = ((String) objN).isEmpty();
                } else {
                    if (!(objN instanceof i)) {
                        throw new IllegalArgumentException();
                    }
                    zEquals = i.f3419i.equals(objN);
                }
                break;
            case 9:
                return p1.n(t10, j10) != null;
            case 10:
                zEquals = i.f3419i.equals(p1.n(t10, j10));
                break;
            case 11:
                return p1.l(t10, j10) != 0;
            case 12:
                return p1.l(t10, j10) != 0;
            case 13:
                return p1.l(t10, j10) != 0;
            case 14:
                return p1.m(t10, j10) != 0;
            case 15:
                return p1.l(t10, j10) != 0;
            case 16:
                return p1.m(t10, j10) != 0;
            case 17:
                return p1.n(t10, j10) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !zEquals;
    }

    public final boolean t(T t10, int i10, int i11) {
        return p1.l(t10, (long) (N(i11) & 1048575)) == i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <UT, UB, ET extends t.a<ET>> void v(l1<UT, UB> l1Var, q<ET> qVar, T t10, d1 d1Var, p pVar) throws IOException {
        Object objG = null;
        Object objD = null;
        while (true) {
            try {
                int iR = d1Var.r();
                int iM = M(iR);
                if (iM >= 0) {
                    int iX = X(iM);
                    try {
                        switch (W(iX)) {
                            case 0:
                                p1.t(t10, B(iX), d1Var.readDouble());
                                T(t10, iM);
                                break;
                            case 1:
                                p1.u(t10, B(iX), d1Var.readFloat());
                                T(t10, iM);
                                break;
                            case 2:
                                p1.w(t10, B(iX), d1Var.J());
                                T(t10, iM);
                                break;
                            case 3:
                                p1.w(t10, B(iX), d1Var.d());
                                T(t10, iM);
                                break;
                            case 4:
                                p1.v(t10, B(iX), d1Var.A());
                                T(t10, iM);
                                break;
                            case 5:
                                p1.w(t10, B(iX), d1Var.f());
                                T(t10, iM);
                                break;
                            case 6:
                                p1.v(t10, B(iX), d1Var.p());
                                T(t10, iM);
                                break;
                            case 7:
                                p1.p(t10, B(iX), d1Var.q());
                                T(t10, iM);
                                break;
                            case 8:
                                Q(t10, iX, d1Var);
                                T(t10, iM);
                                break;
                            case 9:
                                if (s(t10, iM)) {
                                    p1.x(t10, B(iX), z.c(p1.n(t10, B(iX)), d1Var.m(o(iM), pVar)));
                                } else {
                                    p1.x(t10, B(iX), d1Var.m(o(iM), pVar));
                                    T(t10, iM);
                                }
                                break;
                            case 10:
                                p1.x(t10, B(iX), d1Var.w());
                                T(t10, iM);
                                break;
                            case 11:
                                p1.v(t10, B(iX), d1Var.y());
                                T(t10, iM);
                                break;
                            case 12:
                                int iC = d1Var.c();
                                z.b bVarM = m(iM);
                                if (bVarM == null || bVarM.a()) {
                                    p1.v(t10, B(iX), iC);
                                    T(t10, iM);
                                } else {
                                    objG = f1.C(iR, iC, objG, l1Var);
                                }
                                break;
                            case 13:
                                p1.v(t10, B(iX), d1Var.D());
                                T(t10, iM);
                                break;
                            case 14:
                                p1.w(t10, B(iX), d1Var.t());
                                T(t10, iM);
                                break;
                            case 15:
                                p1.v(t10, B(iX), d1Var.i());
                                T(t10, iM);
                                break;
                            case 16:
                                p1.w(t10, B(iX), d1Var.k());
                                T(t10, iM);
                                break;
                            case 17:
                                if (s(t10, iM)) {
                                    p1.x(t10, B(iX), z.c(p1.n(t10, B(iX)), d1Var.C(o(iM), pVar)));
                                } else {
                                    p1.x(t10, B(iX), d1Var.C(o(iM), pVar));
                                    T(t10, iM);
                                }
                                break;
                            case 18:
                                d1Var.G(this.f3532n.c(t10, B(iX)));
                                break;
                            case 19:
                                d1Var.x(this.f3532n.c(t10, B(iX)));
                                break;
                            case 20:
                                d1Var.H(this.f3532n.c(t10, B(iX)));
                                break;
                            case 21:
                                d1Var.u(this.f3532n.c(t10, B(iX)));
                                break;
                            case 22:
                                d1Var.M(this.f3532n.c(t10, B(iX)));
                                break;
                            case 23:
                                d1Var.L(this.f3532n.c(t10, B(iX)));
                                break;
                            case 24:
                                d1Var.e(this.f3532n.c(t10, B(iX)));
                                break;
                            case 25:
                                d1Var.n(this.f3532n.c(t10, B(iX)));
                                break;
                            case 26:
                                R(t10, iX, d1Var);
                                break;
                            case 27:
                                P(t10, iX, d1Var, o(iM), pVar);
                                break;
                            case 28:
                                d1Var.E(this.f3532n.c(t10, B(iX)));
                                break;
                            case 29:
                                d1Var.l(this.f3532n.c(t10, B(iX)));
                                break;
                            case 30:
                                List<Integer> listC = this.f3532n.c(t10, B(iX));
                                d1Var.N(listC);
                                objG = f1.y(iR, listC, m(iM), objG, l1Var);
                                break;
                            case 31:
                                d1Var.h(this.f3532n.c(t10, B(iX)));
                                break;
                            case 32:
                                d1Var.I(this.f3532n.c(t10, B(iX)));
                                break;
                            case 33:
                                d1Var.b(this.f3532n.c(t10, B(iX)));
                                break;
                            case 34:
                                d1Var.j(this.f3532n.c(t10, B(iX)));
                                break;
                            case 35:
                                d1Var.G(this.f3532n.c(t10, B(iX)));
                                break;
                            case 36:
                                d1Var.x(this.f3532n.c(t10, B(iX)));
                                break;
                            case 37:
                                d1Var.H(this.f3532n.c(t10, B(iX)));
                                break;
                            case 38:
                                d1Var.u(this.f3532n.c(t10, B(iX)));
                                break;
                            case 39:
                                d1Var.M(this.f3532n.c(t10, B(iX)));
                                break;
                            case 40:
                                d1Var.L(this.f3532n.c(t10, B(iX)));
                                break;
                            case 41:
                                d1Var.e(this.f3532n.c(t10, B(iX)));
                                break;
                            case 42:
                                d1Var.n(this.f3532n.c(t10, B(iX)));
                                break;
                            case 43:
                                d1Var.l(this.f3532n.c(t10, B(iX)));
                                break;
                            case 44:
                                List<Integer> listC2 = this.f3532n.c(t10, B(iX));
                                d1Var.N(listC2);
                                objG = f1.y(iR, listC2, m(iM), objG, l1Var);
                                break;
                            case 45:
                                d1Var.h(this.f3532n.c(t10, B(iX)));
                                break;
                            case 46:
                                d1Var.I(this.f3532n.c(t10, B(iX)));
                                break;
                            case 47:
                                d1Var.b(this.f3532n.c(t10, B(iX)));
                                break;
                            case 48:
                                d1Var.j(this.f3532n.c(t10, B(iX)));
                                break;
                            case 49:
                                O(t10, B(iX), d1Var, o(iM), pVar);
                                break;
                            case 50:
                                w(t10, iM, n(iM), pVar, d1Var);
                                break;
                            case 51:
                                p1.x(t10, B(iX), Double.valueOf(d1Var.readDouble()));
                                U(t10, iR, iM);
                                break;
                            case 52:
                                p1.x(t10, B(iX), Float.valueOf(d1Var.readFloat()));
                                U(t10, iR, iM);
                                break;
                            case 53:
                                p1.x(t10, B(iX), Long.valueOf(d1Var.J()));
                                U(t10, iR, iM);
                                break;
                            case 54:
                                p1.x(t10, B(iX), Long.valueOf(d1Var.d()));
                                U(t10, iR, iM);
                                break;
                            case 55:
                                p1.x(t10, B(iX), Integer.valueOf(d1Var.A()));
                                U(t10, iR, iM);
                                break;
                            case 56:
                                p1.x(t10, B(iX), Long.valueOf(d1Var.f()));
                                U(t10, iR, iM);
                                break;
                            case 57:
                                p1.x(t10, B(iX), Integer.valueOf(d1Var.p()));
                                U(t10, iR, iM);
                                break;
                            case 58:
                                p1.x(t10, B(iX), Boolean.valueOf(d1Var.q()));
                                U(t10, iR, iM);
                                break;
                            case 59:
                                Q(t10, iX, d1Var);
                                U(t10, iR, iM);
                                break;
                            case 60:
                                if (t(t10, iR, iM)) {
                                    p1.x(t10, B(iX), z.c(p1.n(t10, B(iX)), d1Var.m(o(iM), pVar)));
                                } else {
                                    p1.x(t10, B(iX), d1Var.m(o(iM), pVar));
                                    T(t10, iM);
                                }
                                U(t10, iR, iM);
                                break;
                            case 61:
                                p1.x(t10, B(iX), d1Var.w());
                                U(t10, iR, iM);
                                break;
                            case 62:
                                p1.x(t10, B(iX), Integer.valueOf(d1Var.y()));
                                U(t10, iR, iM);
                                break;
                            case 63:
                                int iC2 = d1Var.c();
                                z.b bVarM2 = m(iM);
                                if (bVarM2 == null || bVarM2.a()) {
                                    p1.x(t10, B(iX), Integer.valueOf(iC2));
                                    U(t10, iR, iM);
                                } else {
                                    objG = f1.C(iR, iC2, objG, l1Var);
                                }
                                break;
                            case 64:
                                p1.x(t10, B(iX), Integer.valueOf(d1Var.D()));
                                U(t10, iR, iM);
                                break;
                            case 65:
                                p1.x(t10, B(iX), Long.valueOf(d1Var.t()));
                                U(t10, iR, iM);
                                break;
                            case 66:
                                p1.x(t10, B(iX), Integer.valueOf(d1Var.i()));
                                U(t10, iR, iM);
                                break;
                            case 67:
                                p1.x(t10, B(iX), Long.valueOf(d1Var.k()));
                                U(t10, iR, iM);
                                break;
                            case 68:
                                p1.x(t10, B(iX), d1Var.C(o(iM), pVar));
                                U(t10, iR, iM);
                                break;
                            default:
                                if (objG == null) {
                                    objG = l1Var.m();
                                }
                                if (!l1Var.l(objG, d1Var)) {
                                    for (int i10 = this.f3529k; i10 < this.f3530l; i10++) {
                                        l(t10, this.f3528j[i10], objG, l1Var);
                                    }
                                    if (objG != null) {
                                        l1Var.n(t10, objG);
                                        return;
                                    }
                                    return;
                                }
                                break;
                                break;
                        }
                    } catch (a0.a unused) {
                        l1Var.p();
                        if (objG == null) {
                            objG = l1Var.f(t10);
                        }
                        if (!l1Var.l(objG, d1Var)) {
                            for (int i11 = this.f3529k; i11 < this.f3530l; i11++) {
                                l(t10, this.f3528j[i11], objG, l1Var);
                            }
                            if (objG != null) {
                                l1Var.n(t10, objG);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (iR == Integer.MAX_VALUE) {
                        for (int i12 = this.f3529k; i12 < this.f3530l; i12++) {
                            l(t10, this.f3528j[i12], objG, l1Var);
                        }
                        if (objG != null) {
                            l1Var.n(t10, objG);
                            return;
                        }
                        return;
                    }
                    Object objB = !this.f3524f ? null : qVar.b(pVar, this.f3523e, iR);
                    if (objB != null) {
                        if (objD == null) {
                            objD = qVar.d(t10);
                        }
                        objG = qVar.g(objB);
                    } else {
                        l1Var.p();
                        if (objG == null) {
                            objG = l1Var.f(t10);
                        }
                        if (!l1Var.l(objG, d1Var)) {
                            for (int i13 = this.f3529k; i13 < this.f3530l; i13++) {
                                l(t10, this.f3528j[i13], objG, l1Var);
                            }
                            if (objG != null) {
                                l1Var.n(t10, objG);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i14 = this.f3529k; i14 < this.f3530l; i14++) {
                    l(t10, this.f3528j[i14], objG, l1Var);
                }
                if (objG != null) {
                    l1Var.n(t10, objG);
                }
                throw th;
            }
        }
    }

    public final <K, V> void w(Object obj, int i10, Object obj2, p pVar, d1 d1Var) throws IOException {
        long jX = X(i10) & 1048575;
        Object objN = p1.n(obj, jX);
        if (objN == null) {
            objN = this.f3535q.f();
            p1.x(obj, jX, objN);
        } else if (this.f3535q.c(objN)) {
            Object objF = this.f3535q.f();
            this.f3535q.a(objF, objN);
            p1.x(obj, jX, objF);
            objN = objF;
        }
        this.f3535q.h(objN);
        this.f3535q.e(obj2);
        d1Var.z();
    }

    public final void x(T t10, T t11, int i10) {
        long jX = X(i10) & 1048575;
        if (s(t11, i10)) {
            Object objN = p1.n(t10, jX);
            Object objN2 = p1.n(t11, jX);
            if (objN != null && objN2 != null) {
                p1.x(t10, jX, z.c(objN, objN2));
                T(t10, i10);
            } else if (objN2 != null) {
                p1.x(t10, jX, objN2);
                T(t10, i10);
            }
        }
    }

    public final void y(T t10, T t11, int i10) {
        int iX = X(i10);
        int i11 = this.f3519a[i10];
        long j10 = iX & 1048575;
        if (t(t11, i11, i10)) {
            Object objN = p1.n(t10, j10);
            Object objN2 = p1.n(t11, j10);
            if (objN != null && objN2 != null) {
                p1.x(t10, j10, z.c(objN, objN2));
                U(t10, i11, i10);
            } else if (objN2 != null) {
                p1.x(t10, j10, objN2);
                U(t10, i11, i10);
            }
        }
    }
}
