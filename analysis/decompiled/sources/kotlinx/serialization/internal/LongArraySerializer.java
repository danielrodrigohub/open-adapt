package kotlinx.serialization.internal;

import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import p4.h;
import rd.p;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LongArraySerializer extends PrimitiveArraySerializer<Long, long[], LongArrayBuilder> {
    public static final LongArraySerializer INSTANCE = new LongArraySerializer();

    private LongArraySerializer() {
        super(BuiltinSerializersKt.serializer(p.f14791a));
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public long[] empty() {
        return new long[0];
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(long[] jArr) {
        h.j(jArr, "<this>");
        return jArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, LongArrayBuilder longArrayBuilder, boolean z10) {
        h.j(compositeDecoder, "decoder");
        h.j(longArrayBuilder, "builder");
        longArrayBuilder.append$kotlinx_serialization_core(compositeDecoder.decodeLongElement(getDescriptor(), i10));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LongArrayBuilder toBuilder(long[] jArr) {
        h.j(jArr, "<this>");
        return new LongArrayBuilder(jArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder compositeEncoder, long[] jArr, int i10) {
        h.j(compositeEncoder, "encoder");
        h.j(jArr, "content");
        if (i10 <= 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            compositeEncoder.encodeLongElement(getDescriptor(), i11, jArr[i11]);
            if (i12 >= i10) {
                return;
            } else {
                i11 = i12;
            }
        }
    }
}
