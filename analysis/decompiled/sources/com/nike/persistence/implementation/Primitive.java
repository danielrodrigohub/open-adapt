package com.nike.persistence.implementation;

import a0.b;
import androidx.lifecycle.o;
import fd.d;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable
public abstract class Primitive {
    public static final Companion Companion = new Companion();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d<KSerializer<Object>> f5945a = o.w(2, a.f5952h);

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class BooleanPrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f5946b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<BooleanPrimitive> serializer() {
                return Primitive$BooleanPrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ BooleanPrimitive(int i10, boolean z10) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$BooleanPrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5946b = z10;
        }

        public final Boolean b() {
            return Boolean.valueOf(this.f5946b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BooleanPrimitive) && b().booleanValue() == ((BooleanPrimitive) obj).b().booleanValue();
        }

        public final int hashCode() {
            return b().hashCode();
        }

        public final String toString() {
            StringBuilder sbC = b.c("BooleanPrimitive(value=");
            sbC.append(b().booleanValue());
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    public static final class Companion {
        public final KSerializer<Primitive> serializer() {
            return (KSerializer) Primitive.f5945a.getValue();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class DoublePrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f5947b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<DoublePrimitive> serializer() {
                return Primitive$DoublePrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ DoublePrimitive(int i10, double d10) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$DoublePrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5947b = d10;
        }

        public final Double b() {
            return Double.valueOf(this.f5947b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DoublePrimitive) && h.c(b(), ((DoublePrimitive) obj).b());
        }

        public final int hashCode() {
            return b().hashCode();
        }

        public final String toString() {
            StringBuilder sbC = b.c("DoublePrimitive(value=");
            sbC.append(b().doubleValue());
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class FloatPrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f5948b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<FloatPrimitive> serializer() {
                return Primitive$FloatPrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ FloatPrimitive(int i10, float f10) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$FloatPrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5948b = f10;
        }

        public final Float b() {
            return Float.valueOf(this.f5948b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FloatPrimitive) && h.c(b(), ((FloatPrimitive) obj).b());
        }

        public final int hashCode() {
            return b().hashCode();
        }

        public final String toString() {
            StringBuilder sbC = b.c("FloatPrimitive(value=");
            sbC.append(b().floatValue());
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class IntPrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5949b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<IntPrimitive> serializer() {
                return Primitive$IntPrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ IntPrimitive(int i10, int i11) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$IntPrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5949b = i11;
        }

        public final Integer b() {
            return Integer.valueOf(this.f5949b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof IntPrimitive) && b().intValue() == ((IntPrimitive) obj).b().intValue();
        }

        public final int hashCode() {
            return b().hashCode();
        }

        public final String toString() {
            StringBuilder sbC = b.c("IntPrimitive(value=");
            sbC.append(b().intValue());
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class LongPrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f5950b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<LongPrimitive> serializer() {
                return Primitive$LongPrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ LongPrimitive(int i10, long j10) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$LongPrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5950b = j10;
        }

        public final Long b() {
            return Long.valueOf(this.f5950b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LongPrimitive) && b().longValue() == ((LongPrimitive) obj).b().longValue();
        }

        public final int hashCode() {
            return b().hashCode();
        }

        public final String toString() {
            StringBuilder sbC = b.c("LongPrimitive(value=");
            sbC.append(b().longValue());
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    @Serializable
    public static final class StringPrimitive extends Primitive {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f5951b;

        /* JADX INFO: compiled from: Primitive.kt */
        public static final class Companion {
            public final KSerializer<StringPrimitive> serializer() {
                return Primitive$StringPrimitive$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ StringPrimitive(int i10, String str) {
            super(i10, null);
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, Primitive$StringPrimitive$$serializer.INSTANCE.getDescriptor());
            }
            this.f5951b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StringPrimitive) && h.c(this.f5951b, ((StringPrimitive) obj).f5951b);
        }

        public final int hashCode() {
            return this.f5951b.hashCode();
        }

        public final String toString() {
            return a0.d.d(b.c("StringPrimitive(value="), this.f5951b, ')');
        }
    }

    /* JADX INFO: compiled from: Primitive.kt */
    public static final class a extends rd.o implements qd.a<KSerializer<Object>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5952h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final KSerializer<Object> invoke() {
            return new SealedClassSerializer("com.nike.persistence.implementation.Primitive", x.a(Primitive.class), new wd.b[]{x.a(StringPrimitive.class), x.a(IntPrimitive.class), x.a(FloatPrimitive.class), x.a(DoublePrimitive.class), x.a(BooleanPrimitive.class), x.a(LongPrimitive.class)}, new KSerializer[]{Primitive$StringPrimitive$$serializer.INSTANCE, Primitive$IntPrimitive$$serializer.INSTANCE, Primitive$FloatPrimitive$$serializer.INSTANCE, Primitive$DoublePrimitive$$serializer.INSTANCE, Primitive$BooleanPrimitive$$serializer.INSTANCE, Primitive$LongPrimitive$$serializer.INSTANCE});
        }
    }

    public Primitive() {
    }

    public /* synthetic */ Primitive(int i10, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public static final void a(Primitive primitive, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        h.j(primitive, "self");
    }
}
