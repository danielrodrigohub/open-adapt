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
public abstract class MapLikeDescriptor implements SerialDescriptor {
    private final int elementsCount;
    private final SerialDescriptor keyDescriptor;
    private final String serialName;
    private final SerialDescriptor valueDescriptor;

    private MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.serialName = str;
        this.keyDescriptor = serialDescriptor;
        this.valueDescriptor = serialDescriptor2;
        this.elementsCount = 2;
    }

    public /* synthetic */ MapLikeDescriptor(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, h hVar) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapLikeDescriptor)) {
            return false;
        }
        MapLikeDescriptor mapLikeDescriptor = (MapLikeDescriptor) obj;
        return p4.h.c(getSerialName(), mapLikeDescriptor.getSerialName()) && p4.h.c(this.keyDescriptor, mapLikeDescriptor.keyDescriptor) && p4.h.c(this.valueDescriptor, mapLikeDescriptor.valueDescriptor);
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
        if (!(i10 >= 0)) {
            StringBuilder sbC = y0.c("Illegal index ", i10, ", ");
            sbC.append(getSerialName());
            sbC.append(" expects only non-negative indices");
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        int i11 = i10 % 2;
        if (i11 == 0) {
            return this.keyDescriptor;
        }
        if (i11 == 1) {
            return this.valueDescriptor;
        }
        throw new IllegalStateException("Unreached".toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String str) {
        p4.h.j(str, "name");
        Integer numW = n.W(str);
        if (numW != null) {
            return numW.intValue();
        }
        throw new IllegalArgumentException(p4.h.B(str, " is not a valid map index"));
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
        return StructureKind.MAP.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    public int hashCode() {
        return this.valueDescriptor.hashCode() + ((this.keyDescriptor.hashCode() + (getSerialName().hashCode() * 31)) * 31);
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
        return getSerialName() + '(' + this.keyDescriptor + ", " + this.valueDescriptor + ')';
    }
}
