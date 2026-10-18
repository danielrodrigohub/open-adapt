package yd;

import gd.w;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: StringsJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public class o extends n {
    public static final boolean Y(String str, String str2, boolean z10) {
        p4.h.j(str, "<this>");
        p4.h.j(str2, "suffix");
        return !z10 ? str.endsWith(str2) : c0(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static final boolean Z(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    /* JADX WARN: Incorrect return type in method signature: (Lrd/a0;)Ljava/util/Comparator<Ljava/lang/String;>; */
    public static final void a0() {
        p4.h.i(String.CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
    }

    public static final boolean b0(CharSequence charSequence) {
        boolean z10;
        p4.h.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            Iterable eVar = new vd.e(0, charSequence.length() - 1);
            if (!(eVar instanceof Collection) || !((Collection) eVar).isEmpty()) {
                Iterator it = eVar.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = true;
                        break;
                    }
                    if (!d3.e.m(charSequence.charAt(((w) it).a()))) {
                        z10 = false;
                        break;
                    }
                }
            } else {
                z10 = true;
                break;
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    public static final boolean c0(String str, int i10, String str2, int i11, int i12, boolean z10) {
        p4.h.j(str, "<this>");
        p4.h.j(str2, "other");
        return !z10 ? str.regionMatches(i10, str2, i11, i12) : str.regionMatches(z10, i10, str2, i11, i12);
    }

    public static final String d0(String str, String str2, String str3, boolean z10) {
        p4.h.j(str, "<this>");
        p4.h.j(str3, "newValue");
        int i10 = 0;
        int iM0 = s.m0(str, str2, 0, z10);
        if (iM0 < 0) {
            return str;
        }
        int length = str2.length();
        int i11 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        do {
            sb2.append((CharSequence) str, i10, iM0);
            sb2.append(str3);
            i10 = iM0 + length;
            if (iM0 >= str.length()) {
                break;
            }
            iM0 = s.m0(str, str2, iM0 + i11, z10);
        } while (iM0 > 0);
        sb2.append((CharSequence) str, i10, str.length());
        String string = sb2.toString();
        p4.h.i(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    public static String e0(String str, char c10, char c11) {
        p4.h.j(str, "<this>");
        String strReplace = str.replace(c10, c11);
        p4.h.i(strReplace, "this as java.lang.String…replace(oldChar, newChar)");
        return strReplace;
    }

    public static final boolean f0(String str, String str2, int i10, boolean z10) {
        p4.h.j(str, "<this>");
        return !z10 ? str.startsWith(str2, i10) : c0(str, i10, str2, 0, str2.length(), z10);
    }

    public static final boolean g0(String str, String str2, boolean z10) {
        p4.h.j(str, "<this>");
        p4.h.j(str2, "prefix");
        return !z10 ? str.startsWith(str2) : c0(str, 0, str2, 0, str2.length(), z10);
    }
}
