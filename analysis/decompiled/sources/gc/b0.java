package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends m7.w<b0, b> implements q0 {
    public static final int BLUE_FIELD_NUMBER = 3;
    public static final int BRIGHTNESS_FIELD_NUMBER = 4;
    private static final b0 DEFAULT_INSTANCE;
    public static final int GREEN_FIELD_NUMBER = 2;
    private static volatile x0<b0> PARSER = null;
    public static final int RED_FIELD_NUMBER = 1;
    private int blue_;
    private int brightness_;
    private int green_;
    private int red_;

    /* JADX INFO: compiled from: messages.java */
    public enum a implements m7.y.a {
        OFF(0),
        LOW(1),
        MEDIUM(2),
        HIGH(3),
        HIGHEST(4),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7959h;

        a(int i10) {
            this.f7959h = i10;
        }

        public static a b(int i10) {
            if (i10 == 0) {
                return OFF;
            }
            if (i10 == 1) {
                return LOW;
            }
            if (i10 == 2) {
                return MEDIUM;
            }
            if (i10 == 3) {
                return HIGH;
            }
            if (i10 != 4) {
                return null;
            }
            return HIGHEST;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7959h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public static final class b extends m7.w.a<b0, b> implements q0 {
        public b() {
            super(b0.DEFAULT_INSTANCE);
        }
    }

    static {
        b0 b0Var = new b0();
        DEFAULT_INSTANCE = b0Var;
        m7.w.w(b0.class, b0Var);
    }

    public static void A(b0 b0Var, int i10) {
        b0Var.red_ = i10;
    }

    public static b G() {
        return DEFAULT_INSTANCE.n();
    }

    public static b0 H(byte[] bArr) throws m7.z {
        return (b0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(b0 b0Var, int i10) {
        b0Var.blue_ = i10;
    }

    public static void y(b0 b0Var, a aVar) {
        Objects.requireNonNull(b0Var);
        b0Var.brightness_ = aVar.a();
    }

    public static void z(b0 b0Var, int i10) {
        b0Var.green_ = i10;
    }

    public final int C() {
        return this.blue_;
    }

    public final a D() {
        a aVarB = a.b(this.brightness_);
        return aVarB == null ? a.UNRECOGNIZED : aVarB;
    }

    public final int E() {
        return this.green_;
    }

    public final int F() {
        return this.red_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\f", new Object[]{"red_", "green_", "blue_", "brightness_"});
            case NEW_MUTABLE_INSTANCE:
                return new b0();
            case NEW_BUILDER:
                return new b();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<b0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (b0.class) {
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
