package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends m7.w<f0, a> implements q0 {
    private static final f0 DEFAULT_INSTANCE;
    public static final int IDLE_CT_FIELD_NUMBER = 2;
    public static final int LACING_CT_FIELD_NUMBER = 1;
    public static final int LATCHED_CT_FIELD_NUMBER = 4;
    private static volatile x0<f0> PARSER = null;
    public static final int SLEEP_CT_FIELD_NUMBER = 3;
    private int idleCt_;
    private int lacingCt_;
    private int latchedCt_;
    private int sleepCt_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<f0, a> implements q0 {
        public a() {
            super(f0.DEFAULT_INSTANCE);
        }
    }

    static {
        f0 f0Var = new f0();
        DEFAULT_INSTANCE = f0Var;
        m7.w.w(f0.class, f0Var);
    }

    public static f0 y() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.lacingCt_;
    }

    public final int B() {
        return this.latchedCt_;
    }

    public final int C() {
        return this.sleepCt_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b", new Object[]{"lacingCt_", "idleCt_", "sleepCt_", "latchedCt_"});
            case NEW_MUTABLE_INSTANCE:
                return new f0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<f0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (f0.class) {
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
        return this.idleCt_;
    }
}
