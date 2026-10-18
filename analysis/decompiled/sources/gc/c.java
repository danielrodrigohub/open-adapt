package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends m7.w<c, a> implements q0 {
    public static final int BYTEOFFSET_FIELD_NUMBER = 3;
    public static final int CRC_FIELD_NUMBER = 5;
    private static final c DEFAULT_INSTANCE;
    private static volatile x0<c> PARSER = null;
    public static final int SIZE_FIELD_NUMBER = 4;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int VERSIONSTRING_FIELD_NUMBER = 2;
    private int byteOffset_;
    private int crc_;
    private int size_;
    private int type_;
    private String versionString_ = "";

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<c, a> implements q0 {
        public a() {
            super(c.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: firmware.java */
    public enum b implements m7.y.a {
        MCU(0),
        BLE_RADIO(1),
        CAP_SENSE(2),
        MCU_GOLD(3),
        BLE_GOLD(4),
        ANIMATION_1(5),
        ANIMATION_2(6),
        ANIMATION_3(7),
        ANIMATION_4(8),
        DEBUG(9),
        SENSOR_DATA(10),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7973h;

        b(int i10) {
            this.f7973h = i10;
        }

        public static b b(int i10) {
            switch (i10) {
                case 0:
                    return MCU;
                case 1:
                    return BLE_RADIO;
                case 2:
                    return CAP_SENSE;
                case 3:
                    return MCU_GOLD;
                case 4:
                    return BLE_GOLD;
                case 5:
                    return ANIMATION_1;
                case 6:
                    return ANIMATION_2;
                case 7:
                    return ANIMATION_3;
                case 8:
                    return ANIMATION_4;
                case 9:
                    return DEBUG;
                case 10:
                    return SENSOR_DATA;
                default:
                    return null;
            }
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7973h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        m7.w.w(c.class, cVar);
    }

    public static void A(c cVar) {
        b bVar = b.ANIMATION_1;
        Objects.requireNonNull(cVar);
        cVar.type_ = bVar.a();
    }

    public static void B(c cVar) {
        Objects.requireNonNull(cVar);
        cVar.versionString_ = "1.0.0";
    }

    public static a H() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(c cVar) {
        cVar.byteOffset_ = 0;
    }

    public static void y(c cVar, int i10) {
        cVar.crc_ = i10;
    }

    public static void z(c cVar, int i10) {
        cVar.size_ = i10;
    }

    public final int D() {
        return this.byteOffset_;
    }

    public final int E() {
        return this.size_;
    }

    public final b F() {
        b bVarB = b.b(this.type_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    public final String G() {
        return this.versionString_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003\u0006\u0004\u000b\u0005\u000b", new Object[]{"type_", "versionString_", "byteOffset_", "size_", "crc_"});
            case NEW_MUTABLE_INSTANCE:
                return new c();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<c> bVar = PARSER;
                if (bVar == null) {
                    synchronized (c.class) {
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
