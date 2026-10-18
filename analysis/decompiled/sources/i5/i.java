package i5;

import java.util.regex.Pattern;
import m5.g0;
import m5.w;
import n3.i1;

/* JADX INFO: compiled from: WebvttParserUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f8812a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(w wVar) {
        String strF = wVar.f();
        return strF != null && strF.startsWith("WEBVTT");
    }

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) throws NumberFormatException {
        int i10 = g0.f10384a;
        String[] strArrSplit = str.split("\\.", 2);
        long j10 = 0;
        for (String str2 : strArrSplit[0].split(":", -1)) {
            j10 = (j10 * 60) + Long.parseLong(str2);
        }
        long j11 = j10 * 1000;
        if (strArrSplit.length == 2) {
            j11 += Long.parseLong(strArrSplit[1]);
        }
        return j11 * 1000;
    }

    public static void d(w wVar) throws i1 {
        int i10 = wVar.f10476b;
        if (a(wVar)) {
            return;
        }
        wVar.D(i10);
        throw i1.a("Expected WEBVTT. Got " + wVar.f(), null);
    }
}
