package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: PluginGeneratedSerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PluginGeneratedSerialDescriptor$childSerializers$2 extends o implements a<KSerializer<?>[]> {
    public final /* synthetic */ PluginGeneratedSerialDescriptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PluginGeneratedSerialDescriptor$childSerializers$2(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        super(0);
        this.this$0 = pluginGeneratedSerialDescriptor;
    }

    @Override // qd.a
    public final KSerializer<?>[] invoke() {
        GeneratedSerializer generatedSerializer = this.this$0.generatedSerializer;
        KSerializer<?>[] kSerializerArrChildSerializers = generatedSerializer == null ? null : generatedSerializer.childSerializers();
        return kSerializerArrChildSerializers == null ? new KSerializer[0] : kSerializerArrChildSerializers;
    }
}
