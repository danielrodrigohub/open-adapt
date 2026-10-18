package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class p extends m7.w<p, a> implements q0 {
    private static final p DEFAULT_INSTANCE;
    public static final int ENDSTATUS_FIELD_NUMBER = 4;
    public static final int ID_FIELD_NUMBER = 1;
    private static volatile x0<p> PARSER = null;
    public static final int STATE_FIELD_NUMBER = 3;
    public static final int TIMEREMAININGMS_FIELD_NUMBER = 2;
    private int endStatus_;
    private int id_;
    private int state_;
    private int timeRemainingMs_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<p, a> implements q0 {
        public a() {
            super(p.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum b implements m7.y.a {
        CUSTOM_ANIMATION_END_STATUS_NOT_SET(0),
        CUSTOM_ANIMATION_END_STATUS_TIMEOUT(1),
        CUSTOM_ANIMATION_END_STATUS_CANCELED(2),
        CUSTOM_ANIMATION_END_STATUS_BATTERY_OVERTEMP(3),
        CUSTOM_ANIMATION_END_STATUS_CRITICAL_BATTERY(4),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8012h;

        b(int i10) {
            this.f8012h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return CUSTOM_ANIMATION_END_STATUS_NOT_SET;
            }
            if (i10 == 1) {
                return CUSTOM_ANIMATION_END_STATUS_TIMEOUT;
            }
            if (i10 == 2) {
                return CUSTOM_ANIMATION_END_STATUS_CANCELED;
            }
            if (i10 == 3) {
                return CUSTOM_ANIMATION_END_STATUS_BATTERY_OVERTEMP;
            }
            if (i10 != 4) {
                return null;
            }
            return CUSTOM_ANIMATION_END_STATUS_CRITICAL_BATTERY;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f8012h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum c implements m7.y.a {
        CUSTOM_ANIMATION_STATE_RUNNING(0),
        CUSTOM_ANIMATION_STATE_STOPPED(1),
        CUSTOM_ANIMATION_STATE_QUEUED(2),
        CUSTOM_ANIMATION_STATE_INTERRUPTED(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8019h;

        c(int i10) {
            this.f8019h = i10;
        }

        public static c b(int i10) {
            if (i10 == 0) {
                return CUSTOM_ANIMATION_STATE_RUNNING;
            }
            if (i10 == 1) {
                return CUSTOM_ANIMATION_STATE_STOPPED;
            }
            if (i10 == 2) {
                return CUSTOM_ANIMATION_STATE_QUEUED;
            }
            if (i10 != 3) {
                return null;
            }
            return CUSTOM_ANIMATION_STATE_INTERRUPTED;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f8019h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        m7.w.w(p.class, pVar);
    }

    public static p C(byte[] bArr) throws m7.z {
        return (p) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final c A() {
        c cVarB = c.b(this.state_);
        return cVarB == null ? c.UNRECOGNIZED : cVarB;
    }

    public final int B() {
        return this.timeRemainingMs_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\f\u0004\f", new Object[]{"id_", "timeRemainingMs_", "state_", "endStatus_"});
            case NEW_MUTABLE_INSTANCE:
                return new p();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<p> bVar = PARSER;
                if (bVar == null) {
                    synchronized (p.class) {
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

    public final b y() {
        b bVarB = b.b(this.endStatus_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    public final int z() {
        return this.id_;
    }
}
