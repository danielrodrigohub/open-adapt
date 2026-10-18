package fc;

import java.util.List;
import java.util.Objects;
import m7.a1;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class s extends m7.w<s, a> implements q0 {
    public static final int DATA_FIELD_NUMBER = 3;
    private static final s DEFAULT_INSTANCE;
    private static volatile x0<s> PARSER = null;
    public static final int SAMPLEFREQUENCYHZ_FIELD_NUMBER = 2;
    public static final int TIMESTAMPOFFSETMS_FIELD_NUMBER = 1;
    private m7.y.d<h> data_ = a1.f10613k;
    private int sampleFrequencyHz_;
    private int timestampOffsetMs_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<s, a> implements q0 {
        public a() {
            super(s.DEFAULT_INSTANCE);
        }
    }

    static {
        s sVar = new s();
        DEFAULT_INSTANCE = sVar;
        m7.w.w(s.class, sVar);
    }

    public static a D() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(s sVar, h hVar) {
        Objects.requireNonNull(sVar);
        m7.y.d<h> dVar = sVar.data_;
        if (!dVar.f()) {
            sVar.data_ = m7.w.t(dVar);
        }
        sVar.data_.add(hVar);
    }

    public static void y(s sVar, int i10) {
        sVar.sampleFrequencyHz_ = i10;
    }

    public static void z(s sVar, int i10) {
        sVar.timestampOffsetMs_ = i10;
    }

    public final List<h> B() {
        return this.data_;
    }

    public final int C() {
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
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u000b\u0003\u001b", new Object[]{"timestampOffsetMs_", "sampleFrequencyHz_", "data_", h.class});
            case NEW_MUTABLE_INSTANCE:
                return new s();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<s> bVar = PARSER;
                if (bVar == null) {
                    synchronized (s.class) {
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
