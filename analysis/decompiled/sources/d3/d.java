package d3;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: TranscoderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<a<?, ?>> f5995a = new ArrayList();

    /* JADX INFO: compiled from: TranscoderRegistry.java */
    public static final class a<Z, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<Z> f5996a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class<R> f5997b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c<Z, R> f5998c;

        public a(Class<Z> cls, Class<R> cls2, c<Z, R> cVar) {
            this.f5996a = cls;
            this.f5997b = cls2;
            this.f5998c = cVar;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<d3.d$a<?, ?>>] */
    public final synchronized <Z, R> List<Class<R>> a(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a aVar : this.f5995a) {
            if ((aVar.f5996a.isAssignableFrom(cls) && cls2.isAssignableFrom(aVar.f5997b)) && !arrayList.contains(aVar.f5997b)) {
                arrayList.add(aVar.f5997b);
            }
        }
        return arrayList;
    }
}
