package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Lifecycling.java */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<Class<?>, Integer> f2241a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Map<Class<?>, List<Constructor<? extends f>>> f2242b = new HashMap();

    public static f a(Constructor<? extends f> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    public static String b(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:67:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:70:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0107  */
    /* JADX WARN: Code duplicated, block: B:75:0x011c  */
    /* JADX WARN: Code duplicated, block: B:86:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public static int c(Class<?> cls) {
        Constructor<?> declaredConstructor;
        boolean zBooleanValue;
        int i10;
        boolean z10;
        Integer num = f2241a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i11 = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r10 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r10 != null ? r10.getName() : "";
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String strB = b(canonicalName);
                if (!name.isEmpty()) {
                    strB = name + "." + strB;
                }
                declaredConstructor = Class.forName(strB).getDeclaredConstructor(cls);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                declaredConstructor = null;
            } catch (NoSuchMethodException e10) {
                throw new RuntimeException(e10);
            }
            if (declaredConstructor != null) {
                f2242b.put(cls, Collections.singletonList(declaredConstructor));
            } else {
                a aVar = a.f2154c;
                Boolean bool = aVar.f2156b.get(cls);
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length) {
                                aVar.f2156b.put(cls, Boolean.FALSE);
                                zBooleanValue = false;
                                break;
                            }
                            if (((x) declaredMethods[i12].getAnnotation(x.class)) != null) {
                                aVar.a(cls, declaredMethods);
                                zBooleanValue = true;
                                break;
                            }
                            i12++;
                        }
                    } catch (NoClassDefFoundError e11) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e11);
                    }
                }
                if (!zBooleanValue) {
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (!(superclass != null && p.class.isAssignableFrom(superclass))) {
                        for (Class<?> cls2 : cls.getInterfaces()) {
                            if (cls2 == null && p.class.isAssignableFrom(cls2)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                if (c(cls2) == 1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.addAll(f2242b.get(cls2));
                                }
                            }
                        }
                        if (arrayList != null) {
                            f2242b.put(cls, arrayList);
                        }
                    } else if (c(superclass) != 1) {
                        arrayList = new ArrayList(f2242b.get(superclass));
                        while (i10 < r6) {
                            if (cls2 == null) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                if (c(cls2) == 1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.addAll(f2242b.get(cls2));
                                }
                            }
                        }
                        if (arrayList != null) {
                            f2242b.put(cls, arrayList);
                        }
                    }
                }
            }
            i11 = 2;
        }
        f2241a.put(cls, Integer.valueOf(i11));
        return i11;
    }
}
