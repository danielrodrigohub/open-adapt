package kotlinx.serialization;

import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: SealedSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SealedClassSerializer$descriptor$1$elementDescriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public final /* synthetic */ KSerializer<? extends T>[] $subclassSerializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SealedClassSerializer$descriptor$1$elementDescriptor$1(KSerializer<? extends T>[] kSerializerArr) {
        super(1);
        this.$subclassSerializers = kSerializerArr;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildSerialDescriptor");
        for (KSerializer kSerializer : this.$subclassSerializers) {
            SerialDescriptor descriptor = kSerializer.getDescriptor();
            ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, descriptor.getSerialName(), descriptor, null, false, 12, null);
        }
    }
}
