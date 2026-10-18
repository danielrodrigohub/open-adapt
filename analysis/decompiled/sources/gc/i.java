package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends m7.w<i, a> implements q0 {
    public static final int BLUE_OUTPUT_FIELD_NUMBER = 4;
    public static final int COLOR_ID_FIELD_NUMBER = 1;
    private static final i DEFAULT_INSTANCE;
    public static final int GREEN_OUTPUT_FIELD_NUMBER = 3;
    private static volatile x0<i> PARSER = null;
    public static final int RED_OUTPUT_FIELD_NUMBER = 2;
    private int blueOutput_;
    private int colorId_;
    private int greenOutput_;
    private int redOutput_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<i, a> implements q0 {
        public a() {
            super(i.DEFAULT_INSTANCE);
        }
    }

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        m7.w.w(i.class, iVar);
    }

    public static void A(i iVar, int i10) {
        iVar.redOutput_ = i10;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static i G(byte[] bArr) throws m7.z {
        return (i) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(i iVar, int i10) {
        iVar.blueOutput_ = i10;
    }

    public static void y(i iVar) {
        iVar.colorId_ = 4;
    }

    public static void z(i iVar, int i10) {
        iVar.greenOutput_ = i10;
    }

    public final int C() {
        return this.blueOutput_;
    }

    public final int D() {
        return this.greenOutput_;
    }

    public final int E() {
        return this.redOutput_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b", new Object[]{"colorId_", "redOutput_", "greenOutput_", "blueOutput_"});
            case NEW_MUTABLE_INSTANCE:
                return new i();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<i> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i.class) {
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
