package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: Encoding.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Encoder {

    /* JADX INFO: compiled from: Encoding.kt */
    public static final class DefaultImpls {
        public static CompositeEncoder beginCollection(Encoder encoder, SerialDescriptor serialDescriptor, int i10) {
            h.j(encoder, "this");
            h.j(serialDescriptor, "descriptor");
            return encoder.beginStructure(serialDescriptor);
        }

        public static void encodeNotNullMark(Encoder encoder) {
            h.j(encoder, "this");
        }
    }

    CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i10);

    CompositeEncoder beginStructure(SerialDescriptor serialDescriptor);

    void encodeBoolean(boolean z10);

    void encodeByte(byte b10);

    void encodeChar(char c10);

    void encodeDouble(double d10);

    void encodeEnum(SerialDescriptor serialDescriptor, int i10);

    void encodeFloat(float f10);

    Encoder encodeInline(SerialDescriptor serialDescriptor);

    void encodeInt(int i10);

    void encodeLong(long j10);

    void encodeNotNullMark();

    void encodeNull();

    <T> void encodeSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10);

    void encodeShort(short s10);

    void encodeString(String str);

    SerializersModule getSerializersModule();
}
