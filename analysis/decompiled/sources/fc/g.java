package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends m7.w<g, a> implements q0 {
    private static final g DEFAULT_INSTANCE;
    public static final int DOUBLETAPFALSEPOSITIVES_FIELD_NUMBER = 2;
    private static volatile x0<g> PARSER = null;
    public static final int TOTALDOUBLETAPCLASSIFICATIONS_FIELD_NUMBER = 1;
    private int doubleTapFalsePositives_;
    private int totalDoubleTapClassifications_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<g, a> implements q0 {
        public a() {
            super(g.DEFAULT_INSTANCE);
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        m7.w.w(g.class, gVar);
    }

    public static g A(byte[] bArr) throws m7.z {
        return (g) m7.w.v(DEFAULT_INSTANCE, bArr);
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
                return new g();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<g> bVar = PARSER;
                if (bVar == null) {
                    synchronized (g.class) {
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

    public final int y() {
        return this.doubleTapFalsePositives_;
    }

    public final int z() {
        return this.totalDoubleTapClassifications_;
    }
}
