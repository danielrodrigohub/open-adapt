package kotlinx.serialization.internal;

import java.util.Set;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: JsonInternalDependencies.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonInternalDependenciesKt {
    public static final Set<String> jsonCachedSerialNames(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "<this>");
        return Platform_commonKt.cachedSerialNames(serialDescriptor);
    }
}
