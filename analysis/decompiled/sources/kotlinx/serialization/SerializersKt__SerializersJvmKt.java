package kotlinx.serialization;

import androidx.activity.k;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import fd.e;
import gd.i;
import gd.j;
import gd.p;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: SerializersJvm.kt */
/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class SerializersKt__SerializersJvmKt {
    private static final KSerializer<Object> genericArraySerializer$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, GenericArrayType genericArrayType, boolean z10) {
        KSerializer<Object> kSerializerSerializerOrNull;
        b bVarA;
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (genericComponentType instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) genericComponentType).getUpperBounds();
            h.i(upperBounds, "it.upperBounds");
            genericComponentType = (Type) i.q(upperBounds);
        }
        h.i(genericComponentType, "eType");
        if (z10) {
            kSerializerSerializerOrNull = SerializersKt.serializer(serializersModule, genericComponentType);
        } else {
            kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, genericComponentType);
            if (kSerializerSerializerOrNull == null) {
                return null;
            }
        }
        if (genericComponentType instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) genericComponentType).getRawType();
            Objects.requireNonNull(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            bVarA = x.a((Class) rawType);
        } else {
            if (!(genericComponentType instanceof b)) {
                throw new IllegalStateException(h.B("unsupported type in GenericArray: ", x.a(genericComponentType.getClass())));
            }
            bVarA = (b) genericComponentType;
        }
        return BuiltinSerializersKt.ArraySerializer(bVarA, kSerializerSerializerOrNull);
    }

    private static final b<?> kclass$SerializersKt__SerializersJvmKt(Type type) {
        if (type instanceof b) {
            return (b) type;
        }
        if (type instanceof Class) {
            return k.l((Class) type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            h.i(rawType, "it.rawType");
            return kclass$SerializersKt__SerializersJvmKt(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            h.i(upperBounds, "it.upperBounds");
            Object objQ = i.q(upperBounds);
            h.i(objQ, "it.upperBounds.first()");
            return kclass$SerializersKt__SerializersJvmKt((Type) objQ);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            h.i(genericComponentType, "it.genericComponentType");
            return kclass$SerializersKt__SerializersJvmKt(genericComponentType);
        }
        throw new IllegalArgumentException("typeToken should be an instance of Class<?>, GenericArray, ParametrizedType or WildcardType, but actual type is " + type + SafeJsonPrimitive.NULL_CHAR + x.a(type.getClass()));
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, Type type) throws IllegalAccessException, InvocationTargetException {
        h.j(serializersModule, "<this>");
        h.j(type, AnalyticsAttribute.TYPE_ATTRIBUTE);
        KSerializer<Object> kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt = serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, true);
        if (kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt != null) {
            return kSerializerSerializerByJavaTypeImpl$SerializersKt__SerializersJvmKt;
        }
        Platform_commonKt.serializerNotRegistered(kclass$SerializersKt__SerializersJvmKt(type));
        throw new fd.b();
    }

    private static final KSerializer<Object> serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, Type type, boolean z10) throws IllegalAccessException, InvocationTargetException {
        ArrayList arrayList;
        if (type instanceof GenericArrayType) {
            return genericArraySerializer$SerializersKt__SerializersJvmKt(serializersModule, (GenericArrayType) type, z10);
        }
        if (type instanceof Class) {
            return typeSerializer$SerializersKt__SerializersJvmKt(serializersModule, (Class) type, z10);
        }
        if (!(type instanceof ParameterizedType)) {
            if (type instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) type).getUpperBounds();
                h.i(upperBounds, "type.upperBounds");
                Object objQ = i.q(upperBounds);
                h.i(objQ, "type.upperBounds.first()");
                return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt$default(serializersModule, (Type) objQ, false, 2, null);
            }
            throw new IllegalArgumentException("typeToken should be an instance of Class<?>, GenericArray, ParametrizedType or WildcardType, but actual type is " + type + SafeJsonPrimitive.NULL_CHAR + x.a(type.getClass()));
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type rawType = parameterizedType.getRawType();
        Objects.requireNonNull(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
        Class cls = (Class) rawType;
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        h.i(actualTypeArguments, "args");
        if (z10) {
            arrayList = new ArrayList(actualTypeArguments.length);
            for (Type type2 : actualTypeArguments) {
                h.i(type2, "it");
                arrayList.add(SerializersKt.serializer(serializersModule, type2));
            }
        } else {
            arrayList = new ArrayList(actualTypeArguments.length);
            for (Type type3 : actualTypeArguments) {
                h.i(type3, "it");
                KSerializer<Object> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, type3);
                if (kSerializerSerializerOrNull == null) {
                    return null;
                }
                arrayList.add(kSerializerSerializerOrNull);
            }
        }
        if (Set.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.SetSerializer((KSerializer) arrayList.get(0));
        }
        if (List.class.isAssignableFrom(cls) || Collection.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.ListSerializer((KSerializer) arrayList.get(0));
        }
        if (Map.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.MapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (Map.Entry.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.MapEntrySerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (e.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.PairSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (fd.i.class.isAssignableFrom(cls)) {
            return BuiltinSerializersKt.TripleSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), (KSerializer) arrayList.get(2));
        }
        ArrayList arrayList2 = new ArrayList(j.T(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add((KSerializer) it.next());
        }
        b bVarA = x.a(cls);
        Object[] array = arrayList2.toArray(new KSerializer[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        KSerializer[] kSerializerArr = (KSerializer[]) array;
        KSerializer<Object> kSerializerConstructSerializerForGivenTypeArgs = PlatformKt.constructSerializerForGivenTypeArgs(bVarA, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        if (!(kSerializerConstructSerializerForGivenTypeArgs instanceof KSerializer)) {
            kSerializerConstructSerializerForGivenTypeArgs = null;
        }
        return kSerializerConstructSerializerForGivenTypeArgs == null ? SerializersKt.reflectiveOrContextual(serializersModule, x.a(cls), arrayList2) : kSerializerConstructSerializerForGivenTypeArgs;
    }

    public static /* synthetic */ KSerializer serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt$default(SerializersModule serializersModule, Type type, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, z10);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, Type type) {
        h.j(serializersModule, "<this>");
        h.j(type, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(serializersModule, type, false);
    }

    private static final KSerializer<Object> typeSerializer$SerializersKt__SerializersJvmKt(SerializersModule serializersModule, Class<?> cls, boolean z10) {
        KSerializer<Object> kSerializerSerializerOrNull;
        if (!cls.isArray()) {
            return SerializersKt.reflectiveOrContextual(serializersModule, x.a(cls), p.f8070h);
        }
        Class<?> componentType = cls.getComponentType();
        h.i(componentType, "type.componentType");
        if (z10) {
            kSerializerSerializerOrNull = SerializersKt.serializer(serializersModule, componentType);
        } else {
            kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, componentType);
            if (kSerializerSerializerOrNull == null) {
                return null;
            }
        }
        return BuiltinSerializersKt.ArraySerializer(x.a(componentType), kSerializerSerializerOrNull);
    }
}
