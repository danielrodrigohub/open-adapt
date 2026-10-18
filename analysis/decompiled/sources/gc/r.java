package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends m7.w<r, a> implements q0 {
    public static final int DAY_FIELD_NUMBER = 4;
    private static final r DEFAULT_INSTANCE;
    public static final int DOWNLOADED_IMAGE_SIZE_FIELD_NUMBER = 9;
    public static final int IMAGE_CHECKSUM_FIELD_NUMBER = 10;
    public static final int IMAGE_DATA_CHECKSUM_FIELD_NUMBER = 11;
    public static final int IMAGE_SIZE_FIELD_NUMBER = 8;
    public static final int MAJOR_VERSION_FIELD_NUMBER = 1;
    public static final int MINOR_VERSION_FIELD_NUMBER = 2;
    public static final int MONTH_FIELD_NUMBER = 5;
    private static volatile x0<r> PARSER = null;
    public static final int REVISION_FIELD_NUMBER = 3;
    public static final int STATUS_FIELD_NUMBER = 7;
    public static final int YEAR_FIELD_NUMBER = 6;
    private int day_;
    private int downloadedImageSize_;
    private int imageChecksum_;
    private int imageDataChecksum_;
    private int imageSize_;
    private int majorVersion_;
    private int minorVersion_;
    private int month_;
    private int revision_;
    private int status_;
    private int year_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<r, a> implements q0 {
        public a() {
            super(r.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: messages.java */
    public enum b implements m7.y.a {
        FW_IMG_NOT_INITIALIZED(0),
        FW_IMG_BLANK(1),
        FW_IMG_PARTIAL(2),
        FW_IMG_REJECTED(3),
        FW_IMG_READY(4),
        FW_IMG_CURRENT(5),
        FW_IMG_BAD_CHKSUM(6),
        FW_IMG_UPLOADING(7),
        FW_IMG_NON_FUNC(8),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f8031h;

        b(int i10) {
            this.f8031h = i10;
        }

        public static b b(int i10) {
            switch (i10) {
                case 0:
                    return FW_IMG_NOT_INITIALIZED;
                case 1:
                    return FW_IMG_BLANK;
                case 2:
                    return FW_IMG_PARTIAL;
                case 3:
                    return FW_IMG_REJECTED;
                case 4:
                    return FW_IMG_READY;
                case 5:
                    return FW_IMG_CURRENT;
                case 6:
                    return FW_IMG_BAD_CHKSUM;
                case 7:
                    return FW_IMG_UPLOADING;
                case 8:
                    return FW_IMG_NON_FUNC;
                default:
                    return null;
            }
        }

        @Override // m7.y.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f8031h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        r rVar = new r();
        DEFAULT_INSTANCE = rVar;
        m7.w.w(r.class, rVar);
    }

    public static r G(byte[] bArr) throws m7.z {
        return (r) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public final int A() {
        return this.imageDataChecksum_;
    }

    public final int B() {
        return this.imageSize_;
    }

    public final int C() {
        return this.majorVersion_;
    }

    public final int D() {
        return this.minorVersion_;
    }

    public final int E() {
        return this.revision_;
    }

    public final b F() {
        b bVarB = b.b(this.status_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\f\b\u000b\t\u000b\n\u000b\u000b\u000b", new Object[]{"majorVersion_", "minorVersion_", "revision_", "day_", "month_", "year_", "status_", "imageSize_", "downloadedImageSize_", "imageChecksum_", "imageDataChecksum_"});
            case NEW_MUTABLE_INSTANCE:
                return new r();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<r> bVar = PARSER;
                if (bVar == null) {
                    synchronized (r.class) {
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
        return this.downloadedImageSize_;
    }

    public final int z() {
        return this.imageChecksum_;
    }
}
