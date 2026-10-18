package g3;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p2.j;

/* JADX INFO: compiled from: ResourceDecoderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<String> f7621a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, List<a<?, ?>>> f7622b = new HashMap();

    /* JADX INFO: compiled from: ResourceDecoderRegistry.java */
    public static class a<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<T> f7623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class<R> f7624b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final j<T, R> f7625c;

        public a(Class<T> cls, Class<R> cls2, j<T, R> jVar) {
            this.f7623a = cls;
            this.f7624b = cls2;
            this.f7625c = jVar;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.util.List<g3.e$a<?, ?>>>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.util.List<g3.e$a<?, ?>>>] */
    public final synchronized List<a<?, ?>> a(String str) {
        List<a<?, ?>> arrayList;
        if (!this.f7621a.contains(str)) {
            this.f7621a.add(str);
        }
        arrayList = (List) this.f7622b.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f7622b.put(str, arrayList);
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.util.List<g3.e$a<?, ?>>>] */
    public final synchronized <T, R> List<Class<R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f7621a.iterator();
        while (it.hasNext()) {
            List<a> list = (List) this.f7622b.get((String) it.next());
            if (list != null) {
                for (a aVar : list) {
                    if ((aVar.f7623a.isAssignableFrom(cls) && cls2.isAssignableFrom(aVar.f7624b)) && !arrayList.contains(aVar.f7624b)) {
                        arrayList.add(aVar.f7624b);
                    }
                }
            }
        }
        return arrayList;
    }
}
