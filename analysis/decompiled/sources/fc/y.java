package fc;

import java.util.List;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class y extends m7.w<y, a> implements q0 {
    private static final y DEFAULT_INSTANCE;
    private static volatile x0<y> PARSER = null;
    public static final int SESSIONIDS_FIELD_NUMBER = 1;
    private int sessionIDsMemoizedSerializedSize = -1;
    private m7.y.c sessionIDs_ = m7.x.f10798k;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<y, a> implements q0 {
        public a() {
            super(y.DEFAULT_INSTANCE);
        }
    }

    static {
        y yVar = new y();
        DEFAULT_INSTANCE = yVar;
        m7.w.w(y.class, yVar);
    }

    public static y z(byte[] bArr) throws m7.z {
        return (y) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001+", new Object[]{"sessionIDs_"});
            case NEW_MUTABLE_INSTANCE:
                return new y();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<y> bVar = PARSER;
                if (bVar == null) {
                    synchronized (y.class) {
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

    public final List<Integer> y() {
        return this.sessionIDs_;
    }
}
