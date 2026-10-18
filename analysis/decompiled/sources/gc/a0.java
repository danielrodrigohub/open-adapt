package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends m7.w<a0, a> implements q0 {
    private static final a0 DEFAULT_INSTANCE;
    private static volatile x0<a0> PARSER = null;
    public static final int POSITIONPERCENTAGE_FIELD_NUMBER = 2;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int positionPercentage_;
    private int status_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<a0, a> implements q0 {
        public a() {
            super(a0.DEFAULT_INSTANCE);
        }
    }

    static {
        a0 a0Var = new a0();
        DEFAULT_INSTANCE = a0Var;
        m7.w.w(a0.class, a0Var);
    }

    public static a0 z(byte[] bArr) throws m7.z {
        return (a0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"status_", "positionPercentage_"});
            case NEW_MUTABLE_INSTANCE:
                return new a0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<a0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a0.class) {
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
        return this.positionPercentage_;
    }
}
