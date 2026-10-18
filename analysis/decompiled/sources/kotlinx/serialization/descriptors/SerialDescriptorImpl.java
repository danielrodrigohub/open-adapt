package kotlinx.serialization.descriptors;

import androidx.activity.k;
import fd.d;
import fd.e;
import gd.j;
import gd.n;
import gd.t;
import gd.u;
import gd.z;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.internal.Platform_commonKt;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: SerialDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorImpl implements SerialDescriptor, CachedNames {
    private final d _hashCode$delegate;
    private final List<Annotation> annotations;
    private final List<Annotation>[] elementAnnotations;
    private final SerialDescriptor[] elementDescriptors;
    private final String[] elementNames;
    private final boolean[] elementOptionality;
    private final int elementsCount;
    private final SerialKind kind;
    private final Map<String, Integer> name2Index;
    private final String serialName;
    private final Set<String> serialNames;
    private final SerialDescriptor[] typeParametersDescriptors;

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.SerialDescriptorImpl$toString$1, reason: invalid class name */
    /* JADX INFO: compiled from: SerialDescriptors.kt */
    public static final class AnonymousClass1 extends o implements l<Integer, CharSequence> {
        public AnonymousClass1() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final CharSequence invoke(int i10) {
            return SerialDescriptorImpl.this.getElementName(i10) + ": " + SerialDescriptorImpl.this.getElementDescriptor(i10).getSerialName();
        }
    }

    public SerialDescriptorImpl(String str, SerialKind serialKind, int i10, List<? extends SerialDescriptor> list, ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(str, "serialName");
        h.j(serialKind, "kind");
        h.j(list, "typeParameters");
        h.j(classSerialDescriptorBuilder, "builder");
        this.serialName = str;
        this.kind = serialKind;
        this.elementsCount = i10;
        this.annotations = classSerialDescriptorBuilder.getAnnotations();
        List<String> elementNames$kotlinx_serialization_core = classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core();
        h.j(elementNames$kotlinx_serialization_core, "<this>");
        HashSet hashSet = new HashSet(k.p(j.T(elementNames$kotlinx_serialization_core, 12)));
        n.k0(elementNames$kotlinx_serialization_core, hashSet);
        this.serialNames = hashSet;
        int i11 = 0;
        Object[] array = classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core().toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.elementNames = (String[]) array;
        this.elementDescriptors = Platform_commonKt.compactArray(classSerialDescriptorBuilder.getElementDescriptors$kotlinx_serialization_core());
        Object[] array2 = classSerialDescriptorBuilder.getElementAnnotations$kotlinx_serialization_core().toArray(new List[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
        this.elementAnnotations = (List[]) array2;
        List<Boolean> elementOptionality$kotlinx_serialization_core = classSerialDescriptorBuilder.getElementOptionality$kotlinx_serialization_core();
        h.j(elementOptionality$kotlinx_serialization_core, "<this>");
        boolean[] zArr = new boolean[elementOptionality$kotlinx_serialization_core.size()];
        Iterator<Boolean> it = elementOptionality$kotlinx_serialization_core.iterator();
        while (it.hasNext()) {
            zArr[i11] = it.next().booleanValue();
            i11++;
        }
        this.elementOptionality = zArr;
        String[] strArr = this.elementNames;
        h.j(strArr, "<this>");
        u<t> uVar = new u(new gd.h(strArr));
        ArrayList arrayList = new ArrayList(j.T(uVar, 10));
        for (t tVar : uVar) {
            arrayList.add(new e(tVar.f8074b, Integer.valueOf(tVar.f8073a)));
        }
        this.name2Index = z.C(arrayList);
        this.typeParametersDescriptors = Platform_commonKt.compactArray(list);
        this._hashCode$delegate = androidx.lifecycle.o.x(new SerialDescriptorImpl$_hashCode$2(this));
    }

    private final int get_hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (h.c(getSerialName(), serialDescriptor.getSerialName()) && Arrays.equals(this.typeParametersDescriptors, ((SerialDescriptorImpl) obj).typeParametersDescriptors) && getElementsCount() == serialDescriptor.getElementsCount()) {
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
        return this.elementAnnotations[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i10) {
        return this.elementDescriptors[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(String str) {
        h.j(str, "name");
        Integer num = this.name2Index.get(str);
        if (num == null) {
            return -3;
        }
        return num.intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getElementName(int i10) {
        return this.elementNames[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialKind getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public Set<String> getSerialNames() {
        return this.serialNames;
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
        return n.d0(k.w(0, getElementsCount()), ", ", h.B(getSerialName(), "("), ")", new AnonymousClass1(), 24);
    }
}
