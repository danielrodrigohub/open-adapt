package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends m7.w<l, a> implements q0 {
    public static final int BATTERYPERCENT_FIELD_NUMBER = 4;
    public static final int BATTERYSTATE_FIELD_NUMBER = 5;
    public static final int BATTERYTEMP_FIELD_NUMBER = 3;
    public static final int BATTERYVOLTAGE_FIELD_NUMBER = 2;
    private static final l DEFAULT_INSTANCE;
    private static volatile x0<l> PARSER = null;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int batteryPercent_;
    private int batteryState_;
    private double batteryTemp_;
    private int batteryVoltage_;
    private int status_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<l, a> implements q0 {
        public a() {
            super(l.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum b implements m7.y.a {
        ON_CHARGER(0),
        OFF_CHARGER(1),
        ON_CHARGING(2),
        CHARGING_ERROR(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8004h;

        b(int i10) {
            this.f8004h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return ON_CHARGER;
            }
            if (i10 == 1) {
                return OFF_CHARGER;
            }
            if (i10 == 2) {
                return ON_CHARGING;
            }
            if (i10 != 3) {
                return null;
            }
            return CHARGING_ERROR;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f8004h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        l lVar = new l();
        DEFAULT_INSTANCE = lVar;
        m7.w.w(l.class, lVar);
    }

    public static l A(byte[] bArr) throws m7.z {
        return (l) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0002\u000b\u0003\u0000\u0004\u000b\u0005\f", new Object[]{"status_", "batteryVoltage_", "batteryTemp_", "batteryPercent_", "batteryState_"});
            case NEW_MUTABLE_INSTANCE:
                return new l();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<l> bVar = PARSER;
                if (bVar == null) {
                    synchronized (l.class) {
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
        return this.batteryPercent_;
    }

    public final b z() {
        b bVarB = b.b(this.status_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }
}
