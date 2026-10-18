package kotlinx.serialization.internal;

import a0.b;
import gd.i;
import java.lang.Enum;
import java.util.Arrays;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;

/* JADX INFO: compiled from: Enums.kt */
/* JADX INFO: loaded from: classes.dex */
public final class EnumSerializer<T extends Enum<T>> implements KSerializer<T> {
    private final SerialDescriptor descriptor;
    private final T[] values;

    public EnumSerializer(String str, T[] tArr) {
        h.j(str, "serialName");
        h.j(tArr, "values");
        this.values = tArr;
        this.descriptor = SerialDescriptorsKt.buildSerialDescriptor(str, SerialKind.ENUM.INSTANCE, new SerialDescriptor[0], new EnumSerializer$descriptor$1(this, str));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public String toString() {
        StringBuilder sbC = b.c("kotlinx.serialization.internal.EnumSerializer<");
        sbC.append(getDescriptor().getSerialName());
        sbC.append('>');
        return sbC.toString();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        h.j(decoder, "decoder");
        int iDecodeEnum = decoder.decodeEnum(getDescriptor());
        boolean z10 = false;
        if (iDecodeEnum >= 0 && iDecodeEnum <= this.values.length - 1) {
            z10 = true;
        }
        if (z10) {
            return this.values[iDecodeEnum];
        }
        throw new SerializationException(iDecodeEnum + " is not among valid " + getDescriptor().getSerialName() + " enum values, values size is " + this.values.length);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        h.j(t10, "value");
        int iT = i.t(this.values, t10);
        if (iT != -1) {
            encoder.encodeEnum(getDescriptor(), iT);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(t10);
        sb2.append(" is not a valid enum ");
        sb2.append(getDescriptor().getSerialName());
        sb2.append(", must be one of ");
        String string = Arrays.toString(this.values);
        h.i(string, "java.util.Arrays.toString(this)");
        sb2.append(string);
        throw new SerializationException(sb2.toString());
    }
}
