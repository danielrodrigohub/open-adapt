package z6;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import d7.g;
import d7.m;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Arrays;
import javax.annotation.concurrent.GuardedBy;
import javax.crypto.KeyGenerator;

/* JADX INFO: compiled from: AndroidKeystoreKmsClient.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f19370b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    public KeyStore f19371a = new a().f19372a;

    /* JADX INFO: compiled from: AndroidKeystoreKmsClient.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public KeyStore f19372a;

        public a() {
            this.f19372a = null;
            int i10 = c.f19370b;
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f19372a = keyStore;
                keyStore.load(null);
            } catch (IOException | GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public static void a(String str) throws GeneralSecurityException {
        if (new c().c(str)) {
            throw new IllegalArgumentException(String.format("cannot generate a new key %s because it already exists; please delete it with deleteKey() and try again", str));
        }
        String strB = m.b(str);
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(strB, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
        keyGenerator.generateKey();
    }

    public final synchronized y6.a b(String str) throws GeneralSecurityException {
        b bVar;
        bVar = new b(m.b(str), this.f19371a);
        byte[] bArrA = g.a(10);
        byte[] bArr = new byte[0];
        if (!Arrays.equals(bArrA, bVar.a(bVar.c(bArrA, bArr), bArr))) {
            throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
        }
        return bVar;
    }

    public final synchronized boolean c(String str) throws GeneralSecurityException {
        String strB;
        strB = m.b(str);
        try {
        } catch (NullPointerException unused) {
            Log.w("c", "Keystore is temporarily unavailable, wait 20ms, reinitialize Keystore and try again.");
            try {
                Thread.sleep(20L);
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f19371a = keyStore;
                keyStore.load(null);
            } catch (IOException e10) {
                throw new GeneralSecurityException(e10);
            } catch (InterruptedException unused2) {
            }
            return this.f19371a.containsAlias(strB);
        }
        return this.f19371a.containsAlias(strB);
    }
}
