package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends m7.w<g, a> implements q0 {
    private static final g DEFAULT_INSTANCE;
    private static volatile x0<g> PARSER = null;
    public static final int REASON_FIELD_NUMBER = 1;
    private int reason_;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<g, a> implements q0 {
        public a() {
            super(g.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: firmware.java */
    public enum b implements m7.y.a {
        SUCCESS(0),
        UNKNOWN(1),
        FILE_ERROR(2),
        TIMEOUT(3),
        DATA_CHANGED(4),
        POWERING_DOWN(5),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7982h;

        b(int i10) {
            this.f7982h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return SUCCESS;
            }
            if (i10 == 1) {
                return UNKNOWN;
            }
            if (i10 == 2) {
                return FILE_ERROR;
            }
            if (i10 == 3) {
                return TIMEOUT;
            }
            if (i10 == 4) {
                return DATA_CHANGED;
            }
            if (i10 != 5) {
                return null;
            }
            return POWERING_DOWN;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7982h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        m7.w.w(g.class, gVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static g B(byte[] bArr) throws m7.z {
        return (g) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(g gVar, b bVar) {
        Objects.requireNonNull(gVar);
        gVar.reason_ = bVar.a();
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"reason_"});
            case NEW_MUTABLE_INSTANCE:
                return new g();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<g> bVar = PARSER;
                if (bVar == null) {
                    synchronized (g.class) {
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

    public final b z() {
        b bVarB = b.b(this.reason_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }
}
