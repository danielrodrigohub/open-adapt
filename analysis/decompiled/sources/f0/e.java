package f0;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: HandlerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }
}
