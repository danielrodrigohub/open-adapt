package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: ContextAware.kt */
/* JADX INFO: loaded from: classes.dex */
final class ContextDescriptor implements SerialDescriptor {
    public final b<?> kClass;
    private final SerialDescriptor original;
    private final String serialName;

    public ContextDescriptor(SerialDescriptor serialDescriptor, b<?> bVar) {
        h.j(serialDescriptor, "original");
        h.j(bVar, "kClass");
        this.original = serialDescriptor;
        this.kClass = bVar;
        this.serialName = serialDescriptor.getSerialName() + '<' + ((Object) bVar.a()) + '>';
    }

    public boolean equals(Object obj) {
        ContextDescriptor contextDescriptor = obj instanceof ContextDescriptor ? (ContextDescriptor) obj : null;
        return contextDescriptor != null && h.c(this.original, contextDescriptor.original) && h.c(contextDescriptor.kClass, this.kClass);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        return this.original.getElementAnnotations(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        return this.original.getElementDescriptor(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String str) {
        h.j(str, "name");
        return this.original.getElementIndex(str);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return this.original.getElementName(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.original.getElementsCount();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.original.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    public int hashCode() {
        return getSerialName().hashCode() + (this.kClass.hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.original.isInline();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return this.original.isNullable();
    }

    public String toString() {
        StringBuilder sbC = a0.b.c("ContextDescriptor(kClass: ");
        sbC.append(this.kClass);
        sbC.append(", original: ");
        sbC.append(this.original);
        sbC.append(')');
        return sbC.toString();
    }
}
