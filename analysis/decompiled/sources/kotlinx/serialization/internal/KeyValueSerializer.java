package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import rd.h;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class KeyValueSerializer<K, V, R> implements KSerializer<R> {
    private final KSerializer<K> keySerializer;
    private final KSerializer<V> valueSerializer;

    private KeyValueSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    public /* synthetic */ KeyValueSerializer(KSerializer kSerializer, KSerializer kSerializer2, h hVar) {
        this(kSerializer, kSerializer2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.DeserializationStrategy
    public R deserialize(Decoder decoder) {
        p4.h.j(decoder, "decoder");
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            return (R) toResult(CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 0, this.keySerializer, null, 8, null), CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 1, this.valueSerializer, null, 8, null));
        }
        Object objDecodeSerializableElement$default = TuplesKt.NULL;
        Object objDecodeSerializableElement$default2 = TuplesKt.NULL;
        while (true) {
            int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex == -1) {
                compositeDecoderBeginStructure.endStructure(getDescriptor());
                if (objDecodeSerializableElement$default == TuplesKt.NULL) {
                    throw new SerializationException("Element 'key' is missing");
                }
                if (objDecodeSerializableElement$default2 != TuplesKt.NULL) {
                    return (R) toResult(objDecodeSerializableElement$default, objDecodeSerializableElement$default2);
                }
                throw new SerializationException("Element 'value' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 0, this.keySerializer, null, 8, null);
            } else {
                if (iDecodeElementIndex != 1) {
                    throw new SerializationException(p4.h.B("Invalid index: ", Integer.valueOf(iDecodeElementIndex)));
                }
                objDecodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoderBeginStructure, getDescriptor(), 1, this.valueSerializer, null, 8, null);
            }
        }
    }

    public abstract K getKey(R r10);

    public abstract V getValue(R r10);

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, R r10) {
        p4.h.j(encoder, "encoder");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 0, this.keySerializer, getKey(r10));
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, this.valueSerializer, getValue(r10));
        compositeEncoderBeginStructure.endStructure(getDescriptor());
    }

    public abstract R toResult(K k10, V v10);
}
