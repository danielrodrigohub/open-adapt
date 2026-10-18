package kotlinx.serialization.internal;

import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import p4.h;
import rd.b;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BooleanArraySerializer extends PrimitiveArraySerializer<Boolean, boolean[], BooleanArrayBuilder> {
    public static final BooleanArraySerializer INSTANCE = new BooleanArraySerializer();

    private BooleanArraySerializer() {
        super(BuiltinSerializersKt.serializer(b.f14776a));
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public boolean[] empty() {
        return new boolean[0];
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(boolean[] zArr) {
        h.j(zArr, "<this>");
        return zArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, BooleanArrayBuilder booleanArrayBuilder, boolean z10) {
        h.j(compositeDecoder, "decoder");
        h.j(booleanArrayBuilder, "builder");
        booleanArrayBuilder.append$kotlinx_serialization_core(compositeDecoder.decodeBooleanElement(getDescriptor(), i10));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public BooleanArrayBuilder toBuilder(boolean[] zArr) {
        h.j(zArr, "<this>");
        return new BooleanArrayBuilder(zArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder compositeEncoder, boolean[] zArr, int i10) {
        h.j(compositeEncoder, "encoder");
        h.j(zArr, "content");
        if (i10 <= 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            compositeEncoder.encodeBooleanElement(getDescriptor(), i11, zArr[i11]);
            if (i12 >= i10) {
                return;
            } else {
                i11 = i12;
            }
        }
    }
}
