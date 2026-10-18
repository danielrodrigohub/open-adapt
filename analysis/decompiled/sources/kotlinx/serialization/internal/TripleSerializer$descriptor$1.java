package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TripleSerializer$descriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public final /* synthetic */ TripleSerializer<A, B, C> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TripleSerializer$descriptor$1(TripleSerializer<A, B, C> tripleSerializer) {
        super(1);
        this.this$0 = tripleSerializer;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildClassSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "first", ((TripleSerializer) this.this$0).aSerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "second", ((TripleSerializer) this.this$0).bSerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "third", ((TripleSerializer) this.this$0).cSerializer.getDescriptor(), null, false, 12, null);
    }
}
