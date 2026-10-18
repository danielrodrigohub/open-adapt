package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShortSerializer implements KSerializer<Short> {
    public static final ShortSerializer INSTANCE = new ShortSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Short", PrimitiveKind.SHORT.INSTANCE);

    private ShortSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).shortValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Short deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return Short.valueOf(decoder.decodeShort());
    }

    public void serialize(Encoder encoder, short s10) {
        h.j(encoder, "encoder");
        encoder.encodeShort(s10);
    }
}
