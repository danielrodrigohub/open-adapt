package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: WriteMode.kt */
/* JADX INFO: loaded from: classes.dex */
public final class WriteModeKt {
    public static final SerialDescriptor carrierDescriptor(SerialDescriptor serialDescriptor, SerializersModule serializersModule) {
        h.j(serialDescriptor, "<this>");
        h.j(serializersModule, "module");
        if (!h.c(serialDescriptor.getKind(), SerialKind.CONTEXTUAL.INSTANCE)) {
            return serialDescriptor.isInline() ? serialDescriptor.getElementDescriptor(0) : serialDescriptor;
        }
        SerialDescriptor contextualDescriptor = ContextAwareKt.getContextualDescriptor(serializersModule, serialDescriptor);
        return contextualDescriptor == null ? serialDescriptor : carrierDescriptor(contextualDescriptor, serializersModule);
    }

    public static final WriteMode switchMode(Json json, SerialDescriptor serialDescriptor) {
        h.j(json, "<this>");
        h.j(serialDescriptor, "desc");
        SerialKind kind = serialDescriptor.getKind();
        if (kind instanceof PolymorphicKind) {
            return WriteMode.POLY_OBJ;
        }
        if (h.c(kind, StructureKind.LIST.INSTANCE)) {
            return WriteMode.LIST;
        }
        if (!h.c(kind, StructureKind.MAP.INSTANCE)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor serialDescriptorCarrierDescriptor = carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.getSerializersModule());
        SerialKind kind2 = serialDescriptorCarrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind) || h.c(kind2, SerialKind.ENUM.INSTANCE)) {
            return WriteMode.MAP;
        }
        if (json.getConfiguration().getAllowStructuredMapKeys()) {
            return WriteMode.LIST;
        }
        throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
    }
}
