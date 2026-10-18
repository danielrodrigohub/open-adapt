package hc;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.DHParameterSpec;

/* JADX INFO: compiled from: Authentication.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DHParameterSpec f8404f = new DHParameterSpec(new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A63A3620FFFFFFFFFFFFFFFF", 16), BigInteger.valueOf(2));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final DHParameterSpec f8405g = new DHParameterSpec(new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF", 16), BigInteger.valueOf(2));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final DHParameterSpec f8406h = new DHParameterSpec(new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA237327FFFFFFFFFFFFFFFF", 16), BigInteger.valueOf(2));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final DHParameterSpec f8407i = new DHParameterSpec(new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF", 16), BigInteger.valueOf(2));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f8408j = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DHParameterSpec f8409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyPair f8410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KeyAgreement f8411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final KeyFactory f8412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MessageDigest f8413e;

    public b(DHParameterSpec dHParameterSpec) throws NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("DH");
        KeyAgreement keyAgreement = KeyAgreement.getInstance("DH");
        this.f8411c = keyAgreement;
        this.f8412d = KeyFactory.getInstance("DH");
        this.f8413e = MessageDigest.getInstance("MD5");
        this.f8409a = dHParameterSpec;
        keyPairGenerator.initialize(dHParameterSpec);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        this.f8410b = keyPairGenerateKeyPair;
        keyAgreement.init(keyPairGenerateKeyPair.getPrivate());
    }
}
