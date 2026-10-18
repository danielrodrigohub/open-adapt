package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends m7.w<j, a> implements q0 {
    private static final j DEFAULT_INSTANCE;
    private static volatile x0<j> PARSER = null;
    public static final int RESPONSE_FIELD_NUMBER = 1;
    private int response_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<j, a> implements q0 {
        public a() {
            super(j.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum b implements m7.y.a {
        UNKNOWN(0),
        CRITICAL_BATTERY(1),
        ACTIVE_SESSION(2),
        CONFIG_SET(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7375h;

        b(int i10) {
            this.f7375h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return UNKNOWN;
            }
            if (i10 == 1) {
                return CRITICAL_BATTERY;
            }
            if (i10 == 2) {
                return ACTIVE_SESSION;
            }
            if (i10 != 3) {
                return null;
            }
            return CONFIG_SET;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7375h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        j jVar = new j();
        DEFAULT_INSTANCE = jVar;
        m7.w.w(j.class, jVar);
    }

    public static j z(byte[] bArr) throws m7.z {
        return (j) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"response_"});
            case NEW_MUTABLE_INSTANCE:
                return new j();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<j> bVar = PARSER;
                if (bVar == null) {
                    synchronized (j.class) {
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
        b bVarB = b.b(this.response_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }
}
