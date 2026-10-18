package kotlinx.serialization;

import a0.b;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import p4.h;
import qd.l;
import rd.a0;
import rd.o;

/* JADX INFO: compiled from: PolymorphicSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PolymorphicSerializer$descriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public final /* synthetic */ PolymorphicSerializer<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PolymorphicSerializer$descriptor$1(PolymorphicSerializer<T> polymorphicSerializer) {
        super(1);
        this.this$0 = polymorphicSerializer;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, AnalyticsAttribute.TYPE_ATTRIBUTE, BuiltinSerializersKt.serializer(a0.f14775a).getDescriptor(), null, false, 12, null);
        StringBuilder sbC = b.c("kotlinx.serialization.Polymorphic<");
        sbC.append((Object) this.this$0.getBaseClass().a());
        sbC.append('>');
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "value", SerialDescriptorsKt.buildSerialDescriptor$default(sbC.toString(), SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
    }
}
