package kotlinx.serialization.internal;

import fd.l;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import rd.p;

/* JADX INFO: compiled from: InlineClasses.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ULongSerializer implements KSerializer<l> {
    public static final ULongSerializer INSTANCE = new ULongSerializer();
    private static final SerialDescriptor descriptor = InlineClassDescriptorKt.InlinePrimitiveDescriptor("kotlin.ULong", BuiltinSerializersKt.serializer(p.f14791a));

    private ULongSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* synthetic */ Object deserialize(Decoder decoder) {
        return new l(m20deserializeI7RO_PI(decoder));
    }

    /* JADX INFO: renamed from: deserialize-I7RO_PI, reason: not valid java name */
    public long m20deserializeI7RO_PI(Decoder decoder) {
        h.j(decoder, "decoder");
        return decoder.decodeInline(getDescriptor()).decodeLong();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m21serialize2TYgG_w(encoder, ((l) obj).f7405h);
    }

    /* JADX INFO: renamed from: serialize-2TYgG_w, reason: not valid java name */
    public void m21serialize2TYgG_w(Encoder encoder, long j10) {
        h.j(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeLong(j10);
    }
}
