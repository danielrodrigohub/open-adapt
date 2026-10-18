package a7;

import b7.b1;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import b7.z;
import java.util.Objects;

/* JADX INFO: compiled from: KeysetInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends x<o, a> implements r0 {
    private static final o DEFAULT_INSTANCE;
    public static final int KEY_INFO_FIELD_NUMBER = 2;
    private static volatile y0<o> PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.c<b> keyInfo_ = b1.f3369k;
    private int primaryKeyId_;

    /* JADX INFO: compiled from: KeysetInfo.java */
    public static final class a extends x.a<o, a> implements r0 {
        public a() {
            super(o.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: KeysetInfo.java */
    public static final class b extends x<b, a> implements r0 {
        private static final b DEFAULT_INSTANCE;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile y0<b> PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int TYPE_URL_FIELD_NUMBER = 1;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;
        private String typeUrl_ = "";

        /* JADX INFO: compiled from: KeysetInfo.java */
        public static final class a extends x.a<b, a> implements r0 {
            public a() {
                super(b.DEFAULT_INSTANCE);
            }
        }

        static {
            b bVar = new b();
            DEFAULT_INSTANCE = bVar;
            x.w(b.class, bVar);
        }

        public static void A(b bVar, k kVar) {
            Objects.requireNonNull(bVar);
            bVar.status_ = kVar.a();
        }

        public static void B(b bVar, int i10) {
            bVar.keyId_ = i10;
        }

        public static a D() {
            return DEFAULT_INSTANCE.n();
        }

        public static void y(b bVar, String str) {
            Objects.requireNonNull(bVar);
            Objects.requireNonNull(str);
            bVar.typeUrl_ = str;
        }

        public static void z(b bVar, p pVar) {
            Objects.requireNonNull(bVar);
            bVar.outputPrefixType_ = pVar.a();
        }

        public final int C() {
            return this.keyId_;
        }

        @Override // b7.x
        public final Object o(x.f fVar) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new c1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"typeUrl_", "status_", "keyId_", "outputPrefixType_"});
                case NEW_MUTABLE_INSTANCE:
                    return new b();
                case NEW_BUILDER:
                    return new a();
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    y0<b> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (b.class) {
                            try {
                                bVar = PARSER;
                                if (bVar == null) {
                                    bVar = new x.b<>(DEFAULT_INSTANCE);
                                    PARSER = bVar;
                                }
                            } catch (Throwable th) {
                                throw th;
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

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        x.w(o.class, oVar);
    }

    public static a B() {
        return DEFAULT_INSTANCE.n();
    }

    public static void y(o oVar, int i10) {
        oVar.primaryKeyId_ = i10;
    }

    public static void z(o oVar, b bVar) {
        Objects.requireNonNull(oVar);
        if (!oVar.keyInfo_.f()) {
            z.c<b> cVar = oVar.keyInfo_;
            int size = cVar.size();
            oVar.keyInfo_ = cVar.b(size == 0 ? 10 : size * 2);
        }
        oVar.keyInfo_.add(bVar);
    }

    public final b A() {
        return this.keyInfo_.get(0);
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "keyInfo_", b.class});
            case NEW_MUTABLE_INSTANCE:
                return new o();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<o> bVar = PARSER;
                if (bVar == null) {
                    synchronized (o.class) {
                        try {
                            bVar = PARSER;
                            if (bVar == null) {
                                bVar = new x.b<>(DEFAULT_INSTANCE);
                                PARSER = bVar;
                            }
                        } catch (Throwable th) {
                            throw th;
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
