package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends m7.w<e0, a> implements q0 {
    private static final e0 DEFAULT_INSTANCE;
    private static volatile x0<e0> PARSER = null;
    public static final int PHONENONCE_FIELD_NUMBER = 1;
    private m7.i phoneNonce_ = m7.i.f10666i;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<e0, a> implements q0 {
        public a() {
            super(e0.DEFAULT_INSTANCE);
        }
    }

    static {
        e0 e0Var = new e0();
        DEFAULT_INSTANCE = e0Var;
        m7.w.w(e0.class, e0Var);
    }

    public static void x(e0 e0Var, m7.i iVar) {
        Objects.requireNonNull(e0Var);
        e0Var.phoneNonce_ = iVar;
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
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"phoneNonce_"});
            case NEW_MUTABLE_INSTANCE:
                return new e0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<e0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (e0.class) {
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
