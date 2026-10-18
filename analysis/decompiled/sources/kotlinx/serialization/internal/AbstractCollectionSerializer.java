package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import rd.h;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    private AbstractCollectionSerializer() {
    }

    public /* synthetic */ AbstractCollectionSerializer(h hVar) {
        this();
    }

    public static /* synthetic */ void readElement$default(AbstractCollectionSerializer abstractCollectionSerializer, CompositeDecoder compositeDecoder, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        abstractCollectionSerializer.readElement(compositeDecoder, i10, obj, z10);
    }

    private final int readSize(CompositeDecoder compositeDecoder, Builder builder) {
        int iDecodeCollectionSize = compositeDecoder.decodeCollectionSize(getDescriptor());
        checkCapacity(builder, iDecodeCollectionSize);
        return iDecodeCollectionSize;
    }

    public abstract Builder builder();

    public abstract int builderSize(Builder builder);

    public abstract void checkCapacity(Builder builder, int i10);

    public abstract Iterator<Element> collectionIterator(Collection collection);

    public abstract int collectionSize(Collection collection);

    @Override // kotlinx.serialization.DeserializationStrategy
    public Collection deserialize(Decoder decoder) {
        p4.h.j(decoder, "decoder");
        return merge(decoder, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Collection merge(Decoder decoder, Collection collection) {
        p4.h.j(decoder, "decoder");
        Object builder = collection == null ? null : toBuilder(collection);
        if (builder == null) {
            builder = builder();
        }
        int iBuilderSize = builderSize(builder);
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            readAll(compositeDecoderBeginStructure, builder, iBuilderSize, readSize(compositeDecoderBeginStructure, builder));
        } else {
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                readElement$default(this, compositeDecoderBeginStructure, iBuilderSize + iDecodeElementIndex, builder, false, 8, null);
            }
        }
        compositeDecoderBeginStructure.endStructure(getDescriptor());
        return (Collection) toResult(builder);
    }

    public abstract void readAll(CompositeDecoder compositeDecoder, Builder builder, int i10, int i11);

    public abstract void readElement(CompositeDecoder compositeDecoder, int i10, Builder builder, boolean z10);

    public abstract Builder toBuilder(Collection collection);

    public abstract Collection toResult(Builder builder);
}
