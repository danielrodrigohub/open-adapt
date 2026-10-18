package kotlinx.serialization.internal;

import fd.m;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import rd.z;

/* JADX INFO: compiled from: InlineClasses.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UShortSerializer implements KSerializer<m> {
    public static final UShortSerializer INSTANCE = new UShortSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UShort", BuiltinSerializersKt.serializer(z.f14798a));

    private UShortSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* synthetic */ Object deserialize(Decoder decoder) {
        return new m(m22deserializeBwKQO78(decoder));
    }

    /* JADX INFO: renamed from: deserialize-BwKQO78, reason: not valid java name */
    public short m22deserializeBwKQO78(Decoder decoder) {
        h.j(decoder, "decoder");
        return decoder.decodeInline(getDescriptor()).decodeShort();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m23serializei8woANY(encoder, ((m) obj).f7407h);
    }

    /* JADX INFO: renamed from: serialize-i8woANY, reason: not valid java name */
    public void m23serializei8woANY(Encoder encoder, short s10) {
        h.j(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeShort(s10);
    }
}
