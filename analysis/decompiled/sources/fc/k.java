package fc;

import java.util.List;
import java.util.Objects;
import m7.a1;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends m7.w<k, a> implements q0 {
    public static final int ACTIVITYCLASSIFICATION_FIELD_NUMBER = 6;
    public static final int BATTERYTEMP_FIELD_NUMBER = 8;
    public static final int CS_FIELD_NUMBER = 7;
    private static final k DEFAULT_INSTANCE;
    public static final int FOOTER_FIELD_NUMBER = 5;
    public static final int GESTURE_FIELD_NUMBER = 9;
    public static final int HEADER_FIELD_NUMBER = 1;
    public static final int MEMS_FIELD_NUMBER = 2;
    public static final int METRIC_FIELD_NUMBER = 3;
    private static volatile x0<k> PARSER = null;
    public static final int STEPAGGREGATE_FIELD_NUMBER = 4;
    private m7.y.d<fc.a> activityClassification_;
    private m7.y.d<m> batteryTemp_;
    private m7.y.d<n> cs_;
    private c0 footer_;
    private m7.y.d<q> gesture_;
    private b0 header_;
    private m7.y.d<s> mems_;
    private m7.y.d<v> metric_;
    private m7.y.d<l> stepAggregate_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<k, a> implements q0 {
        public a() {
            super(k.DEFAULT_INSTANCE);
        }
    }

    static {
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        m7.w.w(k.class, kVar);
    }

    public k() {
        a1<Object> a1Var = a1.f10613k;
        this.mems_ = a1Var;
        this.metric_ = a1Var;
        this.stepAggregate_ = a1Var;
        this.activityClassification_ = a1Var;
        this.cs_ = a1Var;
        this.batteryTemp_ = a1Var;
        this.gesture_ = a1Var;
    }

    public static void A(k kVar, n nVar) {
        Objects.requireNonNull(kVar);
        m7.y.d<n> dVar = kVar.cs_;
        if (!dVar.f()) {
            kVar.cs_ = m7.w.t(dVar);
        }
        kVar.cs_.add(nVar);
    }

    public static void B(k kVar, q qVar) {
        Objects.requireNonNull(kVar);
        m7.y.d<q> dVar = kVar.gesture_;
        if (!dVar.f()) {
            kVar.gesture_ = m7.w.t(dVar);
        }
        kVar.gesture_.add(qVar);
    }

    public static void C(k kVar, s sVar) {
        Objects.requireNonNull(kVar);
        m7.y.d<s> dVar = kVar.mems_;
        if (!dVar.f()) {
            kVar.mems_ = m7.w.t(dVar);
        }
        kVar.mems_.add(sVar);
    }

    public static void D(k kVar, c0 c0Var) {
        Objects.requireNonNull(kVar);
        Objects.requireNonNull(c0Var);
        kVar.footer_ = c0Var;
    }

    public static void E(k kVar, b0 b0Var) {
        Objects.requireNonNull(kVar);
        Objects.requireNonNull(b0Var);
        kVar.header_ = b0Var;
    }

    public static a L() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(k kVar, Iterable iterable) {
        m7.y.d<m> dVar = kVar.batteryTemp_;
        if (!dVar.f()) {
            kVar.batteryTemp_ = m7.w.t(dVar);
        }
        m7.a.h(iterable, kVar.batteryTemp_);
    }

    public static void y(k kVar, Iterable iterable) {
        m7.y.d<v> dVar = kVar.metric_;
        if (!dVar.f()) {
            kVar.metric_ = m7.w.t(dVar);
        }
        m7.a.h(iterable, kVar.metric_);
    }

    public static void z(k kVar, Iterable iterable) {
        m7.y.d<l> dVar = kVar.stepAggregate_;
        if (!dVar.f()) {
            kVar.stepAggregate_ = m7.w.t(dVar);
        }
        m7.a.h(iterable, kVar.stepAggregate_);
    }

    public final List<m> G() {
        return this.batteryTemp_;
    }

    public final List<n> H() {
        return this.cs_;
    }

    public final b0 I() {
        b0 b0Var = this.header_;
        return b0Var == null ? b0.y() : b0Var;
    }

    public final List<s> J() {
        return this.mems_;
    }

    public final List<v> K() {
        return this.metric_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0007\u0000\u0001\t\u0002\u001b\u0003\u001b\u0004\u001b\u0005\t\u0006\u001b\u0007\u001b\b\u001b\t\u001b", new Object[]{"header_", "mems_", s.class, "metric_", v.class, "stepAggregate_", l.class, "footer_", "activityClassification_", fc.a.class, "cs_", n.class, "batteryTemp_", m.class, "gesture_", q.class});
            case NEW_MUTABLE_INSTANCE:
                return new k();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<k> bVar = PARSER;
                if (bVar == null) {
                    synchronized (k.class) {
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
