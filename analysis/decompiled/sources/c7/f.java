package c7;

import a7.h;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: StreamingAeadUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static String a(h hVar) throws NoSuchAlgorithmException {
        int iOrdinal = hVar.ordinal();
        if (iOrdinal == 1) {
            return "HmacSha1";
        }
        if (iOrdinal == 3) {
            return "HmacSha256";
        }
        if (iOrdinal == 4) {
            return "HmacSha512";
        }
        throw new NoSuchAlgorithmException("hash unsupported for HMAC: " + hVar);
    }
}
