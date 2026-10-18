package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends m7.w<v, a> implements q0 {
    public static final int CONTACTTIME_FIELD_NUMBER = 5;
    public static final int CURRENTSTEPCLASSIFICATION_FIELD_NUMBER = 9;
    private static final v DEFAULT_INSTANCE;
    public static final int FOOTSTRIKETYPE_FIELD_NUMBER = 2;
    public static final int IMPACT_FIELD_NUMBER = 3;
    public static final int IMPULSE_FIELD_NUMBER = 4;
    public static final int LOADINGRATE_FIELD_NUMBER = 10;
    private static volatile x0<v> PARSER = null;
    public static final int STEPLENGTH_FIELD_NUMBER = 8;
    public static final int STEPSPEED_FIELD_NUMBER = 7;
    public static final int SWINGTIME_FIELD_NUMBER = 6;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private int contactTime_;
    private int currentStepClassification_;
    private int footStrikeType_;
    private int impact_;
    private int impulse_;
    private int loadingRate_;
    private int stepLength_;
    private int stepSpeed_;
    private int swingTime_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<v, a> implements q0 {
        public a() {
            super(v.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum b implements m7.y.a {
        UNKNOWN(0),
        TOE(1),
        MID(2),
        HEEL(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7382h;

        b(int i10) {
            this.f7382h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return UNKNOWN;
            }
            if (i10 == 1) {
                return TOE;
            }
            if (i10 == 2) {
                return MID;
            }
            if (i10 != 3) {
                return null;
            }
            return HEEL;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7382h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        v vVar = new v();
        DEFAULT_INSTANCE = vVar;
        m7.w.w(v.class, vVar);
    }

    public static v J(byte[] bArr) throws m7.z {
        return (v) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final int A() {
        return this.currentStepClassification_;
    }

    public final b B() {
        b bVarB = b.b(this.footStrikeType_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    public final int C() {
        return this.impact_;
    }

    public final int D() {
        return this.impulse_;
    }

    public final int E() {
        return this.loadingRate_;
    }

    public final int F() {
        return this.stepLength_;
    }

    public final int G() {
        return this.stepSpeed_;
    }

    public final int H() {
        return this.swingTime_;
    }

    public final int I() {
        return this.timestampOffsetMs_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\f\u0003\u0004\u0004\u0004\u0005\u000b\u0006\u000b\u0007\u000b\b\u000b\t\f\n\u000b", new Object[]{"timestampOffsetMs_", "footStrikeType_", "impact_", "impulse_", "contactTime_", "swingTime_", "stepSpeed_", "stepLength_", "currentStepClassification_", "loadingRate_"});
            case NEW_MUTABLE_INSTANCE:
                return new v();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<v> bVar = PARSER;
                if (bVar == null) {
                    synchronized (v.class) {
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

    public final int y() {
        return this.contactTime_;
    }

    public final d0 z() {
        d0 d0VarB = d0.b(this.currentStepClassification_);
        return d0VarB == null ? d0.UNRECOGNIZED : d0VarB;
    }
}
