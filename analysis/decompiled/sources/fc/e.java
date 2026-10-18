package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m7.w<e, a> implements q0 {
    public static final int ACTION_FIELD_NUMBER = 2;
    public static final int CLASSIFICATION_FIELD_NUMBER = 1;
    private static final e DEFAULT_INSTANCE;
    private static volatile x0<e> PARSER;
    private int action_;
    private int classification_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<e, a> implements q0 {
        public a() {
            super(e.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum b implements m7.y.a {
        ACTION_UNKNOWN(0),
        ACTION_NONE(1),
        ACTION_UNLACE(2),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7361h;

        b(int i10) {
            this.f7361h = i10;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7361h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum c implements m7.y.a {
        CLASSIFICATION_UNKNOWN(0),
        CLASSIFICATION_NONE(1),
        CLASSIFICATION_DOUBLETAP(2),
        CLASSIFICATION_DOUBLETAP_TRAINING(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7368h;

        c(int i10) {
            this.f7368h = i10;
        }

        public static c b(int i10) {
            if (i10 == 0) {
                return CLASSIFICATION_UNKNOWN;
            }
            if (i10 == 1) {
                return CLASSIFICATION_NONE;
            }
            if (i10 == 2) {
                return CLASSIFICATION_DOUBLETAP;
            }
            if (i10 != 3) {
                return null;
            }
            return CLASSIFICATION_DOUBLETAP_TRAINING;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7368h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        m7.w.w(e.class, eVar);
    }

    public static e E() {
        return DEFAULT_INSTANCE;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(e eVar, int i10) {
        eVar.action_ = i10;
    }

    public static void y(e eVar, int i10) {
        eVar.classification_ = i10;
    }

    public final b A() {
        b bVar;
        int i10 = this.action_;
        if (i10 == 0) {
            bVar = b.ACTION_UNKNOWN;
        } else if (i10 != 1) {
            bVar = i10 != 2 ? null : b.ACTION_UNLACE;
        } else {
            bVar = b.ACTION_NONE;
        }
        return bVar == null ? b.UNRECOGNIZED : bVar;
    }

    public final int B() {
        return this.action_;
    }

    public final c C() {
        c cVarB = c.b(this.classification_);
        return cVarB == null ? c.UNRECOGNIZED : cVarB;
    }

    public final int D() {
        return this.classification_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\f", new Object[]{"classification_", "action_"});
            case NEW_MUTABLE_INSTANCE:
                return new e();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<e> bVar = PARSER;
                if (bVar == null) {
                    synchronized (e.class) {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new m7.w.b<>(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                        break;
                    }
                }
                return bVar;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
