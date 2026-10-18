package g3;

import java.util.ArrayList;
import java.util.List;
import p2.k;

/* JADX INFO: compiled from: ResourceEncoderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<a<?>> f7626a = new ArrayList();

    /* JADX INFO: compiled from: ResourceEncoderRegistry.java */
    public static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<T> f7627a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final k<T> f7628b;

        public a(Class<T> cls, k<T> kVar) {
            this.f7627a = cls;
            this.f7628b = kVar;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final synchronized <Z> k<Z> a(Class<Z> cls) {
        int size = this.f7626a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a<?> aVar = this.f7626a.get(i10);
            if (aVar.f7627a.isAssignableFrom((Class<?>) cls)) {
                return aVar.f7628b;
            }
        }
        return null;
    }
}
