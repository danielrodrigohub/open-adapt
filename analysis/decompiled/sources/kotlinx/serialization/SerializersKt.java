package kotlinx.serialization;

import java.lang.reflect.Type;
import java.util.List;
import kotlinx.serialization.modules.SerializersModule;
import wd.b;
import wd.g;

/* JADX INFO: loaded from: classes.dex */
public final class SerializersKt {
    public static final <T> KSerializer<T> reflectiveOrContextual(SerializersModule serializersModule, b<T> bVar, List<? extends KSerializer<Object>> list) {
        return SerializersKt__SerializersKt.reflectiveOrContextual(serializersModule, bVar, list);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializer(serializersModule, type);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, Type type) {
        return SerializersKt__SerializersJvmKt.serializerOrNull(serializersModule, type);
    }

    public static final KSerializer<Object> serializer(SerializersModule serializersModule, g gVar) {
        return SerializersKt__SerializersKt.serializer(serializersModule, gVar);
    }

    public static final KSerializer<Object> serializerOrNull(SerializersModule serializersModule, g gVar) {
        return SerializersKt__SerializersKt.serializerOrNull(serializersModule, gVar);
    }

    public static final KSerializer<Object> serializer(g gVar) {
        return SerializersKt__SerializersKt.serializer(gVar);
    }

    public static final <T> KSerializer<T> serializerOrNull(b<T> bVar) {
        return SerializersKt__SerializersKt.serializerOrNull(bVar);
    }
}
