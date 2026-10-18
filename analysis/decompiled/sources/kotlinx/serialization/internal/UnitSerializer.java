package kotlinx.serialization.internal;

import fd.o;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UnitSerializer implements KSerializer<o> {
    public static final UnitSerializer INSTANCE = new UnitSerializer();
    private final /* synthetic */ ObjectSerializer<o> $$delegate_0 = new ObjectSerializer<>("kotlin.Unit", o.f7408a);

    private UnitSerializer() {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        m24deserialize(decoder);
        return o.f7408a;
    }

    /* JADX INFO: renamed from: deserialize, reason: collision with other method in class */
    public void m24deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        this.$$delegate_0.deserialize(decoder);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.$$delegate_0.getDescriptor();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, o oVar) {
        h.j(encoder, "encoder");
        h.j(oVar, "value");
        this.$$delegate_0.serialize(encoder, oVar);
    }
}
