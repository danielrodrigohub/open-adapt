package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends m7.w<r, a> implements q0 {
    public static final int DATA_FIELD_NUMBER = 2;
    private static final r DEFAULT_INSTANCE;
    private static volatile x0<r> PARSER = null;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private m7.i data_ = m7.i.f10666i;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<r, a> implements q0 {
        public a() {
            super(r.DEFAULT_INSTANCE);
        }
    }

    static {
        r rVar = new r();
        DEFAULT_INSTANCE = rVar;
        m7.w.w(r.class, rVar);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"timestampOffsetMs_", "data_"});
            case NEW_MUTABLE_INSTANCE:
                return new r();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<r> bVar = PARSER;
                if (bVar == null) {
                    synchronized (r.class) {
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

    public final m7.i y() {
        return this.data_;
    }

    public final int z() {
        return this.timestampOffsetMs_;
    }
}
