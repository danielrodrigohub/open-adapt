package kotlinx.serialization.json;

import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import qd.a;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: JsonElementSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonElementSerializer$descriptor$1 extends o implements l<ClassSerialDescriptorBuilder, fd.o> {
    public static final JsonElementSerializer$descriptor$1 INSTANCE = new JsonElementSerializer$descriptor$1();

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElementSerializers.kt */
    public static final class AnonymousClass1 extends o implements a<SerialDescriptor> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        @Override // qd.a
        public final SerialDescriptor invoke() {
            return JsonPrimitiveSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElementSerializers.kt */
    public static final class AnonymousClass2 extends o implements a<SerialDescriptor> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(0);
        }

        @Override // qd.a
        public final SerialDescriptor invoke() {
            return JsonNullSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElementSerializers.kt */
    public static final class AnonymousClass3 extends o implements a<SerialDescriptor> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(0);
        }

        @Override // qd.a
        public final SerialDescriptor invoke() {
            return JsonLiteralSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$4, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElementSerializers.kt */
    public static final class AnonymousClass4 extends o implements a<SerialDescriptor> {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        public AnonymousClass4() {
            super(0);
        }

        @Override // qd.a
        public final SerialDescriptor invoke() {
            return JsonObjectSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$5, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElementSerializers.kt */
    public static final class AnonymousClass5 extends o implements a<SerialDescriptor> {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        public AnonymousClass5() {
            super(0);
        }

        @Override // qd.a
        public final SerialDescriptor invoke() {
            return JsonArraySerializer.INSTANCE.getDescriptor();
        }
    }

    public JsonElementSerializer$descriptor$1() {
        super(1);
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        invoke2(classSerialDescriptorBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        h.j(classSerialDescriptorBuilder, "$this$buildSerialDescriptor");
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonPrimitive", JsonElementSerializersKt.defer(AnonymousClass1.INSTANCE), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonNull", JsonElementSerializersKt.defer(AnonymousClass2.INSTANCE), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonLiteral", JsonElementSerializersKt.defer(AnonymousClass3.INSTANCE), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonObject", JsonElementSerializersKt.defer(AnonymousClass4.INSTANCE), null, false, 12, null);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonArray", JsonElementSerializersKt.defer(AnonymousClass5.INSTANCE), null, false, 12, null);
    }
}
