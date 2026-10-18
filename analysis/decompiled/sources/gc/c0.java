package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends m7.w<c0, a> implements q0 {
    private static final c0 DEFAULT_INSTANCE;
    public static final int DEVICENONCE_FIELD_NUMBER = 2;
    public static final int ENCRYPTEDPHONENONCE_FIELD_NUMBER = 1;
    private static volatile x0<c0> PARSER;
    private m7.i deviceNonce_;
    private m7.i encryptedPhoneNonce_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<c0, a> implements q0 {
        public a() {
            super(c0.DEFAULT_INSTANCE);
        }
    }

    static {
        c0 c0Var = new c0();
        DEFAULT_INSTANCE = c0Var;
        m7.w.w(c0.class, c0Var);
    }

    public c0() {
        m7.i.f fVar = m7.i.f10666i;
        this.encryptedPhoneNonce_ = fVar;
        this.deviceNonce_ = fVar;
    }

    public static c0 z(byte[] bArr) throws m7.z {
        return (c0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"encryptedPhoneNonce_", "deviceNonce_"});
            case NEW_MUTABLE_INSTANCE:
                return new c0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<c0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (c0.class) {
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
        return this.deviceNonce_;
    }
}
