package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends m7.w<i0, a> implements q0 {
    private static final i0 DEFAULT_INSTANCE;
    private static volatile x0<i0> PARSER = null;
    public static final int TURNFPSON_FIELD_NUMBER = 1;
    private boolean turnFpsOn_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<i0, a> implements q0 {
        public a() {
            super(i0.DEFAULT_INSTANCE);
        }
    }

    static {
        i0 i0Var = new i0();
        DEFAULT_INSTANCE = i0Var;
        m7.w.w(i0.class, i0Var);
    }

    public static void x(i0 i0Var, boolean z10) {
        i0Var.turnFpsOn_ = z10;
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
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007", new Object[]{"turnFpsOn_"});
            case NEW_MUTABLE_INSTANCE:
                return new i0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<i0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i0.class) {
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
