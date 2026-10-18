package yd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: Indent.kt */
/* JADX INFO: loaded from: classes.dex */
public class k extends androidx.lifecycle.o {
    public static final qd.l T() {
        return "".length() == 0 ? i.f19198h : new j();
    }

    public static String U(String str) throws IOException {
        p4.h.j(str, "<this>");
        if (!(!o.b0("|"))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<String> listT0 = s.t0(str);
        int size = (listT0.size() * 0) + str.length();
        qd.l lVarT = T();
        int iP = androidx.lifecycle.o.p(listT0);
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (Object obj : listT0) {
            int i11 = i10 + 1;
            String strSubstring = null;
            if (i10 < 0) {
                androidx.lifecycle.o.L();
                throw null;
            }
            String str2 = (String) obj;
            if ((i10 != 0 && i10 != iP) || !o.b0(str2)) {
                int length = str2.length();
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        i12 = -1;
                        break;
                    }
                    if (!d3.e.m(str2.charAt(i12))) {
                        break;
                    }
                    i12++;
                }
                if (i12 != -1 && o.f0(str2, "|", i12, false)) {
                    strSubstring = str2.substring("|".length() + i12);
                    p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                }
                if (strSubstring == null || (strSubstring = (String) lVarT.invoke(strSubstring)) == null) {
                    strSubstring = str2;
                }
            }
            if (strSubstring != null) {
                arrayList.add(strSubstring);
            }
            i10 = i11;
        }
        StringBuilder sb2 = new StringBuilder(size);
        gd.n.c0(arrayList, sb2);
        String string = sb2.toString();
        p4.h.i(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }
}
