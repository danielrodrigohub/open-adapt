package d7;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: compiled from: EngineWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public interface d<T> {

    /* JADX INFO: compiled from: EngineWrapper.java */
    public static class a implements d<Cipher> {
        @Override // d7.d
        public final Cipher a(String str, Provider provider) throws GeneralSecurityException {
            return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
        }
    }

    /* JADX INFO: compiled from: EngineWrapper.java */
    public static class b implements d<Mac> {
        @Override // d7.d
        public final Mac a(String str, Provider provider) throws GeneralSecurityException {
            return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
        }
    }

    T a(String str, Provider provider) throws GeneralSecurityException;
}
