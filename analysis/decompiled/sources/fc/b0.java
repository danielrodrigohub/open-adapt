package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends m7.w<b0, a> implements q0 {
    private static final b0 DEFAULT_INSTANCE;
    private static volatile x0<b0> PARSER = null;
    public static final int SESSIONIDMSG_FIELD_NUMBER = 2;
    public static final int STARTTIMEEPOCHMS_FIELD_NUMBER = 3;
    public static final int VERSION_FIELD_NUMBER = 1;
    private z sessionIDMsg_;
    private long startTimeEpochMs_;
    private int version_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<b0, a> implements q0 {
        public a() {
            super(b0.DEFAULT_INSTANCE);
        }
    }

    static {
        b0 b0Var = new b0();
        DEFAULT_INSTANCE = b0Var;
        m7.w.w(b0.class, b0Var);
    }

    public static b0 y() {
        return DEFAULT_INSTANCE;
    }

    public final long A() {
        return this.startTimeEpochMs_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\u0003", new Object[]{"version_", "sessionIDMsg_", "startTimeEpochMs_"});
            case NEW_MUTABLE_INSTANCE:
                return new b0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<b0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (b0.class) {
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

    public final z z() {
        z zVar = this.sessionIDMsg_;
        return zVar == null ? z.z() : zVar;
    }
}
