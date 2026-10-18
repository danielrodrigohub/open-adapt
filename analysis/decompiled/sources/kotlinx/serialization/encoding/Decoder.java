package kotlinx.serialization.encoding;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Decoding.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Decoder {

    /* JADX INFO: compiled from: Decoding.kt */
    public static final class DefaultImpls {
        public static <T> T decodeSerializableValue(Decoder decoder, DeserializationStrategy<T> deserializationStrategy) {
            h.j(decoder, "this");
            h.j(deserializationStrategy, "deserializer");
            return deserializationStrategy.deserialize(decoder);
        }
    }

    CompositeDecoder beginStructure(SerialDescriptor serialDescriptor);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(SerialDescriptor serialDescriptor);

    float decodeFloat();

    Decoder decodeInline(SerialDescriptor serialDescriptor);

    int decodeInt();

    long decodeLong();

    boolean decodeNotNullMark();

    Void decodeNull();

    <T> T decodeSerializableValue(DeserializationStrategy<T> deserializationStrategy);

    short decodeShort();

    String decodeString();
}
