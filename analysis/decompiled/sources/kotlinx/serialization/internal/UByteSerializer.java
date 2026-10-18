package kotlinx.serialization.internal;

import fd.j;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import rd.c;

/* JADX INFO: compiled from: InlineClasses.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UByteSerializer implements KSerializer<j> {
    public static final UByteSerializer INSTANCE = new UByteSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UByte", BuiltinSerializersKt.serializer(c.f14777a));

    private UByteSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* synthetic */ Object deserialize(Decoder decoder) {
        return new j(m16deserializeWa3L5BU(decoder));
    }

    /* JADX INFO: renamed from: deserialize-Wa3L5BU, reason: not valid java name */
    public byte m16deserializeWa3L5BU(Decoder decoder) {
        h.j(decoder, "decoder");
        return decoder.decodeInline(getDescriptor()).decodeByte();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m17serializeEK6454(encoder, ((j) obj).f7401h);
    }

    /* JADX INFO: renamed from: serialize-EK-6454, reason: not valid java name */
    public void m17serializeEK6454(Encoder encoder, byte b10) {
        h.j(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeByte(b10);
    }
}
