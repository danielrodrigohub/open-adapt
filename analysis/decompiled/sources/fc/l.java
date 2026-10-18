package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends m7.w<l, a> implements q0 {
    private static final l DEFAULT_INSTANCE;
    public static final int INTERMEDIATECADENCESPM_FIELD_NUMBER = 3;
    private static volatile x0<l> PARSER = null;
    public static final int SESSIONSTEPCOUNT_FIELD_NUMBER = 2;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private int intermediateCadenceSpm_;
    private int sessionStepCount_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<l, a> implements q0 {
        public a() {
            super(l.DEFAULT_INSTANCE);
        }
    }

    static {
        l lVar = new l();
        DEFAULT_INSTANCE = lVar;
        m7.w.w(l.class, lVar);
    }

    public static l B(byte[] bArr) throws m7.z {
        return (l) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final int A() {
        return this.timestampOffsetMs_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b", new Object[]{"timestampOffsetMs_", "sessionStepCount_", "intermediateCadenceSpm_"});
            case NEW_MUTABLE_INSTANCE:
                return new l();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<l> bVar = PARSER;
                if (bVar == null) {
                    synchronized (l.class) {
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
        return this.intermediateCadenceSpm_;
    }

    public final int z() {
        return this.sessionStepCount_;
    }
}
