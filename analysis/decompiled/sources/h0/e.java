package h0;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: compiled from: TextUtilsCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f8106a = 0;

    /* JADX INFO: compiled from: TextUtilsCompat.java */
    public static class a {
        public static int a(Locale locale) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
    }

    static {
        new Locale("", "");
    }
}
