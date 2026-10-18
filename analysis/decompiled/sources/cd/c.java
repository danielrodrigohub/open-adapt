package cd;

import a7.k;
import a7.p;
import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import p4.h;
import y6.i;
import y6.j;
import y6.m;
import y6.n;
import y6.o;

/* JADX INFO: compiled from: SecureFileProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4361b;

    public c(Context context) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyGenParameterSpec keyGenParameterSpec = c1.b.f3814a;
        if (keyGenParameterSpec.getKeySize() != 256) {
            StringBuilder sbC = a0.b.c("invalid key size, want 256 bits got ");
            sbC.append(keyGenParameterSpec.getKeySize());
            sbC.append(" bits");
            throw new IllegalArgumentException(sbC.toString());
        }
        if (!Arrays.equals(keyGenParameterSpec.getBlockModes(), new String[]{"GCM"})) {
            StringBuilder sbC2 = a0.b.c("invalid block mode, want GCM got ");
            sbC2.append(Arrays.toString(keyGenParameterSpec.getBlockModes()));
            throw new IllegalArgumentException(sbC2.toString());
        }
        if (keyGenParameterSpec.getPurposes() != 3) {
            StringBuilder sbC3 = a0.b.c("invalid purposes mode, want PURPOSE_ENCRYPT | PURPOSE_DECRYPT got ");
            sbC3.append(keyGenParameterSpec.getPurposes());
            throw new IllegalArgumentException(sbC3.toString());
        }
        if (!Arrays.equals(keyGenParameterSpec.getEncryptionPaddings(), new String[]{"NoPadding"})) {
            StringBuilder sbC4 = a0.b.c("invalid padding mode, want NoPadding got ");
            sbC4.append(Arrays.toString(keyGenParameterSpec.getEncryptionPaddings()));
            throw new IllegalArgumentException(sbC4.toString());
        }
        if (keyGenParameterSpec.isUserAuthenticationRequired() && keyGenParameterSpec.getUserAuthenticationValidityDurationSeconds() < 1) {
            throw new IllegalArgumentException("per-operation authentication is not supported (UserAuthenticationValidityDurationSeconds must be >0)");
        }
        String keystoreAlias = keyGenParameterSpec.getKeystoreAlias();
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        if (!keyStore.containsAlias(keystoreAlias)) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(keyGenParameterSpec);
            keyGenerator.generateKey();
        }
        String keystoreAlias2 = keyGenParameterSpec.getKeystoreAlias();
        h.i(keystoreAlias2, "getOrCreate(MasterKeys.AES256_GCM_SPEC)");
        h.j(context, "applicationContext");
        this.f4360a = context;
        this.f4361b = keystoreAlias2;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cd.g
    public final f a(File file, String str, boolean z10) throws GeneralSecurityException {
        z6.a aVar;
        y6.g gVarB;
        Class cls;
        byte[] bArrArray;
        h.j(file, "directory");
        h.j(str, "fileName");
        File file2 = new File(file, str);
        if (z10 && file2.isFile()) {
            file2.delete();
        }
        Context context = this.f4360a;
        String str2 = this.f4361b;
        c1.a.c cVar = c1.a.c.f3811i;
        c7.d.a();
        z6.a.C0333a c0333a = new z6.a.C0333a();
        c0333a.f19367e = cVar.f3813h;
        if (context == null) {
            throw new IllegalArgumentException("need an Android context");
        }
        c0333a.f19363a = new z6.d(context);
        c0333a.f19364b = new z6.e(context);
        String strC = androidx.recyclerview.widget.d.c("android-keystore://", str2);
        if (!strC.startsWith("android-keystore://")) {
            throw new IllegalArgumentException("key URI must start with android-keystore://");
        }
        c0333a.f19365c = strC;
        synchronized (c0333a) {
            if (c0333a.f19365c != null) {
                c0333a.f19366d = (z6.b) c0333a.b();
            }
            c0333a.f19368f = c0333a.a();
            aVar = new z6.a(c0333a);
        }
        synchronized (aVar) {
            gVarB = aVar.f19362a.b();
        }
        j<?, ?> jVar = m.f18680e.get(n.class);
        if (jVar == null) {
            cls = null;
        } else {
            jVar.a();
            cls = n.class;
        }
        if (cls == null) {
            StringBuilder sbC = a0.b.c("No wrapper found for ");
            sbC.append(n.class.getName());
            throw new GeneralSecurityException(sbC.toString());
        }
        Logger logger = m.f18676a;
        k kVar = k.ENABLED;
        a7.n nVar = gVarB.f18666a;
        int i10 = o.f18681a;
        int iD = nVar.D();
        byte b10 = 1;
        int i11 = 0;
        boolean z11 = false;
        boolean z12 = true;
        for (a7.n.b bVar : nVar.C()) {
            if (bVar.F() == kVar) {
                if (!bVar.G()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(bVar.D())));
                }
                if (bVar.E() == p.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(bVar.D())));
                }
                if (bVar.F() == k.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(bVar.D())));
                }
                if (bVar.D() == iD) {
                    if (z11) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z11 = true;
                }
                if (bVar.C().C() != a7.j.b.ASYMMETRIC_PUBLIC) {
                    z12 = false;
                }
                i11++;
            }
        }
        if (i11 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z11 && !z12) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        i<?> iVar = new i<>(cls);
        for (a7.n.b bVar2 : gVarB.f18666a.C()) {
            if (bVar2.F() == kVar) {
                String strD = bVar2.C().D();
                b7.i iVarE = bVar2.C().E();
                m.a aVarB = m.b(strD);
                if (!aVarB.d().contains(cls)) {
                    StringBuilder sbC2 = a0.b.c("Primitive type ");
                    sbC2.append(cls.getName());
                    sbC2.append(" not supported by key manager of type ");
                    sbC2.append(aVarB.c());
                    sbC2.append(", supported primitives: ");
                    Set<Class<?>> setD = aVarB.d();
                    StringBuilder sb2 = new StringBuilder();
                    boolean z13 = true;
                    for (Class<?> cls2 : setD) {
                        if (!z13) {
                            sb2.append(", ");
                        }
                        sb2.append(cls2.getCanonicalName());
                        z13 = false;
                    }
                    sbC2.append(sb2.toString());
                    throw new GeneralSecurityException(sbC2.toString());
                }
                Object objA = ((y6.d) aVarB.a(cls)).a(iVarE);
                if (bVar2.F() != kVar) {
                    throw new GeneralSecurityException("only ENABLED key is allowed");
                }
                int iOrdinal = bVar2.E().ordinal();
                if (iOrdinal == b10) {
                    bArrArray = ByteBuffer.allocate(5).put(b10).putInt(bVar2.D()).array();
                } else if (iOrdinal == 2) {
                    bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(bVar2.D()).array();
                } else if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                    bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(bVar2.D()).array();
                } else {
                    bArrArray = y6.b.f18658a;
                }
                i.a<P> aVar2 = new i.a<>(objA, bArrArray, bVar2.F());
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar2);
                byte[] bArr = aVar2.f18672b;
                i.b bVar3 = new i.b(bArr == null ? null : Arrays.copyOf(bArr, bArr.length));
                List list = (List) iVar.f18668a.put(bVar3, (List<i.a<P>>) Collections.unmodifiableList(arrayList));
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(list);
                    arrayList2.add(aVar2);
                    iVar.f18668a.put(bVar3, (List<i.a<P>>) Collections.unmodifiableList(arrayList2));
                }
                if (bVar2.D() == gVarB.f18666a.D()) {
                    if (aVar2.f18673c != kVar) {
                        throw new IllegalArgumentException("the primary entry has to be ENABLED");
                    }
                    byte[] bArr2 = aVar2.f18672b;
                    if (iVar.a(bArr2 == null ? null : Arrays.copyOf(bArr2, bArr2.length)).isEmpty()) {
                        throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
                    }
                    iVar.f18669b = aVar2;
                }
                b10 = 1;
            }
        }
        j<?, ?> jVar2 = m.f18680e.get(n.class);
        if (jVar2 == null) {
            StringBuilder sbC3 = a0.b.c("No wrapper found for ");
            sbC3.append(iVar.f18670c.getName());
            throw new GeneralSecurityException(sbC3.toString());
        }
        jVar2.a();
        if (n.class.equals(iVar.f18670c)) {
            c1.a aVar3 = new c1.a(file2, (n) jVar2.b(iVar));
            String path = file2.getPath();
            h.i(path, "file.path");
            return new b(path, aVar3);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Wrong input primitive class, expected ");
        jVar2.a();
        sb3.append(n.class);
        sb3.append(", got ");
        sb3.append(iVar.f18670c);
        throw new GeneralSecurityException(sb3.toString());
    }
}
