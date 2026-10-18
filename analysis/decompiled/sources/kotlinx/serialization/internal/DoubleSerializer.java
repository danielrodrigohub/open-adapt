package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DoubleSerializer implements KSerializer<Double> {
    public static final DoubleSerializer INSTANCE = new DoubleSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Double", PrimitiveKind.DOUBLE.INSTANCE);

    private DoubleSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).doubleValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Double deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return Double.valueOf(decoder.decodeDouble());
    }

    public void serialize(Encoder encoder, double d10) {
        h.j(encoder, "encoder");
        encoder.encodeDouble(d10);
    }
}
