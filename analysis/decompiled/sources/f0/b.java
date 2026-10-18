package f0;

import android.os.Bundle;
import android.os.IBinder;
import p4.h;

/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final void a(Bundle bundle, String str, IBinder iBinder) {
        h.j(bundle, "bundle");
        h.j(str, "key");
        bundle.putBinder(str, iBinder);
    }
}
