package r3;

import android.media.DeniedByServerException;
import android.media.NotProvisionedException;

/* JADX INFO: compiled from: DrmUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static boolean a(Throwable th) {
        return th instanceof DeniedByServerException;
    }

    public static boolean b(Throwable th) {
        return th instanceof NotProvisionedException;
    }
}
