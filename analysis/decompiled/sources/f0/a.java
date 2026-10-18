package f0;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: compiled from: BuildCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    @SuppressLint({"RestrictedApi"})
    @Deprecated
    public static boolean a() {
        boolean z10;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 31) {
            if (i10 < 30) {
                return false;
            }
            String str = Build.VERSION.CODENAME;
            if ("REL".equals(str)) {
                z10 = false;
            } else {
                Locale locale = Locale.ROOT;
                if (str.toUpperCase(locale).compareTo("S".toUpperCase(locale)) >= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }
}
