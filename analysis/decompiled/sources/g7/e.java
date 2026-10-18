package g7;

import androidx.lifecycle.k0;
import androidx.lifecycle.m0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Type, e7.i<?>> f7793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f7794b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<e7.t> f7795c;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class a<T> implements q<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ e7.i f7796h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Type f7797i;

        public a(e7.i iVar, Type type) {
            this.f7796h = iVar;
            this.f7797i = type;
        }

        @Override // g7.q
        public final T construct() {
            return (T) this.f7796h.a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class b<T> implements q<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ e7.i f7798h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Type f7799i;

        public b(e7.i iVar, Type type) {
            this.f7798h = iVar;
            this.f7799i = type;
        }

        @Override // g7.q
        public final T construct() {
            return (T) this.f7798h.a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class c<T> implements q<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f7800h;

        public c(String str) {
            this.f7800h = str;
        }

        @Override // g7.q
        public final T construct() {
            throw new e7.m(this.f7800h);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class d<T> implements q<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f7801h;

        public d(String str) {
            this.f7801h = str;
        }

        @Override // g7.q
        public final T construct() {
            throw new e7.m(this.f7801h);
        }
    }

    public e(Map map, List list) {
        this.f7793a = map;
        this.f7795c = list;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0105  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a3  */
    public final <T> q<T> a(l7.a<T> aVar) {
        String string;
        q<T> jVar;
        Type type = aVar.f10168b;
        Class<? super T> cls = aVar.f10167a;
        e7.i<?> iVar = this.f7793a.get(type);
        if (iVar != null) {
            return new a(iVar, type);
        }
        e7.i<?> iVar2 = this.f7793a.get(cls);
        if (iVar2 != null) {
            return new b(iVar2, type);
        }
        q<T> eVar = null;
        q<T> gVar = EnumSet.class.isAssignableFrom(cls) ? new g(type) : cls == EnumMap.class ? new h(type) : null;
        if (gVar != null) {
            return gVar;
        }
        int iA = r.a(this.f7795c, cls);
        if (Modifier.isAbstract(cls.getModifiers())) {
            jVar = null;
        } else {
            try {
                Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                if (!(iA == 1 || (r.a.f7841a.a(declaredConstructor, null) && (iA != 4 || Modifier.isPublic(declaredConstructor.getModifiers()))))) {
                    jVar = new i("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
                } else if (iA == 1) {
                    try {
                        declaredConstructor.setAccessible(true);
                        string = null;
                    } catch (Exception e10) {
                        StringBuilder sbC = a0.b.c("Failed making constructor '");
                        StringBuilder sb2 = new StringBuilder(declaredConstructor.getDeclaringClass().getName());
                        sb2.append('#');
                        sb2.append(declaredConstructor.getDeclaringClass().getSimpleName());
                        sb2.append('(');
                        Class<?>[] parameterTypes = declaredConstructor.getParameterTypes();
                        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                            if (i10 > 0) {
                                sb2.append(", ");
                            }
                            sb2.append(parameterTypes[i10].getSimpleName());
                        }
                        sb2.append(')');
                        sbC.append(sb2.toString());
                        sbC.append("' accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ");
                        sbC.append(e10.getMessage());
                        string = sbC.toString();
                    }
                    if (string != null) {
                        jVar = new j(string);
                    } else {
                        jVar = new k(declaredConstructor);
                    }
                } else {
                    jVar = new k(declaredConstructor);
                }
            } catch (NoSuchMethodException unused) {
                jVar = null;
            }
        }
        if (jVar != null) {
            return jVar;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                eVar = new g7.b();
            } else if (Set.class.isAssignableFrom(cls)) {
                eVar = new g7.c();
            } else {
                eVar = Queue.class.isAssignableFrom(cls) ? new androidx.lifecycle.o() : new androidx.appcompat.widget.p();
            }
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                eVar = new p4.h();
            } else if (ConcurrentMap.class.isAssignableFrom(cls)) {
                eVar = new m6.e();
            } else if (SortedMap.class.isAssignableFrom(cls)) {
                eVar = new k0();
            } else if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                Objects.requireNonNull(type2);
                Type typeA = g7.a.a(type2);
                Class<?> clsF = g7.a.f(typeA);
                typeA.hashCode();
                if (String.class.isAssignableFrom(clsF)) {
                    eVar = new d3.e();
                } else {
                    eVar = new m0();
                }
            } else {
                eVar = new d3.e();
            }
        }
        if (eVar != null) {
            return eVar;
        }
        String strB = x.b(cls);
        if (strB != null) {
            return new c(strB);
        }
        if (iA != 1) {
            return new d("Unable to create instance of " + cls + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
        }
        if (this.f7794b) {
            return new g7.d(cls);
        }
        return new f("Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
    }

    public final String toString() {
        return this.f7793a.toString();
    }
}
