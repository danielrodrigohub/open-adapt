package kotlinx.serialization.json.internal;

import fd.j;
import fd.k;
import fd.l;
import fd.m;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: StreamingJsonEncoder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingJsonEncoderKt {
    private static final Set<SerialDescriptor> unsignedNumberDescriptors;

    static {
        SerialDescriptor[] serialDescriptorArr = {BuiltinSerializersKt.serializer(k.f7402i).getDescriptor(), BuiltinSerializersKt.serializer(l.f7404i).getDescriptor(), BuiltinSerializersKt.serializer(j.f7400i).getDescriptor(), BuiltinSerializersKt.serializer(m.f7406i).getDescriptor()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(androidx.activity.k.p(4));
        for (int i10 = 0; i10 < 4; i10++) {
            linkedHashSet.add(serialDescriptorArr[i10]);
        }
        unsignedNumberDescriptors = linkedHashSet;
    }

    public static final boolean isUnsignedNumber(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "<this>");
        return serialDescriptor.isInline() && unsignedNumberDescriptors.contains(serialDescriptor);
    }
}
