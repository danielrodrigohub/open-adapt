package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PairSerializer$descriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public final /* synthetic */ KSerializer<K> $keySerializer;
    public final /* synthetic */ KSerializer<V> $valueSerializer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer$descriptor$1(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        super(1);
        this.$keySerializer = kSerializer;
        this.$valueSerializer = kSerializer2;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildClassSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "first", this.$keySerializer.getDescriptor(), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "second", this.$valueSerializer.getDescriptor(), null, false, 12, null);
    }
}
