package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends m7.w<m, a> implements q0 {
    public static final int BATTERY_IDLE_PERCENT_FIELD_NUMBER = 8;
    public static final int BATTERY_LACING_PERCENT_FIELD_NUMBER = 7;
    public static final int BATTERY_LATCHED_PERCENT_FIELD_NUMBER = 10;
    public static final int BATTERY_SLEEP_PERCENT_FIELD_NUMBER = 9;
    public static final int CHARGE_CT_FIELD_NUMBER = 4;
    private static final m DEFAULT_INSTANCE;
    public static final int LIFETIME_SEC_FIELD_NUMBER = 3;
    public static final int ON_CHARGER_CT_FIELD_NUMBER = 5;
    private static volatile x0<m> PARSER = null;
    public static final int TIME_CHARGING_SEC_FIELD_NUMBER = 2;
    public static final int TIME_ON_CHARGER_SEC_FIELD_NUMBER = 1;
    public static final int TIME_SLEEPING_SEC_FIELD_NUMBER = 6;
    private int batteryIdlePercent_;
    private int batteryLacingPercent_;
    private int batteryLatchedPercent_;
    private int batterySleepPercent_;
    private int chargeCt_;
    private int lifetimeSec_;
    private int onChargerCt_;
    private int timeChargingSec_;
    private int timeOnChargerSec_;
    private int timeSleepingSec_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<m, a> implements q0 {
        public a() {
            super(m.DEFAULT_INSTANCE);
        }
    }

    static {
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        m7.w.w(m.class, mVar);
    }

    public static m C() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.batterySleepPercent_;
    }

    public final int B() {
        return this.chargeCt_;
    }

    public final int D() {
        return this.lifetimeSec_;
    }

    public final int E() {
        return this.onChargerCt_;
    }

    public final int F() {
        return this.timeChargingSec_;
    }

    public final int G() {
        return this.timeOnChargerSec_;
    }

    public final int H() {
        return this.timeSleepingSec_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\b\u000b\t\u000b\n\u000b", new Object[]{"timeOnChargerSec_", "timeChargingSec_", "lifetimeSec_", "chargeCt_", "onChargerCt_", "timeSleepingSec_", "batteryLacingPercent_", "batteryIdlePercent_", "batterySleepPercent_", "batteryLatchedPercent_"});
            case NEW_MUTABLE_INSTANCE:
                return new m();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<m> bVar = PARSER;
                if (bVar == null) {
                    synchronized (m.class) {
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

    public final int y() {
        return this.batteryIdlePercent_;
    }

    public final int z() {
        return this.batteryLacingPercent_;
    }
}
