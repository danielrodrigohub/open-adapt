package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends m7.w<b, a> implements q0 {
    public static final int CCVALUE_FIELD_NUMBER = 3;
    private static final b DEFAULT_INSTANCE;
    private static volatile x0<b> PARSER = null;
    public static final int REFERENCEVALUE_FIELD_NUMBER = 2;
    public static final int SIGNALVALUE_FIELD_NUMBER = 1;
    private int ccValue_;
    private int referenceValue_;
    private int signalValue_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<b, a> implements q0 {
        public a() {
            super(b.DEFAULT_INSTANCE);
        }
    }

    static {
        b bVar = new b();
        DEFAULT_INSTANCE = bVar;
        m7.w.w(b.class, bVar);
    }

    public static b C() {
        return DEFAULT_INSTANCE;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(b bVar, int i10) {
        bVar.ccValue_ = i10;
    }

    public static void y(b bVar, int i10) {
        bVar.referenceValue_ = i10;
    }

    public static void z(b bVar, int i10) {
        bVar.signalValue_ = i10;
    }

    public final int B() {
        return this.ccValue_;
    }

    public final int D() {
        return this.referenceValue_;
    }

    public final int E() {
        return this.signalValue_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b", new Object[]{"signalValue_", "referenceValue_", "ccValue_"});
            case NEW_MUTABLE_INSTANCE:
                return new b();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<b> bVar = PARSER;
                if (bVar == null) {
                    synchronized (b.class) {
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
