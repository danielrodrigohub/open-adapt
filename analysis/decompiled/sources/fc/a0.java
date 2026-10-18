package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends m7.w<a0, a> implements q0 {
    public static final int CRC_FIELD_NUMBER = 4;
    private static final a0 DEFAULT_INSTANCE;
    private static volatile x0<a0> PARSER = null;
    public static final int SESSIONIDMSG_FIELD_NUMBER = 1;
    public static final int SIZE_FIELD_NUMBER = 3;
    public static final int STATE_FIELD_NUMBER = 5;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private int crc_;
    private z sessionIDMsg_;
    private int size_;
    private int state_;
    private long timestamp_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<a0, a> implements q0 {
        public a() {
            super(a0.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum b implements m7.y.a {
        SESSION_INVALID(0),
        SESSION_ENDED(1),
        SESSION_ACTIVE(2),
        SESSION_PAUSED(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7347h;

        b(int i10) {
            this.f7347h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return SESSION_INVALID;
            }
            if (i10 == 1) {
                return SESSION_ENDED;
            }
            if (i10 == 2) {
                return SESSION_ACTIVE;
            }
            if (i10 != 3) {
                return null;
            }
            return SESSION_PAUSED;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7347h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        a0 a0Var = new a0();
        DEFAULT_INSTANCE = a0Var;
        m7.w.w(a0.class, a0Var);
    }

    public static a0 D(byte[] bArr) throws m7.z {
        return (a0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final int A() {
        return this.size_;
    }

    public final b B() {
        b bVarB = b.b(this.state_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    public final long C() {
        return this.timestamp_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\u0003\u0003\u000b\u0004\u000b\u0005\f", new Object[]{"sessionIDMsg_", "timestamp_", "size_", "crc_", "state_"});
            case NEW_MUTABLE_INSTANCE:
                return new a0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<a0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a0.class) {
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
        return this.crc_;
    }

    public final z z() {
        z zVar = this.sessionIDMsg_;
        return zVar == null ? z.z() : zVar;
    }
}
