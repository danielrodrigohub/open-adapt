package a7;

import b7.a0;
import b7.b1;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import b7.z;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: Keyset.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends x<n, a> implements r0 {
    private static final n DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 2;
    private static volatile y0<n> PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.c<b> key_ = b1.f3369k;
    private int primaryKeyId_;

    /* JADX INFO: compiled from: Keyset.java */
    public static final class a extends x.a<n, a> implements r0 {
        public a() {
            super(n.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: Keyset.java */
    public static final class b extends x<b, a> implements r0 {
        private static final b DEFAULT_INSTANCE;
        public static final int KEY_DATA_FIELD_NUMBER = 1;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile y0<b> PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        private j keyData_;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;

        /* JADX INFO: compiled from: Keyset.java */
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

        public static void A(b bVar) {
            k kVar = k.ENABLED;
            Objects.requireNonNull(bVar);
            bVar.status_ = kVar.a();
        }

        public static void B(b bVar, int i10) {
            bVar.keyId_ = i10;
        }

        public static a H() {
            return DEFAULT_INSTANCE.n();
        }

        public static void y(b bVar, j jVar) {
            Objects.requireNonNull(bVar);
            bVar.keyData_ = jVar;
        }

        public static void z(b bVar, p pVar) {
            Objects.requireNonNull(bVar);
            bVar.outputPrefixType_ = pVar.a();
        }

        public final j C() {
            j jVar = this.keyData_;
            return jVar == null ? j.B() : jVar;
        }

        public final int D() {
            return this.keyId_;
        }

        public final p E() {
            p pVarB = p.b(this.outputPrefixType_);
            return pVarB == null ? p.UNRECOGNIZED : pVarB;
        }

        public final k F() {
            k kVarB = k.b(this.status_);
            return kVarB == null ? k.UNRECOGNIZED : kVarB;
        }

        public final boolean G() {
            return this.keyData_ != null;
        }

        @Override // b7.x
        public final Object o(x.f fVar) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new c1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"keyData_", "status_", "keyId_", "outputPrefixType_"});
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
        n nVar = new n();
        DEFAULT_INSTANCE = nVar;
        x.w(n.class, nVar);
    }

    public static a E() {
        return DEFAULT_INSTANCE.n();
    }

    public static n F(byte[] bArr, b7.p pVar) throws a0 {
        return (n) x.u(DEFAULT_INSTANCE, bArr, pVar);
    }

    public static void y(n nVar, int i10) {
        nVar.primaryKeyId_ = i10;
    }

    public static void z(n nVar, b bVar) {
        Objects.requireNonNull(nVar);
        if (!nVar.key_.f()) {
            z.c<b> cVar = nVar.key_;
            int size = cVar.size();
            nVar.key_ = cVar.b(size == 0 ? 10 : size * 2);
        }
        nVar.key_.add(bVar);
    }

    public final b A(int i10) {
        return this.key_.get(i10);
    }

    public final int B() {
        return this.key_.size();
    }

    public final List<b> C() {
        return this.key_;
    }

    public final int D() {
        return this.primaryKeyId_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "key_", b.class});
            case NEW_MUTABLE_INSTANCE:
                return new n();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<n> bVar = PARSER;
                if (bVar == null) {
                    synchronized (n.class) {
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
