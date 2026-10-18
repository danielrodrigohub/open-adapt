package d7;

import java.security.SecureRandom;

/* JADX INFO: compiled from: Random.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<SecureRandom> f6095a = new a();

    /* JADX INFO: compiled from: Random.java */
    public class a extends ThreadLocal<SecureRandom> {
        @Override // java.lang.ThreadLocal
        public final SecureRandom initialValue() {
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextLong();
            return secureRandom;
        }
    }

    public static byte[] a(int i10) {
        byte[] bArr = new byte[i10];
        f6095a.get().nextBytes(bArr);
        return bArr;
    }
}
