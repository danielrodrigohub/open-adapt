package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends m7.w<k, a> implements q0 {
    private static final k DEFAULT_INSTANCE;
    public static final int ENCRYPTEDDEVICENONCE_FIELD_NUMBER = 1;
    private static volatile x0<k> PARSER;
    private m7.i encryptedDeviceNonce_ = m7.i.f10666i;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<k, a> implements q0 {
        public a() {
            super(k.DEFAULT_INSTANCE);
        }
    }

    static {
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        m7.w.w(k.class, kVar);
    }

    public static void x(k kVar, m7.i iVar) {
        Objects.requireNonNull(kVar);
        kVar.encryptedDeviceNonce_ = iVar;
    }

    public static a z() {
        return DEFAULT_INSTANCE.n();
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"encryptedDeviceNonce_"});
            case NEW_MUTABLE_INSTANCE:
                return new k();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<k> bVar = PARSER;
                if (bVar == null) {
                    synchronized (k.class) {
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
