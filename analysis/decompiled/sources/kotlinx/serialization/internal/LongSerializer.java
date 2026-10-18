package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LongSerializer implements KSerializer<Long> {
    public static final LongSerializer INSTANCE = new LongSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Long", PrimitiveKind.LONG.INSTANCE);

    private LongSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Number) obj).longValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Long deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return Long.valueOf(decoder.decodeLong());
    }

    public void serialize(Encoder encoder, long j10) {
        h.j(encoder, "encoder");
        encoder.encodeLong(j10);
    }
}
