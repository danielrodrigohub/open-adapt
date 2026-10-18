package rd;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ClassReference.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements wd.b<Object>, f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map<Class<? extends fd.a<?>>, Integer> f14785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, String> f14786c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<?> f14787a;

    static {
        int i10 = 0;
        List listZ = androidx.lifecycle.o.z(qd.a.class, qd.l.class, qd.p.class, qd.q.class, qd.r.class, qd.s.class, qd.t.class, qd.u.class, qd.v.class, qd.w.class, qd.b.class, qd.c.class, qd.d.class, qd.e.class, qd.f.class, qd.g.class, qd.h.class, qd.i.class, qd.j.class, qd.k.class, qd.m.class, qd.n.class, qd.o.class);
        ArrayList arrayList = new ArrayList(gd.j.T(listZ, 10));
        for (Object obj : listZ) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                androidx.lifecycle.o.L();
                throw null;
            }
            arrayList.add(new fd.e((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f14785b = gd.z.C(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        p4.h.i(collectionValues, "primitiveFqNames.values");
        for (String str : collectionValues) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("kotlin.jvm.internal.");
            p4.h.i(str, "kotlinName");
            sb2.append(yd.s.F0(str));
            sb2.append("CompanionObject");
            map3.put(sb2.toString(), str + ".Companion");
        }
        for (Map.Entry<Class<? extends fd.a<?>>, Integer> entry : f14785b.entrySet()) {
            Class<? extends fd.a<?>> key = entry.getKey();
            int iIntValue = entry.getValue().intValue();
            map3.put(key.getName(), "kotlin.Function" + iIntValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(androidx.activity.k.p(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), yd.s.F0((String) entry2.getValue()));
        }
        f14786c = linkedHashMap;
    }

    public g(Class<?> cls) {
        p4.h.j(cls, "jClass");
        this.f14787a = cls;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, java.lang.String>] */
    @Override // wd.b
    public final String a() {
        String str;
        Class<?> cls = this.f14787a;
        p4.h.j(cls, "jClass");
        String strC = null;
        if (!cls.isAnonymousClass()) {
            if (cls.isLocalClass()) {
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    return yd.s.E0(simpleName, enclosingMethod.getName() + '$');
                }
                Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                if (enclosingConstructor != null) {
                    return yd.s.E0(simpleName, enclosingConstructor.getName() + '$');
                }
                int iO0 = yd.s.o0(simpleName, '$', 0, false, 6);
                if (iO0 == -1) {
                    return simpleName;
                }
                String strSubstring = simpleName.substring(iO0 + 1, simpleName.length());
                p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                return strSubstring;
            }
            if (!cls.isArray()) {
                String str2 = (String) f14786c.get(cls.getName());
                return str2 == null ? cls.getSimpleName() : str2;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) f14786c.get(componentType.getName())) != null) {
                strC = androidx.recyclerview.widget.d.c(str, "Array");
            }
            if (strC == null) {
                return "Array";
            }
        }
        return strC;
    }

    @Override // rd.f
    public final Class<?> b() {
        return this.f14787a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof g) && p4.h.c(androidx.activity.k.k(this), androidx.activity.k.k((wd.b) obj));
    }

    @Override // wd.b
    public final int hashCode() {
        return androidx.activity.k.k(this).hashCode();
    }

    public final String toString() {
        return this.f14787a.toString() + " (Kotlin reflection is not available)";
    }
}
