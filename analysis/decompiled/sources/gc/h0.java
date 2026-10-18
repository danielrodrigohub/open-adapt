package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends m7.w<h0, a> implements q0 {
    public static final int BATTERYSTATS_FIELD_NUMBER = 1;
    public static final int BLESTATS_FIELD_NUMBER = 6;
    public static final int CURRENTSTATS_FIELD_NUMBER = 5;
    private static final h0 DEFAULT_INSTANCE;
    public static final int GESTURESTATS_FIELD_NUMBER = 7;
    private static volatile x0<h0> PARSER = null;
    public static final int SERVOSTATS_FIELD_NUMBER = 4;
    public static final int STATESTATS_FIELD_NUMBER = 3;
    public static final int WAKEUPSTATS_FIELD_NUMBER = 2;
    private m batteryStats_;
    private n bleStats_;
    private o currentStats_;
    private t gestureStats_;
    private z servoStats_;
    private f0 stateStats_;
    private m0 wakeupStats_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<h0, a> implements q0 {
        public a() {
            super(h0.DEFAULT_INSTANCE);
        }
    }

    static {
        h0 h0Var = new h0();
        DEFAULT_INSTANCE = h0Var;
        m7.w.w(h0.class, h0Var);
    }

    public static a G() {
        return DEFAULT_INSTANCE.n();
    }

    public static h0 H(byte[] bArr) throws m7.z {
        return (h0) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(h0 h0Var, f0 f0Var) {
        Objects.requireNonNull(h0Var);
        Objects.requireNonNull(f0Var);
        h0Var.stateStats_ = f0Var;
    }

    public final n A() {
        n nVar = this.bleStats_;
        return nVar == null ? n.y() : nVar;
    }

    public final o B() {
        o oVar = this.currentStats_;
        return oVar == null ? o.y() : oVar;
    }

    public final t C() {
        t tVar = this.gestureStats_;
        return tVar == null ? t.y() : tVar;
    }

    public final z D() {
        z zVar = this.servoStats_;
        return zVar == null ? z.B() : zVar;
    }

    public final f0 E() {
        f0 f0Var = this.stateStats_;
        return f0Var == null ? f0.y() : f0Var;
    }

    public final m0 F() {
        m0 m0Var = this.wakeupStats_;
        return m0Var == null ? m0.C() : m0Var;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t", new Object[]{"batteryStats_", "wakeupStats_", "stateStats_", "servoStats_", "currentStats_", "bleStats_", "gestureStats_"});
            case NEW_MUTABLE_INSTANCE:
                return new h0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<h0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (h0.class) {
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

    public final m z() {
        m mVar = this.batteryStats_;
        return mVar == null ? m.C() : mVar;
    }
}
