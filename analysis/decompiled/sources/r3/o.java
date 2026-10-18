package r3;

import android.media.MediaDrm;
import m5.g0;

/* JADX INFO: compiled from: DrmUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static boolean a(Throwable th) {
        return th instanceof MediaDrm.MediaDrmStateException;
    }

    public static int b(Throwable th) {
        return g0.u(g0.v(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
    }
}
