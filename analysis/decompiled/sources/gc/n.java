package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends m7.w<n, a> implements q0 {
    private static final n DEFAULT_INSTANCE;
    private static volatile x0<n> PARSER = null;
    public static final int TIME_CONNECTED_SEC_FIELD_NUMBER = 1;
    public static final int TIME_CONNECTED_TO_CURRENT_DEVICE_SEC_FIELD_NUMBER = 2;
    private int timeConnectedSec_;
    private int timeConnectedToCurrentDeviceSec_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<n, a> implements q0 {
        public a() {
            super(n.DEFAULT_INSTANCE);
        }
    }

    static {
        n nVar = new n();
        DEFAULT_INSTANCE = nVar;
        m7.w.w(n.class, nVar);
    }

    public static n y() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.timeConnectedToCurrentDeviceSec_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"timeConnectedSec_", "timeConnectedToCurrentDeviceSec_"});
            case NEW_MUTABLE_INSTANCE:
                return new n();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<n> bVar = PARSER;
                if (bVar == null) {
                    synchronized (n.class) {
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
        return this.timeConnectedSec_;
    }
}
