package kotlinx.serialization.descriptors;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: ContextAware.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ContextAwareKt {
    public static final b<?> getCapturedKClass(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "<this>");
        if (serialDescriptor instanceof ContextDescriptor) {
            return ((ContextDescriptor) serialDescriptor).kClass;
        }
        if (serialDescriptor instanceof SerialDescriptorForNullable) {
            return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).getOriginal$kotlinx_serialization_core());
        }
        return null;
    }

    public static final SerialDescriptor getContextualDescriptor(SerializersModule serializersModule, SerialDescriptor serialDescriptor) {
        KSerializer contextual$default;
        h.j(serializersModule, "<this>");
        h.j(serialDescriptor, "descriptor");
        b<?> capturedKClass = getCapturedKClass(serialDescriptor);
        if (capturedKClass == null || (contextual$default = SerializersModule.getContextual$default(serializersModule, capturedKClass, null, 2, null)) == null) {
            return null;
        }
        return contextual$default.getDescriptor();
    }

    public static final SerialDescriptor withContext(SerialDescriptor serialDescriptor, b<?> bVar) {
        h.j(serialDescriptor, "<this>");
        h.j(bVar, "context");
        return new ContextDescriptor(serialDescriptor, bVar);
    }
}
