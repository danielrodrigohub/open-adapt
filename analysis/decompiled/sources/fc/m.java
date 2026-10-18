package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends m7.w<m, a> implements q0 {
    public static final int BATTERYTEMP_FIELD_NUMBER = 2;
    private static final m DEFAULT_INSTANCE;
    private static volatile x0<m> PARSER = null;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private double batteryTemp_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<m, a> implements q0 {
        public a() {
            super(m.DEFAULT_INSTANCE);
        }
    }

    static {
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        m7.w.w(m.class, mVar);
    }

    public static m A(byte[] bArr) throws m7.z {
        return (m) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u0000", new Object[]{"timestampOffsetMs_", "batteryTemp_"});
            case NEW_MUTABLE_INSTANCE:
                return new m();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<m> bVar = PARSER;
                if (bVar == null) {
                    synchronized (m.class) {
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

    public final double y() {
        return this.batteryTemp_;
    }

    public final int z() {
        return this.timestampOffsetMs_;
    }
}
