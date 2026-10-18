package kotlinx.serialization.descriptors;

import rd.g;
import rd.h;
import rd.x;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class SerialKind {

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class CONTEXTUAL extends SerialKind {
        public static final CONTEXTUAL INSTANCE = new CONTEXTUAL();

        private CONTEXTUAL() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class ENUM extends SerialKind {
        public static final ENUM INSTANCE = new ENUM();

        private ENUM() {
            super(null);
        }
    }

    private SerialKind() {
    }

    public /* synthetic */ SerialKind(h hVar) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String strA = ((g) x.a(getClass())).a();
        p4.h.g(strA);
        return strA;
    }
}
