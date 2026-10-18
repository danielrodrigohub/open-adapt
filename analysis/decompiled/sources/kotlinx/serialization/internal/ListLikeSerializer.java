package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import rd.h;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ListLikeSerializer<Element, Collection, Builder> extends AbstractCollectionSerializer<Element, Collection, Builder> {
    private final KSerializer<Element> elementSerializer;

    private ListLikeSerializer(KSerializer<Element> kSerializer) {
        super(null);
        this.elementSerializer = kSerializer;
    }

    public /* synthetic */ ListLikeSerializer(KSerializer kSerializer, h hVar) {
        this(kSerializer);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    public abstract void insert(Builder builder, int i10, Element element);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readAll(CompositeDecoder compositeDecoder, Builder builder, int i10, int i11) {
        p4.h.j(compositeDecoder, "decoder");
        if (!(i11 >= 0)) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
        if (i11 <= 0) {
            return;
        }
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            readElement(compositeDecoder, i12 + i10, builder, false);
            if (i13 >= i11) {
                return;
            } else {
                i12 = i13;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, Builder builder, boolean z10) {
        p4.h.j(compositeDecoder, "decoder");
        insert(builder, i10, CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), i10, this.elementSerializer, null, 8, null));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Collection collection) {
        p4.h.j(encoder, "encoder");
        int iCollectionSize = collectionSize(collection);
        CompositeEncoder compositeEncoderBeginCollection = encoder.beginCollection(getDescriptor(), iCollectionSize);
        Iterator<Element> itCollectionIterator = collectionIterator(collection);
        if (iCollectionSize > 0) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                compositeEncoderBeginCollection.encodeSerializableElement(getDescriptor(), i10, this.elementSerializer, itCollectionIterator.next());
                if (i11 >= iCollectionSize) {
                    break;
                } else {
                    i10 = i11;
                }
            }
        }
        compositeEncoderBeginCollection.endStructure(getDescriptor());
    }
}
