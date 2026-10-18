package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ClassesInfoCache.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static a f2154c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, C0025a> f2155a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, Boolean> f2156b = new HashMap();

    /* JADX INFO: renamed from: androidx.lifecycle.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClassesInfoCache.java */
    @Deprecated
    public static class C0025a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<i.b, List<b>> f2157a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<b, i.b> f2158b;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public C0025a(Map<b, i.b> map) {
            this.f2158b = map;
            for (Map.Entry<b, i.b> entry : map.entrySet()) {
                i.b value = entry.getValue();
                List<b> arrayList = this.f2157a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f2157a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        public static void a(List<b> list, q qVar, i.b bVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    b bVar2 = list.get(size);
                    Objects.requireNonNull(bVar2);
                    try {
                        int i10 = bVar2.f2159a;
                        if (i10 == 0) {
                            bVar2.f2160b.invoke(obj, new Object[0]);
                        } else if (i10 == 1) {
                            bVar2.f2160b.invoke(obj, qVar);
                        } else if (i10 == 2) {
                            bVar2.f2160b.invoke(obj, qVar, bVar);
                        }
                    } catch (IllegalAccessException e10) {
                        throw new RuntimeException(e10);
                    } catch (InvocationTargetException e11) {
                        throw new RuntimeException("Failed to call observer method", e11.getCause());
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: ClassesInfoCache.java */
    @Deprecated
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f2160b;

        public b(int i10, Method method) {
            this.f2159a = i10;
            this.f2160b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2159a == bVar.f2159a && this.f2160b.getName().equals(bVar.f2160b.getName());
        }

        public final int hashCode() {
            return this.f2160b.getName().hashCode() + (this.f2159a * 31);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, androidx.lifecycle.a$a>] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.lang.Boolean>] */
    public final C0025a a(Class<?> cls, Method[] methodArr) {
        int i10;
        Class<?> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null) {
            map.putAll(b(superclass).f2158b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, i.b> entry : b(cls2).f2158b.entrySet()) {
                c(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e10) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
            }
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            x xVar = (x) method.getAnnotation(x.class);
            if (xVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i10 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(q.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i10 = 1;
                }
                i.b bVarValue = xVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(i.b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (bVarValue != i.b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i10 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                c(map, new b(i10, method), bVarValue, cls);
                z10 = true;
            }
        }
        C0025a c0025a = new C0025a(map);
        this.f2155a.put(cls, c0025a);
        this.f2156b.put(cls, Boolean.valueOf(z10));
        return c0025a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, androidx.lifecycle.a$a>] */
    public final C0025a b(Class<?> cls) {
        C0025a c0025a = (C0025a) this.f2155a.get(cls);
        return c0025a != null ? c0025a : a(cls, null);
    }

    public final void c(Map<b, i.b> map, b bVar, i.b bVar2, Class<?> cls) {
        i.b bVar3 = map.get(bVar);
        if (bVar3 == null || bVar2 == bVar3) {
            if (bVar3 == null) {
                map.put(bVar, bVar2);
                return;
            }
            return;
        }
        Method method = bVar.f2160b;
        StringBuilder sbC = a0.b.c("Method ");
        sbC.append(method.getName());
        sbC.append(" in ");
        sbC.append(cls.getName());
        sbC.append(" already declared with different @OnLifecycleEvent value: previous value ");
        sbC.append(bVar3);
        sbC.append(", new value ");
        sbC.append(bVar2);
        throw new IllegalArgumentException(sbC.toString());
    }
}
