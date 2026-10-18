package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends m7.w<x, a> implements q0 {
    public static final int COMMAND_FIELD_NUMBER = 1;
    private static final x DEFAULT_INSTANCE;
    private static volatile x0<x> PARSER;
    private int command_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<x, a> implements q0 {
        public a() {
            super(x.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum b implements m7.y.a {
        SERVO_HOME(0),
        SERVO_SHORT_SEGMENT_TIGHTEN(1),
        SERVO_LONG_SEGMENT_TIGHTEN(2),
        SERVO_SHORT_SEGMENT_LOOSEN(3),
        SERVO_LONG_SEGMENT_LOOSEN(4),
        SERVO_MAX_TIGHTEN(5),
        SERVO_MAX_LOOSEN(6),
        SERVO_AUTOLACE(7),
        SERVO_STOP(8),
        SERVO_HUG(9),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8050h;

        b(int i10) {
            this.f8050h = i10;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f8050h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        x xVar = new x();
        DEFAULT_INSTANCE = xVar;
        m7.w.w(x.class, xVar);
    }

    public static void x(x xVar, b bVar) {
        Objects.requireNonNull(xVar);
        xVar.command_ = bVar.a();
    }

    public static a z() {
        return DEFAULT_INSTANCE.n();
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"command_"});
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
}
