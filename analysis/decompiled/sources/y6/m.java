package y6;

import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;

/* JADX INFO: compiled from: Registry.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f18676a = Logger.getLogger(m.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentMap<String, a> f18677b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentMap<String, Object> f18678c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentMap<String, Boolean> f18679d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentMap<Class<?>, j<?, ?>> f18680e;

    /* JADX INFO: compiled from: Registry.java */
    public interface a {
        <P> c<P> a(Class<P> cls) throws GeneralSecurityException;

        c<?> b();

        Class<?> c();

        Set<Class<?>> d();
    }

    static {
        new ConcurrentHashMap();
        f18680e = new ConcurrentHashMap();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.ConcurrentHashMap, java.util.concurrent.ConcurrentMap<java.lang.String, y6.m$a>] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.concurrent.ConcurrentHashMap, java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Boolean>] */
    public static synchronized void a(String str, Class cls) throws GeneralSecurityException {
        ?? r10 = f18677b;
        if (r10.containsKey(str)) {
            a aVar = (a) r10.get(str);
            if (aVar.c().equals(cls)) {
                if (((Boolean) f18679d.get(str)).booleanValue()) {
                    return;
                }
                throw new GeneralSecurityException("New keys are already disallowed for key type " + str);
            }
            f18676a.warning("Attempted overwrite of a registered key manager for key type " + str);
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, aVar.c().getName(), cls.getName()));
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.ConcurrentHashMap, java.util.concurrent.ConcurrentMap<java.lang.String, y6.m$a>] */
    public static synchronized a b(String str) throws GeneralSecurityException {
        ?? r10;
        r10 = f18677b;
        if (!r10.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type " + str);
        }
        return (a) r10.get(str);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.concurrent.ConcurrentHashMap, java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Boolean>] */
    public static synchronized a7.j c(a7.l lVar) throws GeneralSecurityException {
        c<?> cVarB;
        cVarB = b(lVar.C()).b();
        if (!((Boolean) f18679d.get(lVar.C())).booleanValue()) {
            throw new GeneralSecurityException("newKey-operation not permitted for key type " + lVar.C());
        }
        return ((d) cVarB).b(lVar.D());
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public static synchronized void d(f fVar) throws GeneralSecurityException {
        String strA = fVar.a();
        a(strA, fVar.getClass());
        ConcurrentMap<String, a> concurrentMap = f18677b;
        if (!concurrentMap.containsKey(strA)) {
            concurrentMap.put(strA, new k(fVar));
            f18678c.put(strA, new l());
        }
        f18679d.put(strA, Boolean.TRUE);
    }
}
