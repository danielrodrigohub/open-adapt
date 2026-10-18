package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends m7.w<f, a> implements q0 {
    public static final int CONFIG_FIELD_NUMBER = 3;
    private static final f DEFAULT_INSTANCE;
    private static volatile x0<f> PARSER = null;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private e config_;
    private long timestamp_;
    private boolean value_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<f, a> implements q0 {
        public a() {
            super(f.DEFAULT_INSTANCE);
        }
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        m7.w.w(f.class, fVar);
    }

    public static f B(byte[] bArr) throws m7.z {
        return (f) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final boolean A() {
        return this.value_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002\u0007\u0003\t", new Object[]{"timestamp_", "value_", "config_"});
            case NEW_MUTABLE_INSTANCE:
                return new f();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<f> bVar = PARSER;
                if (bVar == null) {
                    synchronized (f.class) {
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

    public final e y() {
        e eVar = this.config_;
        return eVar == null ? e.E() : eVar;
    }

    public final long z() {
        return this.timestamp_;
    }
}
