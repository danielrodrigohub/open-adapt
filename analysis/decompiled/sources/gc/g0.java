package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends m7.w<g0, a> implements q0 {
    private static final g0 DEFAULT_INSTANCE;
    public static final int HW_VERSION_FIELD_NUMBER = 4;
    public static final int MAJOR_VERSION_FIELD_NUMBER = 1;
    public static final int MINOR_VERSION_FIELD_NUMBER = 2;
    private static volatile x0<g0> PARSER = null;
    public static final int REVISION_FIELD_NUMBER = 3;
    private int hwVersion_;
    private int majorVersion_;
    private int minorVersion_;
    private int revision_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<g0, a> implements q0 {
        public a() {
            super(g0.DEFAULT_INSTANCE);
        }
    }

    static {
        g0 g0Var = new g0();
        DEFAULT_INSTANCE = g0Var;
        m7.w.w(g0.class, g0Var);
    }

    public static g0 B(byte[] bArr) throws m7.z {
        return (g0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final int A() {
        return this.revision_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b", new Object[]{"majorVersion_", "minorVersion_", "revision_", "hwVersion_"});
            case NEW_MUTABLE_INSTANCE:
                return new g0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<g0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (g0.class) {
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
        return this.majorVersion_;
    }

    public final int z() {
        return this.minorVersion_;
    }
}
