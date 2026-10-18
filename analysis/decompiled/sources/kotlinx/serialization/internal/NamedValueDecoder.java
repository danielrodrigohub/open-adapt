package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Tagged.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class NamedValueDecoder extends TaggedDecoder<String> {
    public abstract String composeName(String str, String str2);

    public abstract String elementName(SerialDescriptor serialDescriptor, int i10);

    public final String nested(String str) {
        h.j(str, "nestedName");
        String currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            currentTagOrNull = "";
        }
        return composeName(currentTagOrNull, str);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final String getTag(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "<this>");
        return nested(elementName(serialDescriptor, i10));
    }
}
