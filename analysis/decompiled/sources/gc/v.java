package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends m7.w<v, a> implements q0 {
    private static final v DEFAULT_INSTANCE;
    private static volatile x0<v> PARSER = null;
    public static final int PRODUCTID_FIELD_NUMBER = 1;
    private m7.i productID_ = m7.i.f10666i;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<v, a> implements q0 {
        public a() {
            super(v.DEFAULT_INSTANCE);
        }
    }

    static {
        v vVar = new v();
        DEFAULT_INSTANCE = vVar;
        m7.w.w(v.class, vVar);
    }

    public static v z(byte[] bArr) throws m7.z {
        return (v) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"productID_"});
            case NEW_MUTABLE_INSTANCE:
                return new v();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<v> bVar = PARSER;
                if (bVar == null) {
                    synchronized (v.class) {
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

    public final m7.i y() {
        return this.productID_;
    }
}
