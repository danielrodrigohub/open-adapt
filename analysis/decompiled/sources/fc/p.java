package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class p extends m7.w<p, a> implements q0 {
    public static final int DATA_FIELD_NUMBER = 2;
    private static final p DEFAULT_INSTANCE;
    private static volatile x0<p> PARSER = null;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private b data_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<p, a> implements q0 {
        public a() {
            super(p.DEFAULT_INSTANCE);
        }
    }

    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        m7.w.w(p.class, pVar);
    }

    public static p A(byte[] bArr) throws m7.z {
        return (p) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"timestampOffsetMs_", "data_"});
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
        b bVar = this.data_;
        return bVar == null ? b.C() : bVar;
    }

    public final int z() {
        return this.timestampOffsetMs_;
    }
}
