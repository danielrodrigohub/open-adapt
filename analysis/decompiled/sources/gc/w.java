package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class w extends m7.w<w, a> implements q0 {
    private static final w DEFAULT_INSTANCE;
    private static volatile x0<w> PARSER = null;
    public static final int TIMESTAMPMILLIS_FIELD_NUMBER = 1;
    private long timestampMillis_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<w, a> implements q0 {
        public a() {
            super(w.DEFAULT_INSTANCE);
        }
    }

    static {
        w wVar = new w();
        DEFAULT_INSTANCE = wVar;
        m7.w.w(w.class, wVar);
    }

    public static void x(w wVar, long j10) {
        wVar.timestampMillis_ = j10;
    }

    public static a z() {
        return DEFAULT_INSTANCE.n();
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0003", new Object[]{"timestampMillis_"});
            case NEW_MUTABLE_INSTANCE:
                return new w();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<w> bVar = PARSER;
                if (bVar == null) {
                    synchronized (w.class) {
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
}
