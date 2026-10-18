package d7;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: SubtleUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static void a(ByteBuffer byteBuffer, long j10) throws GeneralSecurityException {
        if (0 > j10 || j10 >= 4294967296L) {
            throw new GeneralSecurityException("Index out of range");
        }
        byteBuffer.putInt((int) j10);
    }
}
