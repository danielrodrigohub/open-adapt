package kotlinx.serialization.json.internal;

import p4.h;
import yd.o;

/* JADX INFO: compiled from: StringOps.kt */
/* JADX INFO: loaded from: classes.dex */
public final class StringOpsKt {
    private static final byte[] ESCAPE_MARKERS;
    private static final String[] ESCAPE_STRINGS;

    static {
        String[] strArr = new String[93];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            strArr[i11] = "\\u" + toHexChar(i11 >> 12) + toHexChar(i11 >> 8) + toHexChar(i11 >> 4) + toHexChar(i11);
            if (i12 > 31) {
                break;
            } else {
                i11 = i12;
            }
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        ESCAPE_STRINGS = strArr;
        byte[] bArr = new byte[93];
        while (true) {
            int i13 = i10 + 1;
            bArr[i10] = 1;
            if (i13 > 31) {
                bArr[34] = (byte) 34;
                bArr[92] = (byte) 92;
                bArr[9] = (byte) 116;
                bArr[8] = (byte) 98;
                bArr[10] = (byte) 110;
                bArr[13] = (byte) 114;
                bArr[12] = (byte) 102;
                ESCAPE_MARKERS = bArr;
                return;
            }
            i10 = i13;
        }
    }

    public static final byte[] getESCAPE_MARKERS() {
        return ESCAPE_MARKERS;
    }

    public static final String[] getESCAPE_STRINGS() {
        return ESCAPE_STRINGS;
    }

    public static final void printQuoted(StringBuilder sb2, String str) {
        h.j(sb2, "<this>");
        h.j(str, "value");
        sb2.append('\"');
        int length = str.length() - 1;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                int i12 = i10 + 1;
                char cCharAt = str.charAt(i10);
                String[] strArr = ESCAPE_STRINGS;
                if (cCharAt < strArr.length && strArr[cCharAt] != null) {
                    sb2.append((CharSequence) str, i11, i10);
                    sb2.append(strArr[cCharAt]);
                    i11 = i12;
                }
                if (i12 > length) {
                    break;
                } else {
                    i10 = i12;
                }
            }
            i10 = i11;
        }
        if (i10 != 0) {
            sb2.append((CharSequence) str, i10, str.length());
        } else {
            sb2.append(str);
        }
        sb2.append('\"');
    }

    public static final Boolean toBooleanStrictOrNull(String str) {
        h.j(str, "<this>");
        if (o.Z(str, "true")) {
            return Boolean.TRUE;
        }
        if (o.Z(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    private static final char toHexChar(int i10) {
        int i11 = i10 & 15;
        return (char) (i11 < 10 ? i11 + 48 : (i11 - 10) + 97);
    }
}
