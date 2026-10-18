package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends m7.w<x, a> implements q0 {
    private static final x DEFAULT_INSTANCE;
    private static volatile x0<x> PARSER = null;
    public static final int REASON_FIELD_NUMBER = 2;
    public static final int SESSIONIDMSG_FIELD_NUMBER = 1;
    private int reason_;
    private z sessionIDMsg_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<x, a> implements q0 {
        public a() {
            super(x.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: sessions.java */
    public enum b implements m7.y.a {
        MEMORY_FULL(0),
        LOW_BATTERY(1),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7387h;

        b(int i10) {
            this.f7387h = i10;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7387h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        x xVar = new x();
        DEFAULT_INSTANCE = xVar;
        m7.w.w(x.class, xVar);
    }

    public static x A(byte[] bArr) throws m7.z {
        return (x) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\f", new Object[]{"sessionIDMsg_", "reason_"});
            case NEW_MUTABLE_INSTANCE:
                return new x();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<x> bVar = PARSER;
                if (bVar == null) {
                    synchronized (x.class) {
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

    public final b y() {
        b bVar;
        int i10 = this.reason_;
        if (i10 != 0) {
            bVar = i10 != 1 ? null : b.LOW_BATTERY;
        } else {
            bVar = b.MEMORY_FULL;
        }
        return bVar == null ? b.UNRECOGNIZED : bVar;
    }

    public final z z() {
        z zVar = this.sessionIDMsg_;
        return zVar == null ? z.z() : zVar;
    }
}
