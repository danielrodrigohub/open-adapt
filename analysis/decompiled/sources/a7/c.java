package a7;

import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;

/* JADX INFO: compiled from: AesCtrHmacStreamingParams.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends x<c, a> implements r0 {
    public static final int CIPHERTEXT_SEGMENT_SIZE_FIELD_NUMBER = 1;
    private static final c DEFAULT_INSTANCE;
    public static final int DERIVED_KEY_SIZE_FIELD_NUMBER = 2;
    public static final int HKDF_HASH_TYPE_FIELD_NUMBER = 3;
    public static final int HMAC_PARAMS_FIELD_NUMBER = 4;
    private static volatile y0<c> PARSER;
    private int ciphertextSegmentSize_;
    private int derivedKeySize_;
    private int hkdfHashType_;
    private i hmacParams_;

    /* JADX INFO: compiled from: AesCtrHmacStreamingParams.java */
    public static final class a extends x.a<c, a> implements r0 {
        public a() {
            super(c.DEFAULT_INSTANCE);
        }
    }

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        x.w(c.class, cVar);
    }

    public static c z() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.derivedKeySize_;
    }

    public final h B() {
        h hVarB = h.b(this.hkdfHashType_);
        return hVarB == null ? h.UNRECOGNIZED : hVarB;
    }

    public final i C() {
        i iVar = this.hmacParams_;
        return iVar == null ? i.y() : iVar;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\f\u0004\t", new Object[]{"ciphertextSegmentSize_", "derivedKeySize_", "hkdfHashType_", "hmacParams_"});
            case NEW_MUTABLE_INSTANCE:
                return new c();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<c> bVar = PARSER;
                if (bVar == null) {
                    synchronized (c.class) {
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

    public final int y() {
        return this.ciphertextSegmentSize_;
    }
}
