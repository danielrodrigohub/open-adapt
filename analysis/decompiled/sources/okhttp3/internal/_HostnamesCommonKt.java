package okhttp3.internal;

import de.c;
import java.util.Arrays;
import p4.h;
import yd.g;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: -HostnamesCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _HostnamesCommonKt {
    private static final g VERIFY_AS_IP_ADDRESS = new g("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static final boolean canParseAsIpAddress(String str) {
        h.j(str, "<this>");
        return VERIFY_AS_IP_ADDRESS.a(str);
    }

    public static final boolean containsInvalidHostnameAsciiCodes(String str) {
        h.j(str, "<this>");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (h.l(cCharAt, 31) <= 0 || h.l(cCharAt, 127) >= 0 || s.o0(" #%/:?@[\\]", cCharAt, 0, false, 6) != -1) {
                return true;
            }
        }
        return false;
    }

    public static final boolean containsInvalidLabelLengths(String str) {
        h.j(str, "<this>");
        int length = str.length();
        if (!(1 <= length && length < 254)) {
            return true;
        }
        int i10 = 0;
        while (true) {
            int iO0 = s.o0(str, '.', i10, false, 4);
            int length2 = iO0 == -1 ? str.length() - i10 : iO0 - i10;
            if (!(1 <= length2 && length2 < 64)) {
                return true;
            }
            if (iO0 == -1 || iO0 == str.length() - 1) {
                return false;
            }
            i10 = iO0 + 1;
        }
    }

    public static final boolean decodeIpv4Suffix(String str, int i10, int i11, byte[] bArr, int i12) {
        h.j(str, "input");
        h.j(bArr, "address");
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char cCharAt = str.charAt(i14);
                if (h.l(cCharAt, 48) < 0 || h.l(cCharAt, 57) > 0) {
                    break;
                }
                if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i14++;
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c A[LOOP:1: B:30:0x0050->B:33:0x005c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x0062 A[EDGE_INSN: B:53:0x0062->B:34:0x0062 BREAK  A[LOOP:1: B:30:0x0050->B:33:0x005c], SYNTHETIC] */
    public static final byte[] decodeIpv6(String str, int i10, int i11) {
        int i12;
        int i13;
        int hexDigit;
        h.j(str, "input");
        byte[] bArr = new byte[16];
        int i14 = -1;
        int i15 = -1;
        int i16 = 0;
        while (i10 < i11) {
            if (i16 == 16) {
                return null;
            }
            int i17 = i10 + 2;
            if (i17 <= i11 && o.f0(str, "::", i10, false)) {
                if (i14 != -1) {
                    return null;
                }
                i16 += 2;
                i14 = i16;
                if (i17 == i11) {
                    break;
                }
                i15 = i17;
                i12 = 0;
                i10 = i15;
                while (i10 < i11) {
                    hexDigit = _UtilCommonKt.parseHexDigit(str.charAt(i10));
                    if (hexDigit != -1) {
                        break;
                        break;
                    }
                    i12 = (i12 << 4) + hexDigit;
                    i10++;
                }
                i13 = i10 - i15;
                if (i13 != 0) {
                }
                return null;
            }
            if (i16 != 0) {
                if (!o.f0(str, ":", i10, false)) {
                    if (!o.f0(str, ".", i10, false) || !decodeIpv4Suffix(str, i15, i11, bArr, i16 - 2)) {
                        return null;
                    }
                    i16 += 2;
                    break;
                }
                i10++;
            }
            i15 = i10;
            i12 = 0;
            i10 = i15;
            while (i10 < i11) {
                hexDigit = _UtilCommonKt.parseHexDigit(str.charAt(i10));
                if (hexDigit != -1) {
                    break;
                }
                i12 = (i12 << 4) + hexDigit;
                i10++;
            }
            i13 = i10 - i15;
            if (i13 != 0 || i13 > 4) {
                return null;
            }
            int i18 = i16 + 1;
            bArr[i16] = (byte) ((i12 >>> 8) & 255);
            i16 = i18 + 1;
            bArr[i18] = (byte) (i12 & 255);
        }
        if (i16 != 16) {
            if (i14 == -1) {
                return null;
            }
            gd.g.j(bArr, bArr, 16 - (i16 - i14), i14, i16);
            Arrays.fill(bArr, i14, (16 - i16) + i14, (byte) 0);
        }
        return bArr;
    }

    public static final String inet6AddressToAscii(byte[] bArr) {
        h.j(bArr, "address");
        int i10 = 0;
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i11 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        c cVar = new c();
        while (i10 < bArr.length) {
            if (i10 == i11) {
                cVar.y0(58);
                i10 += i13;
                if (i10 == 16) {
                    cVar.y0(58);
                }
            } else {
                if (i10 > 0) {
                    cVar.y0(58);
                }
                cVar.g((_UtilCommonKt.and(bArr[i10], 255) << 8) | _UtilCommonKt.and(bArr[i10 + 1], 255));
                i10 += 2;
            }
        }
        return cVar.p0();
    }
}
