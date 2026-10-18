package r7;

import android.app.Activity;
import android.net.Uri;

/* JADX INFO: compiled from: DeepLink.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public abstract String[] a();

    public abstract void b(Activity activity, Uri uri);

    public final boolean c(Uri uri) {
        for (String str : a()) {
            if (uri.getQueryParameter(str) == null) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}
