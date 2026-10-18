package r3;

import android.media.MediaDrmResetException;

/* JADX INFO: compiled from: DrmUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static boolean a(Throwable th) {
        return th instanceof MediaDrmResetException;
    }
}
