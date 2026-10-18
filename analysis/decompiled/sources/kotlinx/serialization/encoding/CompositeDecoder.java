package kotlinx.serialization.encoding;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: Decoding.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CompositeDecoder {

    /* JADX INFO: compiled from: Decoding.kt */
    public static final class DefaultImpls {
        public static int decodeCollectionSize(CompositeDecoder compositeDecoder, SerialDescriptor serialDescriptor) {
            h.j(compositeDecoder, "this");
            h.j(serialDescriptor, "descriptor");
            return -1;
        }

        public static boolean decodeSequentially(CompositeDecoder compositeDecoder) {
            h.j(compositeDecoder, "this");
            return false;
        }

        public static /* synthetic */ Object decodeSerializableElement$default(CompositeDecoder compositeDecoder, SerialDescriptor serialDescriptor, int i10, DeserializationStrategy deserializationStrategy, Object obj, int i11, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i11 & 8) != 0) {
                obj = null;
            }
            return compositeDecoder.decodeSerializableElement(serialDescriptor, i10, deserializationStrategy, obj);
        }
    }

    boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i10);

    byte decodeByteElement(SerialDescriptor serialDescriptor, int i10);

    char decodeCharElement(SerialDescriptor serialDescriptor, int i10);

    int decodeCollectionSize(SerialDescriptor serialDescriptor);

    double decodeDoubleElement(SerialDescriptor serialDescriptor, int i10);

    int decodeElementIndex(SerialDescriptor serialDescriptor);

    float decodeFloatElement(SerialDescriptor serialDescriptor, int i10);

    int decodeIntElement(SerialDescriptor serialDescriptor, int i10);

    long decodeLongElement(SerialDescriptor serialDescriptor, int i10);

    boolean decodeSequentially();

    <T> T decodeSerializableElement(SerialDescriptor serialDescriptor, int i10, DeserializationStrategy<T> deserializationStrategy, T t10);

    short decodeShortElement(SerialDescriptor serialDescriptor, int i10);

    String decodeStringElement(SerialDescriptor serialDescriptor, int i10);

    void endStructure(SerialDescriptor serialDescriptor);

    SerializersModule getSerializersModule();
}
