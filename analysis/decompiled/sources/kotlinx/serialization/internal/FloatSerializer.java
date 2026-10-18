package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FloatSerializer implements KSerializer<Float> {
    public static final FloatSerializer INSTANCE = new FloatSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Float", PrimitiveKind.FLOAT.INSTANCE);

    private FloatSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).floatValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Float deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return Float.valueOf(decoder.decodeFloat());
    }

    public void serialize(Encoder encoder, float f10) {
        h.j(encoder, "encoder");
        encoder.encodeFloat(f10);
    }
}
