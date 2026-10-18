package d7;

import d7.d;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: compiled from: EngineFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class c<T_WRAPPER extends d<T_ENGINE>, T_ENGINE> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f6089c = Logger.getLogger(c.class.getName());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<Provider> f6090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c<d.a, Cipher> f6091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c<d.b, Mac> f6092f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T_WRAPPER f6093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<Provider> f6094b = f6090d;

    static {
        boolean z10;
        try {
            Class.forName("android.app.Application", false, null);
            z10 = true;
        } catch (Exception unused) {
            z10 = false;
        }
        if (z10) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < 2; i10++) {
                String str = strArr[i10];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f6089c.info(String.format("Provider %s not available", str));
                }
            }
            f6090d = arrayList;
        } else {
            f6090d = new ArrayList();
        }
        f6091e = new c<>(new d.a());
        f6092f = new c<>(new d.b());
    }

    public c(T_WRAPPER t_wrapper) {
        this.f6093a = t_wrapper;
    }

    public final T_ENGINE a(String str) throws GeneralSecurityException {
        Iterator<Provider> it = this.f6094b.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return (T_ENGINE) this.f6093a.a(str, it.next());
            } catch (Exception e10) {
                if (exc == null) {
                    exc = e10;
                }
            }
        }
        return (T_ENGINE) this.f6093a.a(str, null);
    }
}
