package kotlinx.serialization;

import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: PolymorphicSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PolymorphicSerializer<T> extends AbstractPolymorphicSerializer<T> {
    private final b<T> baseClass;
    private final SerialDescriptor descriptor;

    public PolymorphicSerializer(b<T> bVar) {
        h.j(bVar, "baseClass");
        this.baseClass = bVar;
        this.descriptor = ContextAwareKt.withContext(SerialDescriptorsKt.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind.OPEN.INSTANCE, new SerialDescriptor[0], new PolymorphicSerializer$descriptor$1(this)), getBaseClass());
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public b<T> getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public String toString() {
        StringBuilder sbC = a0.b.c("kotlinx.serialization.PolymorphicSerializer(baseClass: ");
        sbC.append(getBaseClass());
        sbC.append(')');
        return sbC.toString();
    }
}
