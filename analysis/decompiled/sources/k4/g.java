package k4;

import androidx.fragment.app.r;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import m5.g0;
import m5.p;
import m5.v;
import m5.w;
import n3.z0;

/* JADX INFO: compiled from: Id3Decoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final z0 f9671i = z0.f11844h;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f9672h;

    /* JADX INFO: compiled from: Id3Decoder.java */
    public interface a {
        boolean a(int i10, int i11, int i12, int i13, int i14);
    }

    /* JADX INFO: compiled from: Id3Decoder.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f9674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9675c;

        public b(int i10, boolean z10, int i11) {
            this.f9673a = i10;
            this.f9674b = z10;
            this.f9675c = i11;
        }
    }

    public g() {
        this.f9672h = null;
    }

    public static String A(int i10) {
        if (i10 == 1) {
            return "UTF-16";
        }
        if (i10 != 2) {
            return i10 != 3 ? "ISO-8859-1" : "UTF-8";
        }
        return "UTF-16BE";
    }

    public static String B(int i10, int i11, int i12, int i13, int i14) {
        return i10 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    public static int C(byte[] bArr, int i10, int i11) {
        int iD = D(bArr, i10);
        if (i11 == 0 || i11 == 3) {
            return iD;
        }
        while (iD < bArr.length - 1) {
            if ((iD - i10) % 2 == 0 && bArr[iD + 1] == 0) {
                return iD;
            }
            iD = D(bArr, iD + 1);
        }
        return bArr.length;
    }

    public static int D(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    public static int E(w wVar, int i10) {
        byte[] bArr = wVar.f10475a;
        int i11 = wVar.f10476b;
        int i12 = i11;
        while (true) {
            int i13 = i12 + 1;
            if (i13 >= i11 + i10) {
                return i10;
            }
            if ((bArr[i12] & 255) == 255 && bArr[i13] == 0) {
                System.arraycopy(bArr, i12 + 2, bArr, i13, (i10 - (i12 - i11)) - 2);
                i10--;
            }
            i12 = i13;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0086 A[PHI: r3
      0x0086: PHI (r3v18 int) = (r3v6 int), (r3v21 int) binds: [B:39:0x0083, B:31:0x0075] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean F(w wVar, int i10, int i11, boolean z10) {
        int iV;
        long jV;
        int iY;
        int i12;
        int i13 = wVar.f10476b;
        while (true) {
            try {
                boolean z11 = true;
                if (wVar.f10477c - wVar.f10476b < i11) {
                    wVar.D(i13);
                    return true;
                }
                if (i10 >= 3) {
                    iV = wVar.e();
                    jV = wVar.u();
                    iY = wVar.y();
                } else {
                    iV = wVar.v();
                    jV = wVar.v();
                    iY = 0;
                }
                if (iV == 0 && jV == 0 && iY == 0) {
                    wVar.D(i13);
                    return true;
                }
                if (i10 == 4 && !z10) {
                    if ((8421504 & jV) != 0) {
                        wVar.D(i13);
                        return false;
                    }
                    jV = (((jV >> 24) & 255) << 21) | (jV & 255) | (((jV >> 8) & 255) << 7) | (((jV >> 16) & 255) << 14);
                }
                if (i10 == 4) {
                    i12 = (iY & 64) != 0 ? 1 : 0;
                    if ((iY & 1) == 0) {
                        z11 = false;
                    }
                } else if (i10 == 3) {
                    i12 = (iY & 32) != 0 ? 1 : 0;
                    if ((iY & 128) == 0) {
                        z11 = false;
                    }
                } else {
                    i12 = 0;
                    z11 = false;
                }
                if (z11) {
                    i12 += 4;
                }
                if (jV < i12) {
                    wVar.D(i13);
                    return false;
                }
                if (wVar.f10477c - wVar.f10476b < jV) {
                    wVar.D(i13);
                    return false;
                }
                wVar.E((int) jV);
            } catch (Throwable th) {
                wVar.D(i13);
                throw th;
            }
        }
    }

    public static byte[] k(byte[] bArr, int i10, int i11) {
        return i11 <= i10 ? g0.f10389f : Arrays.copyOfRange(bArr, i10, i11);
    }

    public static k4.a m(w wVar, int i10, int i11) throws UnsupportedEncodingException {
        int iD;
        String strC;
        int iT = wVar.t();
        String strA = A(iT);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        wVar.d(bArr, 0, i12);
        if (i11 == 2) {
            StringBuilder sbC = a0.b.c("image/");
            sbC.append(androidx.activity.k.s(new String(bArr, 0, 3, "ISO-8859-1")));
            strC = sbC.toString();
            if ("image/jpg".equals(strC)) {
                strC = "image/jpeg";
            }
            iD = 2;
        } else {
            iD = D(bArr, 0);
            String strS = androidx.activity.k.s(new String(bArr, 0, iD, "ISO-8859-1"));
            strC = strS.indexOf(47) == -1 ? androidx.recyclerview.widget.d.c("image/", strS) : strS;
        }
        int i13 = bArr[iD + 1] & 255;
        int i14 = iD + 2;
        int iC = C(bArr, i14, iT);
        return new k4.a(strC, new String(bArr, i14, iC - i14, strA), i13, k(bArr, z(iT) + iC, i12));
    }

    public static c n(w wVar, int i10, int i11, boolean z10, int i12, a aVar) throws UnsupportedEncodingException {
        int i13 = wVar.f10476b;
        int iD = D(wVar.f10475a, i13);
        String str = new String(wVar.f10475a, i13, iD - i13, "ISO-8859-1");
        wVar.D(iD + 1);
        int iE = wVar.e();
        int iE2 = wVar.e();
        long jU = wVar.u();
        long j10 = jU == 4294967295L ? -1L : jU;
        long jU2 = wVar.u();
        long j11 = jU2 == 4294967295L ? -1L : jU2;
        ArrayList arrayList = new ArrayList();
        int i14 = i13 + i10;
        while (wVar.f10476b < i14) {
            h hVarQ = q(i11, wVar, z10, i12, aVar);
            if (hVarQ != null) {
                arrayList.add(hVarQ);
            }
        }
        return new c(str, iE, iE2, j10, j11, (h[]) arrayList.toArray(new h[0]));
    }

    public static d o(w wVar, int i10, int i11, boolean z10, int i12, a aVar) throws UnsupportedEncodingException {
        int i13 = wVar.f10476b;
        int iD = D(wVar.f10475a, i13);
        String str = new String(wVar.f10475a, i13, iD - i13, "ISO-8859-1");
        wVar.D(iD + 1);
        int iT = wVar.t();
        boolean z11 = (iT & 2) != 0;
        boolean z12 = (iT & 1) != 0;
        int iT2 = wVar.t();
        String[] strArr = new String[iT2];
        for (int i14 = 0; i14 < iT2; i14++) {
            int i15 = wVar.f10476b;
            int iD2 = D(wVar.f10475a, i15);
            strArr[i14] = new String(wVar.f10475a, i15, iD2 - i15, "ISO-8859-1");
            wVar.D(iD2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i16 = i13 + i10;
        while (wVar.f10476b < i16) {
            h hVarQ = q(i11, wVar, z10, i12, aVar);
            if (hVarQ != null) {
                arrayList.add(hVarQ);
            }
        }
        return new d(str, z11, z12, strArr, (h[]) arrayList.toArray(new h[0]));
    }

    public static e p(w wVar, int i10) throws UnsupportedEncodingException {
        if (i10 < 4) {
            return null;
        }
        int iT = wVar.t();
        String strA = A(iT);
        byte[] bArr = new byte[3];
        wVar.d(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        wVar.d(bArr2, 0, i11);
        int iC = C(bArr2, 0, iT);
        String str2 = new String(bArr2, 0, iC, strA);
        int iZ = z(iT) + iC;
        return new e(str, str2, u(bArr2, iZ, C(bArr2, iZ, iT), strA));
    }

    /* JADX WARN: Code duplicated, block: B:133:0x018d  */
    /* JADX WARN: Code duplicated, block: B:140:0x019e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ba A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x01d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:157:0x01df A[Catch: all -> 0x011f, UnsupportedEncodingException -> 0x0122, TryCatch #0 {UnsupportedEncodingException -> 0x0122, blocks: (B:90:0x010d, B:159:0x01f1, B:92:0x0115, B:102:0x0132, B:104:0x013a, B:112:0x0154, B:121:0x016c, B:132:0x0187, B:139:0x0199, B:145:0x01a8, B:150:0x01c0, B:156:0x01da, B:157:0x01df), top: B:172:0x0103 }] */
    public static h q(int i10, w wVar, boolean z10, int i11, a aVar) {
        int iW;
        int i12;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        String str;
        h bVar;
        int iT = wVar.t();
        int iT2 = wVar.t();
        int iT3 = wVar.t();
        int iT4 = i10 >= 3 ? wVar.t() : 0;
        if (i10 == 4) {
            iW = wVar.w();
            if (!z10) {
                iW = (((iW >> 24) & 255) << 21) | (iW & 255) | (((iW >> 8) & 255) << 7) | (((iW >> 16) & 255) << 14);
            }
        } else {
            iW = i10 == 3 ? wVar.w() : wVar.v();
        }
        int iE = iW;
        int iY = i10 >= 3 ? wVar.y() : 0;
        if (iT == 0 && iT2 == 0 && iT3 == 0 && iT4 == 0 && iE == 0 && iY == 0) {
            wVar.D(wVar.f10477c);
            return null;
        }
        int i13 = wVar.f10476b + iE;
        if (i13 > wVar.f10477c) {
            p.g("Id3Decoder", "Frame size exceeds remaining tag data");
            wVar.D(wVar.f10477c);
            return null;
        }
        if (aVar != null) {
            i12 = i13;
            if (!aVar.a(i10, iT, iT2, iT3, iT4)) {
                wVar.D(i12);
                return null;
            }
        } else {
            i12 = i13;
        }
        if (i10 == 3) {
            z11 = (iY & 128) != 0;
            boolean z19 = (iY & 64) != 0;
            z16 = (iY & 32) != 0;
            z15 = false;
            z17 = z19;
            z18 = z11;
        } else {
            if (i10 == 4) {
                z13 = (iY & 64) != 0;
                z11 = (iY & 8) != 0;
                z12 = (iY & 4) != 0;
                z14 = (iY & 2) != 0;
                if ((iY & 1) != 0) {
                    z15 = z14;
                    z16 = z13;
                    z17 = z12;
                    z18 = true;
                }
            } else {
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            z15 = z14;
            z16 = z13;
            z17 = z12;
            z18 = false;
        }
        if (z11 || z17) {
            p.g("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
            wVar.D(i12);
            return null;
        }
        if (z16) {
            iE--;
            wVar.E(1);
        }
        if (z18) {
            iE -= 4;
            wVar.E(4);
        }
        if (z15) {
            iE = E(wVar, iE);
        }
        try {
            try {
                if (iT == 84 && iT2 == 88 && iT3 == 88 && (i10 == 2 || iT4 == 88)) {
                    bVar = w(wVar, iE);
                } else if (iT == 84) {
                    bVar = v(wVar, iE, B(i10, iT, iT2, iT3, iT4));
                } else if (iT == 87 && iT2 == 88 && iT3 == 88 && (i10 == 2 || iT4 == 88)) {
                    bVar = y(wVar, iE);
                } else if (iT == 87) {
                    bVar = x(wVar, iE, B(i10, iT, iT2, iT3, iT4));
                } else if (iT == 80 && iT2 == 82 && iT3 == 73 && iT4 == 86) {
                    bVar = t(wVar, iE);
                } else if (iT == 71 && iT2 == 69 && iT3 == 79 && (iT4 == 66 || i10 == 2)) {
                    bVar = r(wVar, iE);
                } else if (i10 == 2) {
                    if (iT == 80 && iT2 == 73 && iT3 == 67) {
                        bVar = m(wVar, iE, i10);
                    } else if (iT != 67 && iT2 == 79 && iT3 == 77 && (iT4 == 77 || i10 == 2)) {
                        bVar = p(wVar, iE);
                    } else if (iT != 67 && iT2 == 72 && iT3 == 65 && iT4 == 80) {
                        bVar = n(wVar, iE, i10, z10, i11, aVar);
                    } else if (iT != 67 && iT2 == 84 && iT3 == 79 && iT4 == 67) {
                        bVar = o(wVar, iE, i10, z10, i11, aVar);
                    } else if (iT != 77 && iT2 == 76 && iT3 == 76 && iT4 == 84) {
                        bVar = s(wVar, iE);
                    } else {
                        String strB = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr = new byte[iE];
                        wVar.d(bArr, 0, iE);
                        bVar = new k4.b(strB, bArr);
                    }
                } else if (iT == 65 && iT2 == 80 && iT3 == 73 && iT4 == 67) {
                    bVar = m(wVar, iE, i10);
                } else if (iT != 67) {
                    if (iT != 67) {
                        if (iT != 67) {
                            if (iT != 77) {
                                String strB2 = B(i10, iT, iT2, iT3, iT4);
                                byte[] bArr2 = new byte[iE];
                                wVar.d(bArr2, 0, iE);
                                bVar = new k4.b(strB2, bArr2);
                            } else {
                                String strB3 = B(i10, iT, iT2, iT3, iT4);
                                byte[] bArr3 = new byte[iE];
                                wVar.d(bArr3, 0, iE);
                                bVar = new k4.b(strB3, bArr3);
                            }
                        } else if (iT != 77) {
                            String strB4 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr4 = new byte[iE];
                            wVar.d(bArr4, 0, iE);
                            bVar = new k4.b(strB4, bArr4);
                        } else {
                            String strB5 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr5 = new byte[iE];
                            wVar.d(bArr5, 0, iE);
                            bVar = new k4.b(strB5, bArr5);
                        }
                    } else if (iT != 67) {
                        if (iT != 77) {
                            String strB6 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr6 = new byte[iE];
                            wVar.d(bArr6, 0, iE);
                            bVar = new k4.b(strB6, bArr6);
                        } else {
                            String strB7 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr7 = new byte[iE];
                            wVar.d(bArr7, 0, iE);
                            bVar = new k4.b(strB7, bArr7);
                        }
                    } else if (iT != 77) {
                        String strB8 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr8 = new byte[iE];
                        wVar.d(bArr8, 0, iE);
                        bVar = new k4.b(strB8, bArr8);
                    } else {
                        String strB9 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr9 = new byte[iE];
                        wVar.d(bArr9, 0, iE);
                        bVar = new k4.b(strB9, bArr9);
                    }
                } else if (iT != 67) {
                    if (iT != 67) {
                        if (iT != 77) {
                            String strB10 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr10 = new byte[iE];
                            wVar.d(bArr10, 0, iE);
                            bVar = new k4.b(strB10, bArr10);
                        } else {
                            String strB11 = B(i10, iT, iT2, iT3, iT4);
                            byte[] bArr11 = new byte[iE];
                            wVar.d(bArr11, 0, iE);
                            bVar = new k4.b(strB11, bArr11);
                        }
                    } else if (iT != 77) {
                        String strB12 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr12 = new byte[iE];
                        wVar.d(bArr12, 0, iE);
                        bVar = new k4.b(strB12, bArr12);
                    } else {
                        String strB13 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr13 = new byte[iE];
                        wVar.d(bArr13, 0, iE);
                        bVar = new k4.b(strB13, bArr13);
                    }
                } else if (iT != 67) {
                    if (iT != 77) {
                        String strB14 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr14 = new byte[iE];
                        wVar.d(bArr14, 0, iE);
                        bVar = new k4.b(strB14, bArr14);
                    } else {
                        String strB15 = B(i10, iT, iT2, iT3, iT4);
                        byte[] bArr15 = new byte[iE];
                        wVar.d(bArr15, 0, iE);
                        bVar = new k4.b(strB15, bArr15);
                    }
                } else if (iT != 77) {
                    String strB16 = B(i10, iT, iT2, iT3, iT4);
                    byte[] bArr16 = new byte[iE];
                    wVar.d(bArr16, 0, iE);
                    bVar = new k4.b(strB16, bArr16);
                } else {
                    String strB17 = B(i10, iT, iT2, iT3, iT4);
                    byte[] bArr17 = new byte[iE];
                    wVar.d(bArr17, 0, iE);
                    bVar = new k4.b(strB17, bArr17);
                }
                if (bVar == null) {
                    str = r4;
                    try {
                        p.g(str, "Failed to decode frame: id=" + B(i10, iT, iT2, iT3, iT4) + ", frameSize=" + iE);
                    } catch (UnsupportedEncodingException unused) {
                        p.g(str, "Unsupported character encoding");
                        wVar.D(i12);
                        return null;
                    }
                }
                wVar.D(i12);
                return bVar;
            } catch (UnsupportedEncodingException unused2) {
                str = r4;
            }
        } catch (Throwable th) {
            wVar.D(i12);
            throw th;
        }
    }

    public static f r(w wVar, int i10) throws UnsupportedEncodingException {
        int iT = wVar.t();
        String strA = A(iT);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        wVar.d(bArr, 0, i11);
        int iD = D(bArr, 0);
        String str = new String(bArr, 0, iD, "ISO-8859-1");
        int i12 = iD + 1;
        int iC = C(bArr, i12, iT);
        String strU = u(bArr, i12, iC, strA);
        int iZ = z(iT) + iC;
        int iC2 = C(bArr, iZ, iT);
        return new f(str, strU, u(bArr, iZ, iC2, strA), k(bArr, z(iT) + iC2, i11));
    }

    public static j s(w wVar, int i10) {
        int iY = wVar.y();
        int iV = wVar.v();
        int iV2 = wVar.v();
        int iT = wVar.t();
        int iT2 = wVar.t();
        v vVar = new v();
        vVar.j(wVar.f10475a, wVar.f10477c);
        vVar.k(wVar.f10476b * 8);
        int i11 = ((i10 - 10) * 8) / (iT + iT2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iG = vVar.g(iT);
            int iG2 = vVar.g(iT2);
            iArr[i12] = iG;
            iArr2[i12] = iG2;
        }
        return new j(iY, iV, iV2, iArr, iArr2);
    }

    public static k t(w wVar, int i10) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i10];
        wVar.d(bArr, 0, i10);
        int iD = D(bArr, 0);
        return new k(new String(bArr, 0, iD, "ISO-8859-1"), k(bArr, iD + 1, i10));
    }

    public static String u(byte[] bArr, int i10, int i11, String str) throws UnsupportedEncodingException {
        return (i11 <= i10 || i11 > bArr.length) ? "" : new String(bArr, i10, i11 - i10, str);
    }

    public static l v(w wVar, int i10, String str) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int iT = wVar.t();
        String strA = A(iT);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        wVar.d(bArr, 0, i11);
        return new l(str, null, new String(bArr, 0, C(bArr, 0, iT), strA));
    }

    public static l w(w wVar, int i10) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int iT = wVar.t();
        String strA = A(iT);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        wVar.d(bArr, 0, i11);
        int iC = C(bArr, 0, iT);
        String str = new String(bArr, 0, iC, strA);
        int iZ = z(iT) + iC;
        return new l("TXXX", str, u(bArr, iZ, C(bArr, iZ, iT), strA));
    }

    public static m x(w wVar, int i10, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i10];
        wVar.d(bArr, 0, i10);
        return new m(str, null, new String(bArr, 0, D(bArr, 0), "ISO-8859-1"));
    }

    public static m y(w wVar, int i10) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int iT = wVar.t();
        String strA = A(iT);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        wVar.d(bArr, 0, i11);
        int iC = C(bArr, 0, iT);
        String str = new String(bArr, 0, iC, strA);
        int iZ = z(iT) + iC;
        return new m("WXXX", str, u(bArr, iZ, D(bArr, iZ), "ISO-8859-1"));
    }

    public static int z(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    @Override // androidx.fragment.app.r
    public final f4.a g(f4.d dVar, ByteBuffer byteBuffer) {
        return l(byteBuffer.array(), byteBuffer.limit());
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:49:0x00be  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:71:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f4 A[SYNTHETIC] */
    public final f4.a l(byte[] bArr, int i10) {
        boolean z10;
        b bVar;
        int i11;
        int iE;
        h hVarQ;
        ArrayList arrayList = new ArrayList();
        w wVar = new w(bArr, i10);
        boolean z11 = true;
        if (wVar.f10477c - wVar.f10476b < 10) {
            p.g("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int iV = wVar.v();
            if (iV == 4801587) {
                int iT = wVar.t();
                wVar.E(1);
                int iT2 = wVar.t();
                int iS = wVar.s();
                if (iT == 2) {
                    if ((iT2 & 64) != 0) {
                        p.g("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                    } else {
                        if (iT < 4 || (iT2 & 128) == 0) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        bVar = new b(iT, z10, iS);
                    }
                } else {
                    if (iT == 3) {
                        if ((iT2 & 64) != 0) {
                            int iE2 = wVar.e();
                            wVar.E(iE2);
                            iS -= iE2 + 4;
                        }
                    } else if (iT == 4) {
                        if ((iT2 & 64) != 0) {
                            int iS2 = wVar.s();
                            wVar.E(iS2 - 4);
                            iS -= iS2;
                        }
                        if ((iT2 & 16) != 0) {
                            iS -= 10;
                        }
                    } else {
                        da.c.b("Skipped ID3 tag with unsupported majorVersion=", iT, "Id3Decoder");
                    }
                    if (iT < 4) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    bVar = new b(iT, z10, iS);
                }
                if (bVar == null) {
                    return null;
                }
                int i12 = wVar.f10476b;
                i11 = bVar.f9673a == 2 ? 6 : 10;
                iE = bVar.f9675c;
                if (bVar.f9674b) {
                    iE = E(wVar, iE);
                }
                wVar.C(i12 + iE);
                if (F(wVar, bVar.f9673a, i11, false)) {
                    z11 = false;
                } else if (bVar.f9673a == 4 || !F(wVar, 4, i11, true)) {
                    StringBuilder sbC = a0.b.c("Failed to validate ID3 tag with majorVersion=");
                    sbC.append(bVar.f9673a);
                    p.g("Id3Decoder", sbC.toString());
                    return null;
                }
                while (wVar.f10477c - wVar.f10476b >= i11) {
                    hVarQ = q(bVar.f9673a, wVar, z11, i11, this.f9672h);
                    if (hVarQ != null) {
                        arrayList.add(hVarQ);
                    }
                }
                return new f4.a(arrayList);
            }
            StringBuilder sbC2 = a0.b.c("Unexpected first three bytes of ID3 tag header: 0x");
            sbC2.append(String.format("%06X", Integer.valueOf(iV)));
            p.g("Id3Decoder", sbC2.toString());
        }
        bVar = null;
        if (bVar == null) {
            return null;
        }
        int i13 = wVar.f10476b;
        if (bVar.f9673a == 2) {
        }
        iE = bVar.f9675c;
        if (bVar.f9674b) {
            iE = E(wVar, iE);
        }
        wVar.C(i13 + iE);
        if (F(wVar, bVar.f9673a, i11, false)) {
            if (bVar.f9673a == 4) {
            }
            StringBuilder sbC3 = a0.b.c("Failed to validate ID3 tag with majorVersion=");
            sbC3.append(bVar.f9673a);
            p.g("Id3Decoder", sbC3.toString());
            return null;
        }
        z11 = false;
        while (wVar.f10477c - wVar.f10476b >= i11) {
            hVarQ = q(bVar.f9673a, wVar, z11, i11, this.f9672h);
            if (hVarQ != null) {
                arrayList.add(hVarQ);
            }
        }
        return new f4.a(arrayList);
    }

    public g(a aVar) {
        this.f9672h = aVar;
    }
}
