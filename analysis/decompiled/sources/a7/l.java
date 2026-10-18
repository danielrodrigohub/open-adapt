package a7;

import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import java.util.Objects;

/* JADX INFO: compiled from: KeyTemplate.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends x<l, a> implements r0 {
    private static final l DEFAULT_INSTANCE;
    public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<l> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int outputPrefixType_;
    private String typeUrl_ = "";
    private b7.i value_ = b7.i.f3419i;

    /* JADX INFO: compiled from: KeyTemplate.java */
    public static final class a extends x.a<l, a> implements r0 {
        public a() {
            super(l.DEFAULT_INSTANCE);
        }
    }

    static {
        l lVar = new l();
        DEFAULT_INSTANCE = lVar;
        x.w(l.class, lVar);
    }

    public static void A(l lVar, p pVar) {
        Objects.requireNonNull(lVar);
        lVar.outputPrefixType_ = pVar.a();
    }

    public static a E() {
        return DEFAULT_INSTANCE.n();
    }

    public static void y(l lVar) {
        Objects.requireNonNull(lVar);
        lVar.typeUrl_ = "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey";
    }

    public static void z(l lVar, b7.i iVar) {
        Objects.requireNonNull(lVar);
        lVar.value_ = iVar;
    }

    public final p B() {
        p pVarB = p.b(this.outputPrefixType_);
        return pVarB == null ? p.UNRECOGNIZED : pVarB;
    }

    public final String C() {
        return this.typeUrl_;
    }

    public final b7.i D() {
        return this.value_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "outputPrefixType_"});
            case NEW_MUTABLE_INSTANCE:
                return new l();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<l> bVar = PARSER;
                if (bVar == null) {
                    synchronized (l.class) {
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
