package kotlinx.serialization.json;

import fd.l;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonExceptionsKt;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: JsonElementSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
final class JsonLiteralSerializer implements KSerializer<JsonLiteral> {
    public static final JsonLiteralSerializer INSTANCE = new JsonLiteralSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.PrimitiveSerialDescriptor("kotlinx.serialization.json.JsonLiteral", PrimitiveKind.STRING.INSTANCE);

    private JsonLiteralSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public JsonLiteral deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        JsonElement jsonElementDecodeJsonElement = JsonElementSerializersKt.asJsonDecoder(decoder).decodeJsonElement();
        if (jsonElementDecodeJsonElement instanceof JsonLiteral) {
            return (JsonLiteral) jsonElementDecodeJsonElement;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, h.B("Unexpected JSON element, expected JsonLiteral, had ", x.a(jsonElementDecodeJsonElement.getClass())), jsonElementDecodeJsonElement.toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, JsonLiteral jsonLiteral) {
        h.j(encoder, "encoder");
        h.j(jsonLiteral, "value");
        JsonElementSerializersKt.verify(encoder);
        if (jsonLiteral.isString()) {
            encoder.encodeString(jsonLiteral.getContent());
            return;
        }
        Long longOrNull = JsonElementKt.getLongOrNull(jsonLiteral);
        if (longOrNull != null) {
            encoder.encodeLong(longOrNull.longValue());
            return;
        }
        l lVarG = h.G(jsonLiteral.getContent());
        if (lVarG != null) {
            encoder.encodeInline(BuiltinSerializersKt.serializer(l.f7404i).getDescriptor()).encodeLong(lVarG.f7405h);
            return;
        }
        Double doubleOrNull = JsonElementKt.getDoubleOrNull(jsonLiteral);
        if (doubleOrNull != null) {
            encoder.encodeDouble(doubleOrNull.doubleValue());
            return;
        }
        Boolean booleanOrNull = JsonElementKt.getBooleanOrNull(jsonLiteral);
        if (booleanOrNull == null) {
            encoder.encodeString(jsonLiteral.getContent());
        } else {
            encoder.encodeBoolean(booleanOrNull.booleanValue());
        }
    }
}
