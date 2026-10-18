package d7;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: Hkdf.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static byte[] a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) throws GeneralSecurityException {
        Mac macA = c.f6092f.a(str);
        if (i10 > macA.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        if (bArr2.length == 0) {
            macA.init(new SecretKeySpec(new byte[macA.getMacLength()], str));
        } else {
            macA.init(new SecretKeySpec(bArr2, str));
        }
        byte[] bArr4 = new byte[i10];
        macA.init(new SecretKeySpec(macA.doFinal(bArr), str));
        byte[] bArrDoFinal = new byte[0];
        int i11 = 1;
        int length = 0;
        while (true) {
            macA.update(bArrDoFinal);
            macA.update(bArr3);
            macA.update((byte) i11);
            bArrDoFinal = macA.doFinal();
            if (bArrDoFinal.length + length >= i10) {
                System.arraycopy(bArrDoFinal, 0, bArr4, length, i10 - length);
                return bArr4;
            }
            System.arraycopy(bArrDoFinal, 0, bArr4, length, bArrDoFinal.length);
            length += bArrDoFinal.length;
            i11++;
        }
    }
}
