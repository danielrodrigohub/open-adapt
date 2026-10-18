package de;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: ByteString.kt */
/* JADX INFO: loaded from: classes2.dex */
public class g implements Serializable, Comparable<g> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f6227k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final g f6228l = new g(new byte[0]);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f6229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public transient int f6230i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public transient String f6231j;

    /* JADX INFO: compiled from: ByteString.kt */
    public static final class a {
        public static g d(byte[] bArr) {
            a aVar = g.f6227k;
            int length = bArr.length;
            n0.e(bArr.length, 0, length);
            return new g(gd.g.m(bArr, 0, length + 0));
        }

        /* JADX WARN: Code duplicated, block: B:75:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
        public final g a(String str) {
            int i10;
            int i11;
            char cCharAt;
            p4.h.j(str, "<this>");
            byte[] bArr = m0.f6256a;
            int length = str.length();
            while (length > 0 && ((cCharAt = str.charAt((i11 = length - 1))) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
                length = i11;
            }
            int i12 = (int) ((((long) length) * 6) / 8);
            byte[] bArrCopyOf = new byte[i12];
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            while (true) {
                if (i13 >= length) {
                    int i17 = i14 % 4;
                    if (i17 != 1) {
                        if (i17 == 2) {
                            bArrCopyOf[i16] = (byte) ((i15 << 12) >> 16);
                            i16++;
                        } else if (i17 == 3) {
                            int i18 = i15 << 6;
                            int i19 = i16 + 1;
                            bArrCopyOf[i16] = (byte) (i18 >> 16);
                            i16 = i19 + 1;
                            bArrCopyOf[i19] = (byte) (i18 >> 8);
                        }
                        if (i16 != i12) {
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i16);
                            p4.h.i(bArrCopyOf, "copyOf(this, newSize)");
                        }
                    }
                    if (bArrCopyOf != null) {
                        return new g(bArrCopyOf);
                    }
                    return null;
                }
                char cCharAt2 = str.charAt(i13);
                if ('A' <= cCharAt2 && cCharAt2 < '[') {
                    i10 = cCharAt2 - 'A';
                } else {
                    if ('a' <= cCharAt2 && cCharAt2 < '{') {
                        i10 = cCharAt2 - 'G';
                    } else {
                        if ('0' <= cCharAt2 && cCharAt2 < ':') {
                            i10 = cCharAt2 + 4;
                        } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                            i10 = 62;
                        } else {
                            if (cCharAt2 != '/' && cCharAt2 != '_') {
                                if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                                    break;
                                }
                            } else {
                                i10 = 63;
                            }
                            i13++;
                        }
                    }
                }
                i15 = (i15 << 6) | i10;
                i14++;
                if (i14 % 4 == 0) {
                    int i20 = i16 + 1;
                    bArrCopyOf[i16] = (byte) (i15 >> 16);
                    int i21 = i20 + 1;
                    bArrCopyOf[i20] = (byte) (i15 >> 8);
                    bArrCopyOf[i21] = (byte) i15;
                    i16 = i21 + 1;
                }
                i13++;
            }
            bArrCopyOf = null;
            if (bArrCopyOf != null) {
                return new g(bArrCopyOf);
            }
            return null;
        }

        public final g b(String str) {
            if (!(str.length() % 2 == 0)) {
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("Unexpected hex string: ", str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) (androidx.emoji2.text.b.e(str.charAt(i11 + 1)) + (androidx.emoji2.text.b.e(str.charAt(i11)) << 4));
            }
            return new g(bArr);
        }

        public final g c(String str) {
            p4.h.j(str, "<this>");
            byte[] bytes = str.getBytes(yd.a.f19171b);
            p4.h.i(bytes, "this as java.lang.String).getBytes(charset)");
            g gVar = new g(bytes);
            gVar.f6231j = str;
            return gVar;
        }
    }

    public g(byte[] bArr) {
        p4.h.j(bArr, "data");
        this.f6229h = bArr;
    }

    public static int m(g gVar, g gVar2, int i10, int i11, Object obj) {
        Objects.requireNonNull(gVar);
        p4.h.j(gVar2, "other");
        return gVar.l(gVar2.f6229h, 0);
    }

    public static int q(g gVar, g gVar2, int i10, int i11, Object obj) {
        Objects.requireNonNull(gVar);
        p4.h.j(gVar2, "other");
        return gVar.p(gVar2.f6229h, -1234567890);
    }

    public static /* synthetic */ g y(g gVar, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = -1234567890;
        }
        return gVar.x(i10, i11);
    }

    public final String A() {
        String str = this.f6231j;
        if (str != null) {
            return str;
        }
        byte[] bArrN = n();
        p4.h.j(bArrN, "<this>");
        String str2 = new String(bArrN, yd.a.f19171b);
        this.f6231j = str2;
        return str2;
    }

    public void B(c cVar, int i10) {
        p4.h.j(cVar, "buffer");
        cVar.x0(this.f6229h, 0, i10);
    }

    public String b() {
        byte[] bArr = this.f6229h;
        byte[] bArr2 = m0.f6256a;
        byte[] bArr3 = m0.f6256a;
        p4.h.j(bArr, "<this>");
        p4.h.j(bArr3, "map");
        byte[] bArr4 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            int i13 = i12 + 1;
            byte b11 = bArr[i12];
            int i14 = i13 + 1;
            byte b12 = bArr[i13];
            int i15 = i11 + 1;
            bArr4[i11] = bArr3[(b10 & 255) >> 2];
            int i16 = i15 + 1;
            bArr4[i15] = bArr3[((b10 & 3) << 4) | ((b11 & 255) >> 4)];
            int i17 = i16 + 1;
            bArr4[i16] = bArr3[((b11 & 15) << 2) | ((b12 & 255) >> 6)];
            i11 = i17 + 1;
            bArr4[i17] = bArr3[b12 & 63];
            i10 = i14;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b13 = bArr[i10];
            int i18 = i11 + 1;
            bArr4[i11] = bArr3[(b13 & 255) >> 2];
            int i19 = i18 + 1;
            bArr4[i18] = bArr3[(b13 & 3) << 4];
            byte b14 = (byte) 61;
            bArr4[i19] = b14;
            bArr4[i19 + 1] = b14;
        } else if (length2 == 2) {
            int i20 = i10 + 1;
            byte b15 = bArr[i10];
            byte b16 = bArr[i20];
            int i21 = i11 + 1;
            bArr4[i11] = bArr3[(b15 & 255) >> 2];
            int i22 = i21 + 1;
            bArr4[i21] = bArr3[((b15 & 3) << 4) | ((b16 & 255) >> 4)];
            bArr4[i22] = bArr3[(b16 & 15) << 2];
            bArr4[i22 + 1] = (byte) 61;
        }
        return new String(bArr4, yd.a.f19171b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            int iJ = gVar.j();
            byte[] bArr = this.f6229h;
            if (iJ == bArr.length && gVar.t(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        if (r0 < r1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
    
        if (r7 < r8) goto L13;
     */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compareTo(g gVar) {
        p4.h.j(gVar, "other");
        int iJ = j();
        int iJ2 = gVar.j();
        int iMin = Math.min(iJ, iJ2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iO = o(i10) & 255;
            int iO2 = gVar.o(i10) & 255;
            if (iO == iO2) {
            }
        }
        if (iJ == iJ2) {
            return 0;
        }
    }

    public int hashCode() {
        int i10 = this.f6230i;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f6229h);
        this.f6230i = iHashCode;
        return iHashCode;
    }

    public g i(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f6229h, 0, j());
        byte[] bArrDigest = messageDigest.digest();
        p4.h.i(bArrDigest, "digestBytes");
        return new g(bArrDigest);
    }

    public int j() {
        return this.f6229h.length;
    }

    public String k() {
        byte[] bArr = this.f6229h;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = androidx.emoji2.text.b.f1801h;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public int l(byte[] bArr, int i10) {
        p4.h.j(bArr, "other");
        int length = this.f6229h.length - bArr.length;
        int iMax = Math.max(i10, 0);
        if (iMax <= length) {
            while (!n0.a(this.f6229h, iMax, bArr, 0, bArr.length)) {
                if (iMax != length) {
                    iMax++;
                }
            }
            return iMax;
        }
        return -1;
    }

    public byte[] n() {
        return this.f6229h;
    }

    public byte o(int i10) {
        return this.f6229h[i10];
    }

    public int p(byte[] bArr, int i10) {
        p4.h.j(bArr, "other");
        for (int iMin = Math.min(n0.k(this, i10), this.f6229h.length - bArr.length); -1 < iMin; iMin--) {
            if (n0.a(this.f6229h, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public boolean s(int i10, g gVar, int i11) {
        p4.h.j(gVar, "other");
        return gVar.t(0, this.f6229h, i10, i11);
    }

    public boolean t(int i10, byte[] bArr, int i11, int i12) {
        p4.h.j(bArr, "other");
        if (i10 >= 0) {
            byte[] bArr2 = this.f6229h;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && n0.a(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:103:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:106:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:108:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:109:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:162:0x016c  */
    /* JADX WARN: Code duplicated, block: B:164:0x016f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0176  */
    /* JADX WARN: Code duplicated, block: B:169:0x017a  */
    /* JADX WARN: Code duplicated, block: B:170:0x017c  */
    /* JADX WARN: Code duplicated, block: B:235:0x0211  */
    /* JADX WARN: Code duplicated, block: B:237:0x0214  */
    /* JADX WARN: Code duplicated, block: B:240:0x021a  */
    /* JADX WARN: Code duplicated, block: B:242:0x021e  */
    /* JADX WARN: Code duplicated, block: B:243:0x0220  */
    /* JADX WARN: Code duplicated, block: B:247:0x022a A[EDGE_INSN: B:247:0x022a->B:248:0x022b BREAK  A[LOOP:0: B:9:0x0014->B:315:0x0014]] */
    /* JADX WARN: Code duplicated, block: B:281:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:284:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x004a  */
    /* JADX WARN: Code duplicated, block: B:313:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x004d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0053  */
    /* JADX WARN: Code duplicated, block: B:36:0x0055  */
    /* JADX WARN: Code duplicated, block: B:59:0x0084  */
    /* JADX WARN: Code duplicated, block: B:61:0x0087 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x008d  */
    /* JADX WARN: Code duplicated, block: B:65:0x008f  */
    public String toString() {
        int i10;
        int i11;
        int i12;
        boolean z10;
        boolean z11;
        int i13;
        boolean z12;
        int i14;
        boolean z13;
        int i15;
        boolean z14;
        byte[] bArr = this.f6229h;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        loop0: while (i16 < length) {
            byte b10 = bArr[i16];
            if (b10 < 0) {
                if ((b10 >> 5) != -2) {
                    if ((b10 >> 4) != -2) {
                        if ((b10 >> 3) != -2) {
                            if (i17 == 64) {
                                break;
                            }
                            i18 = -1;
                            break;
                        }
                        int i19 = i16 + 3;
                        if (length > i19) {
                            byte b11 = bArr[i16];
                            byte b12 = bArr[i16 + 1];
                            if (!((b12 & 192) == 128)) {
                                if (i17 == 64) {
                                    break;
                                }
                                i18 = -1;
                                break;
                            }
                            byte b13 = bArr[i16 + 2];
                            if (!((b13 & 192) == 128)) {
                                if (i17 == 64) {
                                    break;
                                }
                                i18 = -1;
                                break;
                            }
                            byte b14 = bArr[i19];
                            if (!((b14 & 192) == 128)) {
                                if (i17 == 64) {
                                    break;
                                }
                                i18 = -1;
                                break;
                            }
                            int i20 = (((b14 ^ 3678080) ^ (b13 << 6)) ^ (b12 << 12)) ^ (b11 << 18);
                            if (i20 <= 1114111) {
                                if (!(55296 <= i20 && i20 < 57344)) {
                                    if (i20 >= 65536) {
                                        int i21 = i17 + 1;
                                        if (i17 == 64) {
                                            break;
                                        }
                                        if (i20 != 10 && i20 != 13) {
                                            if (i20 >= 0 && i20 < 32) {
                                                z14 = true;
                                            } else {
                                                if (127 <= i20 && i20 < 160) {
                                                    z14 = true;
                                                } else {
                                                    z14 = false;
                                                }
                                            }
                                            if (!z14) {
                                                if (i20 == 65533) {
                                                    if (i20 < 65536) {
                                                        i15 = 1;
                                                    } else {
                                                        i15 = 2;
                                                    }
                                                    i18 += i15;
                                                    i16 += 4;
                                                    i17 = i21;
                                                }
                                            }
                                        } else if (i20 == 65533) {
                                            if (i20 < 65536) {
                                                i15 = 1;
                                            } else {
                                                i15 = 2;
                                            }
                                            i18 += i15;
                                            i16 += 4;
                                            i17 = i21;
                                        }
                                        i18 = -1;
                                        break;
                                    }
                                    if (i17 == 64) {
                                        break;
                                    }
                                    i18 = -1;
                                    break;
                                }
                                if (i17 == 64) {
                                    break;
                                }
                                i18 = -1;
                                break;
                            }
                            if (i17 == 64) {
                                break;
                            }
                            i18 = -1;
                            break;
                        }
                        if (i17 == 64) {
                            break;
                        }
                        i18 = -1;
                        break;
                    }
                    int i22 = i16 + 2;
                    if (length > i22) {
                        byte b15 = bArr[i16];
                        byte b16 = bArr[i16 + 1];
                        if (!((b16 & 192) == 128)) {
                            if (i17 == 64) {
                                break;
                            }
                            i18 = -1;
                            break;
                        }
                        byte b17 = bArr[i22];
                        if (!((b17 & 192) == 128)) {
                            if (i17 == 64) {
                                break;
                            }
                            i18 = -1;
                            break;
                        }
                        int i23 = ((b17 ^ (-123008)) ^ (b16 << 6)) ^ (b15 << 12);
                        if (i23 >= 2048) {
                            if (!(55296 <= i23 && i23 < 57344)) {
                                int i24 = i17 + 1;
                                if (i17 == 64) {
                                    break;
                                }
                                if (i23 != 10 && i23 != 13) {
                                    if (i23 >= 0 && i23 < 32) {
                                        z13 = true;
                                    } else {
                                        if (127 <= i23 && i23 < 160) {
                                            z13 = true;
                                        } else {
                                            z13 = false;
                                        }
                                    }
                                    if (!z13) {
                                        if (i23 == 65533) {
                                            if (i23 < 65536) {
                                                i14 = 1;
                                            } else {
                                                i14 = 2;
                                            }
                                            i18 += i14;
                                            i16 += 3;
                                            i17 = i24;
                                        }
                                    }
                                } else if (i23 == 65533) {
                                    if (i23 < 65536) {
                                        i14 = 1;
                                    } else {
                                        i14 = 2;
                                    }
                                    i18 += i14;
                                    i16 += 3;
                                    i17 = i24;
                                }
                                i18 = -1;
                                break;
                            }
                            if (i17 == 64) {
                                break;
                            }
                            i18 = -1;
                            break;
                        }
                        if (i17 == 64) {
                            break;
                        }
                        i18 = -1;
                        break;
                    }
                    if (i17 == 64) {
                        break;
                    }
                    i18 = -1;
                    break;
                }
                int i25 = i16 + 1;
                if (length > i25) {
                    byte b18 = bArr[i16];
                    byte b19 = bArr[i25];
                    if (!((b19 & 192) == 128)) {
                        if (i17 == 64) {
                            break;
                        }
                        i18 = -1;
                        break;
                    }
                    int i26 = (b19 ^ 3968) ^ (b18 << 6);
                    if (i26 >= 128) {
                        int i27 = i17 + 1;
                        if (i17 == 64) {
                            break;
                        }
                        if (i26 != 10 && i26 != 13) {
                            if (i26 >= 0 && i26 < 32) {
                                z12 = true;
                            } else {
                                if (127 <= i26 && i26 < 160) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                            }
                            if (!z12) {
                                if (i26 == 65533) {
                                    if (i26 < 65536) {
                                        i13 = 1;
                                    } else {
                                        i13 = 2;
                                    }
                                    i18 += i13;
                                    i16 += 2;
                                    i17 = i27;
                                }
                            }
                        } else if (i26 == 65533) {
                            if (i26 < 65536) {
                                i13 = 1;
                            } else {
                                i13 = 2;
                            }
                            i18 += i13;
                            i16 += 2;
                            i17 = i27;
                        }
                        i18 = -1;
                        break;
                    }
                    if (i17 == 64) {
                        break;
                    }
                    i18 = -1;
                    break;
                }
                if (i17 == 64) {
                    break;
                }
                i18 = -1;
                break;
            }
            int i28 = i17 + 1;
            if (i17 == 64) {
                break;
            }
            if (b10 != 10 && b10 != 13) {
                if (b10 >= 0 && b10 < 32) {
                    z11 = true;
                } else {
                    if (127 <= b10 && b10 < 160) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                }
                if (!z11) {
                    if (b10 != 65533) {
                        if (b10 < 65536) {
                            i10 = 1;
                        } else {
                            i10 = 2;
                        }
                        i18 += i10;
                        i16++;
                        while (true) {
                            i17 = i28;
                            if (i16 < length) {
                                continue;
                            }
                            i18 += i12;
                            i16 = i11;
                        }
                    }
                }
                i18 = -1;
                break;
            }
            if (b10 != 65533) {
                if (b10 < 65536) {
                    i10 = 1;
                } else {
                    i10 = 2;
                }
                i18 += i10;
                i16++;
                while (true) {
                    i17 = i28;
                    if (i16 < length && bArr[i16] >= 0) {
                        i11 = i16 + 1;
                        byte b20 = bArr[i16];
                        i28 = i17 + 1;
                        if (i17 == 64) {
                            break loop0;
                        }
                        if (b20 != 10 && b20 != 13) {
                            if (b20 >= 0 && b20 < 32) {
                                z10 = true;
                            } else {
                                if (127 <= b20 && b20 < 160) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                            }
                            if (!z10) {
                                if (b20 == 65533) {
                                    if (b20 < 65536) {
                                        i12 = 1;
                                    } else {
                                        i12 = 2;
                                    }
                                    i18 += i12;
                                    i16 = i11;
                                }
                            }
                        } else if (b20 == 65533) {
                            if (b20 < 65536) {
                                i12 = 1;
                            } else {
                                i12 = 2;
                            }
                            i18 += i12;
                            i16 = i11;
                        }
                    }
                }
            }
            i18 = -1;
            break;
        }
        if (i18 != -1) {
            String strA = A();
            String strSubstring = strA.substring(0, i18);
            p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strD0 = yd.o.d0(yd.o.d0(yd.o.d0(strSubstring, "\\", "\\\\", false), "\n", "\\n", false), "\r", "\\r", false);
            if (i18 >= strA.length()) {
                return "[text=" + strD0 + ']';
            }
            StringBuilder sbC = a0.b.c("[size=");
            sbC.append(this.f6229h.length);
            sbC.append(" text=");
            sbC.append(strD0);
            sbC.append("…]");
            return sbC.toString();
        }
        if (this.f6229h.length <= 64) {
            StringBuilder sbC2 = a0.b.c("[hex=");
            sbC2.append(k());
            sbC2.append(']');
            return sbC2.toString();
        }
        StringBuilder sbC3 = a0.b.c("[size=");
        sbC3.append(this.f6229h.length);
        sbC3.append(" hex=");
        int iK = n0.k(this, 64);
        byte[] bArr2 = this.f6229h;
        if (!(iK <= bArr2.length)) {
            throw new IllegalArgumentException(a0.b.b(a0.b.c("endIndex > length("), this.f6229h.length, ')').toString());
        }
        if (!(iK + 0 >= 0)) {
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        sbC3.append((iK == bArr2.length ? this : new g(gd.g.m(bArr2, 0, iK))).k());
        sbC3.append("…]");
        return sbC3.toString();
    }

    public final g u() {
        return i("SHA-1");
    }

    public final boolean w(g gVar) {
        p4.h.j(gVar, "prefix");
        return s(0, gVar, gVar.j());
    }

    public g x(int i10, int i11) {
        int iK = n0.k(this, i11);
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        byte[] bArr = this.f6229h;
        if (!(iK <= bArr.length)) {
            throw new IllegalArgumentException(a0.b.b(a0.b.c("endIndex > length("), this.f6229h.length, ')').toString());
        }
        if (iK - i10 >= 0) {
            return (i10 == 0 && iK == bArr.length) ? this : new g(gd.g.m(bArr, i10, iK));
        }
        throw new IllegalArgumentException("endIndex < beginIndex".toString());
    }

    public g z() {
        byte b10;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f6229h;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b11 = bArr[i10];
            byte b12 = (byte) 65;
            if (b11 >= b12 && b11 <= (b10 = (byte) 90)) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                p4.h.i(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b11 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b13 = bArrCopyOf[i11];
                    if (b13 >= b12 && b13 <= b10) {
                        bArrCopyOf[i11] = (byte) (b13 + 32);
                    }
                }
                return new g(bArrCopyOf);
            }
            i10++;
        }
    }
}
