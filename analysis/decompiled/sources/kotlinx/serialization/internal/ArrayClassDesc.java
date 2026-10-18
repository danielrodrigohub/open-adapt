package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: CollectionDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ArrayClassDesc extends ListLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrayClassDesc(SerialDescriptor serialDescriptor) {
        super(serialDescriptor, null);
        h.j(serialDescriptor, "elementDesc");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return "kotlin.Array";
    }
}
