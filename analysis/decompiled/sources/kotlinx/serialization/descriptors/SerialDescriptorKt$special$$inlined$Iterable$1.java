package kotlinx.serialization.descriptors;

import java.util.Iterator;
import sd.a;

/* JADX INFO: compiled from: Iterables.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorKt$special$$inlined$Iterable$1 implements Iterable<SerialDescriptor>, a {
    public final /* synthetic */ SerialDescriptor $this_elementDescriptors$inlined;

    public SerialDescriptorKt$special$$inlined$Iterable$1(SerialDescriptor serialDescriptor) {
        this.$this_elementDescriptors$inlined = serialDescriptor;
    }

    @Override // java.lang.Iterable
    public Iterator<SerialDescriptor> iterator() {
        return new SerialDescriptorKt$elementDescriptors$1$1(this.$this_elementDescriptors$inlined);
    }
}
