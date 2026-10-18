package kotlinx.serialization;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import fd.e;
import fd.i;
import gd.j;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;
import p4.h;
import rd.x;
import wd.b;
import wd.g;

/* JADX INFO: compiled from: Serializers.kt */
/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class SerializersKt__SerializersKt {
    private static final KSerializer<? extends Object> builtinSerializer$SerializersKt__SerializersKt(SerializersModule serializersModule, List<? extends g> list, b<Object> bVar, boolean z10) throws IllegalAccessException, InvocationTargetException {
        ArrayList arrayList;
        if (z10) {
            arrayList = new ArrayList(j.T(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(SerializersKt.serializer(serializersModule, (g) it.next()));
            }
        } else {
            arrayList = new ArrayList(j.T(list, 10));
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                KSerializer<Object> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(serializersModule, (g) it2.next());
                if (kSerializerSerializerOrNull == null) {
                    return null;
                }
                arrayList.add(kSerializerSerializerOrNull);
            }
        }
        if (h.c(bVar, x.a(Collection.class)) ? true : h.c(bVar, x.a(List.class)) ? true : h.c(bVar, x.a(List.class)) ? true : h.c(bVar, x.a(ArrayList.class))) {
            return new ArrayListSerializer((KSerializer) arrayList.get(0));
        }
        if (h.c(bVar, x.a(HashSet.class))) {
            return new HashSetSerializer((KSerializer) arrayList.get(0));
        }
        if (h.c(bVar, x.a(Set.class)) ? true : h.c(bVar, x.a(Set.class)) ? true : h.c(bVar, x.a(LinkedHashSet.class))) {
            return new LinkedHashSetSerializer((KSerializer) arrayList.get(0));
        }
        if (h.c(bVar, x.a(HashMap.class))) {
            return new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (h.c(bVar, x.a(Map.class)) ? true : h.c(bVar, x.a(Map.class)) ? true : h.c(bVar, x.a(LinkedHashMap.class))) {
            return new LinkedHashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (h.c(bVar, x.a(Map.Entry.class))) {
            return BuiltinSerializersKt.MapEntrySerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (h.c(bVar, x.a(e.class))) {
            return BuiltinSerializersKt.PairSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        }
        if (h.c(bVar, x.a(i.class))) {
            return BuiltinSerializersKt.TripleSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), (KSerializer) arrayList.get(2));
        }
        if (PlatformKt.isReferenceArray(bVar)) {
            b bVarC = list.get(0).c();
            Objects.requireNonNull(bVarC, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            return BuiltinSerializersKt.ArraySerializer(bVarC, (KSerializer) arrayList.get(0));
        }
        Object[] array = arrayList.toArray(new KSerializer[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        KSerializer[] kSerializerArr = (KSerializer[]) array;
        KSerializer<? extends Object> kSerializerConstructSerializerForGivenTypeArgs = PlatformKt.constructSerializerForGivenTypeArgs(bVar, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        return kSerializerConstructSerializerForGivenTypeArgs == null ? SerializersKt.reflectiveOrContextual(serializersModule, bVar, arrayList) : kSerializerConstructSerializerForGivenTypeArgs;
    }

    private static final <T> KSerializer<T> nullable$SerializersKt__SerializersKt(KSerializer<T> kSerializer, boolean z10) {
        return z10 ? BuiltinSerializersKt.getNullable(kSerializer) : kSerializer;
    }

    public static final <T> KSerializer<T> reflectiveOrContextual(SerializersModule serializersModule, b<T> bVar, List<? extends KSerializer<Object>> list) {
        h.j(serializersModule, "<this>");
        h.j(bVar, "kClass");
        h.j(list, "typeArgumentsSerializers");
        KSerializer<T> kSerializerSerializerOrNull = SerializersKt.serializerOrNull(bVar);
        return kSerializerSerializerOrNull == null ? serializersModule.getContextual(bVar, list) : kSerializerSerializerOrNull;
    }

    public static final KSerializer<Object> serializer(g gVar) {
        h.j(gVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return SerializersKt.serializer(SerializersModuleKt.getEmptySerializersModule(), gVar);
    }

    private static final KSerializer<Object> serializerByKTypeImpl$SerializersKt__SerializersKt(SerializersModule serializersModule, g gVar, boolean z10) throws IllegalAccessException, InvocationTargetException {
        KSerializer<? extends Object> kSerializerBuiltinSerializer$SerializersKt__SerializersKt;
        b<Object> bVarKclass = Platform_commonKt.kclass(gVar);
        boolean zB = gVar.b();
        List<wd.h> listA = gVar.a();
        ArrayList arrayList = new ArrayList(j.T(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            g gVar2 = ((wd.h) it.next()).f17607b;
            if (gVar2 == null) {
                throw new IllegalArgumentException(h.B("Star projections in type arguments are not allowed, but had ", gVar).toString());
            }
            arrayList.add(gVar2);
        }
        if (arrayList.isEmpty()) {
            kSerializerBuiltinSerializer$SerializersKt__SerializersKt = SerializersKt.serializerOrNull(bVarKclass);
            if (kSerializerBuiltinSerializer$SerializersKt__SerializersKt == null) {
                kSerializerBuiltinSerializer$SerializersKt__SerializersKt = SerializersModule.getContextual$default(serializersModule, bVarKclass, null, 2, null);
            }
        } else {
            kSerializerBuiltinSerializer$SerializersKt__SerializersKt = builtinSerializer$SerializersKt__SerializersKt(serializersModule, arrayList, bVarKclass, z10);
        }
        if (kSerializerBuiltinSerializer$SerializersKt__SerializersKt == null) {
            kSerializerBuiltinSerializer$SerializersKt__SerializersKt = null;
        }
        if (kSerializerBuiltinSerializer$SerializersKt__SerializersKt == null) {
            return null;
        }
        return nullable$SerializersKt__SerializersKt(kSerializerBuiltinSerializer$SerializersKt__SerializersKt, zB);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, g gVar) {
        h.j(serializersModule, "<this>");
        h.j(gVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return serializerByKTypeImpl$SerializersKt__SerializersKt(serializersModule, gVar, false);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, g gVar) throws IllegalAccessException, InvocationTargetException {
        h.j(serializersModule, "<this>");
        h.j(gVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        KSerializer<Object> kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt = serializerByKTypeImpl$SerializersKt__SerializersKt(serializersModule, gVar, true);
        if (kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt != null) {
            return kSerializerSerializerByKTypeImpl$SerializersKt__SerializersKt;
        }
        PlatformKt.platformSpecificSerializerNotRegistered(Platform_commonKt.kclass(gVar));
        throw new fd.b();
    }

    public static final <T> KSerializer<T> serializerOrNull(b<T> bVar) {
        h.j(bVar, "<this>");
        KSerializer<T> kSerializerCompiledSerializerImpl = PlatformKt.compiledSerializerImpl(bVar);
        return kSerializerCompiledSerializerImpl == null ? PrimitivesKt.builtinSerializerOrNull(bVar) : kSerializerCompiledSerializerImpl;
    }
}
