package kotlinx.serialization.descriptors;

import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: SerialDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorImpl$_hashCode$2 extends o implements a<Integer> {
    public final /* synthetic */ SerialDescriptorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerialDescriptorImpl$_hashCode$2(SerialDescriptorImpl serialDescriptorImpl) {
        super(0);
        this.this$0 = serialDescriptorImpl;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final int invoke2() {
        SerialDescriptorImpl serialDescriptorImpl = this.this$0;
        return PluginGeneratedSerialDescriptorKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.typeParametersDescriptors);
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ Integer invoke() {
        return Integer.valueOf(invoke2());
    }
}
