package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends m7.w<k0, a> implements q0 {
    public static final int ANIMATION_ID_FIELD_NUMBER = 1;
    public static final int BLUE_OUTPUT_FIELD_NUMBER = 4;
    private static final k0 DEFAULT_INSTANCE;
    public static final int ENTER_TIME_MS_FIELD_NUMBER = 6;
    public static final int EXIT_TIME_MS_FIELD_NUMBER = 8;
    public static final int GREEN_OUTPUT_FIELD_NUMBER = 3;
    public static final int OFF_TIME_MS_FIELD_NUMBER = 9;
    public static final int ON_TIME_MS_FIELD_NUMBER = 7;
    private static volatile x0<k0> PARSER = null;
    public static final int PREQUEL_MS_FIELD_NUMBER = 5;
    public static final int RED_OUTPUT_FIELD_NUMBER = 2;
    public static final int SEQUEL_MS_FIELD_NUMBER = 10;
    private int animationId_;
    private int blueOutput_;
    private int enterTimeMs_;
    private int exitTimeMs_;
    private int greenOutput_;
    private int offTimeMs_;
    private int onTimeMs_;
    private int prequelMs_;
    private int redOutput_;
    private int sequelMs_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<k0, a> implements q0 {
        public a() {
            super(k0.DEFAULT_INSTANCE);
        }
    }

    static {
        k0 k0Var = new k0();
        DEFAULT_INSTANCE = k0Var;
        m7.w.w(k0.class, k0Var);
    }

    public static void A(k0 k0Var, int i10) {
        k0Var.exitTimeMs_ = i10;
    }

    public static void B(k0 k0Var, int i10) {
        k0Var.greenOutput_ = i10;
    }

    public static void C(k0 k0Var, int i10) {
        k0Var.offTimeMs_ = i10;
    }

    public static void D(k0 k0Var, int i10) {
        k0Var.onTimeMs_ = i10;
    }

    public static void E(k0 k0Var, int i10) {
        k0Var.prequelMs_ = i10;
    }

    public static void F(k0 k0Var, int i10) {
        k0Var.redOutput_ = i10;
    }

    public static void G(k0 k0Var, int i10) {
        k0Var.sequelMs_ = i10;
    }

    public static a I() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(k0 k0Var, int i10) {
        k0Var.animationId_ = i10;
    }

    public static void y(k0 k0Var, int i10) {
        k0Var.blueOutput_ = i10;
    }

    public static void z(k0 k0Var, int i10) {
        k0Var.enterTimeMs_ = i10;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\b\u000b\t\u000b\n\u000b", new Object[]{"animationId_", "redOutput_", "greenOutput_", "blueOutput_", "prequelMs_", "enterTimeMs_", "onTimeMs_", "exitTimeMs_", "offTimeMs_", "sequelMs_"});
            case NEW_MUTABLE_INSTANCE:
                return new k0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<k0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (k0.class) {
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
