package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import wd.b;
import wd.g;

/* JADX INFO: compiled from: Platform.common.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Platform_commonKt {
    private static final SerialDescriptor[] EMPTY_DESCRIPTOR_ARRAY = new SerialDescriptor[0];

    public static final Set<String> cachedSerialNames(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "<this>");
        if (serialDescriptor instanceof CachedNames) {
            return ((CachedNames) serialDescriptor).getSerialNames();
        }
        HashSet hashSet = new HashSet(serialDescriptor.getElementsCount());
        int i10 = 0;
        int elementsCount = serialDescriptor.getElementsCount();
        if (elementsCount > 0) {
            while (true) {
                int i11 = i10 + 1;
                hashSet.add(serialDescriptor.getElementName(i10));
                if (i11 >= elementsCount) {
                    break;
                }
                i10 = i11;
            }
        }
        return hashSet;
    }

    public static final SerialDescriptor[] compactArray(List<? extends SerialDescriptor> list) {
        SerialDescriptor[] serialDescriptorArr = null;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            Object[] array = list.toArray(new SerialDescriptor[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            serialDescriptorArr = (SerialDescriptor[]) array;
        }
        return serialDescriptorArr == null ? EMPTY_DESCRIPTOR_ARRAY : serialDescriptorArr;
    }

    public static final b<Object> kclass(g gVar) {
        h.j(gVar, "<this>");
        b<Object> bVarC = gVar.c();
        if (bVarC instanceof b) {
            return bVarC;
        }
        throw new IllegalStateException(h.B("Only KClass supported as classifier, got ", bVarC).toString());
    }

    public static final Void serializerNotRegistered(b<?> bVar) {
        h.j(bVar, "<this>");
        StringBuilder sbC = a0.b.c("Serializer for class '");
        sbC.append((Object) bVar.a());
        sbC.append("' is not found.\nMark the class as @Serializable or provide the serializer explicitly.");
        throw new SerializationException(sbC.toString());
    }
}
