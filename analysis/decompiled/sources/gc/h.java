package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends m7.w<h, a> implements q0 {
    public static final int DATA_FIELD_NUMBER = 1;
    private static final h DEFAULT_INSTANCE;
    private static volatile x0<h> PARSER;
    private m7.i data_ = m7.i.f10666i;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<h, a> implements q0 {
        public a() {
            super(h.DEFAULT_INSTANCE);
        }
    }

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        m7.w.w(h.class, hVar);
    }

    public static h z(byte[] bArr) throws m7.z {
        return (h) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"data_"});
            case NEW_MUTABLE_INSTANCE:
                return new h();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<h> bVar = PARSER;
                if (bVar == null) {
                    synchronized (h.class) {
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
        return this.data_;
    }
}
