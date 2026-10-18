package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends m7.w<j0, a> implements q0 {
    public static final int ANIMATION_ID_FIELD_NUMBER = 1;
    private static final j0 DEFAULT_INSTANCE;
    public static final int END_STATUS_FIELD_NUMBER = 4;
    private static volatile x0<j0> PARSER = null;
    public static final int STATE_FIELD_NUMBER = 3;
    public static final int TIME_REMAINING_SEC_FIELD_NUMBER = 2;
    private int animationId_;
    private int endStatus_;
    private int state_;
    private int timeRemainingSec_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<j0, a> implements q0 {
        public a() {
            super(j0.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum b implements m7.y.a {
        USER_ANIMATION_END_STATUS_NOT_SET(0),
        USER_ANIMATION_END_STATUS_TIMEOUT(1),
        USER_ANIMATION_END_STATUS_CANCELED(2),
        USER_ANIMATION_END_STATUS_BATTERY_OVERTEMP(3),
        USER_ANIMATION_END_STATUS_CRITICAL_BATTERY(4),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7990h;

        b(int i10) {
            this.f7990h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return USER_ANIMATION_END_STATUS_NOT_SET;
            }
            if (i10 == 1) {
                return USER_ANIMATION_END_STATUS_TIMEOUT;
            }
            if (i10 == 2) {
                return USER_ANIMATION_END_STATUS_CANCELED;
            }
            if (i10 == 3) {
                return USER_ANIMATION_END_STATUS_BATTERY_OVERTEMP;
            }
            if (i10 != 4) {
                return null;
            }
            return USER_ANIMATION_END_STATUS_CRITICAL_BATTERY;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7990h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum c implements m7.y.a {
        USER_ANIMATION_STATE_RUNNING(0),
        USER_ANIMATION_STATE_STOPPED(1),
        USER_ANIMATION_STATE_QUEUED(2),
        USER_ANIMATION_STATE_INTERRUPTED(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7997h;

        c(int i10) {
            this.f7997h = i10;
        }

        public static c b(int i10) {
            if (i10 == 0) {
                return USER_ANIMATION_STATE_RUNNING;
            }
            if (i10 == 1) {
                return USER_ANIMATION_STATE_STOPPED;
            }
            if (i10 == 2) {
                return USER_ANIMATION_STATE_QUEUED;
            }
            if (i10 != 3) {
                return null;
            }
            return USER_ANIMATION_STATE_INTERRUPTED;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7997h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        j0 j0Var = new j0();
        DEFAULT_INSTANCE = j0Var;
        m7.w.w(j0.class, j0Var);
    }

    public static j0 C(byte[] bArr) throws m7.z {
        return (j0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final c A() {
        c cVarB = c.b(this.state_);
        return cVarB == null ? c.UNRECOGNIZED : cVarB;
    }

    public final int B() {
        return this.timeRemainingSec_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\f\u0004\f", new Object[]{"animationId_", "timeRemainingSec_", "state_", "endStatus_"});
            case NEW_MUTABLE_INSTANCE:
                return new j0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<j0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (j0.class) {
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
        return this.animationId_;
    }

    public final b z() {
        b bVarB = b.b(this.endStatus_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }
}
