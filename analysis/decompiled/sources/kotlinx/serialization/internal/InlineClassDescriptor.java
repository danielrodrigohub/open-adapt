package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: InlineClassDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InlineClassDescriptor extends PluginGeneratedSerialDescriptor {
    private final boolean isInline;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InlineClassDescriptor(String str, GeneratedSerializer<?> generatedSerializer) {
        super(str, generatedSerializer, 1);
        h.j(str, "name");
        h.j(generatedSerializer, "generatedSerializer");
        this.isInline = true;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InlineClassDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (h.c(getSerialName(), serialDescriptor.getSerialName())) {
                InlineClassDescriptor inlineClassDescriptor = (InlineClassDescriptor) obj;
                if ((inlineClassDescriptor.isInline() && Arrays.equals(getTypeParameterDescriptors$kotlinx_serialization_core(), inlineClassDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core())) && getElementsCount() == serialDescriptor.getElementsCount()) {
                    int elementsCount = getElementsCount();
                    if (elementsCount <= 0) {
                        return true;
                    }
                    int i10 = 0;
                    while (true) {
                        int i11 = i10 + 1;
                        if (!h.c(getElementDescriptor(i10).getSerialName(), serialDescriptor.getElementDescriptor(i10).getSerialName()) || !h.c(getElementDescriptor(i10).getKind(), serialDescriptor.getElementDescriptor(i10).getKind())) {
                            break;
                        }
                        if (i11 >= elementsCount) {
                            return true;
                        }
                        i10 = i11;
                    }
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.isInline;
    }
}
