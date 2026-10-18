package kotlinx.serialization.internal;

import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import p4.h;
import rd.j;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FloatArraySerializer extends PrimitiveArraySerializer<Float, float[], FloatArrayBuilder> {
    public static final FloatArraySerializer INSTANCE = new FloatArraySerializer();

    private FloatArraySerializer() {
        super(BuiltinSerializersKt.serializer(j.f14789a));
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public float[] empty() {
        return new float[0];
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(float[] fArr) {
        h.j(fArr, "<this>");
        return fArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, FloatArrayBuilder floatArrayBuilder, boolean z10) {
        h.j(compositeDecoder, "decoder");
        h.j(floatArrayBuilder, "builder");
        floatArrayBuilder.append$kotlinx_serialization_core(compositeDecoder.decodeFloatElement(getDescriptor(), i10));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public FloatArrayBuilder toBuilder(float[] fArr) {
        h.j(fArr, "<this>");
        return new FloatArrayBuilder(fArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder compositeEncoder, float[] fArr, int i10) {
        h.j(compositeEncoder, "encoder");
        h.j(fArr, "content");
        if (i10 <= 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            compositeEncoder.encodeFloatElement(getDescriptor(), i11, fArr[i11]);
            if (i12 >= i10) {
                return;
            } else {
                i11 = i12;
            }
        }
    }
}
