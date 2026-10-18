package kotlinx.serialization.json.internal;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonObject;
import p4.h;

/* JADX INFO: compiled from: TreeJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TreeJsonDecoderKt {
    public static final <T> T readPolymorphicJson(Json json, String str, JsonObject jsonObject, DeserializationStrategy<T> deserializationStrategy) {
        h.j(json, "<this>");
        h.j(str, "discriminator");
        h.j(jsonObject, "element");
        h.j(deserializationStrategy, "deserializer");
        return (T) new JsonTreeDecoder(json, jsonObject, str, deserializationStrategy.getDescriptor()).decodeSerializableValue(deserializationStrategy);
    }
}
