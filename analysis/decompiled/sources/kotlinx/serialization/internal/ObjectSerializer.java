package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: ObjectSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ObjectSerializer<T> implements KSerializer<T> {
    private final SerialDescriptor descriptor;
    private final T objectInstance;

    public ObjectSerializer(String str, T t10) {
        h.j(str, "serialName");
        h.j(t10, "objectInstance");
        this.objectInstance = t10;
        this.descriptor = SerialDescriptorsKt.buildSerialDescriptor$default(str, StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], null, 8, null);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        decoder.beginStructure(getDescriptor()).endStructure(getDescriptor());
        return this.objectInstance;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        h.j(t10, "value");
        encoder.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }
}
