package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 extends m7.w<m0, a> implements q0 {
    public static final int BLE_WAKEUP_CT_FIELD_NUMBER = 5;
    public static final int BUTTON_WAKEUP_CT_FIELD_NUMBER = 1;
    public static final int CAPSENSE_WAKEUP_CT_FIELD_NUMBER = 3;
    public static final int CHARGER_WAKEUP_CT_FIELD_NUMBER = 2;
    private static final m0 DEFAULT_INSTANCE;
    public static final int FUEL_GAUGE_WAKEUP_CT_FIELD_NUMBER = 4;
    private static volatile x0<m0> PARSER;
    private int bleWakeupCt_;
    private int buttonWakeupCt_;
    private int capsenseWakeupCt_;
    private int chargerWakeupCt_;
    private int fuelGaugeWakeupCt_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<m0, a> implements q0 {
        public a() {
            super(m0.DEFAULT_INSTANCE);
        }
    }

    static {
        m0 m0Var = new m0();
        DEFAULT_INSTANCE = m0Var;
        m7.w.w(m0.class, m0Var);
    }

    public static m0 C() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.capsenseWakeupCt_;
    }

    public final int B() {
        return this.chargerWakeupCt_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b", new Object[]{"buttonWakeupCt_", "chargerWakeupCt_", "capsenseWakeupCt_", "fuelGaugeWakeupCt_", "bleWakeupCt_"});
            case NEW_MUTABLE_INSTANCE:
                return new m0();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<m0> bVar = PARSER;
                if (bVar == null) {
                    synchronized (m0.class) {
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
        return this.bleWakeupCt_;
    }

    public final int z() {
        return this.buttonWakeupCt_;
    }
}
