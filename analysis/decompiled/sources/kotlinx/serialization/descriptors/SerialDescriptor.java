package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: SerialDescriptor.kt */
/* JADX INFO: loaded from: classes.dex */
public interface SerialDescriptor {

    /* JADX INFO: compiled from: SerialDescriptor.kt */
    public static final class DefaultImpls {
        public static boolean isInline(SerialDescriptor serialDescriptor) {
            h.j(serialDescriptor, "this");
            return false;
        }

        public static boolean isNullable(SerialDescriptor serialDescriptor) {
            h.j(serialDescriptor, "this");
            return false;
        }
    }

    List<Annotation> getElementAnnotations(int i10);

    SerialDescriptor getElementDescriptor(int i10);

    int getElementIndex(String str);

    String getElementName(int i10);

    int getElementsCount();

    SerialKind getKind();

    String getSerialName();

    boolean isInline();

    boolean isNullable();
}
