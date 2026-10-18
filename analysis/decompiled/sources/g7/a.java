package g7;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: $Gson$Types.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Type[] f7782a = new Type[0];

    /* JADX INFO: renamed from: g7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class C0147a implements GenericArrayType, Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Type f7783h;

        public C0147a(Type type) {
            this.f7783h = a.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && a.d(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f7783h;
        }

        public final int hashCode() {
            return this.f7783h.hashCode();
        }

        public final String toString() {
            return a.j(this.f7783h) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class b implements ParameterizedType, Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Type f7784h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Type f7785i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Type[] f7786j;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z10 = true;
                boolean z11 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z11) {
                    z10 = false;
                }
                c3.d.a(z10);
            }
            this.f7784h = type == null ? null : a.a(type);
            this.f7785i = a.a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f7786j = typeArr2;
            int length = typeArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                Objects.requireNonNull(this.f7786j[i10]);
                a.b(this.f7786j[i10]);
                Type[] typeArr3 = this.f7786j;
                typeArr3[i10] = a.a(typeArr3[i10]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && a.d(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f7786j.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f7784h;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f7785i;
        }

        public final int hashCode() {
            int iHashCode = Arrays.hashCode(this.f7786j) ^ this.f7785i.hashCode();
            Type type = this.f7784h;
            return iHashCode ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            int length = this.f7786j.length;
            if (length == 0) {
                return a.j(this.f7785i);
            }
            StringBuilder sb2 = new StringBuilder((length + 1) * 30);
            sb2.append(a.j(this.f7785i));
            sb2.append("<");
            sb2.append(a.j(this.f7786j[0]));
            for (int i10 = 1; i10 < length; i10++) {
                sb2.append(", ");
                sb2.append(a.j(this.f7786j[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* JADX INFO: compiled from: $Gson$Types.java */
    public static final class c implements WildcardType, Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Type f7787h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Type f7788i;

        public c(Type[] typeArr, Type[] typeArr2) {
            c3.d.a(typeArr2.length <= 1);
            c3.d.a(typeArr.length == 1);
            if (typeArr2.length != 1) {
                Objects.requireNonNull(typeArr[0]);
                a.b(typeArr[0]);
                this.f7788i = null;
                this.f7787h = a.a(typeArr[0]);
                return;
            }
            Objects.requireNonNull(typeArr2[0]);
            a.b(typeArr2[0]);
            c3.d.a(typeArr[0] == Object.class);
            this.f7788i = a.a(typeArr2[0]);
            this.f7787h = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && a.d(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f7788i;
            return type != null ? new Type[]{type} : a.f7782a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f7787h};
        }

        public final int hashCode() {
            Type type = this.f7788i;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f7787h.hashCode() + 31);
        }

        public final String toString() {
            if (this.f7788i != null) {
                StringBuilder sbC = a0.b.c("? super ");
                sbC.append(a.j(this.f7788i));
                return sbC.toString();
            }
            if (this.f7787h == Object.class) {
                return "?";
            }
            StringBuilder sbC2 = a0.b.c("? extends ");
            sbC2.append(a.j(this.f7787h));
            return sbC2.toString();
        }
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C0147a(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new C0147a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void b(Type type) {
        c3.d.a(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean d(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return c(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return d(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type e(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (interfaces[i10] == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(interfaces[i10])) {
                    return e(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return e(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Class<?> f(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            c3.d.a(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(f(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return f(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? SafeJsonPrimitive.NULL_STRING : type.getClass().getName()));
    }

    public static Type g(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        c3.d.a(cls2.isAssignableFrom(cls));
        return h(type, cls, e(type, cls, cls2));
    }

    public static Type h(Type type, Class<?> cls, Type type2) {
        return i(type, cls, type2, new HashMap());
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086  */
    /* JADX WARN: Code duplicated, block: B:47:0x0098  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00da  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:69:0x0103  */
    /* JADX WARN: Code duplicated, block: B:70:0x010a  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:78:0x012c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0133  */
    /* JADX WARN: Code duplicated, block: B:94:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v3, types: [g7.a$c] */
    /* JADX WARN: Type inference failed for: r11v4, types: [g7.a$c] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map, java.util.Map<java.lang.reflect.TypeVariable<?>, java.lang.reflect.Type>] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public static Type i(Type type, Class<?> cls, Type type2, Map<TypeVariable<?>, Type> map) {
        Type[] lowerBounds;
        Type[] upperBounds;
        Type typeI;
        Type[] upperBounds2;
        Type typeI2;
        Type[] lowerBounds2;
        Type typeI3;
        boolean z10;
        Type[] actualTypeArguments;
        int length;
        Type bVar;
        Type typeI4;
        Type genericComponentType;
        Type typeI5;
        TypeVariable typeVariable;
        TypeVariable typeVariable2 = null;
        do {
            int i10 = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (!(type2 instanceof Class)) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1) {
                                    break;
                                }
                                if (typeI instanceof WildcardType) {
                                    upperBounds2 = ((WildcardType) typeI).getUpperBounds();
                                } else {
                                    upperBounds2 = new Type[]{typeI};
                                }
                                type2 = new c(upperBounds2, f7782a);
                                break;
                            }
                            typeI2 = i(type, cls, lowerBounds[0], map);
                            if (typeI2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeI2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeI2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeI2};
                            }
                            type2 = new c(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType = type2.getOwnerType();
                        typeI3 = i(type, cls, ownerType, map);
                        z10 = !c(typeI3, ownerType);
                        actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        while (i10 < length) {
                            typeI4 = i(type, cls, actualTypeArguments[i10], map);
                            if (c(typeI4, actualTypeArguments[i10])) {
                                if (!z10) {
                                    actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                    z10 = true;
                                }
                                actualTypeArguments[i10] = typeI4;
                            }
                            i10++;
                        }
                        if (z10) {
                            break;
                        }
                        bVar = new b(typeI3, type2.getRawType(), actualTypeArguments);
                        type2 = bVar;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeI5 = i(type, cls, genericComponentType, map);
                    if (c(genericComponentType, typeI5)) {
                        bVar = new C0147a(typeI5);
                        type2 = bVar;
                        break;
                    }
                    break;
                }
                Class cls2 = (Class) type2;
                if (!cls2.isArray()) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1 && (typeI = i(type, cls, upperBounds[0], map)) != upperBounds[0]) {
                                    if (typeI instanceof WildcardType) {
                                        upperBounds2 = ((WildcardType) typeI).getUpperBounds();
                                    } else {
                                        upperBounds2 = new Type[]{typeI};
                                    }
                                    type2 = new c(upperBounds2, f7782a);
                                    break;
                                }
                                break;
                                break;
                            }
                            typeI2 = i(type, cls, lowerBounds[0], map);
                            if (typeI2 != lowerBounds[0]) {
                                break;
                            }
                            if (typeI2 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeI2).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeI2};
                            }
                            type2 = new c(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType2 = type2.getOwnerType();
                        typeI3 = i(type, cls, ownerType2, map);
                        z10 = !c(typeI3, ownerType2);
                        actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        while (i10 < length) {
                            typeI4 = i(type, cls, actualTypeArguments[i10], map);
                            if (c(typeI4, actualTypeArguments[i10])) {
                                if (!z10) {
                                    actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                    z10 = true;
                                }
                                actualTypeArguments[i10] = typeI4;
                            }
                            i10++;
                        }
                        if (z10) {
                            break;
                        }
                        bVar = new b(typeI3, type2.getRawType(), actualTypeArguments);
                        type2 = bVar;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeI5 = i(type, cls, genericComponentType, map);
                    if (c(genericComponentType, typeI5)) {
                        break;
                    }
                    bVar = new C0147a(typeI5);
                    type2 = bVar;
                    break;
                }
                Class<?> componentType = cls2.getComponentType();
                Type typeI6 = i(type, cls, componentType, map);
                if (!c(componentType, typeI6)) {
                    bVar = new C0147a(typeI6);
                    type2 = bVar;
                    break;
                }
                type2 = cls2;
                break;
            }
            typeVariable = (TypeVariable) type2;
            Type type3 = (Type) map.get(typeVariable);
            if (type3 != null) {
                return type3 == Void.TYPE ? type2 : type3;
            }
            map.put(typeVariable, Void.TYPE);
            if (typeVariable2 == null) {
                typeVariable2 = typeVariable;
            }
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 == null) {
                type2 = typeVariable;
            } else {
                Type typeE = e(type, cls, cls3);
                if (typeE instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    int length2 = typeParameters.length;
                    while (true) {
                        if (i10 >= length2) {
                            throw new NoSuchElementException();
                        }
                        if (typeVariable.equals(typeParameters[i10])) {
                            type2 = ((ParameterizedType) typeE).getActualTypeArguments()[i10];
                            break;
                        }
                        i10++;
                    }
                } else {
                    type2 = typeVariable;
                }
            }
        } while (type2 != typeVariable);
        if (typeVariable2 != null) {
            map.put(typeVariable2, type2);
        }
        return type2;
    }

    public static String j(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
