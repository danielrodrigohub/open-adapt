package kotlinx.serialization.internal;

import androidx.activity.k;
import fd.d;
import gd.n;
import gd.p;
import gd.q;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: PluginGeneratedSerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {
    private final d _hashCode$delegate;
    private int added;
    private final d childSerializers$delegate;
    private final int elementsCount;
    private final boolean[] elementsOptionality;
    private final GeneratedSerializer<?> generatedSerializer;
    private Map<String, Integer> indices;
    private final String[] names;
    private final List<Annotation>[] propertiesAnnotations;
    private final String serialName;
    private final d typeParameterDescriptors$delegate;

    /* JADX INFO: renamed from: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$toString$1, reason: invalid class name */
    /* JADX INFO: compiled from: PluginGeneratedSerialDescriptor.kt */
    public static final class AnonymousClass1 extends o implements l<Integer, CharSequence> {
        public AnonymousClass1() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final CharSequence invoke(int i10) {
            return PluginGeneratedSerialDescriptor.this.getElementName(i10) + ": " + PluginGeneratedSerialDescriptor.this.getElementDescriptor(i10).getSerialName();
        }
    }

    public PluginGeneratedSerialDescriptor(String str, GeneratedSerializer<?> generatedSerializer, int i10) {
        h.j(str, "serialName");
        this.serialName = str;
        this.generatedSerializer = generatedSerializer;
        this.elementsCount = i10;
        this.added = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.names = strArr;
        int i12 = this.elementsCount;
        this.propertiesAnnotations = new List[i12];
        this.elementsOptionality = new boolean[i12];
        this.indices = q.f8071h;
        this.childSerializers$delegate = androidx.lifecycle.o.x(new PluginGeneratedSerialDescriptor$childSerializers$2(this));
        this.typeParameterDescriptors$delegate = androidx.lifecycle.o.x(new PluginGeneratedSerialDescriptor$typeParameterDescriptors$2(this));
        this._hashCode$delegate = androidx.lifecycle.o.x(new PluginGeneratedSerialDescriptor$_hashCode$2(this));
    }

    private final Map<String, Integer> buildIndices() {
        HashMap map = new HashMap();
        int length = this.names.length - 1;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                map.put(this.names[i10], Integer.valueOf(i10));
                if (i11 > length) {
                    break;
                }
                i10 = i11;
            }
        }
        return map;
    }

    private final KSerializer<?>[] getChildSerializers() {
        return (KSerializer[]) this.childSerializers$delegate.getValue();
    }

    private final int get_hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    public final void addElement(String str, boolean z10) {
        h.j(str, "name");
        String[] strArr = this.names;
        int i10 = this.added + 1;
        this.added = i10;
        strArr[i10] = str;
        this.elementsOptionality[i10] = z10;
        this.propertiesAnnotations[i10] = null;
        if (i10 == this.elementsCount - 1) {
            this.indices = buildIndices();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (h.c(getSerialName(), serialDescriptor.getSerialName()) && Arrays.equals(getTypeParameterDescriptors$kotlinx_serialization_core(), ((PluginGeneratedSerialDescriptor) obj).getTypeParameterDescriptors$kotlinx_serialization_core()) && getElementsCount() == serialDescriptor.getElementsCount()) {
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
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public List<Annotation> getElementAnnotations(int i10) {
        List<Annotation> list = this.propertiesAnnotations[i10];
        return list == null ? p.f8070h : list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        return getChildSerializers()[i10].getDescriptor();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String str) {
        h.j(str, "name");
        Integer num = this.indices.get(str);
        if (num == null) {
            return -3;
        }
        return num.intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return this.names[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return StructureKind.CLASS.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public Set<String> getSerialNames() {
        return this.indices.keySet();
    }

    public final SerialDescriptor[] getTypeParameterDescriptors$kotlinx_serialization_core() {
        return (SerialDescriptor[]) this.typeParameterDescriptors$delegate.getValue();
    }

    public int hashCode() {
        return get_hashCode();
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
        return n.d0(k.w(0, this.elementsCount), ", ", h.B(getSerialName(), "("), ")", new AnonymousClass1(), 24);
    }
}
