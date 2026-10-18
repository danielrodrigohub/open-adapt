package fc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends m7.w<h, a> implements q0 {
    public static final int ACCELDATA_FIELD_NUMBER = 1;
    private static final h DEFAULT_INSTANCE;
    public static final int GYRODATA_FIELD_NUMBER = 2;
    private static volatile x0<h> PARSER;
    private i accelData_;
    private i gyroData_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<h, a> implements q0 {
        public a() {
            super(h.DEFAULT_INSTANCE);
        }
    }

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        m7.w.w(h.class, hVar);
    }

    public static h B() {
        return DEFAULT_INSTANCE;
    }

    public static a D() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(h hVar, i iVar) {
        Objects.requireNonNull(hVar);
        hVar.accelData_ = iVar;
    }

    public static void y(h hVar, i iVar) {
        Objects.requireNonNull(hVar);
        hVar.gyroData_ = iVar;
    }

    public final i A() {
        i iVar = this.accelData_;
        return iVar == null ? i.B() : iVar;
    }

    public final i C() {
        i iVar = this.gyroData_;
        return iVar == null ? i.B() : iVar;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"accelData_", "gyroData_"});
            case NEW_MUTABLE_INSTANCE:
                return new h();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<h> bVar = PARSER;
                if (bVar == null) {
                    synchronized (h.class) {
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
