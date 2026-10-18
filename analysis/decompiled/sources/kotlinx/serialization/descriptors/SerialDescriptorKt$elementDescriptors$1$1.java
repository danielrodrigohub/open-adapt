package kotlinx.serialization.descriptors;

import java.util.Iterator;
import sd.a;

/* JADX INFO: compiled from: SerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorKt$elementDescriptors$1$1 implements Iterator<SerialDescriptor>, a {
    public final /* synthetic */ SerialDescriptor $this_elementDescriptors;
    private int elementsLeft;

    public SerialDescriptorKt$elementDescriptors$1$1(SerialDescriptor serialDescriptor) {
        this.$this_elementDescriptors = serialDescriptor;
        this.elementsLeft = serialDescriptor.getElementsCount();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.elementsLeft > 0;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public SerialDescriptor next() {
        SerialDescriptor serialDescriptor = this.$this_elementDescriptors;
        int elementsCount = serialDescriptor.getElementsCount();
        int i10 = this.elementsLeft;
        this.elementsLeft = i10 - 1;
        return serialDescriptor.getElementDescriptor(elementsCount - i10);
    }
}
