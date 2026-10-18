package m7;

/* JADX INFO: compiled from: Utf8.java */
/* JADX INFO: loaded from: classes.dex */
public final class n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f10711a;

    /* JADX INFO: compiled from: Utf8.java */
    public static class a {
        public static void a(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) throws z {
            if (!d(b11)) {
                if ((((b11 + 112) + (b10 << 28)) >> 30) == 0 && !d(b12) && !d(b13)) {
                    int i11 = ((b10 & 7) << 18) | ((b11 & 63) << 12) | ((b12 & 63) << 6) | (b13 & 63);
                    cArr[i10] = (char) ((i11 >>> 10) + 55232);
                    cArr[i10 + 1] = (char) ((i11 & 1023) + 56320);
                    return;
                }
            }
            throw z.b();
        }

        public static void b(byte b10, byte b11, char[] cArr, int i10) throws z {
            if (b10 < -62 || d(b11)) {
                throw z.b();
            }
            cArr[i10] = (char) (((b10 & 31) << 6) | (b11 & 63));
        }

        public static void c(byte b10, byte b11, byte b12, char[] cArr, int i10) throws z {
            if (d(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || d(b12)))) {
                throw z.b();
            }
            cArr[i10] = (char) (((b10 & 15) << 12) | ((b11 & 63) << 6) | (b12 & 63));
        }

        public static boolean d(byte b10) {
            return b10 > -65;
        }
    }

    /* JADX INFO: compiled from: Utf8.java */
    public static abstract class b {
        public abstract String a(byte[] bArr, int i10, int i11) throws z;

        public abstract int b(CharSequence charSequence, byte[] bArr, int i10, int i11);

        public abstract int c(byte[] bArr, int i10, int i11);
    }

    /* JADX INFO: compiled from: Utf8.java */
    public static final class c extends b {
        @Override // m7.n1.b
        public final String a(byte[] bArr, int i10, int i11) throws z {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (!(b10 >= 0)) {
                    break;
                }
                i10++;
                cArr[i13] = (char) b10;
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (b11 >= 0) {
                    int i16 = i14 + 1;
                    cArr[i14] = (char) b11;
                    while (i15 < i12) {
                        byte b12 = bArr[i15];
                        if (!(b12 >= 0)) {
                            break;
                        }
                        i15++;
                        cArr[i16] = (char) b12;
                        i16++;
                    }
                    i10 = i15;
                    i14 = i16;
                } else {
                    if (!(b11 < -32)) {
                        if (b11 < -16) {
                            if (i15 >= i12 - 1) {
                                throw z.b();
                            }
                            int i17 = i15 + 1;
                            a.c(b11, bArr[i15], bArr[i17], cArr, i14);
                            i10 = i17 + 1;
                            i14++;
                        } else {
                            if (i15 >= i12 - 2) {
                                throw z.b();
                            }
                            int i18 = i15 + 1;
                            byte b13 = bArr[i15];
                            int i19 = i18 + 1;
                            a.a(b11, b13, bArr[i18], bArr[i19], cArr, i14);
                            i10 = i19 + 1;
                            i14 = i14 + 1 + 1;
                        }
                    } else {
                        if (i15 >= i12) {
                            throw z.b();
                        }
                        a.b(b11, bArr[i15], cArr, i14);
                        i10 = i15 + 1;
                        i14++;
                    }
                }
            }
            return new String(cArr, 0, i14);
        }

        @Override // m7.n1.b
        public final int b(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            int i12;
            int i13;
            int i14;
            char cCharAt;
            int length = charSequence.length();
            int i15 = i11 + i10;
            int i16 = 0;
            while (i16 < length && (i14 = i16 + i10) < i15 && (cCharAt = charSequence.charAt(i16)) < 128) {
                bArr[i14] = (byte) cCharAt;
                i16++;
            }
            if (i16 == length) {
                return i10 + length;
            }
            int i17 = i10 + i16;
            while (i16 < length) {
                char cCharAt2 = charSequence.charAt(i16);
                if (cCharAt2 >= 128 || i17 >= i15) {
                    if (cCharAt2 < 2048 && i17 <= i15 - 2) {
                        int i18 = i17 + 1;
                        bArr[i17] = (byte) ((cCharAt2 >>> 6) | 960);
                        i17 = i18 + 1;
                        bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i17 > i15 - 3) {
                            if (i17 > i15 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i16 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i13)))) {
                                    throw new d(i16, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i17);
                            }
                            int i19 = i16 + 1;
                            if (i19 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i19);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i20 = i17 + 1;
                                    bArr[i17] = (byte) ((codePoint >>> 18) | 240);
                                    int i21 = i20 + 1;
                                    bArr[i20] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i22 = i21 + 1;
                                    bArr[i21] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i17 = i22 + 1;
                                    bArr[i22] = (byte) ((codePoint & 63) | 128);
                                    i16 = i19;
                                } else {
                                    i16 = i19;
                                }
                            }
                            throw new d(i16 - 1, length);
                        }
                        int i23 = i17 + 1;
                        bArr[i17] = (byte) ((cCharAt2 >>> '\f') | 480);
                        int i24 = i23 + 1;
                        bArr[i23] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                        i12 = i24 + 1;
                        bArr[i24] = (byte) ((cCharAt2 & '?') | 128);
                    }
                    i16++;
                } else {
                    i12 = i17 + 1;
                    bArr[i17] = (byte) cCharAt2;
                }
                i17 = i12;
                i16++;
            }
            return i17;
        }

        @Override // m7.n1.b
        public final int c(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 < i11) {
                while (i10 < i11) {
                    int i12 = i10 + 1;
                    byte b10 = bArr[i10];
                    if (b10 < 0) {
                        if (b10 < -32) {
                            if (i12 >= i11) {
                                return b10;
                            }
                            if (b10 >= -62) {
                                i10 = i12 + 1;
                                if (bArr[i12] > -65) {
                                }
                            }
                            return -1;
                        }
                        if (b10 < -16) {
                            if (i12 >= i11 - 1) {
                                return n1.c(bArr, i12, i11);
                            }
                            int i13 = i12 + 1;
                            byte b11 = bArr[i12];
                            if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                                i10 = i13 + 1;
                                if (bArr[i13] > -65) {
                                }
                            }
                        } else {
                            if (i12 >= i11 - 2) {
                                return n1.c(bArr, i12, i11);
                            }
                            int i14 = i12 + 1;
                            byte b12 = bArr[i12];
                            if (b12 <= -65) {
                                if ((((b12 + 112) + (b10 << 28)) >> 30) == 0) {
                                    int i15 = i14 + 1;
                                    if (bArr[i14] <= -65) {
                                        i12 = i15 + 1;
                                        if (bArr[i15] > -65) {
                                        }
                                    }
                                }
                            }
                        }
                        return -1;
                    }
                    i10 = i12;
                }
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: Utf8.java */
    public static class d extends IllegalArgumentException {
        public d(int i10, int i11) {
            super(d1.c.a("Unpaired surrogate at index ", i10, " of ", i11));
        }
    }

    /* JADX INFO: compiled from: Utf8.java */
    public static final class e extends b {
        public static int d(byte[] bArr, long j10, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            while (true) {
                int i12 = i11 + 8;
                if (i12 > i10 || (m1.n(bArr, m1.f10707f + j10) & (-9187201950435737472L)) != 0) {
                    break;
                }
                j10 += 8;
                i11 = i12;
            }
            while (i11 < i10) {
                long j11 = 1 + j10;
                if (m1.j(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j11;
            }
            return i10;
        }

        public static int e(byte[] bArr, int i10, long j10, int i11) {
            if (i11 == 0) {
                b bVar = n1.f10711a;
                if (i10 > -12) {
                    return -1;
                }
                return i10;
            }
            if (i11 == 1) {
                return n1.a(i10, m1.j(bArr, j10));
            }
            if (i11 == 2) {
                return n1.b(i10, m1.j(bArr, j10), m1.j(bArr, j10 + 1));
            }
            throw new AssertionError();
        }

        @Override // m7.n1.b
        public final String a(byte[] bArr, int i10, int i11) throws z {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int iD = d(bArr, i10, i11) + i10;
            int i12 = i10 + i11;
            while (iD < i12 && m1.j(bArr, iD) >= 0) {
                iD++;
            }
            if (iD == i12) {
                return new String(bArr, i10, i11, y.f10801a);
            }
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < iD) {
                cArr[i13] = (char) m1.j(bArr, i10);
                i10++;
                i13++;
            }
            int i14 = i13;
            while (iD < i12) {
                int i15 = iD + 1;
                byte bJ = m1.j(bArr, iD);
                if (bJ >= 0) {
                    int i16 = i14 + 1;
                    cArr[i14] = (char) bJ;
                    while (i15 < i12) {
                        byte bJ2 = m1.j(bArr, i15);
                        if (!(bJ2 >= 0)) {
                            break;
                        }
                        i15++;
                        cArr[i16] = (char) bJ2;
                        i16++;
                    }
                    i14 = i16;
                    iD = i15;
                } else {
                    if (!(bJ < -32)) {
                        if (bJ < -16) {
                            if (i15 >= i12 - 1) {
                                throw z.b();
                            }
                            int i17 = i15 + 1;
                            a.c(bJ, m1.j(bArr, i15), m1.j(bArr, i17), cArr, i14);
                            iD = i17 + 1;
                            i14++;
                        } else {
                            if (i15 >= i12 - 2) {
                                throw z.b();
                            }
                            int i18 = i15 + 1;
                            byte bJ3 = m1.j(bArr, i15);
                            int i19 = i18 + 1;
                            byte bJ4 = m1.j(bArr, i18);
                            iD = i19 + 1;
                            a.a(bJ, bJ3, bJ4, m1.j(bArr, i19), cArr, i14);
                            i14 = i14 + 1 + 1;
                        }
                    } else {
                        if (i15 >= i12) {
                            throw z.b();
                        }
                        iD = i15 + 1;
                        a.b(bJ, m1.j(bArr, i15), cArr, i14);
                        i14++;
                    }
                }
            }
            return new String(cArr, 0, i14);
        }

        @Override // m7.n1.b
        public final int b(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            char c10;
            long j10;
            long j11;
            int i12;
            char cCharAt;
            long j12 = i10;
            long j13 = ((long) i11) + j12;
            int length = charSequence.length();
            if (length > i11 || bArr.length - i11 < i10) {
                StringBuilder sbC = a0.b.c("Failed writing ");
                sbC.append(charSequence.charAt(length - 1));
                sbC.append(" at index ");
                sbC.append(i10 + i11);
                throw new ArrayIndexOutOfBoundsException(sbC.toString());
            }
            int i13 = 0;
            while (true) {
                c10 = 128;
                j10 = 1;
                if (i13 >= length || (cCharAt = charSequence.charAt(i13)) >= 128) {
                    break;
                }
                m1.r(bArr, j12, (byte) cCharAt);
                i13++;
                j12 = 1 + j12;
            }
            if (i13 == length) {
                return (int) j12;
            }
            while (i13 < length) {
                char cCharAt2 = charSequence.charAt(i13);
                if (cCharAt2 >= c10 || j12 >= j13) {
                    if (cCharAt2 < 2048 && j12 <= j13 - 2) {
                        long j14 = j12 + j10;
                        m1.r(bArr, j12, (byte) ((cCharAt2 >>> 6) | 960));
                        j11 = j14 + j10;
                        m1.r(bArr, j14, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j12 > j13 - 3) {
                            if (j12 > j13 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                                    throw new d(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j12);
                            }
                            int i14 = i13 + 1;
                            if (i14 != length) {
                                char cCharAt3 = charSequence.charAt(i14);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    long j15 = j12 + 1;
                                    m1.r(bArr, j12, (byte) ((codePoint >>> 18) | 240));
                                    long j16 = 1 + j15;
                                    m1.r(bArr, j15, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j17 = 1 + j16;
                                    m1.r(bArr, j16, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j10 = 1;
                                    m1.r(bArr, j17, (byte) ((codePoint & 63) | 128));
                                    i13 = i14;
                                    c10 = 128;
                                    j12 = j17 + 1;
                                } else {
                                    i13 = i14;
                                }
                            }
                            throw new d(i13 - 1, length);
                        }
                        long j18 = j12 + j10;
                        m1.r(bArr, j12, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j19 = j10 + j18;
                        m1.r(bArr, j18, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j11 = 1 + j19;
                        m1.r(bArr, j19, (byte) ((cCharAt2 & '?') | 128));
                        j10 = 1;
                    }
                    long j20 = j11;
                    c10 = 128;
                    j12 = j20;
                } else {
                    m1.r(bArr, j12, (byte) cCharAt2);
                    j12 += j10;
                }
                i13++;
            }
            return (int) j12;
        }

        @Override // m7.n1.b
        public final int c(byte[] bArr, int i10, int i11) {
            long j10;
            if ((i10 | i11 | (bArr.length - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            long j11 = i10;
            int i12 = (int) (((long) i11) - j11);
            int iD = d(bArr, j11, i12);
            int i13 = i12 - iD;
            long j12 = j11 + ((long) iD);
            while (true) {
                byte bJ = 0;
                while (i13 > 0) {
                    long j13 = j12 + 1;
                    bJ = m1.j(bArr, j12);
                    if (bJ < 0) {
                        j12 = j13;
                        break;
                    }
                    i13--;
                    j12 = j13;
                }
                if (i13 == 0) {
                    return 0;
                }
                int i14 = i13 - 1;
                if (bJ < -32) {
                    if (i14 == 0) {
                        return bJ;
                    }
                    i13 = i14 - 1;
                    if (bJ >= -62) {
                        j10 = j12 + 1;
                        if (m1.j(bArr, j12) > -65) {
                        }
                        j12 = j10;
                    }
                    return -1;
                }
                if (bJ < -16) {
                    if (i14 < 2) {
                        return e(bArr, bJ, j12, i14);
                    }
                    i13 = i14 - 2;
                    long j14 = j12 + 1;
                    byte bJ2 = m1.j(bArr, j12);
                    if (bJ2 <= -65 && ((bJ != -32 || bJ2 >= -96) && (bJ != -19 || bJ2 < -96))) {
                        j12 = 1 + j14;
                        if (m1.j(bArr, j14) > -65) {
                        }
                    }
                } else {
                    if (i14 < 3) {
                        return e(bArr, bJ, j12, i14);
                    }
                    i13 = i14 - 3;
                    long j15 = j12 + 1;
                    byte bJ3 = m1.j(bArr, j12);
                    if (bJ3 <= -65 && (((bJ3 + 112) + (bJ << 28)) >> 30) == 0) {
                        long j16 = j15 + 1;
                        if (m1.j(bArr, j15) <= -65) {
                            j10 = j16 + 1;
                            if (m1.j(bArr, j16) > -65) {
                            }
                            j12 = j10;
                        }
                    }
                }
                return -1;
            }
        }
    }

    static {
        f10711a = (!(m1.f10706e && m1.f10705d) || m7.d.a()) ? new c() : new e();
    }

    public static int a(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    public static int b(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    public static int c(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            if (b10 > -12) {
                b10 = -1;
            }
            return b10;
        }
        if (i12 == 1) {
            byte b11 = bArr[i10];
            if (b10 > -12 || b11 > -65) {
                return -1;
            }
            return b10 ^ (b11 << 8);
        }
        if (i12 != 2) {
            throw new AssertionError();
        }
        byte b12 = bArr[i10];
        byte b13 = bArr[i10 + 1];
        if (b10 > -12 || b12 > -65 || b13 > -65) {
            return -1;
        }
        return ((b12 << 8) ^ b10) ^ (b13 << 16);
    }

    public static int d(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        int i11 = 0;
        while (i11 < length && charSequence.charAt(i11) < 128) {
            i11++;
        }
        int i12 = length;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt >= 2048) {
                int length2 = charSequence.length();
                while (i11 < length2) {
                    char cCharAt2 = charSequence.charAt(i11);
                    if (cCharAt2 < 2048) {
                        i10 += (127 - cCharAt2) >>> 31;
                    } else {
                        i10 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i11) < 65536) {
                                throw new d(i11, length2);
                            }
                            i11++;
                        }
                    }
                    i11++;
                }
                i12 += i10;
                break;
            }
            i12 += (127 - cCharAt) >>> 31;
            i11++;
        }
        if (i12 >= length) {
            return i12;
        }
        StringBuilder sbC = a0.b.c("UTF-8 length does not fit in int: ");
        sbC.append(((long) i12) + 4294967296L);
        throw new IllegalArgumentException(sbC.toString());
    }

    public static boolean e(byte[] bArr, int i10, int i11) {
        return f10711a.c(bArr, i10, i11) == 0;
    }
}
