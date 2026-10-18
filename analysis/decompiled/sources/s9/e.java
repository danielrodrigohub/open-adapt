package s9;

import android.content.Context;
import android.util.Pair;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: BigfootTokenStringUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    @SafeVarargs
    public static String a(Context context, int i10, Pair<String, String>... pairArr) {
        return b(context.getString(i10), pairArr);
    }

    @SafeVarargs
    public static String b(String str, Pair<String, String>... pairArr) {
        for (Pair<String, String> pair : pairArr) {
            if (pair != null) {
                if (pair.first == null || pair.second == null) {
                    Object obj = pair.first;
                    String str2 = obj == null ? "" : (String) obj;
                    Object obj2 = pair.second;
                    pair = new Pair<>(str2, obj2 != null ? (String) obj2 : "");
                }
                StringBuilder sbC = a0.b.c("(?i)");
                StringBuilder sbC2 = a0.b.c("{");
                sbC2.append((String) pair.first);
                sbC2.append("}");
                sbC.append(Pattern.quote(sbC2.toString()));
                str = str.replaceAll(sbC.toString(), Matcher.quoteReplacement((String) pair.second));
            }
        }
        return str;
    }
}
