package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: NullableSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NullableSerializer<T> implements KSerializer<T> {
    private final SerialDescriptor descriptor;
    private final KSerializer<T> serializer;

    public NullableSerializer(KSerializer<T> kSerializer) {
        h.j(kSerializer, "serializer");
        this.serializer = kSerializer;
        this.descriptor = new SerialDescriptorForNullable(kSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        return decoder.decodeNotNullMark() ? (T) decoder.decodeSerializableValue(this.serializer) : (T) decoder.decodeNull();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && h.c(x.a(NullableSerializer.class), x.a(obj.getClass())) && h.c(this.serializer, ((NullableSerializer) obj).serializer);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public int hashCode() {
        return this.serializer.hashCode();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        if (t10 == null) {
            encoder.encodeNull();
        } else {
            encoder.encodeNotNullMark();
            encoder.encodeSerializableValue(this.serializer, t10);
        }
    }
}
