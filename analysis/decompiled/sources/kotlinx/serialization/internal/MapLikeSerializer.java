package kotlinx.serialization.internal;

import androidx.activity.k;
import gd.z;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import rd.h;
import vd.c;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class MapLikeSerializer<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractCollectionSerializer<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    private final KSerializer<Key> keySerializer;
    private final KSerializer<Value> valueSerializer;

    private MapLikeSerializer(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    public /* synthetic */ MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2, h hVar) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    public final KSerializer<Key> getKeySerializer() {
        return this.keySerializer;
    }

    public final KSerializer<Value> getValueSerializer() {
        return this.valueSerializer;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Collection collection) {
        p4.h.j(encoder, "encoder");
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(getDescriptor(), collectionSize(collection));
        Iterator<Map.Entry<? extends Key, ? extends Value>> itCollectionIterator = collectionIterator(collection);
        int i10 = 0;
        while (itCollectionIterator.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = itCollectionIterator.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i11 = i10 + 1;
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i10, getKeySerializer(), key);
            compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i11, getValueSerializer(), value);
            i10 = i11 + 1;
        }
        compositeEncoderBeginCollection.endStructure(getDescriptor());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readAll(CompositeDecoder compositeDecoder, Builder builder, int i10, int i11) {
        p4.h.j(compositeDecoder, "decoder");
        p4.h.j(builder, "builder");
        if (!(i11 >= 0)) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
        c cVarR = k.r(k.w(0, i11 * 2), 2);
        int i12 = cVarR.f17021h;
        int i13 = cVarR.f17022i;
        int i14 = cVarR.f17023j;
        if ((i14 <= 0 || i12 > i13) && (i14 >= 0 || i13 > i12)) {
            return;
        }
        while (true) {
            int i15 = i12 + i14;
            readElement(compositeDecoder, i10 + i12, (Map) builder, false);
            if (i12 == i13) {
                return;
            } else {
                i12 = i15;
            }
        }
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i10, Builder builder, boolean z10) {
        int iDecodeElementIndex;
        p4.h.j(compositeDecoder, "decoder");
        p4.h.j(builder, "builder");
        Object objDecodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), i10, this.keySerializer, null, 8, null);
        if (z10) {
            iDecodeElementIndex = compositeDecoder.decodeElementIndex(getDescriptor());
            if (!(iDecodeElementIndex == i10 + 1)) {
                throw new IllegalArgumentException(d1.c.a("Value must follow key in a map, index for key: ", i10, ", returned index for value: ", iDecodeElementIndex).toString());
            }
        } else {
            iDecodeElementIndex = i10 + 1;
        }
        int i11 = iDecodeElementIndex;
        builder.put(objDecodeSerializableElement$default, (!builder.containsKey(objDecodeSerializableElement$default) || (this.valueSerializer.getDescriptor().getKind() instanceof PrimitiveKind)) ? CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), i11, this.valueSerializer, null, 8, null) : compositeDecoder.decodeSerializableElement(getDescriptor(), i11, this.valueSerializer, z.y(builder, objDecodeSerializableElement$default)));
    }
}
