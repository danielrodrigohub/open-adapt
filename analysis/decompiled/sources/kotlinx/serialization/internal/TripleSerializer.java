package kotlinx.serialization.internal;

import fd.i;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TripleSerializer<A, B, C> implements KSerializer<i<? extends A, ? extends B, ? extends C>> {
    private final KSerializer<A> aSerializer;
    private final KSerializer<B> bSerializer;
    private final KSerializer<C> cSerializer;
    private final SerialDescriptor descriptor;

    public TripleSerializer(KSerializer<A> kSerializer, KSerializer<B> kSerializer2, KSerializer<C> kSerializer3) {
        h.j(kSerializer, "aSerializer");
        h.j(kSerializer2, "bSerializer");
        h.j(kSerializer3, "cSerializer");
        this.aSerializer = kSerializer;
        this.bSerializer = kSerializer2;
        this.cSerializer = kSerializer3;
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Triple", new SerialDescriptor[0], new TripleSerializer$descriptor$1(this));
    }

    private final i<A, B, C> decodeSequentially(CompositeDecoder compositeDecoder) {
        Object objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
        Object objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
        Object objDecodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
        compositeDecoder.endStructure(getDescriptor());
        return new i<>(objDecodeSerializableElement$default, objDecodeSerializableElement$default2, objDecodeSerializableElement$default3);
    }

    private final i<A, B, C> decodeStructure(CompositeDecoder compositeDecoder) {
        Object objDecodeSerializableElement$default = TuplesKt.NULL;
        Object objDecodeSerializableElement$default2 = TuplesKt.NULL;
        Object objDecodeSerializableElement$default3 = TuplesKt.NULL;
        while (true) {
            int iDecodeElementIndex = compositeDecoder.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex == -1) {
                compositeDecoder.endStructure(getDescriptor());
                if (objDecodeSerializableElement$default == TuplesKt.NULL) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objDecodeSerializableElement$default2 == TuplesKt.NULL) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objDecodeSerializableElement$default3 != TuplesKt.NULL) {
                    return new i<>(objDecodeSerializableElement$default, objDecodeSerializableElement$default2, objDecodeSerializableElement$default3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
            } else if (iDecodeElementIndex == 1) {
                objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
            } else {
                if (iDecodeElementIndex != 2) {
                    throw new SerializationException(h.B("Unexpected index ", Integer.valueOf(iDecodeElementIndex)));
                }
                objDecodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
            }
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public i<A, B, C> deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        return compositeDecoderBeginStructure.decodeSequentially() ? decodeSequentially(compositeDecoderBeginStructure) : decodeStructure(compositeDecoderBeginStructure);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, i<? extends A, ? extends B, ? extends C> iVar) {
        h.j(encoder, "encoder");
        h.j(iVar, "value");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 0, this.aSerializer, iVar.f7397h);
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, this.bSerializer, iVar.f7398i);
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 2, this.cSerializer, iVar.f7399j);
        compositeEncoderBeginStructure.endStructure(getDescriptor());
    }
}
