package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends m7.w<z, a> implements q0 {
    private static final z DEFAULT_INSTANCE;
    private static volatile x0<z> PARSER = null;
    public static final int SESSIONID_FIELD_NUMBER = 1;
    private int sessionID_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<z, a> implements q0 {
        public a() {
            super(z.DEFAULT_INSTANCE);
        }

        public final a m(int i10) {
            k();
            z.x((z) this.f10785i, i10);
            return this;
        }
    }

    static {
        z zVar = new z();
        DEFAULT_INSTANCE = zVar;
        m7.w.w(z.class, zVar);
    }

    public static a B() {
        return DEFAULT_INSTANCE.n();
    }

    public static z C(byte[] bArr) throws m7.z {
        return (z) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(z zVar, int i10) {
        zVar.sessionID_ = i10;
    }

    public static z z() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.sessionID_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"sessionID_"});
            case NEW_MUTABLE_INSTANCE:
                return new z();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<z> bVar = PARSER;
                if (bVar == null) {
                    synchronized (z.class) {
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
