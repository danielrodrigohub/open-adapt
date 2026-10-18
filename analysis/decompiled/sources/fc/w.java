package fc;

import java.util.List;
import m7.a1;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class w extends m7.w<w, a> implements q0 {
    public static final int ACTIVITYCLASSIFICATION_FIELD_NUMBER = 6;
    public static final int BATTERYTEMP_FIELD_NUMBER = 8;
    public static final int CS_FIELD_NUMBER = 7;
    private static final w DEFAULT_INSTANCE;
    public static final int FOOTER_FIELD_NUMBER = 5;
    public static final int GESTURE_FIELD_NUMBER = 9;
    public static final int HEADER_FIELD_NUMBER = 1;
    public static final int MEMS_FIELD_NUMBER = 2;
    public static final int METRIC_FIELD_NUMBER = 3;
    private static volatile x0<w> PARSER = null;
    public static final int STEPAGGREGATE_FIELD_NUMBER = 4;
    private m7.y.d<fc.a> activityClassification_;
    private m7.y.d<m> batteryTemp_;
    private m7.y.d<o> cs_;
    private c0 footer_;
    private m7.y.d<r> gesture_;
    private b0 header_;
    private m7.y.d<t> mems_;
    private m7.y.d<v> metric_;
    private m7.y.d<l> stepAggregate_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<w, a> implements q0 {
        public a() {
            super(w.DEFAULT_INSTANCE);
        }
    }

    static {
        w wVar = new w();
        DEFAULT_INSTANCE = wVar;
        m7.w.w(w.class, wVar);
    }

    public w() {
        a1<Object> a1Var = a1.f10613k;
        this.mems_ = a1Var;
        this.metric_ = a1Var;
        this.stepAggregate_ = a1Var;
        this.activityClassification_ = a1Var;
        this.cs_ = a1Var;
        this.batteryTemp_ = a1Var;
        this.gesture_ = a1Var;
    }

    public static w G(byte[] bArr) throws m7.z {
        return (w) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final c0 A() {
        c0 c0Var = this.footer_;
        return c0Var == null ? c0.y() : c0Var;
    }

    public final List<r> B() {
        return this.gesture_;
    }

    public final b0 C() {
        b0 b0Var = this.header_;
        return b0Var == null ? b0.y() : b0Var;
    }

    public final List<t> D() {
        return this.mems_;
    }

    public final List<v> E() {
        return this.metric_;
    }

    public final List<l> F() {
        return this.stepAggregate_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0007\u0000\u0001\t\u0002\u001b\u0003\u001b\u0004\u001b\u0005\t\u0006\u001b\u0007\u001b\b\u001b\t\u001b", new Object[]{"header_", "mems_", t.class, "metric_", v.class, "stepAggregate_", l.class, "footer_", "activityClassification_", fc.a.class, "cs_", o.class, "batteryTemp_", m.class, "gesture_", r.class});
            case NEW_MUTABLE_INSTANCE:
                return new w();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<w> bVar = PARSER;
                if (bVar == null) {
                    synchronized (w.class) {
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

    public final List<m> y() {
        return this.batteryTemp_;
    }

    public final List<o> z() {
        return this.cs_;
    }
}
