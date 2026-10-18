package kotlinx.serialization.json.internal;

import a0.b;
import a1.f;
import k1.a;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.JsonInternalDependenciesKt;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: Polymorphic.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PolymorphicKt {
    public static final void checkKind(SerialKind serialKind) {
        h.j(serialKind, "kind");
        if (serialKind instanceof SerialKind.ENUM) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead".toString());
        }
        if (serialKind instanceof PrimitiveKind) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead".toString());
        }
        if (serialKind instanceof PolymorphicKind) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself".toString());
        }
    }

    public static final <T> T decodeSerializableValuePolymorphic(JsonDecoder jsonDecoder, DeserializationStrategy<T> deserializationStrategy) {
        JsonPrimitive jsonPrimitive;
        h.j(jsonDecoder, "<this>");
        h.j(deserializationStrategy, "deserializer");
        if (!(deserializationStrategy instanceof AbstractPolymorphicSerializer) || jsonDecoder.getJson().getConfiguration().getUseArrayPolymorphism()) {
            return deserializationStrategy.deserialize(jsonDecoder);
        }
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        SerialDescriptor descriptor = deserializationStrategy.getDescriptor();
        if (!(jsonElementDecodeJsonElement instanceof JsonObject)) {
            StringBuilder sbC = b.c("Expected ");
            sbC.append(x.a(JsonObject.class));
            sbC.append(" as the serialized body of ");
            sbC.append(descriptor.getSerialName());
            sbC.append(", but had ");
            sbC.append(x.a(jsonElementDecodeJsonElement.getClass()));
            throw JsonExceptionsKt.JsonDecodingException(-1, sbC.toString());
        }
        JsonObject jsonObject = (JsonObject) jsonElementDecodeJsonElement;
        String classDiscriminator = jsonDecoder.getJson().getConfiguration().getClassDiscriminator();
        JsonElement jsonElement = (JsonElement) jsonObject.get((Object) classDiscriminator);
        String content = null;
        if (jsonElement != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) != null) {
            content = jsonPrimitive.getContent();
        }
        DeserializationStrategy<? extends T> deserializationStrategyFindPolymorphicSerializerOrNull = ((AbstractPolymorphicSerializer) deserializationStrategy).findPolymorphicSerializerOrNull(jsonDecoder, content);
        if (deserializationStrategyFindPolymorphicSerializerOrNull != null) {
            return (T) TreeJsonDecoderKt.readPolymorphicJson(jsonDecoder.getJson(), classDiscriminator, jsonObject, deserializationStrategyFindPolymorphicSerializerOrNull);
        }
        throwSerializerNotFound(content, jsonObject);
        throw new fd.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerializationStrategy<Object> findActualSerializer(JsonEncoder jsonEncoder, SerializationStrategy<Object> serializationStrategy, Object obj) {
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) serializationStrategy;
        SerializationStrategy<Object> serializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer((AbstractPolymorphicSerializer<Object>) abstractPolymorphicSerializer, jsonEncoder, obj);
        validateIfSealed(abstractPolymorphicSerializer, serializationStrategyFindPolymorphicSerializer, jsonEncoder.getJson().getConfiguration().getClassDiscriminator());
        checkKind(serializationStrategyFindPolymorphicSerializer.getDescriptor().getKind());
        return serializationStrategyFindPolymorphicSerializer;
    }

    private static final Void throwSerializerNotFound(String str, JsonObject jsonObject) {
        String str2;
        if (str == null) {
            str2 = "missing class discriminator ('null')";
        } else {
            str2 = "class discriminator '" + ((Object) str) + '\'';
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, h.B("Polymorphic serializer was not found for ", str2), jsonObject.toString());
    }

    private static final void validateIfSealed(SerializationStrategy<?> serializationStrategy, SerializationStrategy<Object> serializationStrategy2, String str) {
        if ((serializationStrategy instanceof SealedClassSerializer) && JsonInternalDependenciesKt.jsonCachedSerialNames(serializationStrategy2.getDescriptor()).contains(str)) {
            throw new IllegalStateException(f.d(a.a("Sealed class '", serializationStrategy2.getDescriptor().getSerialName(), "' cannot be serialized as base class '", serializationStrategy.getDescriptor().getSerialName(), "' because it has property name that conflicts with JSON class discriminator '"), str, "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
        }
    }
}
