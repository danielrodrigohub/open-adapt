package kotlinx.serialization.internal;

import fd.k;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import rd.n;

/* JADX INFO: compiled from: InlineClasses.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UIntSerializer implements KSerializer<k> {
    public static final UIntSerializer INSTANCE = new UIntSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.UInt", BuiltinSerializersKt.serializer(n.f14790a));

    private UIntSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* synthetic */ Object deserialize(Decoder decoder) {
        return new k(m18deserializeOGnWXxg(decoder));
    }

    /* JADX INFO: renamed from: deserialize-OGnWXxg, reason: not valid java name */
    public int m18deserializeOGnWXxg(Decoder decoder) {
        h.j(decoder, "decoder");
        return decoder.decodeInline(getDescriptor()).decodeInt();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m19serializeQn1smSk(encoder, ((k) obj).f7403h);
    }

    /* JADX INFO: renamed from: serialize-Qn1smSk, reason: not valid java name */
    public void m19serializeQn1smSk(Encoder encoder, int i10) {
        h.j(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeInt(i10);
    }
}
