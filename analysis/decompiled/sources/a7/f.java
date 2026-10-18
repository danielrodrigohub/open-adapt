package a7;

import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Objects;

/* JADX INFO: compiled from: AesGcmHkdfStreamingParams.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends x<f, a> implements r0 {
    public static final int CIPHERTEXT_SEGMENT_SIZE_FIELD_NUMBER = 1;
    private static final f DEFAULT_INSTANCE;
    public static final int DERIVED_KEY_SIZE_FIELD_NUMBER = 2;
    public static final int HKDF_HASH_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<f> PARSER;
    private int ciphertextSegmentSize_;
    private int derivedKeySize_;
    private int hkdfHashType_;

    /* JADX INFO: compiled from: AesGcmHkdfStreamingParams.java */
    public static final class a extends x.a<f, a> implements r0 {
        public a() {
            super(f.DEFAULT_INSTANCE);
        }
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        x.w(f.class, fVar);
    }

    public static void A(f fVar) {
        h hVar = h.SHA256;
        Objects.requireNonNull(fVar);
        fVar.hkdfHashType_ = hVar.a();
    }

    public static f C() {
        return DEFAULT_INSTANCE;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static void y(f fVar) {
        fVar.ciphertextSegmentSize_ = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
    }

    public static void z(f fVar) {
        fVar.derivedKeySize_ = 32;
    }

    public final int B() {
        return this.ciphertextSegmentSize_;
    }

    public final int D() {
        return this.derivedKeySize_;
    }

    public final h E() {
        h hVarB = h.b(this.hkdfHashType_);
        return hVarB == null ? h.UNRECOGNIZED : hVarB;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\f", new Object[]{"ciphertextSegmentSize_", "derivedKeySize_", "hkdfHashType_"});
            case NEW_MUTABLE_INSTANCE:
                return new f();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<f> bVar = PARSER;
                if (bVar == null) {
                    synchronized (f.class) {
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
