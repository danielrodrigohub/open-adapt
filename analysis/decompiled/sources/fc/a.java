package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends m7.w<a, C0142a> implements q0 {
    public static final int ACTIVITY_FIELD_NUMBER = 1;
    private static final a DEFAULT_INSTANCE;
    private static volatile x0<a> PARSER = null;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private int activity_;
    private long timestamp_;

    /* JADX INFO: renamed from: fc.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: sessions.java */
    public static final class C0142a extends m7.w.a<a, C0142a> implements q0 {
        public C0142a() {
            super(a.DEFAULT_INSTANCE);
        }
    }

    static {
        a aVar = new a();
        DEFAULT_INSTANCE = aVar;
        m7.w.w(a.class, aVar);
    }

    public static a z(byte[] bArr) throws m7.z {
        return (a) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0003", new Object[]{"activity_", "timestamp_"});
            case NEW_MUTABLE_INSTANCE:
                return new a();
            case NEW_BUILDER:
                return new C0142a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<a> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a.class) {
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
        return this.activity_;
    }
}
