package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends m7.w<u, a> implements q0 {
    private static final u DEFAULT_INSTANCE;
    public static final int GYROACCELDATA_FIELD_NUMBER = 2;
    private static volatile x0<u> PARSER = null;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private h gyroAccelData_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<u, a> implements q0 {
        public a() {
            super(u.DEFAULT_INSTANCE);
        }
    }

    static {
        u uVar = new u();
        DEFAULT_INSTANCE = uVar;
        m7.w.w(u.class, uVar);
    }

    public static u A(byte[] bArr) throws m7.z {
        return (u) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"timestampOffsetMs_", "gyroAccelData_"});
            case NEW_MUTABLE_INSTANCE:
                return new u();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<u> bVar = PARSER;
                if (bVar == null) {
                    synchronized (u.class) {
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

    public final h y() {
        h hVar = this.gyroAccelData_;
        return hVar == null ? h.B() : hVar;
    }

    public final int z() {
        return this.timestampOffsetMs_;
    }
}
