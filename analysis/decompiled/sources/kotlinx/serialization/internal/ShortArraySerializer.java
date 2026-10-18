package kotlinx.serialization.internal;

import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import p4.h;
import rd.z;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShortArraySerializer extends PrimitiveArraySerializer<Short, short[], ShortArrayBuilder> {
    public static final ShortArraySerializer INSTANCE = new ShortArraySerializer();

    private ShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(z.f14798a));
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public short[] empty() {
        return new short[0];
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(short[] sArr) {
        h.j(sArr, "<this>");
        return sArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, ShortArrayBuilder shortArrayBuilder, boolean z10) {
        h.j(compositeDecoder, "decoder");
        h.j(shortArrayBuilder, "builder");
        shortArrayBuilder.append$kotlinx_serialization_core(compositeDecoder.decodeShortElement(getDescriptor(), i10));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ShortArrayBuilder toBuilder(short[] sArr) {
        h.j(sArr, "<this>");
        return new ShortArrayBuilder(sArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder compositeEncoder, short[] sArr, int i10) {
        h.j(compositeEncoder, "encoder");
        h.j(sArr, "content");
        if (i10 <= 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            compositeEncoder.encodeShortElement(getDescriptor(), i11, sArr[i11]);
            if (i12 >= i10) {
                return;
            } else {
                i11 = i12;
            }
        }
    }
}
