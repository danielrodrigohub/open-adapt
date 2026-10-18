package y6;

import b7.a0;
import b7.q0;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: KeyTypeManager.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f<KeyProtoT extends q0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<KeyProtoT> f18662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, b<?, KeyProtoT>> f18663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<?> f18664c;

    /* JADX INFO: compiled from: KeyTypeManager.java */
    public static abstract class a<KeyFormatProtoT extends q0, KeyT> {
        public abstract KeyT a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

        public abstract KeyFormatProtoT b(b7.i iVar) throws a0;

        public abstract void c(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
    }

    /* JADX INFO: compiled from: KeyTypeManager.java */
    public static abstract class b<PrimitiveT, KeyT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<PrimitiveT> f18665a = n.class;

        public abstract PrimitiveT a(KeyT keyt) throws GeneralSecurityException;
    }

    @SafeVarargs
    public f(Class<KeyProtoT> cls, b<?, KeyProtoT>... bVarArr) {
        this.f18662a = cls;
        HashMap map = new HashMap();
        for (b<?, KeyProtoT> bVar : bVarArr) {
            if (map.containsKey(bVar.f18665a)) {
                StringBuilder sbC = a0.b.c("KeyTypeManager constructed with duplicate factories for primitive ");
                sbC.append(bVar.f18665a.getCanonicalName());
                throw new IllegalArgumentException(sbC.toString());
            }
            map.put(bVar.f18665a, bVar);
        }
        if (bVarArr.length > 0) {
            this.f18664c = bVarArr[0].f18665a;
        } else {
            this.f18664c = Void.class;
        }
        this.f18663b = Collections.unmodifiableMap(map);
    }

    public abstract String a();

    public abstract a<?, KeyProtoT> b();

    public abstract void c();

    public abstract KeyProtoT d(b7.i iVar) throws a0;

    public abstract void e(KeyProtoT keyprotot) throws GeneralSecurityException;
}
