package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: Enums.kt */
/* JADX INFO: loaded from: classes.dex */
public final class EnumSerializer$descriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public final /* synthetic */ String $serialName;
    public final /* synthetic */ EnumSerializer<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumSerializer$descriptor$1(EnumSerializer<T> enumSerializer, String str) {
        super(1);
        this.this$0 = enumSerializer;
        this.$serialName = str;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildSerialDescriptor");
        Enum[] enumArr = ((EnumSerializer) this.this$0).values;
        String str = this.$serialName;
        for (Enum r10 : enumArr) {
            ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, r10.name(), SerialDescriptorsKt.buildSerialDescriptor$default(str + '.' + r10.name(), StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
        }
    }
}
