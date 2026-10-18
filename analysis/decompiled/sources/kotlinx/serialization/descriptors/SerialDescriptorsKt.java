package kotlinx.serialization.descriptors;

import gd.i;
import kotlinx.serialization.internal.PrimitivesKt;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: SerialDescriptors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialDescriptorsKt {

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.SerialDescriptorsKt$buildSerialDescriptor$1, reason: invalid class name */
    /* JADX INFO: compiled from: SerialDescriptors.kt */
    public static final class AnonymousClass1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
            invoke2(classSerialDescriptorBuilder);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
            h.j(classSerialDescriptorBuilder, "$this$null");
        }
    }

    public static final SerialDescriptor PrimitiveSerialDescriptor(String str, PrimitiveKind primitiveKind) {
        h.j(str, "serialName");
        h.j(primitiveKind, "kind");
        if (!yd.o.b0(str)) {
            return PrimitivesKt.PrimitiveDescriptorSafe(str, primitiveKind);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }

    public static final SerialDescriptor buildClassSerialDescriptor(String str, SerialDescriptor[] serialDescriptorArr, l<? super ClassSerialDescriptorBuilder, fd.o> lVar) {
        h.j(str, "serialName");
        h.j(serialDescriptorArr, "typeParameters");
        h.j(lVar, "builderAction");
        if (!(!yd.o.b0(str))) {
            throw new IllegalArgumentException("Blank serial names are prohibited".toString());
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        lVar.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, StructureKind.CLASS.INSTANCE, classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core().size(), i.v(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static final SerialDescriptor buildSerialDescriptor(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr, l<? super ClassSerialDescriptorBuilder, fd.o> lVar) {
        h.j(str, "serialName");
        h.j(serialKind, "kind");
        h.j(serialDescriptorArr, "typeParameters");
        h.j(lVar, "builder");
        if (!(!yd.o.b0(str))) {
            throw new IllegalArgumentException("Blank serial names are prohibited".toString());
        }
        if (!(!h.c(serialKind, StructureKind.CLASS.INSTANCE))) {
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead".toString());
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        lVar.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, serialKind, classSerialDescriptorBuilder.getElementNames$kotlinx_serialization_core().size(), i.v(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static /* synthetic */ SerialDescriptor buildSerialDescriptor$default(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr, l lVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            lVar = AnonymousClass1.INSTANCE;
        }
        return buildSerialDescriptor(str, serialKind, serialDescriptorArr, lVar);
    }
}
