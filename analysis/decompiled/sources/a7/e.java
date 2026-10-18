package a7;

import b7.a0;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import java.util.Objects;

/* JADX INFO: compiled from: AesGcmHkdfStreamingKeyFormat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends x<e, a> implements r0 {
    private static final e DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 1;
    private static volatile y0<e> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 3;
    private int keySize_;
    private f params_;
    private int version_;

    /* JADX INFO: compiled from: AesGcmHkdfStreamingKeyFormat.java */
    public static final class a extends x.a<e, a> implements r0 {
        public a() {
            super(e.DEFAULT_INSTANCE);
        }
    }

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        x.w(e.class, eVar);
    }

    public static a C() {
        return DEFAULT_INSTANCE.n();
    }

    public static e D(b7.i iVar, b7.p pVar) throws a0 {
        return (e) x.t(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void y(e eVar, f fVar) {
        Objects.requireNonNull(eVar);
        eVar.params_ = fVar;
    }

    public static void z(e eVar) {
        eVar.keySize_ = 32;
    }

    public final int A() {
        return this.keySize_;
    }

    public final f B() {
        f fVar = this.params_;
        return fVar == null ? f.C() : fVar;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"params_", "keySize_", "version_"});
            case NEW_MUTABLE_INSTANCE:
                return new e();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<e> bVar = PARSER;
                if (bVar == null) {
                    synchronized (e.class) {
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
