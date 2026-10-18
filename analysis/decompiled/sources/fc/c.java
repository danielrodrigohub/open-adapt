package fc;

import java.util.List;
import java.util.Objects;
import m7.a1;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends m7.w<c, a> implements q0 {
    public static final int CONFIGURATION_FIELD_NUMBER = 1;
    private static final c DEFAULT_INSTANCE;
    private static volatile x0<c> PARSER;
    private m7.y.d<e> configuration_ = a1.f10613k;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<c, a> implements q0 {
        public a() {
            super(c.DEFAULT_INSTANCE);
        }
    }

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        m7.w.w(c.class, cVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static c B(byte[] bArr) throws m7.z {
        return (c) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(c cVar, e eVar) {
        Objects.requireNonNull(cVar);
        m7.y.d<e> dVar = cVar.configuration_;
        if (!dVar.f()) {
            cVar.configuration_ = m7.w.t(dVar);
        }
        cVar.configuration_.add(eVar);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"configuration_", e.class});
            case NEW_MUTABLE_INSTANCE:
                return new c();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<c> bVar = PARSER;
                if (bVar == null) {
                    synchronized (c.class) {
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

    public final List<e> z() {
        return this.configuration_;
    }
}
