package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends m7.w<c0, a> implements q0 {
    private static final c0 DEFAULT_INSTANCE;
    public static final int ENDTIMEOFFSETMS_FIELD_NUMBER = 1;
    private static volatile x0<c0> PARSER;
    private int endTimeOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<c0, a> implements q0 {
        public a() {
            super(c0.DEFAULT_INSTANCE);
        }
    }

    static {
        c0 c0Var = new c0();
        DEFAULT_INSTANCE = c0Var;
        m7.w.w(c0.class, c0Var);
    }

    public static c0 y() {
        return DEFAULT_INSTANCE;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"endTimeOffsetMs_"});
            case NEW_MUTABLE_INSTANCE:
                return new c0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<c0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (c0.class) {
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
