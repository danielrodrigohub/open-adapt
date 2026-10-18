package kotlinx.serialization.descriptors;

import rd.h;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class PolymorphicKind extends SerialKind {

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class OPEN extends PolymorphicKind {
        public static final OPEN INSTANCE = new OPEN();

        private OPEN() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class SEALED extends PolymorphicKind {
        public static final SEALED INSTANCE = new SEALED();

        private SEALED() {
            super(null);
        }
    }

    private PolymorphicKind() {
        super(null);
    }

    public /* synthetic */ PolymorphicKind(h hVar) {
        this();
    }
}
