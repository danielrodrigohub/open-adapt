package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends m7.w<o, a> implements q0 {
    private static final o DEFAULT_INSTANCE;
    public static final int HISTO_0_FIELD_NUMBER = 1;
    public static final int HISTO_1_FIELD_NUMBER = 2;
    public static final int HISTO_2_FIELD_NUMBER = 3;
    public static final int HISTO_3_FIELD_NUMBER = 4;
    public static final int HISTO_4_FIELD_NUMBER = 5;
    public static final int HISTO_5_FIELD_NUMBER = 6;
    public static final int HISTO_6_FIELD_NUMBER = 7;
    public static final int HISTO_7_FIELD_NUMBER = 8;
    public static final int HISTO_8_FIELD_NUMBER = 9;
    public static final int HISTO_9_FIELD_NUMBER = 10;
    public static final int MAX_CURRENT_COUNT_FIELD_NUMBER = 11;
    private static volatile x0<o> PARSER;
    private int histo0_;
    private int histo1_;
    private int histo2_;
    private int histo3_;
    private int histo4_;
    private int histo5_;
    private int histo6_;
    private int histo7_;
    private int histo8_;
    private int histo9_;
    private int maxCurrentCount_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<o, a> implements q0 {
        public a() {
            super(o.DEFAULT_INSTANCE);
        }
    }

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        m7.w.w(o.class, oVar);
    }

    public static o y() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.histo1_;
    }

    public final int B() {
        return this.histo2_;
    }

    public final int C() {
        return this.histo3_;
    }

    public final int D() {
        return this.histo4_;
    }

    public final int E() {
        return this.histo5_;
    }

    public final int F() {
        return this.histo6_;
    }

    public final int G() {
        return this.histo7_;
    }

    public final int H() {
        return this.histo8_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\b\u000b\t\u000b\n\u000b\u000b\u000b", new Object[]{"histo0_", "histo1_", "histo2_", "histo3_", "histo4_", "histo5_", "histo6_", "histo7_", "histo8_", "histo9_", "maxCurrentCount_"});
            case NEW_MUTABLE_INSTANCE:
                return new o();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<o> bVar = PARSER;
                if (bVar == null) {
                    synchronized (o.class) {
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
        return this.histo0_;
    }
}
