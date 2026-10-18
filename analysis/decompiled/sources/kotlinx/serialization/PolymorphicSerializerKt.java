package kotlinx.serialization;

import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.AbstractPolymorphicSerializerKt;
import p4.h;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: PolymorphicSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PolymorphicSerializerKt {
    public static final <T> DeserializationStrategy<? extends T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
        h.j(abstractPolymorphicSerializer, "<this>");
        h.j(compositeDecoder, "decoder");
        DeserializationStrategy<? extends T> deserializationStrategyFindPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(compositeDecoder, str);
        if (deserializationStrategyFindPolymorphicSerializerOrNull != null) {
            return deserializationStrategyFindPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered(str, (b<?>) abstractPolymorphicSerializer.getBaseClass());
        throw new fd.b();
    }

    public static final <T> SerializationStrategy<T> findPolymorphicSerializer(AbstractPolymorphicSerializer<T> abstractPolymorphicSerializer, Encoder encoder, T t10) {
        h.j(abstractPolymorphicSerializer, "<this>");
        h.j(encoder, "encoder");
        h.j(t10, "value");
        SerializationStrategy<T> serializationStrategyFindPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(encoder, t10);
        if (serializationStrategyFindPolymorphicSerializerOrNull != null) {
            return serializationStrategyFindPolymorphicSerializerOrNull;
        }
        AbstractPolymorphicSerializerKt.throwSubtypeNotRegistered((b<?>) x.a(t10.getClass()), (b<?>) abstractPolymorphicSerializer.getBaseClass());
        throw new fd.b();
    }
}
