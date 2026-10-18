package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends m7.w<o, a> implements q0 {
    public static final int DATA_FIELD_NUMBER = 3;
    private static final o DEFAULT_INSTANCE;
    private static volatile x0<o> PARSER = null;
    public static final int SAMPLEFREQUENCYHZ_FIELD_NUMBER = 2;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private m7.i data_ = m7.i.f10666i;
    private int sampleFrequencyHz_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<o, a> implements q0 {
        public a() {
            super(o.DEFAULT_INSTANCE);
        }
    }

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        m7.w.w(o.class, oVar);
    }

    public final int A() {
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
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\n", new Object[]{"timestampOffsetMs_", "sampleFrequencyHz_", "data_"});
            case NEW_MUTABLE_INSTANCE:
                return new o();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<o> bVar = PARSER;
                if (bVar == null) {
                    synchronized (o.class) {
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
        return this.sampleFrequencyHz_;
    }
}
