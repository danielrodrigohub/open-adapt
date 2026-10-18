package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CharSerializer implements KSerializer<Character> {
    public static final CharSerializer INSTANCE = new CharSerializer();
    private static final SerialDescriptor descriptor = new PrimitiveSerialDescriptor("kotlin.Char", PrimitiveKind.CHAR.INSTANCE);

    private CharSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, ((Character) obj).charValue());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Character deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return Character.valueOf(decoder.decodeChar());
    }

    public void serialize(Encoder encoder, char c10) {
        h.j(encoder, "encoder");
        encoder.encodeChar(c10);
    }
}
