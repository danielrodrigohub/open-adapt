package yd;

import androidx.appcompat.widget.e0;
import gd.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public class s extends o {
    public static List A0(CharSequence charSequence, char[] cArr) {
        p4.h.j(charSequence, "<this>");
        if (cArr.length == 1) {
            return z0(charSequence, String.valueOf(cArr[0]), false, 0);
        }
        y0(0);
        xd.k kVar = new xd.k(new b(charSequence, 0, 0, new p(cArr, false)));
        ArrayList arrayList = new ArrayList(gd.j.T(kVar, 10));
        Iterator<Object> it = kVar.iterator();
        while (it.hasNext()) {
            arrayList.add(D0(charSequence, (vd.e) it.next()));
        }
        return arrayList;
    }

    public static List B0(CharSequence charSequence, String[] strArr) {
        p4.h.j(charSequence, "<this>");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                return z0(charSequence, str, false, 0);
            }
        }
        xd.k kVar = new xd.k(u0(charSequence, strArr, false, 0));
        ArrayList arrayList = new ArrayList(gd.j.T(kVar, 10));
        Iterator<Object> it = kVar.iterator();
        while (it.hasNext()) {
            arrayList.add(D0(charSequence, (vd.e) it.next()));
        }
        return arrayList;
    }

    public static boolean C0(CharSequence charSequence, CharSequence charSequence2) {
        p4.h.j(charSequence, "<this>");
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? o.g0((String) charSequence, (String) charSequence2, false) : v0(charSequence, 0, charSequence2, 0, charSequence2.length(), false);
    }

    public static final String D0(CharSequence charSequence, vd.e eVar) {
        p4.h.j(charSequence, "<this>");
        p4.h.j(eVar, "range");
        return charSequence.subSequence(eVar.k().intValue(), Integer.valueOf(eVar.f17022i).intValue() + 1).toString();
    }

    public static String E0(String str, String str2) {
        p4.h.j(str2, "delimiter");
        int iP0 = p0(str, str2, 0, false, 6);
        if (iP0 == -1) {
            return str;
        }
        String strSubstring = str.substring(str2.length() + iP0, str.length());
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String F0(String str) {
        p4.h.j(str, "<this>");
        p4.h.j(str, "missingDelimiterValue");
        int iR0 = r0(str, '.', 0, 6);
        if (iR0 == -1) {
            return str;
        }
        String strSubstring = str.substring(iR0 + 1, str.length());
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final CharSequence G0(CharSequence charSequence) {
        p4.h.j(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zM = d3.e.m(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zM) {
                    break;
                }
                length--;
            } else if (zM) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static final CharSequence H0(CharSequence charSequence) {
        p4.h.j(charSequence, "<this>");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!d3.e.m(charSequence.charAt(i10))) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    public static boolean h0(CharSequence charSequence, char c10) {
        p4.h.j(charSequence, "<this>");
        return o0(charSequence, c10, 0, false, 2) >= 0;
    }

    public static boolean i0(CharSequence charSequence, CharSequence charSequence2) {
        p4.h.j(charSequence, "<this>");
        p4.h.j(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (p0(charSequence, (String) charSequence2, 0, false, 2) >= 0) {
                return true;
            }
        } else if (n0(charSequence, charSequence2, 0, charSequence.length(), false, false) >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean j0(CharSequence charSequence, char c10, boolean z10) {
        p4.h.j(charSequence, "<this>");
        return charSequence.length() > 0 && d3.e.i(charSequence.charAt(l0(charSequence)), c10, z10);
    }

    public static boolean k0(CharSequence charSequence, CharSequence charSequence2) {
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? o.Y((String) charSequence, (String) charSequence2, false) : v0(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), false);
    }

    public static final int l0(CharSequence charSequence) {
        p4.h.j(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int m0(CharSequence charSequence, String str, int i10, boolean z10) {
        p4.h.j(charSequence, "<this>");
        p4.h.j(str, "string");
        return (z10 || !(charSequence instanceof String)) ? n0(charSequence, str, i10, charSequence.length(), z10, false) : ((String) charSequence).indexOf(str, i10);
    }

    public static final int n0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        vd.c cVar;
        if (z11) {
            int iL0 = l0(charSequence);
            if (i10 > iL0) {
                i10 = iL0;
            }
            if (i11 < 0) {
                i11 = 0;
            }
            cVar = new vd.c(i10, i11, -1);
        } else {
            if (i10 < 0) {
                i10 = 0;
            }
            int length = charSequence.length();
            if (i11 > length) {
                i11 = length;
            }
            cVar = new vd.e(i10, i11);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int i12 = cVar.f17021h;
            int i13 = cVar.f17022i;
            int i14 = cVar.f17023j;
            if ((i14 > 0 && i12 <= i13) || (i14 < 0 && i13 <= i12)) {
                while (!o.c0((String) charSequence2, 0, (String) charSequence, i12, charSequence2.length(), z10)) {
                    if (i12 != i13) {
                        i12 += i14;
                    }
                }
                return i12;
            }
        } else {
            int i15 = cVar.f17021h;
            int i16 = cVar.f17022i;
            int i17 = cVar.f17023j;
            if ((i17 > 0 && i15 <= i16) || (i17 < 0 && i16 <= i15)) {
                while (!v0(charSequence2, 0, charSequence, i15, charSequence2.length(), z10)) {
                    if (i15 != i16) {
                        i15 += i17;
                    }
                }
                return i15;
            }
        }
        return -1;
    }

    public static int o0(CharSequence charSequence, char c10, int i10, boolean z10, int i11) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        p4.h.j(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? q0(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).indexOf(c10, i10);
    }

    public static /* synthetic */ int p0(CharSequence charSequence, String str, int i10, boolean z10, int i11) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return m0(charSequence, str, i10, z10);
    }

    public static final int q0(CharSequence charSequence, char[] cArr, int i10, boolean z10) {
        boolean z11;
        p4.h.j(charSequence, "<this>");
        p4.h.j(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(gd.i.u(cArr), i10);
        }
        if (i10 < 0) {
            i10 = 0;
        }
        w wVarN = new vd.e(i10, l0(charSequence)).iterator();
        while (((vd.d) wVarN).f17026j) {
            int iA = wVarN.a();
            char cCharAt = charSequence.charAt(iA);
            int length = cArr.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z11 = false;
                    break;
                }
                if (d3.e.i(cArr[i11], cCharAt, z10)) {
                    z11 = true;
                    break;
                }
                i11++;
            }
            if (z11) {
                return iA;
            }
        }
        return -1;
    }

    public static int r0(CharSequence charSequence, char c10, int i10, int i11) {
        boolean z10;
        if ((i11 & 2) != 0) {
            i10 = l0(charSequence);
        }
        p4.h.j(charSequence, "<this>");
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c10, i10);
        }
        char[] cArr = {c10};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(gd.i.u(cArr), i10);
        }
        int iL0 = l0(charSequence);
        if (i10 > iL0) {
            i10 = iL0;
        }
        while (-1 < i10) {
            char cCharAt = charSequence.charAt(i10);
            int i12 = 0;
            while (true) {
                if (i12 >= 1) {
                    z10 = false;
                    break;
                }
                if (d3.e.i(cArr[i12], cCharAt, false)) {
                    z10 = true;
                    break;
                }
                i12++;
            }
            if (z10) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static int s0(CharSequence charSequence, String str, int i10) {
        int iL0 = (i10 & 2) != 0 ? l0(charSequence) : 0;
        p4.h.j(charSequence, "<this>");
        p4.h.j(str, "string");
        return !(charSequence instanceof String) ? n0(charSequence, str, iL0, 0, false, true) : ((String) charSequence).lastIndexOf(str, iL0);
    }

    public static final List<String> t0(CharSequence charSequence) {
        p4.h.j(charSequence, "<this>");
        return xd.g.n(xd.g.m(u0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0), new r(charSequence)));
    }

    public static xd.d u0(CharSequence charSequence, String[] strArr, boolean z10, int i10) {
        y0(i10);
        return new b(charSequence, 0, i10, new q(gd.g.i(strArr), z10));
    }

    public static final boolean v0(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z10) {
        p4.h.j(charSequence, "<this>");
        p4.h.j(charSequence2, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > charSequence2.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!d3.e.i(charSequence.charAt(i10 + i13), charSequence2.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static final String w0(String str, CharSequence charSequence) {
        p4.h.j(str, "<this>");
        if (!C0(str, charSequence)) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final String x0(String str, CharSequence charSequence) {
        if (!k0(str, charSequence)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - charSequence.length());
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final void y0(int i10) {
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(e0.d("Limit must be non-negative, but was ", i10).toString());
        }
    }

    public static final List<String> z0(CharSequence charSequence, String str, boolean z10, int i10) {
        y0(i10);
        int length = 0;
        int iM0 = m0(charSequence, str, 0, z10);
        if (iM0 == -1 || i10 == 1) {
            return androidx.lifecycle.o.y(charSequence.toString());
        }
        boolean z11 = i10 > 0;
        int i11 = 10;
        if (z11 && i10 <= 10) {
            i11 = i10;
        }
        ArrayList arrayList = new ArrayList(i11);
        do {
            arrayList.add(charSequence.subSequence(length, iM0).toString());
            length = str.length() + iM0;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            iM0 = m0(charSequence, str, length, z10);
        } while (iM0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }
}
