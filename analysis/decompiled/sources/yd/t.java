package yd;

/* JADX INFO: compiled from: _Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public class t extends s {
    public static final String I0(String str, int i10) {
        p4.h.j(str, "<this>");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(a0.d.b("Requested character count ", i10, " is less than zero.").toString());
        }
        int length = str.length();
        if (i10 > length) {
            i10 = length;
        }
        String strSubstring = str.substring(0, i10);
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }
}
