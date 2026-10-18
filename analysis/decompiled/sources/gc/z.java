package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends m7.w<z, a> implements q0 {
    public static final int AUTOLACE_LOOSEN_CT_FIELD_NUMBER = 9;
    public static final int AUTOLACE_TIGHTEN_CT_FIELD_NUMBER = 8;
    public static final int BLE_MANUAL_LOOSEN_CT_FIELD_NUMBER = 5;
    public static final int BLE_MANUAL_TIGHTEN_CT_FIELD_NUMBER = 4;
    public static final int BLE_SERVO_FAULT_CT_FIELD_NUMBER = 10;
    public static final int BUTTON_MANUAL_LOOSEN_CT_FIELD_NUMBER = 7;
    public static final int BUTTON_MANUAL_TIGHTEN_CT_FIELD_NUMBER = 6;
    public static final int BUTTON_SERVO_FAULT_CT_FIELD_NUMBER = 11;
    private static final z DEFAULT_INSTANCE;
    public static final int HOMING_ROUTINE_CT_FIELD_NUMBER = 3;
    public static final int IDLE_TIME_SEC_FIELD_NUMBER = 1;
    public static final int LACED_TIME_SEC_FIELD_NUMBER = 2;
    public static final int LOOSEN_SPOOL_DEG_FIELD_NUMBER = 15;
    public static final int MAX_TIGHTEN_CT_FIELD_NUMBER = 12;
    public static final int OVER_CURRENT_EVENT_CT_FIELD_NUMBER = 16;
    private static volatile x0<z> PARSER = null;
    public static final int PRESET_CHANGE_CT_FIELD_NUMBER = 13;
    public static final int TIGHTEN_SPOOL_DEG_FIELD_NUMBER = 14;
    private int autolaceLoosenCt_;
    private int autolaceTightenCt_;
    private int bLEManualLoosenCt_;
    private int bLEManualTightenCt_;
    private int bLEServoFaultCt_;
    private int buttonManualLoosenCt_;
    private int buttonManualTightenCt_;
    private int buttonServoFaultCt_;
    private int homingRoutineCt_;
    private int idleTimeSec_;
    private int lacedTimeSec_;
    private int loosenSpoolDeg_;
    private int maxTightenCt_;
    private int overCurrentEventCt_;
    private int presetChangeCt_;
    private int tightenSpoolDeg_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<z, a> implements q0 {
        public a() {
            super(z.DEFAULT_INSTANCE);
        }
    }

    static {
        z zVar = new z();
        DEFAULT_INSTANCE = zVar;
        m7.w.w(z.class, zVar);
    }

    public static z B() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.buttonManualTightenCt_;
    }

    public final int C() {
        return this.idleTimeSec_;
    }

    public final int D() {
        return this.lacedTimeSec_;
    }

    public final int E() {
        return this.loosenSpoolDeg_;
    }

    public final int F() {
        return this.maxTightenCt_;
    }

    public final int G() {
        return this.presetChangeCt_;
    }

    public final int H() {
        return this.tightenSpoolDeg_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0010\u0000\u0000\u0001\u0010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\b\u000b\t\u000b\n\u000b\u000b\u000b\f\u000b\r\u000b\u000e\u000b\u000f\u000b\u0010\u000b", new Object[]{"idleTimeSec_", "lacedTimeSec_", "homingRoutineCt_", "bLEManualTightenCt_", "bLEManualLoosenCt_", "buttonManualTightenCt_", "buttonManualLoosenCt_", "autolaceTightenCt_", "autolaceLoosenCt_", "bLEServoFaultCt_", "buttonServoFaultCt_", "maxTightenCt_", "presetChangeCt_", "tightenSpoolDeg_", "loosenSpoolDeg_", "overCurrentEventCt_"});
            case NEW_MUTABLE_INSTANCE:
                return new z();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<z> bVar = PARSER;
                if (bVar == null) {
                    synchronized (z.class) {
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
        return this.autolaceTightenCt_;
    }

    public final int z() {
        return this.buttonManualLoosenCt_;
    }
}
