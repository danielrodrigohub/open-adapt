package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class t extends m7.w<t, a> implements q0 {
    private static final t DEFAULT_INSTANCE;
    public static final int DOUBLETAPFALSEPOSITIVES_FIELD_NUMBER = 2;
    private static volatile x0<t> PARSER = null;
    public static final int TOTALDOUBLETAPCLASSIFICATIONS_FIELD_NUMBER = 1;
    private int doubleTapFalsePositives_;
    private int totalDoubleTapClassifications_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<t, a> implements q0 {
        public a() {
            super(t.DEFAULT_INSTANCE);
        }
    }

    static {
        t tVar = new t();
        DEFAULT_INSTANCE = tVar;
        m7.w.w(t.class, tVar);
    }

    public static t y() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.totalDoubleTapClassifications_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"totalDoubleTapClassifications_", "doubleTapFalsePositives_"});
            case NEW_MUTABLE_INSTANCE:
                return new t();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<t> bVar = PARSER;
                if (bVar == null) {
                    synchronized (t.class) {
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

    public final int z() {
        return this.doubleTapFalsePositives_;
    }
}
