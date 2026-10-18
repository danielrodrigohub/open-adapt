package kotlinx.serialization.descriptors;

import a0.d;
import gd.p;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p4.h;

/* JADX INFO: compiled from: SerialDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ClassSerialDescriptorBuilder {
    private List<? extends Annotation> annotations;
    private final List<List<Annotation>> elementAnnotations;
    private final List<SerialDescriptor> elementDescriptors;
    private final List<String> elementNames;
    private final List<Boolean> elementOptionality;
    private final String serialName;
    private final Set<String> uniqueNames;

    public ClassSerialDescriptorBuilder(String str) {
        h.j(str, "serialName");
        this.serialName = str;
        this.annotations = p.f8070h;
        this.elementNames = new ArrayList();
        this.uniqueNames = new HashSet();
        this.elementDescriptors = new ArrayList();
        this.elementAnnotations = new ArrayList();
        this.elementOptionality = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void element$default(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String str, SerialDescriptor serialDescriptor, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = p.f8070h;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        classSerialDescriptorBuilder.element(str, serialDescriptor, list, z10);
    }

    public final void element(String str, SerialDescriptor serialDescriptor, List<? extends Annotation> list, boolean z10) {
        h.j(str, "elementName");
        h.j(serialDescriptor, "descriptor");
        h.j(list, "annotations");
        if (!this.uniqueNames.add(str)) {
            throw new IllegalArgumentException(d.c("Element with name '", str, "' is already registered").toString());
        }
        this.elementNames.add(str);
        this.elementDescriptors.add(serialDescriptor);
        this.elementAnnotations.add(list);
        this.elementOptionality.add(Boolean.valueOf(z10));
    }

    public final List<Annotation> getAnnotations() {
        return this.annotations;
    }

    public final List<List<Annotation>> getElementAnnotations$kotlinx_serialization_core() {
        return this.elementAnnotations;
    }

    public final List<SerialDescriptor> getElementDescriptors$kotlinx_serialization_core() {
        return this.elementDescriptors;
    }

    public final List<String> getElementNames$kotlinx_serialization_core() {
        return this.elementNames;
    }

    public final List<Boolean> getElementOptionality$kotlinx_serialization_core() {
        return this.elementOptionality;
    }
}
