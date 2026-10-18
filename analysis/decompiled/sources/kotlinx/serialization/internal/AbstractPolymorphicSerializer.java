package kotlinx.serialization.internal;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: AbstractPolymorphicSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractPolymorphicSerializer<T> implements KSerializer<T> {
    private final T decodeSequentially(CompositeDecoder compositeDecoder) {
        return (T) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, PolymorphicSerializerKt.findPolymorphicSerializer(this, compositeDecoder, compositeDecoder.decodeStringElement(getDescriptor(), 0)), null, 8, null);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final T deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor);
        try {
            if (compositeDecoderBeginStructure.decodeSequentially()) {
                T tDecodeSequentially = decodeSequentially(compositeDecoderBeginStructure);
                compositeDecoderBeginStructure.endStructure(descriptor);
                return tDecodeSequentially;
            }
            T t10 = null;
            String strDecodeStringElement = null;
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    if (t10 == null) {
                        throw new IllegalArgumentException(h.B("Polymorphic value has not been read for class ", strDecodeStringElement).toString());
                    }
                    compositeDecoderBeginStructure.endStructure(descriptor);
                    return t10;
                }
                if (iDecodeElementIndex == 0) {
                    strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(getDescriptor(), iDecodeElementIndex);
                } else {
                    if (iDecodeElementIndex != 1) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid index in polymorphic deserialization of ");
                        String str = strDecodeStringElement;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb2.append(str);
                        sb2.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb2.append(iDecodeElementIndex);
                        throw new SerializationException(sb2.toString());
                    }
                    if (strDecodeStringElement == null) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token".toString());
                    }
                    t10 = (T) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), iDecodeElementIndex, PolymorphicSerializerKt.findPolymorphicSerializer(this, compositeDecoderBeginStructure, strDecodeStringElement), null, 8, null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public DeserializationStrategy<? extends T> findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        h.j(compositeDecoder, "decoder");
        return compositeDecoder.getSerializersModule().getPolymorphic((b) getBaseClass(), str);
    }

    public abstract b<T> getBaseClass();

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        h.j(t10, "value");
        SerializationStrategy<? super T> serializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer(this, encoder, t10);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor);
        try {
            compositeEncoderBeginStructure.encodeStringElement(getDescriptor(), 0, serializationStrategyFindPolymorphicSerializer.getDescriptor().getSerialName());
            compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, serializationStrategyFindPolymorphicSerializer, t10);
            compositeEncoderBeginStructure.endStructure(descriptor);
        } catch (Throwable th) {
            throw th;
        }
    }

    public SerializationStrategy<T> findPolymorphicSerializerOrNull(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        h.j(t10, "value");
        return encoder.getSerializersModule().getPolymorphic(getBaseClass(), t10);
    }
}
