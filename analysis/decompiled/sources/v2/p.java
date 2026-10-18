package v2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ModelLoaderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f16177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f16178b;

    /* JADX INFO: compiled from: ModelLoaderRegistry.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<Class<?>, C0288a<?>> f16179a = new HashMap();

        /* JADX INFO: renamed from: v2.p$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ModelLoaderRegistry.java */
        public static class C0288a<Model> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final List<n<Model, ?>> f16180a;

            public C0288a(List<n<Model, ?>> list) {
                this.f16180a = list;
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final <Model> void a(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f16179a.put((Class<?>) cls, new C0288a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public p(i0.e<List<Throwable>> eVar) {
        r rVar = new r(eVar);
        this.f16178b = new a();
        this.f16177a = rVar;
    }
}
