package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends m7.w<d, a> implements q0 {
    public static final int AUTOADAPTENABLED_FIELD_NUMBER = 1;
    private static final d DEFAULT_INSTANCE;
    private static volatile x0<d> PARSER = null;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private int autoAdaptEnabled_;
    private long timestamp_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<d, a> implements q0 {
        public a() {
            super(d.DEFAULT_INSTANCE);
        }
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        m7.w.w(d.class, dVar);
    }

    public static d z(byte[] bArr) throws m7.z {
        return (d) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u0003", new Object[]{"autoAdaptEnabled_", "timestamp_"});
            case NEW_MUTABLE_INSTANCE:
                return new d();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<d> bVar = PARSER;
                if (bVar == null) {
                    synchronized (d.class) {
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

    public final int y() {
        return this.autoAdaptEnabled_;
    }
}
