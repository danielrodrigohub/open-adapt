package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: compiled from: Encoding.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CompositeEncoder {
    void encodeBooleanElement(SerialDescriptor serialDescriptor, int i10, boolean z10);

    void encodeByteElement(SerialDescriptor serialDescriptor, int i10, byte b10);

    void encodeCharElement(SerialDescriptor serialDescriptor, int i10, char c10);

    void encodeDoubleElement(SerialDescriptor serialDescriptor, int i10, double d10);

    void encodeFloatElement(SerialDescriptor serialDescriptor, int i10, float f10);

    void encodeIntElement(SerialDescriptor serialDescriptor, int i10, int i11);

    void encodeLongElement(SerialDescriptor serialDescriptor, int i10, long j10);

    <T> void encodeSerializableElement(SerialDescriptor serialDescriptor, int i10, SerializationStrategy<? super T> serializationStrategy, T t10);

    void encodeShortElement(SerialDescriptor serialDescriptor, int i10, short s10);

    void encodeStringElement(SerialDescriptor serialDescriptor, int i10, String str);

    void endStructure(SerialDescriptor serialDescriptor);

    boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor, int i10);
}
