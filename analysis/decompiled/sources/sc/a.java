package sc;

import android.os.Build;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.regex.Pattern;
import p4.h;

/* JADX INFO: compiled from: UserAgentHeader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15266a;

    public a(String str, String str2, int i10) {
        Pattern patternCompile = Pattern.compile("[\u0001-\b\n-\u001f\u007f-\uffff]");
        h.i(patternCompile, "compile(pattern)");
        String str3 = str + '/' + str2 + " (prod; " + i10 + "; Android " + ((Object) Build.VERSION.RELEASE) + "; " + ((Object) Build.MANUFACTURER) + SafeJsonPrimitive.NULL_CHAR + ((Object) Build.MODEL) + ')';
        h.j(str3, "input");
        String strReplaceAll = patternCompile.matcher(str3).replaceAll("_");
        h.i(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        this.f15266a = strReplaceAll;
    }
}
