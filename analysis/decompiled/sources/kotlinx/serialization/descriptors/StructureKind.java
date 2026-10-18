package kotlinx.serialization.descriptors;

import rd.h;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class StructureKind extends SerialKind {

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class CLASS extends StructureKind {
        public static final CLASS INSTANCE = new CLASS();

        private CLASS() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class LIST extends StructureKind {
        public static final LIST INSTANCE = new LIST();

        private LIST() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class MAP extends StructureKind {
        public static final MAP INSTANCE = new MAP();

        private MAP() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class OBJECT extends StructureKind {
        public static final OBJECT INSTANCE = new OBJECT();

        private OBJECT() {
            super(null);
        }
    }

    private StructureKind() {
        super(null);
    }

    public /* synthetic */ StructureKind(h hVar) {
        this();
    }
}
