package kotlinx.serialization.descriptors;

import p4.h;

/* JADX INFO: compiled from: SerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorKt {
    public static final Iterable<SerialDescriptor> getElementDescriptors(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "<this>");
        return new SerialDescriptorKt$special$$inlined$Iterable$1(serialDescriptor);
    }
}
