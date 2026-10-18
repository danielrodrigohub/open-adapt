package a7;

import b7.a0;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;

/* JADX INFO: compiled from: AesCtrHmacStreamingKeyFormat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends x<b, a> implements r0 {
    private static final b DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 1;
    private static volatile y0<b> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 3;
    private int keySize_;
    private c params_;
    private int version_;

    /* JADX INFO: compiled from: AesCtrHmacStreamingKeyFormat.java */
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

    public static b A(b7.i iVar, b7.p pVar) throws a0 {
        return (b) x.t(DEFAULT_INSTANCE, iVar, pVar);
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

    public final int y() {
        return this.keySize_;
    }

    public final c z() {
        c cVar = this.params_;
        return cVar == null ? c.z() : cVar;
    }
}
