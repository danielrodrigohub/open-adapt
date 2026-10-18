package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: PluginGeneratedSerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PluginGeneratedSerialDescriptor$typeParameterDescriptors$2 extends o implements a<SerialDescriptor[]> {
    public final /* synthetic */ PluginGeneratedSerialDescriptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PluginGeneratedSerialDescriptor$typeParameterDescriptors$2(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        super(0);
        this.this$0 = pluginGeneratedSerialDescriptor;
    }

    @Override // qd.a
    public final SerialDescriptor[] invoke() {
        KSerializer<?>[] kSerializerArrTypeParametersSerializers;
        GeneratedSerializer generatedSerializer = this.this$0.generatedSerializer;
        ArrayList arrayList = null;
        if (generatedSerializer != null && (kSerializerArrTypeParametersSerializers = generatedSerializer.typeParametersSerializers()) != null) {
            arrayList = new ArrayList(kSerializerArrTypeParametersSerializers.length);
            for (KSerializer<?> kSerializer : kSerializerArrTypeParametersSerializers) {
                arrayList.add(kSerializer.getDescriptor());
            }
        }
        return Platform_commonKt.compactArray(arrayList);
    }
}
