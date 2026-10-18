package m7;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
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
public final class s0<T> implements c1<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f10753r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Unsafe f10754s = m1.p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f10755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f10756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p0 f10759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f10760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f10761g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f10762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f10763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f10764j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10765k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10766l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final u0 f10767m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final f0 f10768n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i1<?, ?> f10769o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final p<?> f10770p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final k0 f10771q;

    public s0(int[] iArr, Object[] objArr, int i10, int i11, p0 p0Var, boolean z10, int[] iArr2, int i12, int i13, u0 u0Var, f0 f0Var, i1 i1Var, p pVar, k0 k0Var) {
        this.f10755a = iArr;
        this.f10756b = objArr;
        this.f10757c = i10;
        this.f10758d = i11;
        this.f10761g = p0Var instanceof w;
        this.f10762h = z10;
        this.f10760f = pVar != null && pVar.e(p0Var);
        this.f10763i = false;
        this.f10764j = iArr2;
        this.f10765k = i12;
        this.f10766l = i13;
        this.f10767m = u0Var;
        this.f10768n = f0Var;
        this.f10769o = i1Var;
        this.f10770p = pVar;
        this.f10759e = p0Var;
        this.f10771q = k0Var;
    }

    public static <T> float A(T t10, long j10) {
        return ((Float) m1.o(t10, j10)).floatValue();
    }

    public static <T> int B(T t10, long j10) {
        return ((Integer) m1.o(t10, j10)).intValue();
    }

    public static <T> long C(T t10, long j10) {
        return ((Long) m1.o(t10, j10)).longValue();
    }

    public static Field K(Class<?> cls, String str) {
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

    public static j1 o(Object obj) {
        w wVar = (w) obj;
        j1 j1Var = wVar.unknownFields;
        if (j1Var != j1.f10682f) {
            return j1Var;
        }
        j1 j1Var2 = new j1();
        wVar.unknownFields = j1Var2;
        return j1Var2;
    }

    public static List<?> t(Object obj, long j10) {
        return (List) m1.o(obj, j10);
    }

    public static s0 w(n0 n0Var, u0 u0Var, f0 f0Var, i1 i1Var, p pVar, k0 k0Var) {
        if (n0Var instanceof b1) {
            return x((b1) n0Var, u0Var, f0Var, i1Var, pVar, k0Var);
        }
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:166:0x035f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0362  */
    /* JADX WARN: Code duplicated, block: B:184:0x03b3  */
    public static <T> s0<T> x(b1 b1Var, u0 u0Var, f0 f0Var, i1<?, ?> i1Var, p<?> pVar, k0 k0Var) {
        int i10;
        int iCharAt;
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
        int i27;
        int i28;
        String str;
        boolean z10;
        int i29;
        int iObjectFieldOffset;
        boolean z11;
        int iObjectFieldOffset2;
        int i30;
        int i31;
        Field fieldK;
        char cCharAt9;
        int i32;
        int i33;
        Field fieldK2;
        Field fieldK3;
        int i34;
        char cCharAt10;
        int i35;
        char cCharAt11;
        int i36;
        char cCharAt12;
        int i37;
        char cCharAt13;
        int i38 = 0;
        boolean z12 = ((b1Var.f10621d & 1) == 1 ? (char) 1 : (char) 2) == 2;
        String str2 = b1Var.f10619b;
        int length = str2.length();
        if (str2.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (str2.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt2 = str2.charAt(i10);
        if (iCharAt2 >= 55296) {
            int i41 = iCharAt2 & 8191;
            int i42 = 13;
            while (true) {
                i37 = i40 + 1;
                cCharAt13 = str2.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i37;
            }
            iCharAt2 = i41 | (cCharAt13 << i42);
            i40 = i37;
        }
        if (iCharAt2 == 0) {
            i16 = 0;
            i14 = 0;
            iCharAt = 0;
            i15 = 0;
            i12 = 0;
            iArr = f10753r;
            i13 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt3 = str2.charAt(i40);
            if (iCharAt3 >= 55296) {
                int i44 = iCharAt3 & 8191;
                int i45 = 13;
                while (true) {
                    i24 = i43 + 1;
                    cCharAt8 = str2.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i24;
                }
                iCharAt3 = i44 | (cCharAt8 << i45);
                i43 = i24;
            }
            int i46 = i43 + 1;
            int iCharAt4 = str2.charAt(i43);
            if (iCharAt4 >= 55296) {
                int i47 = iCharAt4 & 8191;
                int i48 = 13;
                while (true) {
                    i23 = i46 + 1;
                    cCharAt7 = str2.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i23;
                }
                iCharAt4 = i47 | (cCharAt7 << i48);
                i46 = i23;
            }
            int i49 = i46 + 1;
            int iCharAt5 = str2.charAt(i46);
            if (iCharAt5 >= 55296) {
                int i50 = iCharAt5 & 8191;
                int i51 = 13;
                while (true) {
                    i22 = i49 + 1;
                    cCharAt6 = str2.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i22;
                }
                iCharAt5 = i50 | (cCharAt6 << i51);
                i49 = i22;
            }
            int i52 = i49 + 1;
            int iCharAt6 = str2.charAt(i49);
            if (iCharAt6 >= 55296) {
                int i53 = iCharAt6 & 8191;
                int i54 = 13;
                while (true) {
                    i21 = i52 + 1;
                    cCharAt5 = str2.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i21;
                }
                iCharAt6 = i53 | (cCharAt5 << i54);
                i52 = i21;
            }
            int i55 = i52 + 1;
            iCharAt = str2.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i20 = i55 + 1;
                    cCharAt4 = str2.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i20;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i20;
            }
            int i58 = i55 + 1;
            int iCharAt7 = str2.charAt(i55);
            if (iCharAt7 >= 55296) {
                int i59 = iCharAt7 & 8191;
                int i60 = 13;
                while (true) {
                    i19 = i58 + 1;
                    cCharAt3 = str2.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i19;
                }
                iCharAt7 = i59 | (cCharAt3 << i60);
                i58 = i19;
            }
            int i61 = i58 + 1;
            int iCharAt8 = str2.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = i61;
                int i64 = 13;
                while (true) {
                    i18 = i63 + 1;
                    cCharAt2 = str2.charAt(i63);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i63 = i18;
                }
                iCharAt8 = i62 | (cCharAt2 << i64);
                i11 = i18;
            } else {
                i11 = i61;
            }
            int i65 = i11 + 1;
            int iCharAt9 = str2.charAt(i11);
            if (iCharAt9 >= 55296) {
                int i66 = iCharAt9 & 8191;
                int i67 = i65;
                int i68 = 13;
                while (true) {
                    i17 = i67 + 1;
                    cCharAt = str2.charAt(i67);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i68;
                    i68 += 13;
                    i67 = i17;
                }
                iCharAt9 = i66 | (cCharAt << i68);
                i65 = i17;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            i12 = (iCharAt3 * 2) + iCharAt4;
            i13 = iCharAt5;
            i14 = iCharAt7;
            i15 = iCharAt9;
            i38 = iCharAt3;
            i40 = i65;
            int i69 = iCharAt6;
            iArr = iArr2;
            i16 = i69;
        }
        Unsafe unsafe = f10754s;
        Object[] objArr = b1Var.f10620c;
        Class<?> cls = b1Var.f10618a.getClass();
        int i70 = i40;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i71 = i15 + i14;
        int i72 = i15;
        int i73 = i71;
        int i74 = 0;
        int i75 = 0;
        for (int i76 = i70; i76 < length; i76 = i30) {
            int i77 = i76 + 1;
            int iCharAt10 = str2.charAt(i76);
            int i78 = length;
            if (iCharAt10 >= 55296) {
                int i79 = iCharAt10 & 8191;
                int i80 = i77;
                int i81 = 13;
                while (true) {
                    i36 = i80 + 1;
                    cCharAt12 = str2.charAt(i80);
                    i25 = i15;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i79 |= (cCharAt12 & 8191) << i81;
                    i81 += 13;
                    i80 = i36;
                    i15 = i25;
                }
                iCharAt10 = i79 | (cCharAt12 << i81);
                i26 = i36;
            } else {
                i25 = i15;
                i26 = i77;
            }
            int i82 = i26 + 1;
            int iCharAt11 = str2.charAt(i26);
            if (iCharAt11 >= 55296) {
                int i83 = iCharAt11 & 8191;
                int i84 = i82;
                int i85 = 13;
                while (true) {
                    i35 = i84 + 1;
                    cCharAt11 = str2.charAt(i84);
                    i27 = i16;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i83 |= (cCharAt11 & 8191) << i85;
                    i85 += 13;
                    i84 = i35;
                    i16 = i27;
                }
                iCharAt11 = i83 | (cCharAt11 << i85);
                i28 = i35;
            } else {
                i27 = i16;
                i28 = i82;
            }
            int i86 = iCharAt11 & 255;
            int i87 = i13;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i74] = i75;
                i74++;
            }
            if (i86 >= 51) {
                int i88 = i28 + 1;
                int iCharAt12 = str2.charAt(i28);
                char c10 = 55296;
                if (iCharAt12 >= 55296) {
                    int i89 = 13;
                    int i90 = iCharAt12 & 8191;
                    int i91 = i88;
                    while (true) {
                        i34 = i91 + 1;
                        cCharAt10 = str2.charAt(i91);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i90 |= (cCharAt10 & 8191) << i89;
                        i89 += 13;
                        i91 = i34;
                        c10 = 55296;
                    }
                    iCharAt12 = i90 | (cCharAt10 << i89);
                    i32 = i34;
                } else {
                    i32 = i88;
                }
                int i92 = i32;
                int i93 = i86 - 51;
                if (i93 == 9 || i93 == 17) {
                    i33 = 2;
                    objArr2[((i75 / 3) * 2) + 1] = objArr[i12];
                    i12++;
                } else {
                    if (i93 == 12 && !z12) {
                        objArr2[((i75 / 3) * 2) + 1] = objArr[i12];
                        i12++;
                    }
                    i33 = 2;
                }
                int i94 = iCharAt12 * i33;
                Object obj = objArr[i94];
                if (obj instanceof Field) {
                    fieldK2 = (Field) obj;
                } else {
                    fieldK2 = K(cls, (String) obj);
                    objArr[i94] = fieldK2;
                }
                str = str2;
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldK2);
                int i95 = i94 + 1;
                Object obj2 = objArr[i95];
                if (obj2 instanceof Field) {
                    fieldK3 = (Field) obj2;
                } else {
                    fieldK3 = K(cls, (String) obj2);
                    objArr[i95] = fieldK3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldK3);
                cls = cls;
                i30 = i92;
                iObjectFieldOffset = iObjectFieldOffset3;
                i31 = 0;
                i29 = i12;
                i38 = i38;
            } else {
                str = str2;
                int i96 = i12 + 1;
                Field fieldK4 = K(cls, (String) objArr[i12]);
                if (i86 == 9 || i86 == 17) {
                    z10 = true;
                    objArr2[((i75 / 3) * 2) + 1] = fieldK4.getType();
                } else {
                    if (i86 == 27 || i86 == 49) {
                        z10 = true;
                        i29 = i96 + 1;
                        objArr2[((i75 / 3) * 2) + 1] = objArr[i96];
                    } else {
                        if (i86 == 12 || i86 == 30 || i86 == 44) {
                            if (!z12) {
                                i29 = i96 + 1;
                                objArr2[((i75 / 3) * 2) + 1] = objArr[i96];
                                z10 = true;
                            }
                        } else if (i86 == 50) {
                            int i97 = i72 + 1;
                            iArr[i72] = i75;
                            int i98 = (i75 / 3) * 2;
                            int i99 = i96 + 1;
                            objArr2[i98] = objArr[i96];
                            if ((iCharAt11 & 2048) != 0) {
                                i96 = i99 + 1;
                                objArr2[i98 + 1] = objArr[i99];
                                i72 = i97;
                            } else {
                                i72 = i97;
                                i96 = i99;
                            }
                        }
                        z10 = true;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldK4);
                    if ((iCharAt11 & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) == 4096) {
                        z11 = z10;
                    } else {
                        z11 = false;
                    }
                    if (z11 || i86 > 17) {
                        iObjectFieldOffset2 = 1048575;
                        i30 = i28;
                        i31 = 0;
                    } else {
                        int i100 = i28 + 1;
                        int iCharAt13 = str.charAt(i28);
                        if (iCharAt13 >= 55296) {
                            int i101 = iCharAt13 & 8191;
                            int i102 = 13;
                            while (true) {
                                i30 = i100 + 1;
                                cCharAt9 = str.charAt(i100);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i101 |= (cCharAt9 & 8191) << i102;
                                i102 += 13;
                                i100 = i30;
                            }
                            iCharAt13 = i101 | (cCharAt9 << i102);
                        } else {
                            i30 = i100;
                        }
                        int i103 = (iCharAt13 / 32) + (i38 * 2);
                        Object obj3 = objArr[i103];
                        if (obj3 instanceof Field) {
                            fieldK = (Field) obj3;
                        } else {
                            fieldK = K(cls, (String) obj3);
                            objArr[i103] = fieldK;
                        }
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldK);
                        i31 = iCharAt13 % 32;
                    }
                    if (i86 >= 18 && i86 <= 49) {
                        iArr[i73] = iObjectFieldOffset;
                        i73++;
                    }
                }
                i29 = i96;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldK4);
                if ((iCharAt11 & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) == 4096) {
                    z11 = z10;
                } else {
                    z11 = false;
                }
                if (z11) {
                    iObjectFieldOffset2 = 1048575;
                    i30 = i28;
                    i31 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i30 = i28;
                    i31 = 0;
                }
                if (i86 >= 18) {
                    iArr[i73] = iObjectFieldOffset;
                    i73++;
                }
            }
            int i104 = i75 + 1;
            iArr3[i75] = iCharAt10;
            int i105 = i104 + 1;
            iArr3[i104] = iObjectFieldOffset | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i86 << 20);
            i75 = i105 + 1;
            iArr3[i105] = (i31 << 20) | iObjectFieldOffset2;
            str2 = str;
            i38 = i38;
            cls = cls;
            i13 = i87;
            length = i78;
            i15 = i25;
            i16 = i27;
            i12 = i29;
        }
        return new s0<>(iArr3, objArr2, i13, i16, b1Var.f10618a, z12, iArr, i15, i71, u0Var, f0Var, i1Var, pVar, k0Var);
    }

    public static <T> boolean y(T t10, long j10) {
        return ((Boolean) m1.o(t10, j10)).booleanValue();
    }

    public static <T> double z(T t10, long j10) {
        return ((Double) m1.o(t10, j10)).doubleValue();
    }

    public final <K, V> int D(T t10, byte[] bArr, int i10, int i11, int i12, long j10, e.a aVar) throws IOException {
        Unsafe unsafe = f10754s;
        Object objM = m(i12);
        Object object = unsafe.getObject(t10, j10);
        if (this.f10771q.c(object)) {
            Object objF = this.f10771q.f();
            this.f10771q.a(objF, object);
            unsafe.putObject(t10, j10, objF);
            object = objF;
        }
        this.f10771q.e(objM);
        this.f10771q.h(object);
        int iT = e.t(bArr, i10, aVar);
        int i13 = aVar.f10632a;
        if (i13 < 0 || i13 > i11 - iT) {
            throw z.e();
        }
        throw null;
    }

    public final int E(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, e.a aVar) throws IOException {
        Unsafe unsafe = f10754s;
        long j11 = this.f10755a[i17 + 2] & 1048575;
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
                unsafe.putObject(t10, j10, Long.valueOf(aVar.f10633b));
                unsafe.putInt(t10, j11, i13);
                return iV;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iT = e.t(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Integer.valueOf(aVar.f10632a));
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
                unsafe.putObject(t10, j10, Boolean.valueOf(aVar.f10633b != 0));
                unsafe.putInt(t10, j11, i13);
                return iV2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iT2 = e.t(bArr, i10, aVar);
                int i22 = aVar.f10632a;
                if (i22 == 0) {
                    unsafe.putObject(t10, j10, "");
                } else {
                    if ((i15 & 536870912) != 0 && !n1.e(bArr, iT2, iT2 + i22)) {
                        throw z.b();
                    }
                    unsafe.putObject(t10, j10, new String(bArr, iT2, i22, y.f10802b));
                    iT2 += i22;
                }
                unsafe.putInt(t10, j11, i13);
                return iT2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iE = e.e(n(i17), bArr, i10, i11, aVar);
                Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object == null) {
                    unsafe.putObject(t10, j10, aVar.f10634c);
                } else {
                    unsafe.putObject(t10, j10, y.c(object, aVar.f10634c));
                }
                unsafe.putInt(t10, j11, i13);
                return iE;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iA = e.a(bArr, i10, aVar);
                unsafe.putObject(t10, j10, aVar.f10634c);
                unsafe.putInt(t10, j11, i13);
                return iA;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iT3 = e.t(bArr, i10, aVar);
                int i23 = aVar.f10632a;
                y.b bVarL = l(i17);
                if (bVarL == null || bVarL.a()) {
                    unsafe.putObject(t10, j10, Integer.valueOf(i23));
                    unsafe.putInt(t10, j11, i13);
                } else {
                    o(t10).b(i12, Long.valueOf(i23));
                }
                return iT3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iT4 = e.t(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Integer.valueOf(j.a(aVar.f10632a)));
                unsafe.putInt(t10, j11, i13);
                return iT4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iV3 = e.v(bArr, i10, aVar);
                unsafe.putObject(t10, j10, Long.valueOf(j.b(aVar.f10633b)));
                unsafe.putInt(t10, j11, i13);
                return iV3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iD = e.d(n(i17), bArr, i10, i11, (i12 & (-8)) | 4, aVar);
                Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(t10, j10, aVar.f10634c);
                } else {
                    unsafe.putObject(t10, j10, y.c(object2, aVar.f10634c));
                }
                unsafe.putInt(t10, j11, i13);
                return iD;
            default:
                return i10;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12341. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int F(T r29, byte[] r30, int r31, int r32, int r33, m7.e.a r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m7.s0.F(java.lang.Object, byte[], int, int, int, m7.e$a):int");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x026c  */
    /* JADX WARN: Code duplicated, block: B:108:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:111:0x02eb A[PHI: r0 r20 r27 r28 r29
      0x02eb: PHI (r0v19 int) = (r0v14 int), (r0v21 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02eb: PHI (r20v7 int) = (r20v5 int), (r20v8 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02eb: PHI (r27v2 int) = (r27v0 int), (r27v3 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02eb: PHI (r28v3 int) = (r28v1 int), (r28v4 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x02eb: PHI (r29v6 sun.misc.Unsafe) = (r29v4 sun.misc.Unsafe), (r29v7 sun.misc.Unsafe) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:112:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:114:0x0305  */
    /* JADX WARN: Code duplicated, block: B:119:0x0320  */
    /* JADX WARN: Code duplicated, block: B:121:0x033c A[PHI: r0 r20 r27 r28 r29
      0x033c: PHI (r0v18 int) = (r0v14 int), (r0v21 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x033c: PHI (r20v6 int) = (r20v5 int), (r20v8 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x033c: PHI (r27v1 int) = (r27v0 int), (r27v3 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x033c: PHI (r28v2 int) = (r28v1 int), (r28v4 int) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]
      0x033c: PHI (r29v5 sun.misc.Unsafe) = (r29v4 sun.misc.Unsafe), (r29v7 sun.misc.Unsafe) binds: [B:120:0x033a, B:109:0x02e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:134:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0156 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x0209 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x0224 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x030c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x004c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x009c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x023c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x023c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x023c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x023c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x02a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x029a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0057  */
    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:24:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0083  */
    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0096  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:43:0x0108  */
    /* JADX WARN: Code duplicated, block: B:46:0x011f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0139  */
    /* JADX WARN: Code duplicated, block: B:51:0x0140  */
    /* JADX WARN: Code duplicated, block: B:52:0x014a  */
    /* JADX WARN: Code duplicated, block: B:56:0x015c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0161  */
    /* JADX WARN: Code duplicated, block: B:59:0x016b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0182  */
    /* JADX WARN: Code duplicated, block: B:64:0x0184  */
    /* JADX WARN: Code duplicated, block: B:66:0x018a  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:84:0x0217  */
    /* JADX WARN: Code duplicated, block: B:91:0x0245  */
    /* JADX WARN: Code duplicated, block: B:93:0x0254  */
    /* JADX WARN: Code duplicated, block: B:97:0x0263  */
    /* JADX WARN: Code duplicated, block: B:99:0x0269  */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0099. Please report as an issue. */
    public final int G(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        int i12;
        int iS;
        int I;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe;
        int i16;
        int i17;
        int[] iArr;
        int i18;
        int i19;
        Unsafe unsafe2;
        long j10;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        y.d dVarB;
        int i29;
        Unsafe unsafe3;
        int size;
        int i30;
        int i31;
        int i32;
        int i33;
        Unsafe unsafe4;
        int i34;
        int i35;
        Unsafe unsafe5;
        int iV;
        boolean z10;
        Object object;
        Unsafe unsafe6;
        s0<T> s0Var = this;
        T t11 = t10;
        byte[] bArr2 = bArr;
        int i36 = i11;
        e.a aVar2 = aVar;
        Unsafe unsafe7 = f10754s;
        int i37 = -1;
        int i38 = 1048575;
        int iR = i10;
        int i39 = 1048575;
        int i40 = -1;
        int i41 = 0;
        int i42 = 0;
        while (iR < i36) {
            int i43 = iR + 1;
            byte b10 = bArr2[iR];
            if (b10 < 0) {
                iS = e.s(b10, bArr2, i43, aVar2);
                i12 = aVar2.f10632a;
            } else {
                i12 = b10;
                iS = i43;
            }
            int i44 = i12 >>> 3;
            int i45 = i12 & 7;
            if (i44 > i40) {
                int i46 = i41 / 3;
                if (i44 < s0Var.f10757c || i44 > s0Var.f10758d) {
                    i13 = i37;
                } else {
                    I = s0Var.N(i44, i46);
                }
                if (i13 == i37) {
                    i14 = iS;
                    i15 = i44;
                    unsafe = unsafe7;
                    i16 = i37;
                    i17 = 0;
                } else {
                    iArr = s0Var.f10755a;
                    i18 = iArr[i13 + 1];
                    i19 = (i18 & 267386880) >>> 20;
                    unsafe2 = unsafe7;
                    j10 = i18 & i38;
                    if (i19 <= 17) {
                        int i47 = iArr[i13 + 2];
                        i31 = 1 << (i47 >>> 20);
                        i22 = 1048575;
                        i32 = i47 & 1048575;
                        i33 = i13;
                        if (i32 != i39) {
                            if (i39 != 1048575) {
                                long j11 = i39;
                                unsafe6 = unsafe2;
                                unsafe6.putInt(t11, j11, i42);
                            } else {
                                unsafe6 = unsafe2;
                            }
                            if (i32 != 1048575) {
                                i42 = unsafe6.getInt(t11, i32);
                            }
                            unsafe4 = unsafe6;
                            i39 = i32;
                        } else {
                            unsafe4 = unsafe2;
                        }
                        switch (i19) {
                            case 0:
                                i15 = i44;
                                i17 = i33;
                                i34 = iS;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 1) {
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    m1.u(t11, j10, Double.longBitsToDouble(e.c(bArr2, i34)));
                                    iR = i34 + 8;
                                    i42 |= i31;
                                    i29 = i17;
                                    int i48 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i48;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 1:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i34 = iS;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 5) {
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    m1.v(t11, j10, Float.intBitsToFloat(e.b(bArr2, i34)));
                                    iR = i34 + 4;
                                    i42 |= i31;
                                    i29 = i17;
                                    int i49 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i49;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 2:
                            case 3:
                                i15 = i44;
                                i17 = i33;
                                i34 = iS;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iV = e.v(bArr2, i34, aVar2);
                                    unsafe5.putLong(t10, j10, aVar2.f10633b);
                                    i42 |= i31;
                                    i29 = i17;
                                    iR = iV;
                                    int i410 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i410;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 4:
                            case 11:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i34 = iS;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, i34, aVar2);
                                    unsafe5.putInt(t11, j10, aVar2.f10632a);
                                    i42 |= i31;
                                    i29 = i17;
                                    int i411 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i411;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 5:
                            case 14:
                                i15 = i44;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 1) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    unsafe5.putLong(t10, j10, e.c(bArr2, iS));
                                    i34 = iS;
                                    iR = i34 + 8;
                                    i42 |= i31;
                                    i29 = i17;
                                    int i412 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i412;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 6:
                            case 13:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 5) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    unsafe5.putInt(t11, j10, e.b(bArr2, iS));
                                    iR = iS + 4;
                                    i42 |= i31;
                                    unsafe7 = unsafe5;
                                    i41 = i17;
                                    i39 = i35;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 7:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.v(bArr2, iS, aVar2);
                                    if (aVar2.f10633b != 0) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    m1.q(t11, j10, z10);
                                    i42 |= i31;
                                    unsafe7 = unsafe5;
                                    i41 = i17;
                                    i39 = i35;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 8:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 2) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    if ((i18 & 536870912) == 0) {
                                        iR = e.p(bArr2, iS, aVar2);
                                    } else {
                                        iR = e.q(bArr2, iS, aVar2);
                                    }
                                    unsafe5.putObject(t11, j10, aVar2.f10634c);
                                    i42 |= i31;
                                    unsafe7 = unsafe5;
                                    i41 = i17;
                                    i39 = i35;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 9:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 2) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.e(s0Var.n(i17), bArr2, iS, i36, aVar2);
                                    object = unsafe5.getObject(t11, j10);
                                    if (object == null) {
                                        unsafe5.putObject(t11, j10, aVar2.f10634c);
                                    } else {
                                        unsafe5.putObject(t11, j10, y.c(object, aVar2.f10634c));
                                    }
                                    i42 |= i31;
                                    unsafe7 = unsafe5;
                                    i41 = i17;
                                    i39 = i35;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 10:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 2) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.a(bArr2, iS, aVar2);
                                    unsafe5.putObject(t11, j10, aVar2.f10634c);
                                    i42 |= i31;
                                    i29 = i17;
                                    int i413 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i413;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 12:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, iS, aVar2);
                                    unsafe5.putInt(t11, j10, aVar2.f10632a);
                                    i42 |= i31;
                                    i29 = i17;
                                    int i414 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i414;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 15:
                                i15 = i44;
                                i22 = 1048575;
                                i17 = i33;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    iR = e.t(bArr2, iS, aVar2);
                                    unsafe5.putInt(t11, j10, j.a(aVar2.f10632a));
                                    i42 |= i31;
                                    i29 = i17;
                                    int i415 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i415;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            case 16:
                                if (i45 == 0) {
                                    i15 = i44;
                                    i35 = i39;
                                    unsafe5 = unsafe4;
                                    i17 = i33;
                                    i34 = iS;
                                    i14 = i34;
                                    unsafe = unsafe5;
                                    i39 = i35;
                                    i16 = -1;
                                } else {
                                    int iV2 = e.v(bArr2, iS, aVar2);
                                    i35 = i39;
                                    unsafe5 = unsafe4;
                                    i15 = i44;
                                    unsafe4.putLong(t10, j10, j.b(aVar2.f10633b));
                                    iV = iV2;
                                    i17 = i33;
                                    i42 |= i31;
                                    i29 = i17;
                                    iR = iV;
                                    int i416 = i35;
                                    unsafe3 = unsafe5;
                                    i39 = i416;
                                    i41 = i29;
                                    unsafe7 = unsafe3;
                                    i40 = i15;
                                    i38 = i22;
                                    i37 = -1;
                                }
                                break;
                            default:
                                i15 = i44;
                                i17 = i33;
                                i34 = iS;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                                break;
                        }
                    } else {
                        i15 = i44;
                        i20 = iS;
                        i21 = i39;
                        i22 = 1048575;
                        i23 = i13;
                        if (i19 == 27) {
                            i24 = i23;
                            if (i19 <= 49) {
                                i26 = i21;
                                i27 = i42;
                                unsafe = unsafe2;
                                i16 = -1;
                                iR = H(t10, bArr, i20, i11, i12, i15, i45, i24, i18, i19, j10, aVar);
                                if (iR != i20) {
                                    i41 = i24;
                                    i39 = i26;
                                    i42 = i27;
                                } else {
                                    i28 = iR;
                                    i14 = i28;
                                    i17 = i24;
                                    i39 = i26;
                                    i42 = i27;
                                }
                            } else {
                                i25 = i20;
                                i26 = i21;
                                i27 = i42;
                                unsafe = unsafe2;
                                i16 = -1;
                                if (i19 == 50) {
                                    iR = E(t10, bArr, i25, i11, i12, i15, i45, i18, i19, j10, i24, aVar);
                                    if (iR != i25) {
                                        i41 = i24;
                                        i39 = i26;
                                        i42 = i27;
                                    } else {
                                        i28 = iR;
                                        i14 = i28;
                                        i17 = i24;
                                        i39 = i26;
                                        i42 = i27;
                                    }
                                } else if (i45 == 2) {
                                    D(t10, bArr, i25, i11, i24, j10, aVar);
                                    throw null;
                                }
                            }
                            s0Var = this;
                            t11 = t10;
                            bArr2 = bArr;
                            i36 = i11;
                            aVar2 = aVar;
                            i37 = i16;
                            i40 = i15;
                            unsafe7 = unsafe;
                            i38 = 1048575;
                        } else if (i45 == 2) {
                            dVarB = (y.d) unsafe2.getObject(t11, j10);
                            if (!dVarB.f()) {
                                size = dVarB.size();
                                if (size == 0) {
                                    i30 = 10;
                                } else {
                                    i30 = size * 2;
                                }
                                dVarB = dVarB.b(i30);
                                unsafe2.putObject(t11, j10, dVarB);
                            }
                            i29 = i23;
                            unsafe3 = unsafe2;
                            iR = e.f(s0Var.n(i23), i12, bArr, i20, i11, dVarB, aVar);
                            i39 = i21;
                            i41 = i29;
                            unsafe7 = unsafe3;
                            i40 = i15;
                            i38 = i22;
                            i37 = -1;
                        } else {
                            i24 = i23;
                            i25 = i20;
                            unsafe = unsafe2;
                            i27 = i42;
                            i26 = i21;
                            i16 = -1;
                        }
                        i28 = i25;
                        i14 = i28;
                        i17 = i24;
                        i39 = i26;
                        i42 = i27;
                    }
                }
                iR = e.r(i12, bArr, i14, i11, o(t10), aVar);
                i41 = i17;
                s0Var = this;
                t11 = t10;
                bArr2 = bArr;
                i36 = i11;
                aVar2 = aVar;
                i37 = i16;
                i40 = i15;
                unsafe7 = unsafe;
                i38 = 1048575;
            } else {
                I = s0Var.I(i44);
            }
            i13 = I;
            if (i13 == i37) {
                i14 = iS;
                i15 = i44;
                unsafe = unsafe7;
                i16 = i37;
                i17 = 0;
            } else {
                iArr = s0Var.f10755a;
                i18 = iArr[i13 + 1];
                i19 = (i18 & 267386880) >>> 20;
                unsafe2 = unsafe7;
                j10 = i18 & i38;
                if (i19 <= 17) {
                    int i417 = iArr[i13 + 2];
                    i31 = 1 << (i417 >>> 20);
                    i22 = 1048575;
                    i32 = i417 & 1048575;
                    i33 = i13;
                    if (i32 != i39) {
                        if (i39 != 1048575) {
                            long j12 = i39;
                            unsafe6 = unsafe2;
                            unsafe6.putInt(t11, j12, i42);
                        } else {
                            unsafe6 = unsafe2;
                        }
                        if (i32 != 1048575) {
                            i42 = unsafe6.getInt(t11, i32);
                        }
                        unsafe4 = unsafe6;
                        i39 = i32;
                    } else {
                        unsafe4 = unsafe2;
                    }
                    switch (i19) {
                        case 0:
                            i15 = i44;
                            i17 = i33;
                            i34 = iS;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 1) {
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                m1.u(t11, j10, Double.longBitsToDouble(e.c(bArr2, i34)));
                                iR = i34 + 8;
                                i42 |= i31;
                                i29 = i17;
                                int i418 = i35;
                                unsafe3 = unsafe5;
                                i39 = i418;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 1:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i34 = iS;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 5) {
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                m1.v(t11, j10, Float.intBitsToFloat(e.b(bArr2, i34)));
                                iR = i34 + 4;
                                i42 |= i31;
                                i29 = i17;
                                int i419 = i35;
                                unsafe3 = unsafe5;
                                i39 = i419;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            i15 = i44;
                            i17 = i33;
                            i34 = iS;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 0) {
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iV = e.v(bArr2, i34, aVar2);
                                unsafe5.putLong(t10, j10, aVar2.f10633b);
                                i42 |= i31;
                                i29 = i17;
                                iR = iV;
                                int i4110 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4110;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i34 = iS;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 0) {
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, i34, aVar2);
                                unsafe5.putInt(t11, j10, aVar2.f10632a);
                                i42 |= i31;
                                i29 = i17;
                                int i4111 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4111;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i15 = i44;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 1) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                unsafe5.putLong(t10, j10, e.c(bArr2, iS));
                                i34 = iS;
                                iR = i34 + 8;
                                i42 |= i31;
                                i29 = i17;
                                int i4112 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4112;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 5) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                unsafe5.putInt(t11, j10, e.b(bArr2, iS));
                                iR = iS + 4;
                                i42 |= i31;
                                unsafe7 = unsafe5;
                                i41 = i17;
                                i39 = i35;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 7:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 0) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.v(bArr2, iS, aVar2);
                                if (aVar2.f10633b != 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                m1.q(t11, j10, z10);
                                i42 |= i31;
                                unsafe7 = unsafe5;
                                i41 = i17;
                                i39 = i35;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 8:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 2) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                if ((i18 & 536870912) == 0) {
                                    iR = e.p(bArr2, iS, aVar2);
                                } else {
                                    iR = e.q(bArr2, iS, aVar2);
                                }
                                unsafe5.putObject(t11, j10, aVar2.f10634c);
                                i42 |= i31;
                                unsafe7 = unsafe5;
                                i41 = i17;
                                i39 = i35;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 9:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 2) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.e(s0Var.n(i17), bArr2, iS, i36, aVar2);
                                object = unsafe5.getObject(t11, j10);
                                if (object == null) {
                                    unsafe5.putObject(t11, j10, aVar2.f10634c);
                                } else {
                                    unsafe5.putObject(t11, j10, y.c(object, aVar2.f10634c));
                                }
                                i42 |= i31;
                                unsafe7 = unsafe5;
                                i41 = i17;
                                i39 = i35;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 10:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 2) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.a(bArr2, iS, aVar2);
                                unsafe5.putObject(t11, j10, aVar2.f10634c);
                                i42 |= i31;
                                i29 = i17;
                                int i4113 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4113;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 12:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 0) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, iS, aVar2);
                                unsafe5.putInt(t11, j10, aVar2.f10632a);
                                i42 |= i31;
                                i29 = i17;
                                int i4114 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4114;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 15:
                            i15 = i44;
                            i22 = 1048575;
                            i17 = i33;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            if (i45 == 0) {
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                iR = e.t(bArr2, iS, aVar2);
                                unsafe5.putInt(t11, j10, j.a(aVar2.f10632a));
                                i42 |= i31;
                                i29 = i17;
                                int i4115 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4115;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        case 16:
                            if (i45 == 0) {
                                i15 = i44;
                                i35 = i39;
                                unsafe5 = unsafe4;
                                i17 = i33;
                                i34 = iS;
                                i14 = i34;
                                unsafe = unsafe5;
                                i39 = i35;
                                i16 = -1;
                            } else {
                                int iV3 = e.v(bArr2, iS, aVar2);
                                i35 = i39;
                                unsafe5 = unsafe4;
                                i15 = i44;
                                unsafe4.putLong(t10, j10, j.b(aVar2.f10633b));
                                iV = iV3;
                                i17 = i33;
                                i42 |= i31;
                                i29 = i17;
                                iR = iV;
                                int i4116 = i35;
                                unsafe3 = unsafe5;
                                i39 = i4116;
                                i41 = i29;
                                unsafe7 = unsafe3;
                                i40 = i15;
                                i38 = i22;
                                i37 = -1;
                            }
                            break;
                        default:
                            i15 = i44;
                            i17 = i33;
                            i34 = iS;
                            i35 = i39;
                            unsafe5 = unsafe4;
                            i14 = i34;
                            unsafe = unsafe5;
                            i39 = i35;
                            i16 = -1;
                            break;
                    }
                } else {
                    i15 = i44;
                    i20 = iS;
                    i21 = i39;
                    i22 = 1048575;
                    i23 = i13;
                    if (i19 == 27) {
                        i24 = i23;
                        if (i19 <= 49) {
                            i26 = i21;
                            i27 = i42;
                            unsafe = unsafe2;
                            i16 = -1;
                            iR = H(t10, bArr, i20, i11, i12, i15, i45, i24, i18, i19, j10, aVar);
                            if (iR != i20) {
                                i41 = i24;
                                i39 = i26;
                                i42 = i27;
                            } else {
                                i28 = iR;
                                i14 = i28;
                                i17 = i24;
                                i39 = i26;
                                i42 = i27;
                            }
                        } else {
                            i25 = i20;
                            i26 = i21;
                            i27 = i42;
                            unsafe = unsafe2;
                            i16 = -1;
                            if (i19 == 50) {
                                iR = E(t10, bArr, i25, i11, i12, i15, i45, i18, i19, j10, i24, aVar);
                                if (iR != i25) {
                                    i41 = i24;
                                    i39 = i26;
                                    i42 = i27;
                                } else {
                                    i28 = iR;
                                    i14 = i28;
                                    i17 = i24;
                                    i39 = i26;
                                    i42 = i27;
                                }
                            } else if (i45 == 2) {
                                D(t10, bArr, i25, i11, i24, j10, aVar);
                                throw null;
                            }
                        }
                        s0Var = this;
                        t11 = t10;
                        bArr2 = bArr;
                        i36 = i11;
                        aVar2 = aVar;
                        i37 = i16;
                        i40 = i15;
                        unsafe7 = unsafe;
                        i38 = 1048575;
                    } else if (i45 == 2) {
                        dVarB = (y.d) unsafe2.getObject(t11, j10);
                        if (!dVarB.f()) {
                            size = dVarB.size();
                            if (size == 0) {
                                i30 = 10;
                            } else {
                                i30 = size * 2;
                            }
                            dVarB = dVarB.b(i30);
                            unsafe2.putObject(t11, j10, dVarB);
                        }
                        i29 = i23;
                        unsafe3 = unsafe2;
                        iR = e.f(s0Var.n(i23), i12, bArr, i20, i11, dVarB, aVar);
                        i39 = i21;
                        i41 = i29;
                        unsafe7 = unsafe3;
                        i40 = i15;
                        i38 = i22;
                        i37 = -1;
                    } else {
                        i24 = i23;
                        i25 = i20;
                        unsafe = unsafe2;
                        i27 = i42;
                        i26 = i21;
                        i16 = -1;
                    }
                    i28 = i25;
                    i14 = i28;
                    i17 = i24;
                    i39 = i26;
                    i42 = i27;
                }
            }
            iR = e.r(i12, bArr, i14, i11, o(t10), aVar);
            i41 = i17;
            s0Var = this;
            t11 = t10;
            bArr2 = bArr;
            i36 = i11;
            aVar2 = aVar;
            i37 = i16;
            i40 = i15;
            unsafe7 = unsafe;
            i38 = 1048575;
        }
        int i50 = i42;
        Unsafe unsafe8 = unsafe7;
        if (i39 != i38) {
            unsafe8.putInt(t10, i39, i50);
        }
        if (iR == i11) {
            return iR;
        }
        throw z.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int H(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, e.a aVar) throws IOException {
        int iU;
        int iT = i10;
        Unsafe unsafe = f10754s;
        y.d dVarB = (y.d) unsafe.getObject(t10, j11);
        if (!dVarB.f()) {
            int size = dVarB.size();
            dVarB = dVarB.b(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, dVarB);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return e.h(bArr, iT, dVarB, aVar);
                }
                if (i14 == 1) {
                    m mVar = (m) dVarB;
                    mVar.k(Double.longBitsToDouble(e.c(bArr, i10)));
                    while (true) {
                        int i17 = iT + 8;
                        if (i17 >= i11) {
                            return i17;
                        }
                        iT = e.t(bArr, i17, aVar);
                        if (i12 != aVar.f10632a) {
                            return i17;
                        }
                        mVar.k(Double.longBitsToDouble(e.c(bArr, iT)));
                    }
                }
                break;
            case 19:
            case 36:
                if (i14 == 2) {
                    return e.k(bArr, iT, dVarB, aVar);
                }
                if (i14 == 5) {
                    u uVar = (u) dVarB;
                    uVar.k(Float.intBitsToFloat(e.b(bArr, i10)));
                    while (true) {
                        int i18 = iT + 4;
                        if (i18 >= i11) {
                            return i18;
                        }
                        iT = e.t(bArr, i18, aVar);
                        if (i12 != aVar.f10632a) {
                            return i18;
                        }
                        uVar.k(Float.intBitsToFloat(e.b(bArr, iT)));
                    }
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return e.o(bArr, iT, dVarB, aVar);
                }
                if (i14 == 0) {
                    g0 g0Var = (g0) dVarB;
                    int iV = e.v(bArr, iT, aVar);
                    g0Var.k(aVar.f10633b);
                    while (iV < i11) {
                        int iT2 = e.t(bArr, iV, aVar);
                        if (i12 != aVar.f10632a) {
                            return iV;
                        }
                        iV = e.v(bArr, iT2, aVar);
                        g0Var.k(aVar.f10633b);
                    }
                    return iV;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return e.n(bArr, iT, dVarB, aVar);
                }
                if (i14 == 0) {
                    return e.u(i12, bArr, i10, i11, dVarB, aVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return e.j(bArr, iT, dVarB, aVar);
                }
                if (i14 == 1) {
                    g0 g0Var2 = (g0) dVarB;
                    g0Var2.k(e.c(bArr, i10));
                    while (true) {
                        int i19 = iT + 8;
                        if (i19 >= i11) {
                            return i19;
                        }
                        iT = e.t(bArr, i19, aVar);
                        if (i12 != aVar.f10632a) {
                            return i19;
                        }
                        g0Var2.k(e.c(bArr, iT));
                    }
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return e.i(bArr, iT, dVarB, aVar);
                }
                if (i14 == 5) {
                    x xVar = (x) dVarB;
                    xVar.k(e.b(bArr, i10));
                    while (true) {
                        int i20 = iT + 4;
                        if (i20 >= i11) {
                            return i20;
                        }
                        iT = e.t(bArr, i20, aVar);
                        if (i12 != aVar.f10632a) {
                            return i20;
                        }
                        xVar.k(e.b(bArr, iT));
                    }
                }
                break;
            case 25:
            case 42:
                if (i14 == 2) {
                    return e.g(bArr, iT, dVarB, aVar);
                }
                if (i14 == 0) {
                    f fVar = (f) dVarB;
                    int iV2 = e.v(bArr, iT, aVar);
                    fVar.k(aVar.f10633b != 0);
                    while (iV2 < i11) {
                        int iT3 = e.t(bArr, iV2, aVar);
                        if (i12 != aVar.f10632a) {
                            return iV2;
                        }
                        iV2 = e.v(bArr, iT3, aVar);
                        fVar.k(aVar.f10633b != 0);
                    }
                    return iV2;
                }
                break;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        int iT4 = e.t(bArr, iT, aVar);
                        int i21 = aVar.f10632a;
                        if (i21 < 0) {
                            throw z.c();
                        }
                        if (i21 == 0) {
                            dVarB.add("");
                        } else {
                            dVarB.add(new String(bArr, iT4, i21, y.f10802b));
                            iT4 += i21;
                        }
                        while (iT4 < i11) {
                            int iT5 = e.t(bArr, iT4, aVar);
                            if (i12 != aVar.f10632a) {
                                return iT4;
                            }
                            iT4 = e.t(bArr, iT5, aVar);
                            int i22 = aVar.f10632a;
                            if (i22 < 0) {
                                throw z.c();
                            }
                            if (i22 == 0) {
                                dVarB.add("");
                            } else {
                                dVarB.add(new String(bArr, iT4, i22, y.f10802b));
                                iT4 += i22;
                            }
                        }
                        return iT4;
                    }
                    int iT6 = e.t(bArr, iT, aVar);
                    int i23 = aVar.f10632a;
                    if (i23 < 0) {
                        throw z.c();
                    }
                    if (i23 == 0) {
                        dVarB.add("");
                    } else {
                        int i24 = iT6 + i23;
                        if (!n1.e(bArr, iT6, i24)) {
                            throw z.b();
                        }
                        dVarB.add(new String(bArr, iT6, i23, y.f10802b));
                        iT6 = i24;
                    }
                    while (iT6 < i11) {
                        int iT7 = e.t(bArr, iT6, aVar);
                        if (i12 != aVar.f10632a) {
                            return iT6;
                        }
                        iT6 = e.t(bArr, iT7, aVar);
                        int i25 = aVar.f10632a;
                        if (i25 < 0) {
                            throw z.c();
                        }
                        if (i25 == 0) {
                            dVarB.add("");
                        } else {
                            int i26 = iT6 + i25;
                            if (!n1.e(bArr, iT6, i26)) {
                                throw z.b();
                            }
                            dVarB.add(new String(bArr, iT6, i25, y.f10802b));
                            iT6 = i26;
                        }
                    }
                    return iT6;
                }
                break;
            case 27:
                if (i14 == 2) {
                    return e.f(n(i15), i12, bArr, i10, i11, dVarB, aVar);
                }
                break;
            case 28:
                if (i14 == 2) {
                    int iT8 = e.t(bArr, iT, aVar);
                    int i27 = aVar.f10632a;
                    if (i27 < 0) {
                        throw z.c();
                    }
                    if (i27 > bArr.length - iT8) {
                        throw z.e();
                    }
                    if (i27 == 0) {
                        dVarB.add(i.f10666i);
                    } else {
                        dVarB.add(i.l(bArr, iT8, i27));
                        iT8 += i27;
                    }
                    while (iT8 < i11) {
                        int iT9 = e.t(bArr, iT8, aVar);
                        if (i12 != aVar.f10632a) {
                            return iT8;
                        }
                        iT8 = e.t(bArr, iT9, aVar);
                        int i28 = aVar.f10632a;
                        if (i28 < 0) {
                            throw z.c();
                        }
                        if (i28 > bArr.length - iT8) {
                            throw z.e();
                        }
                        if (i28 == 0) {
                            dVarB.add(i.f10666i);
                        } else {
                            dVarB.add(i.l(bArr, iT8, i28));
                            iT8 += i28;
                        }
                    }
                    return iT8;
                }
                break;
            case 30:
            case 44:
                if (i14 == 2) {
                    iU = e.n(bArr, iT, dVarB, aVar);
                } else if (i14 == 0) {
                    iU = e.u(i12, bArr, i10, i11, dVarB, aVar);
                }
                w wVar = (w) t10;
                j1 j1Var = wVar.unknownFields;
                if (j1Var == j1.f10682f) {
                    j1Var = null;
                }
                j1 j1Var2 = (j1) d1.y(i13, dVarB, l(i15), j1Var, this.f10769o);
                if (j1Var2 != null) {
                    wVar.unknownFields = j1Var2;
                }
                return iU;
            case 33:
            case 47:
                if (i14 == 2) {
                    return e.l(bArr, iT, dVarB, aVar);
                }
                if (i14 == 0) {
                    x xVar2 = (x) dVarB;
                    int iT10 = e.t(bArr, iT, aVar);
                    xVar2.k(j.a(aVar.f10632a));
                    while (iT10 < i11) {
                        int iT11 = e.t(bArr, iT10, aVar);
                        if (i12 != aVar.f10632a) {
                            return iT10;
                        }
                        iT10 = e.t(bArr, iT11, aVar);
                        xVar2.k(j.a(aVar.f10632a));
                    }
                    return iT10;
                }
                break;
            case 34:
            case 48:
                if (i14 == 2) {
                    return e.m(bArr, iT, dVarB, aVar);
                }
                if (i14 == 0) {
                    g0 g0Var3 = (g0) dVarB;
                    int iV3 = e.v(bArr, iT, aVar);
                    g0Var3.k(j.b(aVar.f10633b));
                    while (iV3 < i11) {
                        int iT12 = e.t(bArr, iV3, aVar);
                        if (i12 != aVar.f10632a) {
                            return iV3;
                        }
                        iV3 = e.v(bArr, iT12, aVar);
                        g0Var3.k(j.b(aVar.f10633b));
                    }
                    return iV3;
                }
                break;
            case 49:
                if (i14 == 3) {
                    c1 c1VarN = n(i15);
                    int i29 = (i12 & (-8)) | 4;
                    iT = e.d(c1VarN, bArr, i10, i11, i29, aVar);
                    dVarB.add(aVar.f10634c);
                    while (iT < i11) {
                        int iT13 = e.t(bArr, iT, aVar);
                        if (i12 == aVar.f10632a) {
                            iT = e.d(c1VarN, bArr, iT13, i11, i29, aVar);
                            dVarB.add(aVar.f10634c);
                        }
                    }
                }
                break;
        }
        return iT;
    }

    public final int I(int i10) {
        if (i10 < this.f10757c || i10 > this.f10758d) {
            return -1;
        }
        return N(i10, 0);
    }

    public final int J(int i10) {
        return this.f10755a[i10 + 2];
    }

    public final void L(T t10, int i10) {
        int iJ = J(i10);
        long j10 = 1048575 & iJ;
        if (j10 == 1048575) {
            return;
        }
        m1.w(t10, j10, (1 << (iJ >>> 20)) | m1.m(t10, j10));
    }

    public final void M(T t10, int i10, int i11) {
        m1.w(t10, J(i11) & 1048575, i10);
    }

    public final int N(int i10, int i11) {
        int length = (this.f10755a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f10755a[i13];
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

    public final int O(int i10) {
        return this.f10755a[i10 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:101:0x0301  */
    /* JADX WARN: Code duplicated, block: B:102:0x0311  */
    /* JADX WARN: Code duplicated, block: B:103:0x0321  */
    /* JADX WARN: Code duplicated, block: B:104:0x0330  */
    /* JADX WARN: Code duplicated, block: B:105:0x0343  */
    /* JADX WARN: Code duplicated, block: B:106:0x0352  */
    /* JADX WARN: Code duplicated, block: B:107:0x0361  */
    /* JADX WARN: Code duplicated, block: B:108:0x0370  */
    /* JADX WARN: Code duplicated, block: B:109:0x037f  */
    /* JADX WARN: Code duplicated, block: B:110:0x038e  */
    /* JADX WARN: Code duplicated, block: B:111:0x039d  */
    /* JADX WARN: Code duplicated, block: B:112:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:113:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:115:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:117:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:118:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:120:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:121:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:123:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:124:0x0400  */
    /* JADX WARN: Code duplicated, block: B:126:0x0404  */
    /* JADX WARN: Code duplicated, block: B:127:0x0410  */
    /* JADX WARN: Code duplicated, block: B:129:0x0414  */
    /* JADX WARN: Code duplicated, block: B:130:0x0420  */
    /* JADX WARN: Code duplicated, block: B:132:0x0424  */
    /* JADX WARN: Code duplicated, block: B:133:0x0430  */
    /* JADX WARN: Code duplicated, block: B:135:0x0434  */
    /* JADX WARN: Code duplicated, block: B:136:0x0440  */
    /* JADX WARN: Code duplicated, block: B:138:0x0444  */
    /* JADX WARN: Code duplicated, block: B:139:0x0452  */
    /* JADX WARN: Code duplicated, block: B:141:0x0456  */
    /* JADX WARN: Code duplicated, block: B:142:0x0466  */
    /* JADX WARN: Code duplicated, block: B:144:0x046a  */
    /* JADX WARN: Code duplicated, block: B:145:0x0473  */
    /* JADX WARN: Code duplicated, block: B:147:0x0477  */
    /* JADX WARN: Code duplicated, block: B:148:0x0482  */
    /* JADX WARN: Code duplicated, block: B:150:0x0486  */
    /* JADX WARN: Code duplicated, block: B:151:0x0491  */
    /* JADX WARN: Code duplicated, block: B:153:0x0495  */
    /* JADX WARN: Code duplicated, block: B:154:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:156:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:157:0x04af  */
    /* JADX WARN: Code duplicated, block: B:159:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:160:0x04be  */
    /* JADX WARN: Code duplicated, block: B:162:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:163:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:165:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:166:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:168:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:181:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x04ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0081  */
    /* JADX WARN: Code duplicated, block: B:29:0x0087  */
    /* JADX WARN: Code duplicated, block: B:30:0x0096  */
    /* JADX WARN: Code duplicated, block: B:32:0x009c  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00be  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:50:0x0102  */
    /* JADX WARN: Code duplicated, block: B:51:0x0110  */
    /* JADX WARN: Code duplicated, block: B:53:0x0116  */
    /* JADX WARN: Code duplicated, block: B:54:0x0126  */
    /* JADX WARN: Code duplicated, block: B:56:0x012c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0135  */
    /* JADX WARN: Code duplicated, block: B:59:0x013b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0147  */
    /* JADX WARN: Code duplicated, block: B:62:0x014d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0159  */
    /* JADX WARN: Code duplicated, block: B:65:0x015f  */
    /* JADX WARN: Code duplicated, block: B:66:0x016b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0171  */
    /* JADX WARN: Code duplicated, block: B:69:0x017d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0183  */
    /* JADX WARN: Code duplicated, block: B:72:0x018f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0195  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:84:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x0201  */
    /* JADX WARN: Code duplicated, block: B:86:0x0211  */
    /* JADX WARN: Code duplicated, block: B:87:0x0221  */
    /* JADX WARN: Code duplicated, block: B:88:0x0231  */
    /* JADX WARN: Code duplicated, block: B:89:0x0241  */
    /* JADX WARN: Code duplicated, block: B:90:0x0251  */
    /* JADX WARN: Code duplicated, block: B:91:0x0261  */
    /* JADX WARN: Code duplicated, block: B:92:0x0271  */
    /* JADX WARN: Code duplicated, block: B:93:0x0281  */
    /* JADX WARN: Code duplicated, block: B:94:0x0291  */
    /* JADX WARN: Code duplicated, block: B:95:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:96:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:98:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:99:0x02e1  */
    public final void P(T t10, q1 q1Var) throws IOException {
        Iterator itL;
        Map.Entry entry;
        int i10;
        long j10;
        boolean z10;
        if (this.f10760f) {
            s<T> sVarC = this.f10770p.c(t10);
            if (sVarC.h()) {
                itL = null;
                entry = null;
            } else {
                itL = sVarC.l();
                entry = (Map.Entry) itL.next();
            }
        } else {
            itL = null;
            entry = null;
        }
        int length = this.f10755a.length;
        Unsafe unsafe = f10754s;
        int i11 = 1048575;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iO = O(i13);
            int[] iArr = this.f10755a;
            int i14 = iArr[i13];
            int i15 = (iO & 267386880) >>> 20;
            if (i15 <= 17) {
                int i16 = iArr[i13 + 2];
                int i17 = i16 & 1048575;
                if (i17 != i11) {
                    i12 = unsafe.getInt(t10, i17);
                    i11 = i17;
                }
                i10 = 1 << (i16 >>> 20);
            } else {
                i10 = 0;
            }
            while (entry != null) {
                this.f10770p.a(entry);
                if (i14 >= 0) {
                    this.f10770p.g(entry);
                    entry = itL.hasNext() ? (Map.Entry) itL.next() : null;
                } else {
                    j10 = iO & 1048575;
                    switch (i15) {
                        case 0:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).c(i14, m1.k(t10, j10));
                            }
                            break;
                        case 1:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).g(i14, m1.l(t10, j10));
                            }
                            break;
                        case 2:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).j(i14, unsafe.getLong(t10, j10));
                            }
                            break;
                        case 3:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).r(i14, unsafe.getLong(t10, j10));
                            }
                            break;
                        case 4:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).i(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 5:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).f(i14, unsafe.getLong(t10, j10));
                            }
                            break;
                        case 6:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).e(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 7:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).a(i14, m1.i(t10, j10));
                            }
                            break;
                        case 8:
                            if ((i10 & i12) != 0) {
                                R(i14, unsafe.getObject(t10, j10), q1Var);
                            }
                            break;
                        case 9:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).k(i14, unsafe.getObject(t10, j10), n(i13));
                            }
                            break;
                        case 10:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).b(i14, (i) unsafe.getObject(t10, j10));
                            }
                            break;
                        case 11:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).q(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 12:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).d(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 13:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).m(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 14:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).n(i14, unsafe.getLong(t10, j10));
                            }
                            break;
                        case 15:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).o(i14, unsafe.getInt(t10, j10));
                            }
                            break;
                        case 16:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).p(i14, unsafe.getLong(t10, j10));
                            }
                            break;
                        case 17:
                            if ((i10 & i12) != 0) {
                                ((l) q1Var).h(i14, unsafe.getObject(t10, j10), n(i13));
                            }
                            break;
                        case 18:
                            z10 = false;
                            d1.F(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 19:
                            z10 = false;
                            d1.J(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 20:
                            z10 = false;
                            d1.M(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 21:
                            z10 = false;
                            d1.U(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 22:
                            z10 = false;
                            d1.L(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 23:
                            z10 = false;
                            d1.I(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 24:
                            z10 = false;
                            d1.H(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 25:
                            z10 = false;
                            d1.D(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 26:
                            d1.S(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var);
                            break;
                        case 27:
                            d1.N(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, n(i13));
                            break;
                        case 28:
                            d1.E(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var);
                            break;
                        case 29:
                            z10 = false;
                            d1.T(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 30:
                            z10 = false;
                            d1.G(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 31:
                            z10 = false;
                            d1.O(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 32:
                            z10 = false;
                            d1.P(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 33:
                            z10 = false;
                            d1.Q(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 34:
                            z10 = false;
                            d1.R(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                            break;
                        case 35:
                            d1.F(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 36:
                            d1.J(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 37:
                            d1.M(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 38:
                            d1.U(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 39:
                            d1.L(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 40:
                            d1.I(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 41:
                            d1.H(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 42:
                            d1.D(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 43:
                            d1.T(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 44:
                            d1.G(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 45:
                            d1.O(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 46:
                            d1.P(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 47:
                            d1.Q(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 48:
                            d1.R(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                            break;
                        case 49:
                            d1.K(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, n(i13));
                            break;
                        case 50:
                            Q(q1Var, i14, unsafe.getObject(t10, j10), i13);
                            break;
                        case 51:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).c(i14, z(t10, j10));
                            }
                            break;
                        case 52:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).g(i14, A(t10, j10));
                            }
                            break;
                        case 53:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).j(i14, C(t10, j10));
                            }
                            break;
                        case 54:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).r(i14, C(t10, j10));
                            }
                            break;
                        case 55:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).i(i14, B(t10, j10));
                            }
                            break;
                        case 56:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).f(i14, C(t10, j10));
                            }
                            break;
                        case 57:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).e(i14, B(t10, j10));
                            }
                            break;
                        case 58:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).a(i14, y(t10, j10));
                            }
                            break;
                        case 59:
                            if (s(t10, i14, i13)) {
                                R(i14, unsafe.getObject(t10, j10), q1Var);
                            }
                            break;
                        case 60:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).k(i14, unsafe.getObject(t10, j10), n(i13));
                            }
                            break;
                        case 61:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).b(i14, (i) unsafe.getObject(t10, j10));
                            }
                            break;
                        case 62:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).q(i14, B(t10, j10));
                            }
                            break;
                        case 63:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).d(i14, B(t10, j10));
                            }
                            break;
                        case 64:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).m(i14, B(t10, j10));
                            }
                            break;
                        case 65:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).n(i14, C(t10, j10));
                            }
                            break;
                        case 66:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).o(i14, B(t10, j10));
                            }
                            break;
                        case 67:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).p(i14, C(t10, j10));
                            }
                            break;
                        case 68:
                            if (s(t10, i14, i13)) {
                                ((l) q1Var).h(i14, unsafe.getObject(t10, j10), n(i13));
                            }
                            break;
                        default:
                            break;
                    }
                }
            }
            j10 = iO & 1048575;
            switch (i15) {
                case 0:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).c(i14, m1.k(t10, j10));
                    }
                    break;
                case 1:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).g(i14, m1.l(t10, j10));
                    }
                    break;
                case 2:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).j(i14, unsafe.getLong(t10, j10));
                    }
                    break;
                case 3:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).r(i14, unsafe.getLong(t10, j10));
                    }
                    break;
                case 4:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).i(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 5:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).f(i14, unsafe.getLong(t10, j10));
                    }
                    break;
                case 6:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).e(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 7:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).a(i14, m1.i(t10, j10));
                    }
                    break;
                case 8:
                    if ((i10 & i12) != 0) {
                        R(i14, unsafe.getObject(t10, j10), q1Var);
                    }
                    break;
                case 9:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).k(i14, unsafe.getObject(t10, j10), n(i13));
                    }
                    break;
                case 10:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).b(i14, (i) unsafe.getObject(t10, j10));
                    }
                    break;
                case 11:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).q(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 12:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).d(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 13:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).m(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 14:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).n(i14, unsafe.getLong(t10, j10));
                    }
                    break;
                case 15:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).o(i14, unsafe.getInt(t10, j10));
                    }
                    break;
                case 16:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).p(i14, unsafe.getLong(t10, j10));
                    }
                    break;
                case 17:
                    if ((i10 & i12) != 0) {
                        ((l) q1Var).h(i14, unsafe.getObject(t10, j10), n(i13));
                    }
                    break;
                case 18:
                    z10 = false;
                    d1.F(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 19:
                    z10 = false;
                    d1.J(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 20:
                    z10 = false;
                    d1.M(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 21:
                    z10 = false;
                    d1.U(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 22:
                    z10 = false;
                    d1.L(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 23:
                    z10 = false;
                    d1.I(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 24:
                    z10 = false;
                    d1.H(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 25:
                    z10 = false;
                    d1.D(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 26:
                    d1.S(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var);
                    break;
                case 27:
                    d1.N(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, n(i13));
                    break;
                case 28:
                    d1.E(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var);
                    break;
                case 29:
                    z10 = false;
                    d1.T(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 30:
                    z10 = false;
                    d1.G(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 31:
                    z10 = false;
                    d1.O(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 32:
                    z10 = false;
                    d1.P(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 33:
                    z10 = false;
                    d1.Q(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 34:
                    z10 = false;
                    d1.R(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, false);
                    break;
                case 35:
                    d1.F(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 36:
                    d1.J(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 37:
                    d1.M(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 38:
                    d1.U(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 39:
                    d1.L(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 40:
                    d1.I(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 41:
                    d1.H(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 42:
                    d1.D(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 43:
                    d1.T(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 44:
                    d1.G(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 45:
                    d1.O(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 46:
                    d1.P(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 47:
                    d1.Q(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 48:
                    d1.R(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, true);
                    break;
                case 49:
                    d1.K(this.f10755a[i13], (List) unsafe.getObject(t10, j10), q1Var, n(i13));
                    break;
                case 50:
                    Q(q1Var, i14, unsafe.getObject(t10, j10), i13);
                    break;
                case 51:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).c(i14, z(t10, j10));
                    }
                    break;
                case 52:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).g(i14, A(t10, j10));
                    }
                    break;
                case 53:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).j(i14, C(t10, j10));
                    }
                    break;
                case 54:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).r(i14, C(t10, j10));
                    }
                    break;
                case 55:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).i(i14, B(t10, j10));
                    }
                    break;
                case 56:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).f(i14, C(t10, j10));
                    }
                    break;
                case 57:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).e(i14, B(t10, j10));
                    }
                    break;
                case 58:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).a(i14, y(t10, j10));
                    }
                    break;
                case 59:
                    if (s(t10, i14, i13)) {
                        R(i14, unsafe.getObject(t10, j10), q1Var);
                    }
                    break;
                case 60:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).k(i14, unsafe.getObject(t10, j10), n(i13));
                    }
                    break;
                case 61:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).b(i14, (i) unsafe.getObject(t10, j10));
                    }
                    break;
                case 62:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).q(i14, B(t10, j10));
                    }
                    break;
                case 63:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).d(i14, B(t10, j10));
                    }
                    break;
                case 64:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).m(i14, B(t10, j10));
                    }
                    break;
                case 65:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).n(i14, C(t10, j10));
                    }
                    break;
                case 66:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).o(i14, B(t10, j10));
                    }
                    break;
                case 67:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).p(i14, C(t10, j10));
                    }
                    break;
                case 68:
                    if (s(t10, i14, i13)) {
                        ((l) q1Var).h(i14, unsafe.getObject(t10, j10), n(i13));
                    }
                    break;
                default:
                    break;
            }
        }
        while (entry != null) {
            this.f10770p.g(entry);
            entry = itL.hasNext() ? (Map.Entry) itL.next() : null;
        }
        S(this.f10769o, t10, q1Var);
    }

    public final <K, V> void Q(q1 q1Var, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            this.f10771q.e(m(i11));
            Map<?, ?> mapG = this.f10771q.g(obj);
            l lVar = (l) q1Var;
            Objects.requireNonNull(lVar.f10694a);
            Iterator<Map.Entry<?, ?>> it = mapG.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                lVar.f10694a.P(i10, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    public final void R(int i10, Object obj, q1 q1Var) throws IOException {
        if (obj instanceof String) {
            ((l) q1Var).f10694a.O(i10, (String) obj);
        } else {
            ((l) q1Var).b(i10, (i) obj);
        }
    }

    public final <UT, UB> void S(i1<UT, UB> i1Var, T t10, q1 q1Var) throws IOException {
        i1Var.j(i1Var.b(t10), q1Var);
    }

    @Override // m7.c1
    public final void a(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f10755a.length; i10 += 3) {
            int iO = O(i10);
            long j10 = 1048575 & iO;
            int i11 = this.f10755a[i10];
            switch ((iO & 267386880) >>> 20) {
                case 0:
                    if (r(t11, i10)) {
                        m1.u(t10, j10, m1.k(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 1:
                    if (r(t11, i10)) {
                        m1.v(t10, j10, m1.l(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 2:
                    if (r(t11, i10)) {
                        m1.x(t10, j10, m1.n(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 3:
                    if (r(t11, i10)) {
                        m1.x(t10, j10, m1.n(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 4:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 5:
                    if (r(t11, i10)) {
                        m1.x(t10, j10, m1.n(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 6:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 7:
                    if (r(t11, i10)) {
                        m1.q(t10, j10, m1.i(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 8:
                    if (r(t11, i10)) {
                        m1.y(t10, j10, m1.o(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 9:
                    u(t10, t11, i10);
                    break;
                case 10:
                    if (r(t11, i10)) {
                        m1.y(t10, j10, m1.o(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 11:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 12:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 13:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 14:
                    if (r(t11, i10)) {
                        m1.x(t10, j10, m1.n(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 15:
                    if (r(t11, i10)) {
                        m1.w(t10, j10, m1.m(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 16:
                    if (r(t11, i10)) {
                        m1.x(t10, j10, m1.n(t11, j10));
                        L(t10, i10);
                    }
                    break;
                case 17:
                    u(t10, t11, i10);
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
                    this.f10768n.b(t10, t11, j10);
                    break;
                case 50:
                    k0 k0Var = this.f10771q;
                    Class<?> cls = d1.f10628a;
                    m1.y(t10, j10, k0Var.a(m1.o(t10, j10), m1.o(t11, j10)));
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
                    if (s(t11, i11, i10)) {
                        m1.y(t10, j10, m1.o(t11, j10));
                        M(t10, i11, i10);
                    }
                    break;
                case 60:
                    v(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (s(t11, i11, i10)) {
                        m1.y(t10, j10, m1.o(t11, j10));
                        M(t10, i11, i10);
                    }
                    break;
                case 68:
                    v(t10, t11, i10);
                    break;
            }
        }
        i1<?, ?> i1Var = this.f10769o;
        Class<?> cls2 = d1.f10628a;
        i1Var.h(t10, i1Var.f(i1Var.b(t10), i1Var.b(t11)));
        if (this.f10760f) {
            d1.A(this.f10770p, t10, t11);
        }
    }

    @Override // m7.c1
    public final void b(T t10) {
        int i10;
        int i11 = this.f10765k;
        while (true) {
            i10 = this.f10766l;
            if (i11 >= i10) {
                break;
            }
            long jO = O(this.f10764j[i11]) & 1048575;
            Object objO = m1.o(t10, jO);
            if (objO != null) {
                m1.y(t10, jO, this.f10771q.d(objO));
            }
            i11++;
        }
        int length = this.f10764j.length;
        while (i10 < length) {
            this.f10768n.a(t10, this.f10764j[i10]);
            i10++;
        }
        this.f10769o.e(t10);
        if (this.f10760f) {
            this.f10770p.f(t10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cd A[LOOP:1: B:52:0x00bb->B:57:0x00cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // m7.c1
    public final boolean c(T t10) {
        List list;
        c1 c1VarN;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            boolean zR = true;
            if (i12 >= this.f10765k) {
                return !this.f10760f || this.f10770p.c(t10).i();
            }
            int i14 = this.f10764j[i12];
            int i15 = this.f10755a[i14];
            int iO = O(i14);
            int i16 = this.f10755a[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i13 = f10754s.getInt(t10, i17);
                }
                i11 = i17;
            }
            if ((268435456 & iO) != 0) {
                if (!(i11 == 1048575 ? r(t10, i14) : (i13 & i18) != 0)) {
                    return false;
                }
            }
            int i19 = (267386880 & iO) >>> 20;
            if (i19 == 9 || i19 == 17) {
                if (i11 == 1048575) {
                    zR = r(t10, i14);
                } else if ((i13 & i18) == 0) {
                    zR = false;
                }
                if (zR && !n(i14).c(m1.o(t10, iO & 1048575))) {
                    return false;
                }
            } else if (i19 == 27) {
                list = (List) m1.o(t10, iO & 1048575);
                if (!list.isEmpty()) {
                    c1VarN = n(i14);
                    for (i10 = 0; i10 < list.size(); i10++) {
                        if (!c1VarN.c(list.get(i10))) {
                            zR = false;
                            break;
                        }
                    }
                }
                if (!zR) {
                    return false;
                }
            } else if (i19 == 60 || i19 == 68) {
                if (s(t10, i15, i14) && !n(i14).c(m1.o(t10, iO & 1048575))) {
                    return false;
                }
            } else if (i19 == 49) {
                list = (List) m1.o(t10, iO & 1048575);
                if (!list.isEmpty()) {
                    c1VarN = n(i14);
                    while (i10 < list.size()) {
                        if (!c1VarN.c(list.get(i10))) {
                            zR = false;
                            break;
                        }
                    }
                }
                if (!zR) {
                    return false;
                }
            } else if (i19 == 50 && !this.f10771q.g(m1.o(t10, iO & 1048575)).isEmpty()) {
                this.f10771q.e(m(i14));
                throw null;
            }
            i12++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    @Override // m7.c1
    public final boolean d(T t10, T t11) {
        int length = this.f10755a.length;
        int i10 = 0;
        while (true) {
            boolean zB = true;
            if (i10 >= length) {
                if (!this.f10769o.b(t10).equals(this.f10769o.b(t11))) {
                    return false;
                }
                if (this.f10760f) {
                    return this.f10770p.c(t10).equals(this.f10770p.c(t11));
                }
                return true;
            }
            int iO = O(i10);
            long j10 = iO & 1048575;
            switch ((iO & 267386880) >>> 20) {
                case 0:
                    if (!j(t10, t11, i10) || Double.doubleToLongBits(m1.k(t10, j10)) != Double.doubleToLongBits(m1.k(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 1:
                    if (!j(t10, t11, i10) || Float.floatToIntBits(m1.l(t10, j10)) != Float.floatToIntBits(m1.l(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 2:
                    if (!j(t10, t11, i10) || m1.n(t10, j10) != m1.n(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 3:
                    if (!j(t10, t11, i10) || m1.n(t10, j10) != m1.n(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 4:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 5:
                    if (!j(t10, t11, i10) || m1.n(t10, j10) != m1.n(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 6:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 7:
                    if (!j(t10, t11, i10) || m1.i(t10, j10) != m1.i(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 8:
                    if (!j(t10, t11, i10) || !d1.B(m1.o(t10, j10), m1.o(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 9:
                    if (!j(t10, t11, i10) || !d1.B(m1.o(t10, j10), m1.o(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 10:
                    if (!j(t10, t11, i10) || !d1.B(m1.o(t10, j10), m1.o(t11, j10))) {
                        zB = false;
                    }
                    break;
                case 11:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 12:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 13:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 14:
                    if (!j(t10, t11, i10) || m1.n(t10, j10) != m1.n(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 15:
                    if (!j(t10, t11, i10) || m1.m(t10, j10) != m1.m(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 16:
                    if (!j(t10, t11, i10) || m1.n(t10, j10) != m1.n(t11, j10)) {
                        zB = false;
                    }
                    break;
                case 17:
                    if (!j(t10, t11, i10) || !d1.B(m1.o(t10, j10), m1.o(t11, j10))) {
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
                    zB = d1.B(m1.o(t10, j10), m1.o(t11, j10));
                    break;
                case 50:
                    zB = d1.B(m1.o(t10, j10), m1.o(t11, j10));
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
                    long J = J(i10) & 1048575;
                    if (!(m1.m(t10, J) == m1.m(t11, J)) || !d1.B(m1.o(t10, j10), m1.o(t11, j10))) {
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

    @Override // m7.c1
    public final int e(T t10) {
        return this.f10762h ? q(t10) : p(t10);
    }

    @Override // m7.c1
    public final T f() {
        return (T) this.f10767m.a(this.f10759e);
    }

    @Override // m7.c1
    public final int g(T t10) {
        int i10;
        int iB;
        int length = this.f10755a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iO = O(i12);
            int i13 = this.f10755a[i12];
            long j10 = 1048575 & iO;
            int iHashCode = 37;
            switch ((iO & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    iB = y.b(Double.doubleToLongBits(m1.k(t10, j10)));
                    i11 = iB + i10;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iB = Float.floatToIntBits(m1.l(t10, j10));
                    i11 = iB + i10;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iB = y.b(m1.n(t10, j10));
                    i11 = iB + i10;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iB = y.b(m1.n(t10, j10));
                    i11 = iB + i10;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iB = y.b(m1.n(t10, j10));
                    i11 = iB + i10;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iB = y.a(m1.i(t10, j10));
                    i11 = iB + i10;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iB = ((String) m1.o(t10, j10)).hashCode();
                    i11 = iB + i10;
                    break;
                case 9:
                    Object objO = m1.o(t10, j10);
                    if (objO != null) {
                        iHashCode = objO.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iB = m1.o(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iB = y.b(m1.n(t10, j10));
                    i11 = iB + i10;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iB = m1.m(t10, j10);
                    i11 = iB + i10;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iB = y.b(m1.n(t10, j10));
                    i11 = iB + i10;
                    break;
                case 17:
                    Object objO2 = m1.o(t10, j10);
                    if (objO2 != null) {
                        iHashCode = objO2.hashCode();
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
                    iB = m1.o(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iB = m1.o(t10, j10).hashCode();
                    i11 = iB + i10;
                    break;
                case 51:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(Double.doubleToLongBits(z(t10, j10)));
                        i11 = iB + i10;
                    }
                    break;
                case 52:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = Float.floatToIntBits(A(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 53:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 54:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 55:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 56:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 57:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 58:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.a(y(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 59:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = ((String) m1.o(t10, j10)).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 60:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = m1.o(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 61:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = m1.o(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
                case 62:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 63:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 64:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 65:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 66:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = B(t10, j10);
                        i11 = iB + i10;
                    }
                    break;
                case 67:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = y.b(C(t10, j10));
                        i11 = iB + i10;
                    }
                    break;
                case 68:
                    if (s(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = m1.o(t10, j10).hashCode();
                        i11 = iB + i10;
                    }
                    break;
            }
        }
        int iHashCode2 = this.f10769o.b(t10).hashCode() + (i11 * 53);
        return this.f10760f ? (iHashCode2 * 53) + this.f10770p.c(t10).hashCode() : iHashCode2;
    }

    @Override // m7.c1
    public final void h(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        if (this.f10762h) {
            G(t10, bArr, i10, i11, aVar);
        } else {
            F(t10, bArr, i10, i11, 0, aVar);
        }
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
    @Override // m7.c1
    public final void i(T t10, q1 q1Var) throws IOException {
        Iterator itL;
        Map.Entry entry;
        Objects.requireNonNull(q1Var);
        if (!this.f10762h) {
            P(t10, q1Var);
            return;
        }
        if (this.f10760f) {
            s<T> sVarC = this.f10770p.c(t10);
            if (sVarC.h()) {
                itL = null;
                entry = null;
            } else {
                itL = sVarC.l();
                entry = (Map.Entry) itL.next();
            }
        } else {
            itL = null;
            entry = null;
        }
        int length = this.f10755a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iO = O(i10);
            int i11 = this.f10755a[i10];
            while (entry != null) {
                this.f10770p.a(entry);
                if (i11 >= 0) {
                    this.f10770p.g(entry);
                    entry = itL.hasNext() ? (Map.Entry) itL.next() : null;
                } else {
                    switch ((267386880 & iO) >>> 20) {
                        case 0:
                            if (r(t10, i10)) {
                                ((l) q1Var).c(i11, m1.k(t10, iO & 1048575));
                            }
                            break;
                        case 1:
                            if (r(t10, i10)) {
                                ((l) q1Var).g(i11, m1.l(t10, iO & 1048575));
                            }
                            break;
                        case 2:
                            if (r(t10, i10)) {
                                ((l) q1Var).j(i11, m1.n(t10, iO & 1048575));
                            }
                            break;
                        case 3:
                            if (r(t10, i10)) {
                                ((l) q1Var).r(i11, m1.n(t10, iO & 1048575));
                            }
                            break;
                        case 4:
                            if (r(t10, i10)) {
                                ((l) q1Var).i(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 5:
                            if (r(t10, i10)) {
                                ((l) q1Var).f(i11, m1.n(t10, iO & 1048575));
                            }
                            break;
                        case 6:
                            if (r(t10, i10)) {
                                ((l) q1Var).e(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 7:
                            if (r(t10, i10)) {
                                ((l) q1Var).a(i11, m1.i(t10, iO & 1048575));
                            }
                            break;
                        case 8:
                            if (r(t10, i10)) {
                                R(i11, m1.o(t10, iO & 1048575), q1Var);
                            }
                            break;
                        case 9:
                            if (r(t10, i10)) {
                                ((l) q1Var).k(i11, m1.o(t10, iO & 1048575), n(i10));
                            }
                            break;
                        case 10:
                            if (r(t10, i10)) {
                                ((l) q1Var).b(i11, (i) m1.o(t10, iO & 1048575));
                            }
                            break;
                        case 11:
                            if (r(t10, i10)) {
                                ((l) q1Var).q(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 12:
                            if (r(t10, i10)) {
                                ((l) q1Var).d(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 13:
                            if (r(t10, i10)) {
                                ((l) q1Var).m(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 14:
                            if (r(t10, i10)) {
                                ((l) q1Var).n(i11, m1.n(t10, iO & 1048575));
                            }
                            break;
                        case 15:
                            if (r(t10, i10)) {
                                ((l) q1Var).o(i11, m1.m(t10, iO & 1048575));
                            }
                            break;
                        case 16:
                            if (r(t10, i10)) {
                                ((l) q1Var).p(i11, m1.n(t10, iO & 1048575));
                            }
                            break;
                        case 17:
                            if (r(t10, i10)) {
                                ((l) q1Var).h(i11, m1.o(t10, iO & 1048575), n(i10));
                            }
                            break;
                        case 18:
                            d1.F(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 19:
                            d1.J(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 20:
                            d1.M(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 21:
                            d1.U(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 22:
                            d1.L(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 23:
                            d1.I(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 24:
                            d1.H(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 25:
                            d1.D(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 26:
                            d1.S(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var);
                            break;
                        case 27:
                            d1.N(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, n(i10));
                            break;
                        case 28:
                            d1.E(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var);
                            break;
                        case 29:
                            d1.T(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 30:
                            d1.G(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 31:
                            d1.O(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 32:
                            d1.P(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 33:
                            d1.Q(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 34:
                            d1.R(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                            break;
                        case 35:
                            d1.F(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 36:
                            d1.J(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 37:
                            d1.M(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 38:
                            d1.U(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 39:
                            d1.L(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 40:
                            d1.I(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 41:
                            d1.H(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 42:
                            d1.D(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 43:
                            d1.T(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 44:
                            d1.G(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 45:
                            d1.O(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 46:
                            d1.P(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 47:
                            d1.Q(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 48:
                            d1.R(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                            break;
                        case 49:
                            d1.K(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, n(i10));
                            break;
                        case 50:
                            Q(q1Var, i11, m1.o(t10, iO & 1048575), i10);
                            break;
                        case 51:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).c(i11, z(t10, iO & 1048575));
                            }
                            break;
                        case 52:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).g(i11, A(t10, iO & 1048575));
                            }
                            break;
                        case 53:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).j(i11, C(t10, iO & 1048575));
                            }
                            break;
                        case 54:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).r(i11, C(t10, iO & 1048575));
                            }
                            break;
                        case 55:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).i(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 56:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).f(i11, C(t10, iO & 1048575));
                            }
                            break;
                        case 57:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).e(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 58:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).a(i11, y(t10, iO & 1048575));
                            }
                            break;
                        case 59:
                            if (s(t10, i11, i10)) {
                                R(i11, m1.o(t10, iO & 1048575), q1Var);
                            }
                            break;
                        case 60:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).k(i11, m1.o(t10, iO & 1048575), n(i10));
                            }
                            break;
                        case 61:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).b(i11, (i) m1.o(t10, iO & 1048575));
                            }
                            break;
                        case 62:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).q(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 63:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).d(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 64:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).m(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 65:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).n(i11, C(t10, iO & 1048575));
                            }
                            break;
                        case 66:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).o(i11, B(t10, iO & 1048575));
                            }
                            break;
                        case 67:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).p(i11, C(t10, iO & 1048575));
                            }
                            break;
                        case 68:
                            if (s(t10, i11, i10)) {
                                ((l) q1Var).h(i11, m1.o(t10, iO & 1048575), n(i10));
                            }
                            break;
                    }
                }
            }
            switch ((267386880 & iO) >>> 20) {
                case 0:
                    if (r(t10, i10)) {
                        ((l) q1Var).c(i11, m1.k(t10, iO & 1048575));
                    }
                    break;
                case 1:
                    if (r(t10, i10)) {
                        ((l) q1Var).g(i11, m1.l(t10, iO & 1048575));
                    }
                    break;
                case 2:
                    if (r(t10, i10)) {
                        ((l) q1Var).j(i11, m1.n(t10, iO & 1048575));
                    }
                    break;
                case 3:
                    if (r(t10, i10)) {
                        ((l) q1Var).r(i11, m1.n(t10, iO & 1048575));
                    }
                    break;
                case 4:
                    if (r(t10, i10)) {
                        ((l) q1Var).i(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 5:
                    if (r(t10, i10)) {
                        ((l) q1Var).f(i11, m1.n(t10, iO & 1048575));
                    }
                    break;
                case 6:
                    if (r(t10, i10)) {
                        ((l) q1Var).e(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 7:
                    if (r(t10, i10)) {
                        ((l) q1Var).a(i11, m1.i(t10, iO & 1048575));
                    }
                    break;
                case 8:
                    if (r(t10, i10)) {
                        R(i11, m1.o(t10, iO & 1048575), q1Var);
                    }
                    break;
                case 9:
                    if (r(t10, i10)) {
                        ((l) q1Var).k(i11, m1.o(t10, iO & 1048575), n(i10));
                    }
                    break;
                case 10:
                    if (r(t10, i10)) {
                        ((l) q1Var).b(i11, (i) m1.o(t10, iO & 1048575));
                    }
                    break;
                case 11:
                    if (r(t10, i10)) {
                        ((l) q1Var).q(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 12:
                    if (r(t10, i10)) {
                        ((l) q1Var).d(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 13:
                    if (r(t10, i10)) {
                        ((l) q1Var).m(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 14:
                    if (r(t10, i10)) {
                        ((l) q1Var).n(i11, m1.n(t10, iO & 1048575));
                    }
                    break;
                case 15:
                    if (r(t10, i10)) {
                        ((l) q1Var).o(i11, m1.m(t10, iO & 1048575));
                    }
                    break;
                case 16:
                    if (r(t10, i10)) {
                        ((l) q1Var).p(i11, m1.n(t10, iO & 1048575));
                    }
                    break;
                case 17:
                    if (r(t10, i10)) {
                        ((l) q1Var).h(i11, m1.o(t10, iO & 1048575), n(i10));
                    }
                    break;
                case 18:
                    d1.F(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 19:
                    d1.J(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 20:
                    d1.M(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 21:
                    d1.U(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 22:
                    d1.L(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 23:
                    d1.I(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 24:
                    d1.H(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 25:
                    d1.D(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 26:
                    d1.S(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var);
                    break;
                case 27:
                    d1.N(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, n(i10));
                    break;
                case 28:
                    d1.E(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var);
                    break;
                case 29:
                    d1.T(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 30:
                    d1.G(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 31:
                    d1.O(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 32:
                    d1.P(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 33:
                    d1.Q(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 34:
                    d1.R(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, false);
                    break;
                case 35:
                    d1.F(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 36:
                    d1.J(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 37:
                    d1.M(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 38:
                    d1.U(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 39:
                    d1.L(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 40:
                    d1.I(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 41:
                    d1.H(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 42:
                    d1.D(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 43:
                    d1.T(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 44:
                    d1.G(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 45:
                    d1.O(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 46:
                    d1.P(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 47:
                    d1.Q(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 48:
                    d1.R(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, true);
                    break;
                case 49:
                    d1.K(this.f10755a[i10], (List) m1.o(t10, iO & 1048575), q1Var, n(i10));
                    break;
                case 50:
                    Q(q1Var, i11, m1.o(t10, iO & 1048575), i10);
                    break;
                case 51:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).c(i11, z(t10, iO & 1048575));
                    }
                    break;
                case 52:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).g(i11, A(t10, iO & 1048575));
                    }
                    break;
                case 53:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).j(i11, C(t10, iO & 1048575));
                    }
                    break;
                case 54:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).r(i11, C(t10, iO & 1048575));
                    }
                    break;
                case 55:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).i(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 56:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).f(i11, C(t10, iO & 1048575));
                    }
                    break;
                case 57:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).e(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 58:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).a(i11, y(t10, iO & 1048575));
                    }
                    break;
                case 59:
                    if (s(t10, i11, i10)) {
                        R(i11, m1.o(t10, iO & 1048575), q1Var);
                    }
                    break;
                case 60:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).k(i11, m1.o(t10, iO & 1048575), n(i10));
                    }
                    break;
                case 61:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).b(i11, (i) m1.o(t10, iO & 1048575));
                    }
                    break;
                case 62:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).q(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 63:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).d(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 64:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).m(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 65:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).n(i11, C(t10, iO & 1048575));
                    }
                    break;
                case 66:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).o(i11, B(t10, iO & 1048575));
                    }
                    break;
                case 67:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).p(i11, C(t10, iO & 1048575));
                    }
                    break;
                case 68:
                    if (s(t10, i11, i10)) {
                        ((l) q1Var).h(i11, m1.o(t10, iO & 1048575), n(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.f10770p.g(entry);
            entry = itL.hasNext() ? (Map.Entry) itL.next() : null;
        }
        S(this.f10769o, t10, q1Var);
    }

    public final boolean j(T t10, T t11, int i10) {
        return r(t10, i10) == r(t11, i10);
    }

    public final <UT, UB> UB k(Object obj, int i10, UB ub2, i1<UT, UB> i1Var) {
        y.b bVarL;
        int i11 = this.f10755a[i10];
        Object objO = m1.o(obj, O(i10) & 1048575);
        if (objO == null || (bVarL = l(i10)) == null) {
            return ub2;
        }
        Map<?, ?> mapH = this.f10771q.h(objO);
        this.f10771q.e(m(i10));
        for (Map.Entry<?, ?> entry : mapH.entrySet()) {
            ((Integer) entry.getValue()).intValue();
            if (!bVarL.a()) {
                if (ub2 == null) {
                    i1Var.g();
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
        return ub2;
    }

    public final y.b l(int i10) {
        return (y.b) this.f10756b[((i10 / 3) * 2) + 1];
    }

    public final Object m(int i10) {
        return this.f10756b[(i10 / 3) * 2];
    }

    public final c1 n(int i10) {
        int i11 = (i10 / 3) * 2;
        Object[] objArr = this.f10756b;
        c1 c1Var = (c1) objArr[i11];
        if (c1Var != null) {
            return c1Var;
        }
        c1<T> c1VarA = z0.f10805c.a((Class) objArr[i11 + 1]);
        this.f10756b[i11] = c1VarA;
        return c1VarA;
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
    public final int p(T t10) {
        int i10;
        int i11;
        int iE;
        int iC;
        int iH;
        int iW;
        int iY;
        Unsafe unsafe = f10754s;
        int i12 = 1048575;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < this.f10755a.length) {
            int iO = O(i14);
            int[] iArr = this.f10755a;
            int i17 = iArr[i14];
            int i18 = (267386880 & iO) >>> 20;
            if (i18 <= 17) {
                i10 = iArr[i14 + 2];
                int i19 = i10 & i12;
                i11 = 1 << (i10 >>> 20);
                if (i19 != i13) {
                    i16 = unsafe.getInt(t10, i19);
                    i13 = i19;
                }
            } else {
                i10 = (!this.f10763i || i18 < t.f10772i.f10776h || i18 > t.f10773j.f10776h) ? 0 : iArr[i14 + 2] & i12;
                i11 = 0;
            }
            long j10 = iO & i12;
            switch (i18) {
                case 0:
                    if ((i16 & i11) != 0) {
                        iE = k.e(i17);
                        i15 += iE;
                    }
                    break;
                case 1:
                    if ((i16 & i11) != 0) {
                        iE = k.i(i17);
                        i15 += iE;
                    }
                    break;
                case 2:
                    if ((i16 & i11) != 0) {
                        iE = k.m(i17, unsafe.getLong(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 3:
                    if ((i16 & i11) != 0) {
                        iE = k.z(i17, unsafe.getLong(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 4:
                    if ((i16 & i11) != 0) {
                        iE = k.k(i17, unsafe.getInt(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 5:
                    if ((i16 & i11) != 0) {
                        iE = k.h(i17);
                        i15 += iE;
                    }
                    break;
                case 6:
                    if ((i16 & i11) != 0) {
                        iE = k.g(i17);
                        i15 += iE;
                    }
                    break;
                case 7:
                    if ((i16 & i11) != 0) {
                        iE = k.b(i17);
                        i15 += iE;
                    }
                    break;
                case 8:
                    if ((i16 & i11) != 0) {
                        Object object = unsafe.getObject(t10, j10);
                        iC = object instanceof i ? k.c(i17, (i) object) : k.u(i17, (String) object);
                        i15 += iC;
                    }
                    break;
                case 9:
                    if ((i16 & i11) != 0) {
                        iE = d1.n(i17, unsafe.getObject(t10, j10), n(i14));
                        i15 += iE;
                    }
                    break;
                case 10:
                    if ((i16 & i11) != 0) {
                        iE = k.c(i17, (i) unsafe.getObject(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 11:
                    if ((i16 & i11) != 0) {
                        iE = k.x(i17, unsafe.getInt(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 12:
                    if ((i16 & i11) != 0) {
                        iE = k.f(i17, unsafe.getInt(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 13:
                    if ((i16 & i11) != 0) {
                        iE = k.o(i17);
                        i15 += iE;
                    }
                    break;
                case 14:
                    if ((i16 & i11) != 0) {
                        iE = k.p(i17);
                        i15 += iE;
                    }
                    break;
                case 15:
                    if ((i16 & i11) != 0) {
                        iE = k.q(i17, unsafe.getInt(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 16:
                    if ((i16 & i11) != 0) {
                        iE = k.s(i17, unsafe.getLong(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 17:
                    if ((i16 & i11) != 0) {
                        iE = k.j(i17, (p0) unsafe.getObject(t10, j10), n(i14));
                        i15 += iE;
                    }
                    break;
                case 18:
                    iE = d1.g(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 19:
                    iE = d1.e(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 20:
                    iE = d1.l(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 21:
                    iE = d1.w(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 22:
                    iE = d1.j(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 23:
                    iE = d1.g(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 24:
                    iE = d1.e(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 25:
                    iE = d1.a(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 26:
                    iE = d1.t(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 27:
                    iE = d1.o(i17, (List) unsafe.getObject(t10, j10), n(i14));
                    i15 += iE;
                    break;
                case 28:
                    iE = d1.b(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 29:
                    iE = d1.u(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 30:
                    iE = d1.c(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 31:
                    iE = d1.e(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 32:
                    iE = d1.g(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 33:
                    iE = d1.p(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 34:
                    iE = d1.r(i17, (List) unsafe.getObject(t10, j10));
                    i15 += iE;
                    break;
                case 35:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 36:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 37:
                    iH = d1.m((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 38:
                    iH = d1.x((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 39:
                    iH = d1.k((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 40:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 41:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(t10, j10);
                    Class<?> cls = d1.f10628a;
                    iH = list.size();
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 43:
                    iH = d1.v((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 44:
                    iH = d1.d((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 45:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 46:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 47:
                    iH = d1.q((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 48:
                    iH = d1.s((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i10, iH);
                        }
                        iW = k.w(i17);
                        iY = k.y(iH);
                        i15 += iY + iW + iH;
                    }
                    break;
                case 49:
                    iE = d1.i(i17, (List) unsafe.getObject(t10, j10), n(i14));
                    i15 += iE;
                    break;
                case 50:
                    this.f10771q.b(i17, unsafe.getObject(t10, j10), m(i14));
                    iE = 0;
                    i15 += iE;
                    break;
                case 51:
                    if (s(t10, i17, i14)) {
                        iE = k.e(i17);
                        i15 += iE;
                    }
                    break;
                case 52:
                    if (s(t10, i17, i14)) {
                        iE = k.i(i17);
                        i15 += iE;
                    }
                    break;
                case 53:
                    if (s(t10, i17, i14)) {
                        iE = k.m(i17, C(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 54:
                    if (s(t10, i17, i14)) {
                        iE = k.z(i17, C(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 55:
                    if (s(t10, i17, i14)) {
                        iE = k.k(i17, B(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 56:
                    if (s(t10, i17, i14)) {
                        iE = k.h(i17);
                        i15 += iE;
                    }
                    break;
                case 57:
                    if (s(t10, i17, i14)) {
                        iE = k.g(i17);
                        i15 += iE;
                    }
                    break;
                case 58:
                    if (s(t10, i17, i14)) {
                        iE = k.b(i17);
                        i15 += iE;
                    }
                    break;
                case 59:
                    if (s(t10, i17, i14)) {
                        Object object2 = unsafe.getObject(t10, j10);
                        iC = object2 instanceof i ? k.c(i17, (i) object2) : k.u(i17, (String) object2);
                        i15 += iC;
                    }
                    break;
                case 60:
                    if (s(t10, i17, i14)) {
                        iE = d1.n(i17, unsafe.getObject(t10, j10), n(i14));
                        i15 += iE;
                    }
                    break;
                case 61:
                    if (s(t10, i17, i14)) {
                        iE = k.c(i17, (i) unsafe.getObject(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 62:
                    if (s(t10, i17, i14)) {
                        iE = k.x(i17, B(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 63:
                    if (s(t10, i17, i14)) {
                        iE = k.f(i17, B(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 64:
                    if (s(t10, i17, i14)) {
                        iE = k.o(i17);
                        i15 += iE;
                    }
                    break;
                case 65:
                    if (s(t10, i17, i14)) {
                        iE = k.p(i17);
                        i15 += iE;
                    }
                    break;
                case 66:
                    if (s(t10, i17, i14)) {
                        iE = k.q(i17, B(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 67:
                    if (s(t10, i17, i14)) {
                        iE = k.s(i17, C(t10, j10));
                        i15 += iE;
                    }
                    break;
                case 68:
                    if (s(t10, i17, i14)) {
                        iE = k.j(i17, (p0) unsafe.getObject(t10, j10), n(i14));
                        i15 += iE;
                    }
                    break;
            }
            i14 += 3;
            i12 = 1048575;
        }
        i1<?, ?> i1Var = this.f10769o;
        int iC2 = i1Var.c(i1Var.b(t10)) + i15;
        if (!this.f10760f) {
            return iC2;
        }
        s<T> sVarC = this.f10770p.c(t10);
        int iE2 = 0;
        for (int i20 = 0; i20 < sVarC.f10750a.d(); i20++) {
            Map.Entry entryC = sVarC.f10750a.c(i20);
            iE2 += s.e((s.a) entryC.getKey(), entryC.getValue());
        }
        for (Map.Entry entry : sVarC.f10750a.e()) {
            iE2 += s.e((s.a) entry.getKey(), entry.getValue());
        }
        return iC2 + iE2;
    }

    public final int q(T t10) {
        int iE;
        int iC;
        int iH;
        int iW;
        int iY;
        Unsafe unsafe = f10754s;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f10755a.length; i11 += 3) {
            int iO = O(i11);
            int i12 = (267386880 & iO) >>> 20;
            int[] iArr = this.f10755a;
            int i13 = iArr[i11];
            long j10 = iO & 1048575;
            int i14 = (i12 < t.f10772i.f10776h || i12 > t.f10773j.f10776h) ? 0 : iArr[i11 + 2] & 1048575;
            switch (i12) {
                case 0:
                    if (r(t10, i11)) {
                        iE = k.e(i13);
                        i10 += iE;
                    }
                    break;
                case 1:
                    if (r(t10, i11)) {
                        iE = k.i(i13);
                        i10 += iE;
                    }
                    break;
                case 2:
                    if (r(t10, i11)) {
                        iE = k.m(i13, m1.n(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 3:
                    if (r(t10, i11)) {
                        iE = k.z(i13, m1.n(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 4:
                    if (r(t10, i11)) {
                        iE = k.k(i13, m1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 5:
                    if (r(t10, i11)) {
                        iE = k.h(i13);
                        i10 += iE;
                    }
                    break;
                case 6:
                    if (r(t10, i11)) {
                        iE = k.g(i13);
                        i10 += iE;
                    }
                    break;
                case 7:
                    if (r(t10, i11)) {
                        iE = k.b(i13);
                        i10 += iE;
                    }
                    break;
                case 8:
                    if (r(t10, i11)) {
                        Object objO = m1.o(t10, j10);
                        iC = objO instanceof i ? k.c(i13, (i) objO) : k.u(i13, (String) objO);
                        i10 += iC;
                    }
                    break;
                case 9:
                    if (r(t10, i11)) {
                        iE = d1.n(i13, m1.o(t10, j10), n(i11));
                        i10 += iE;
                    }
                    break;
                case 10:
                    if (r(t10, i11)) {
                        iE = k.c(i13, (i) m1.o(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 11:
                    if (r(t10, i11)) {
                        iE = k.x(i13, m1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 12:
                    if (r(t10, i11)) {
                        iE = k.f(i13, m1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 13:
                    if (r(t10, i11)) {
                        iE = k.o(i13);
                        i10 += iE;
                    }
                    break;
                case 14:
                    if (r(t10, i11)) {
                        iE = k.p(i13);
                        i10 += iE;
                    }
                    break;
                case 15:
                    if (r(t10, i11)) {
                        iE = k.q(i13, m1.m(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 16:
                    if (r(t10, i11)) {
                        iE = k.s(i13, m1.n(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 17:
                    if (r(t10, i11)) {
                        iE = k.j(i13, (p0) m1.o(t10, j10), n(i11));
                        i10 += iE;
                    }
                    break;
                case 18:
                    iE = d1.g(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 19:
                    iE = d1.e(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 20:
                    iE = d1.l(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 21:
                    iE = d1.w(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 22:
                    iE = d1.j(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 23:
                    iE = d1.g(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 24:
                    iE = d1.e(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 25:
                    iE = d1.a(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 26:
                    iE = d1.t(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 27:
                    iE = d1.o(i13, t(t10, j10), n(i11));
                    i10 += iE;
                    break;
                case 28:
                    iE = d1.b(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 29:
                    iE = d1.u(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 30:
                    iE = d1.c(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 31:
                    iE = d1.e(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 32:
                    iE = d1.g(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 33:
                    iE = d1.p(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 34:
                    iE = d1.r(i13, t(t10, j10));
                    i10 += iE;
                    break;
                case 35:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 36:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 37:
                    iH = d1.m((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 38:
                    iH = d1.x((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 39:
                    iH = d1.k((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 40:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 41:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(t10, j10);
                    Class<?> cls = d1.f10628a;
                    iH = list.size();
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 43:
                    iH = d1.v((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 44:
                    iH = d1.d((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 45:
                    iH = d1.f((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 46:
                    iH = d1.h((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 47:
                    iH = d1.q((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 48:
                    iH = d1.s((List) unsafe.getObject(t10, j10));
                    if (iH > 0) {
                        if (this.f10763i) {
                            unsafe.putInt(t10, i14, iH);
                        }
                        iW = k.w(i13);
                        iY = k.y(iH);
                        i10 += iY + iW + iH;
                    }
                    break;
                case 49:
                    iE = d1.i(i13, t(t10, j10), n(i11));
                    i10 += iE;
                    break;
                case 50:
                    this.f10771q.b(i13, m1.o(t10, j10), m(i11));
                    iE = 0;
                    i10 += iE;
                    break;
                case 51:
                    if (s(t10, i13, i11)) {
                        iE = k.e(i13);
                        i10 += iE;
                    }
                    break;
                case 52:
                    if (s(t10, i13, i11)) {
                        iE = k.i(i13);
                        i10 += iE;
                    }
                    break;
                case 53:
                    if (s(t10, i13, i11)) {
                        iE = k.m(i13, C(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 54:
                    if (s(t10, i13, i11)) {
                        iE = k.z(i13, C(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 55:
                    if (s(t10, i13, i11)) {
                        iE = k.k(i13, B(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 56:
                    if (s(t10, i13, i11)) {
                        iE = k.h(i13);
                        i10 += iE;
                    }
                    break;
                case 57:
                    if (s(t10, i13, i11)) {
                        iE = k.g(i13);
                        i10 += iE;
                    }
                    break;
                case 58:
                    if (s(t10, i13, i11)) {
                        iE = k.b(i13);
                        i10 += iE;
                    }
                    break;
                case 59:
                    if (s(t10, i13, i11)) {
                        Object objO2 = m1.o(t10, j10);
                        iC = objO2 instanceof i ? k.c(i13, (i) objO2) : k.u(i13, (String) objO2);
                        i10 += iC;
                    }
                    break;
                case 60:
                    if (s(t10, i13, i11)) {
                        iE = d1.n(i13, m1.o(t10, j10), n(i11));
                        i10 += iE;
                    }
                    break;
                case 61:
                    if (s(t10, i13, i11)) {
                        iE = k.c(i13, (i) m1.o(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 62:
                    if (s(t10, i13, i11)) {
                        iE = k.x(i13, B(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 63:
                    if (s(t10, i13, i11)) {
                        iE = k.f(i13, B(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 64:
                    if (s(t10, i13, i11)) {
                        iE = k.o(i13);
                        i10 += iE;
                    }
                    break;
                case 65:
                    if (s(t10, i13, i11)) {
                        iE = k.p(i13);
                        i10 += iE;
                    }
                    break;
                case 66:
                    if (s(t10, i13, i11)) {
                        iE = k.q(i13, B(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 67:
                    if (s(t10, i13, i11)) {
                        iE = k.s(i13, C(t10, j10));
                        i10 += iE;
                    }
                    break;
                case 68:
                    if (s(t10, i13, i11)) {
                        iE = k.j(i13, (p0) m1.o(t10, j10), n(i11));
                        i10 += iE;
                    }
                    break;
            }
        }
        i1<?, ?> i1Var = this.f10769o;
        return i1Var.c(i1Var.b(t10)) + i10;
    }

    public final boolean r(T t10, int i10) {
        boolean zEquals;
        int iJ = J(i10);
        long j10 = iJ & 1048575;
        if (j10 != 1048575) {
            return (m1.m(t10, j10) & (1 << (iJ >>> 20))) != 0;
        }
        int iO = O(i10);
        long j11 = iO & 1048575;
        switch ((iO & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(m1.k(t10, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(m1.l(t10, j11)) != 0;
            case 2:
                return m1.n(t10, j11) != 0;
            case 3:
                return m1.n(t10, j11) != 0;
            case 4:
                return m1.m(t10, j11) != 0;
            case 5:
                return m1.n(t10, j11) != 0;
            case 6:
                return m1.m(t10, j11) != 0;
            case 7:
                return m1.i(t10, j11);
            case 8:
                Object objO = m1.o(t10, j11);
                if (objO instanceof String) {
                    zEquals = ((String) objO).isEmpty();
                } else {
                    if (!(objO instanceof i)) {
                        throw new IllegalArgumentException();
                    }
                    zEquals = i.f10666i.equals(objO);
                }
                break;
            case 9:
                return m1.o(t10, j11) != null;
            case 10:
                zEquals = i.f10666i.equals(m1.o(t10, j11));
                break;
            case 11:
                return m1.m(t10, j11) != 0;
            case 12:
                return m1.m(t10, j11) != 0;
            case 13:
                return m1.m(t10, j11) != 0;
            case 14:
                return m1.n(t10, j11) != 0;
            case 15:
                return m1.m(t10, j11) != 0;
            case 16:
                return m1.n(t10, j11) != 0;
            case 17:
                return m1.o(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !zEquals;
    }

    public final boolean s(T t10, int i10, int i11) {
        return m1.m(t10, (long) (J(i11) & 1048575)) == i10;
    }

    public final void u(T t10, T t11, int i10) {
        long jO = O(i10) & 1048575;
        if (r(t11, i10)) {
            Object objO = m1.o(t10, jO);
            Object objO2 = m1.o(t11, jO);
            if (objO != null && objO2 != null) {
                m1.y(t10, jO, y.c(objO, objO2));
                L(t10, i10);
            } else if (objO2 != null) {
                m1.y(t10, jO, objO2);
                L(t10, i10);
            }
        }
    }

    public final void v(T t10, T t11, int i10) {
        int iO = O(i10);
        int i11 = this.f10755a[i10];
        long j10 = iO & 1048575;
        if (s(t11, i11, i10)) {
            Object objO = s(t10, i11, i10) ? m1.o(t10, j10) : null;
            Object objO2 = m1.o(t11, j10);
            if (objO != null && objO2 != null) {
                m1.y(t10, j10, y.c(objO, objO2));
                M(t10, i11, i10);
            } else if (objO2 != null) {
                m1.y(t10, j10, objO2);
                M(t10, i11, i10);
            }
        }
    }
}
