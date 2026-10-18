package kotlinx.serialization.internal;

import androidx.appcompat.widget.y0;
import gd.p;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import rd.h;
import yd.n;

/* JADX INFO: compiled from: CollectionDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ListLikeDescriptor implements SerialDescriptor {
    private final SerialDescriptor elementDescriptor;
    private final int elementsCount;

    private ListLikeDescriptor(SerialDescriptor serialDescriptor) {
        this.elementDescriptor = serialDescriptor;
        this.elementsCount = 1;
    }

    public /* synthetic */ ListLikeDescriptor(SerialDescriptor serialDescriptor, h hVar) {
        this(serialDescriptor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListLikeDescriptor)) {
            return false;
        }
        ListLikeDescriptor listLikeDescriptor = (ListLikeDescriptor) obj;
        return p4.h.c(this.elementDescriptor, listLikeDescriptor.elementDescriptor) && p4.h.c(getSerialName(), listLikeDescriptor.getSerialName());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        if (i10 >= 0) {
            return p.f8070h;
        }
        StringBuilder sbC = y0.c("Illegal index ", i10, ", ");
        sbC.append(getSerialName());
        sbC.append(" expects only non-negative indices");
        throw new IllegalArgumentException(sbC.toString().toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        if (i10 >= 0) {
            return this.elementDescriptor;
        }
        StringBuilder sbC = y0.c("Illegal index ", i10, ", ");
        sbC.append(getSerialName());
        sbC.append(" expects only non-negative indices");
        throw new IllegalArgumentException(sbC.toString().toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String str) {
        p4.h.j(str, "name");
        Integer numW = n.W(str);
        if (numW != null) {
            return numW.intValue();
        }
        throw new IllegalArgumentException(p4.h.B(str, " is not a valid list index"));
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.LIST.INSTANCE;
    }

    public int hashCode() {
        return getSerialName().hashCode() + (this.elementDescriptor.hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.DefaultImpls.isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.DefaultImpls.isNullable(this);
    }

    public String toString() {
        return getSerialName() + '(' + this.elementDescriptor + ')';
    }
}
