package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends m7.w<d0, a> implements q0 {
    private static final d0 DEFAULT_INSTANCE;
    public static final int MODPGROUPNUMBER_FIELD_NUMBER = 1;
    private static volatile x0<d0> PARSER;
    private int modpGroupNumber_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<d0, a> implements q0 {
        public a() {
            super(d0.DEFAULT_INSTANCE);
        }
    }

    static {
        d0 d0Var = new d0();
        DEFAULT_INSTANCE = d0Var;
        m7.w.w(d0.class, d0Var);
    }

    public static d0 z(byte[] bArr) throws m7.z {
        return (d0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"modpGroupNumber_"});
            case NEW_MUTABLE_INSTANCE:
                return new d0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<d0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (d0.class) {
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
        return this.modpGroupNumber_;
    }
}
