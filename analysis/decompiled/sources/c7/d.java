package c7;

import a7.q;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
import y6.j;
import y6.m;
import y6.n;

/* JADX INFO: compiled from: StreamingAeadConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    static {
        new a();
        new b();
        int i10 = q.CONFIG_NAME_FIELD_NUMBER;
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public static void a() throws GeneralSecurityException {
        m.d(new a());
        m.d(new b());
        g gVar = new g();
        Logger logger = m.f18676a;
        synchronized (m.class) {
            ConcurrentMap<Class<?>, j<?, ?>> concurrentMap = m.f18680e;
            if (concurrentMap.containsKey(n.class)) {
                j<?, ?> jVar = concurrentMap.get(n.class);
                if (!g.class.equals(jVar.getClass())) {
                    m.f18676a.warning("Attempted overwrite of a registered SetWrapper for type " + n.class);
                    throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", n.class.getName(), jVar.getClass().getName(), g.class.getName()));
                }
            }
            concurrentMap.put(n.class, gVar);
        }
    }
}
