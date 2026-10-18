package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class y extends m7.w<y, a> implements q0 {
    private static final y DEFAULT_INSTANCE;
    private static volatile x0<y> PARSER = null;
    public static final int POSITIONPERCENTAGE_FIELD_NUMBER = 1;
    private int positionPercentage_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<y, a> implements q0 {
        public a() {
            super(y.DEFAULT_INSTANCE);
        }

        public final a m(int i10) {
            k();
            y.x((y) this.f10785i, i10);
            return this;
        }
    }

    static {
        y yVar = new y();
        DEFAULT_INSTANCE = yVar;
        m7.w.w(y.class, yVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static y B(byte[] bArr) throws m7.z {
        return (y) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(y yVar, int i10) {
        yVar.positionPercentage_ = i10;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"positionPercentage_"});
            case NEW_MUTABLE_INSTANCE:
                return new y();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<y> bVar = PARSER;
                if (bVar == null) {
                    synchronized (y.class) {
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
        return this.positionPercentage_;
    }
}
