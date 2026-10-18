package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends m7.w<b, a> implements q0 {
    private static final b DEFAULT_INSTANCE;
    public static final int DOWNLOADSUCCESS_FIELD_NUMBER = 2;
    public static final int FIRMWAREFILEID_FIELD_NUMBER = 1;
    private static volatile x0<b> PARSER;
    private int downloadSuccess_;
    private int firmwareFileID_;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<b, a> implements q0 {
        public a() {
            super(b.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: renamed from: gc.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: firmware.java */
    public enum EnumC0159b implements m7.y.a {
        SUCCESS(0),
        FAILED_TIMEOUT(1),
        FAILED_CRC(2),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7951h;

        EnumC0159b(int i10) {
            this.f7951h = i10;
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f7951h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        b bVar = new b();
        DEFAULT_INSTANCE = bVar;
        m7.w.w(b.class, bVar);
    }

    public static b z(byte[] bArr) throws m7.z {
        return (b) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\f", new Object[]{"firmwareFileID_", "downloadSuccess_"});
            case NEW_MUTABLE_INSTANCE:
                return new b();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<b> bVar = PARSER;
                if (bVar == null) {
                    synchronized (b.class) {
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

    public final EnumC0159b y() {
        EnumC0159b enumC0159b;
        int i10 = this.downloadSuccess_;
        if (i10 == 0) {
            enumC0159b = EnumC0159b.SUCCESS;
        } else if (i10 != 1) {
            enumC0159b = i10 != 2 ? null : EnumC0159b.FAILED_CRC;
        } else {
            enumC0159b = EnumC0159b.FAILED_TIMEOUT;
        }
        return enumC0159b == null ? EnumC0159b.UNRECOGNIZED : enumC0159b;
    }
}
