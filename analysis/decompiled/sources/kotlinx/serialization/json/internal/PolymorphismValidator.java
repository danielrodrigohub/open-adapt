package kotlinx.serialization.json.internal;

import java.util.List;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.modules.SerializersModuleCollector;
import p4.h;
import qd.l;
import wd.b;

/* JADX INFO: compiled from: PolymorphismValidator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PolymorphismValidator implements SerializersModuleCollector {
    private final String discriminator;
    private final boolean useArrayPolymorphism;

    public PolymorphismValidator(boolean z10, String str) {
        h.j(str, "discriminator");
        this.useArrayPolymorphism = z10;
        this.discriminator = str;
    }

    private final void checkDiscriminatorCollisions(SerialDescriptor serialDescriptor, b<?> bVar) {
        int elementsCount = serialDescriptor.getElementsCount();
        if (elementsCount <= 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            String elementName = serialDescriptor.getElementName(i10);
            if (h.c(elementName, this.discriminator)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + bVar + " has property '" + elementName + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
            if (i11 >= elementsCount) {
                return;
            } else {
                i10 = i11;
            }
        }
    }

    private final void checkKind(SerialDescriptor serialDescriptor, b<?> bVar) {
        SerialKind kind = serialDescriptor.getKind();
        if ((kind instanceof PolymorphicKind) || h.c(kind, SerialKind.CONTEXTUAL.INSTANCE)) {
            StringBuilder sbC = a0.b.c("Serializer for ");
            sbC.append((Object) bVar.a());
            sbC.append(" can't be registered as a subclass for polymorphic serialization because its kind ");
            sbC.append(kind);
            sbC.append(" is not concrete. To work with multiple hierarchies, register it as a base class.");
            throw new IllegalArgumentException(sbC.toString());
        }
        if (this.useArrayPolymorphism) {
            return;
        }
        if (h.c(kind, StructureKind.LIST.INSTANCE) || h.c(kind, StructureKind.MAP.INSTANCE) || (kind instanceof PrimitiveKind) || (kind instanceof SerialKind.ENUM)) {
            StringBuilder sbC2 = a0.b.c("Serializer for ");
            sbC2.append((Object) bVar.a());
            sbC2.append(" of kind ");
            sbC2.append(kind);
            sbC2.append(" cannot be serialized polymorphically with class discriminator.");
            throw new IllegalArgumentException(sbC2.toString());
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(b<T> bVar, KSerializer<T> kSerializer) {
        SerializersModuleCollector.DefaultImpls.contextual(this, bVar, kSerializer);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void contextual(b<T> bVar, l<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> lVar) {
        h.j(bVar, "kClass");
        h.j(lVar, "provider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base, Sub extends Base> void polymorphic(b<Base> bVar, b<Sub> bVar2, KSerializer<Sub> kSerializer) {
        h.j(bVar, "baseClass");
        h.j(bVar2, "actualClass");
        h.j(kSerializer, "actualSerializer");
        SerialDescriptor descriptor = kSerializer.getDescriptor();
        checkKind(descriptor, bVar2);
        if (this.useArrayPolymorphism) {
            return;
        }
        checkDiscriminatorCollisions(descriptor, bVar2);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void polymorphicDefault(b<Base> bVar, l<? super String, ? extends DeserializationStrategy<? extends Base>> lVar) {
        h.j(bVar, "baseClass");
        h.j(lVar, "defaultSerializerProvider");
    }
}
