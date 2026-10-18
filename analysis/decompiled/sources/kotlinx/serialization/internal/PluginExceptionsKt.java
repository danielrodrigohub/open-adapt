package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: PluginExceptions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PluginExceptionsKt {
    public static final void throwMissingFieldException(int i10, int i11, SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        ArrayList arrayList = new ArrayList();
        int i12 = (~i10) & i11;
        int i13 = 0;
        while (true) {
            int i14 = i13 + 1;
            if ((i12 & 1) != 0) {
                arrayList.add(serialDescriptor.getElementName(i13));
            }
            i12 >>>= 1;
            if (i14 >= 32) {
                throw new MissingFieldException(arrayList, serialDescriptor.getSerialName());
            }
            i13 = i14;
        }
    }
}
