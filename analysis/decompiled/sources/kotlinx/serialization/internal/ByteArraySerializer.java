package kotlinx.serialization.internal;

import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import p4.h;
import rd.c;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ByteArraySerializer extends PrimitiveArraySerializer<Byte, byte[], ByteArrayBuilder> {
    public static final ByteArraySerializer INSTANCE = new ByteArraySerializer();

    private ByteArraySerializer() {
        super(BuiltinSerializersKt.serializer(c.f14777a));
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public byte[] empty() {
        return new byte[0];
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(byte[] bArr) {
        h.j(bArr, "<this>");
        return bArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i10, ByteArrayBuilder byteArrayBuilder, boolean z10) {
        h.j(compositeDecoder, "decoder");
        h.j(byteArrayBuilder, "builder");
        byteArrayBuilder.append$kotlinx_serialization_core(compositeDecoder.decodeByteElement(getDescriptor(), i10));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ByteArrayBuilder toBuilder(byte[] bArr) {
        h.j(bArr, "<this>");
        return new ByteArrayBuilder(bArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void writeContent(CompositeEncoder compositeEncoder, byte[] bArr, int i10) {
        h.j(compositeEncoder, "encoder");
        h.j(bArr, "content");
        if (i10 <= 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            compositeEncoder.encodeByteElement(getDescriptor(), i11, bArr[i11]);
            if (i12 >= i10) {
                return;
            } else {
                i11 = i12;
            }
        }
    }
}
