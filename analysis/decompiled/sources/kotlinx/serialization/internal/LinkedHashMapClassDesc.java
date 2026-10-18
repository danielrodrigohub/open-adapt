package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: CollectionDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LinkedHashMapClassDesc extends MapLikeDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashMapClassDesc(SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        super("kotlin.collections.LinkedHashMap", serialDescriptor, serialDescriptor2, null);
        h.j(serialDescriptor, "keyDesc");
        h.j(serialDescriptor2, "valueDesc");
    }
}
