package a7;

import b7.a0;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import java.util.Objects;

/* JADX INFO: compiled from: AesGcmHkdfStreamingKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends x<d, a> implements r0 {
    private static final d DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<d> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private b7.i keyValue_ = b7.i.f3419i;
    private f params_;
    private int version_;

    /* JADX INFO: compiled from: AesGcmHkdfStreamingKey.java */
    public static final class a extends x.a<d, a> implements r0 {
        public a() {
            super(d.DEFAULT_INSTANCE);
        }
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        x.w(d.class, dVar);
    }

    public static void A(d dVar, b7.i iVar) {
        Objects.requireNonNull(dVar);
        dVar.keyValue_ = iVar;
    }

    public static a E() {
        return DEFAULT_INSTANCE.n();
    }

    public static d F(b7.i iVar, b7.p pVar) throws a0 {
        return (d) x.t(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void y(d dVar) {
        dVar.version_ = 0;
    }

    public static void z(d dVar, f fVar) {
        Objects.requireNonNull(dVar);
        Objects.requireNonNull(fVar);
        dVar.params_ = fVar;
    }

    public final b7.i B() {
        return this.keyValue_;
    }

    public final f C() {
        f fVar = this.params_;
        return fVar == null ? f.C() : fVar;
    }

    public final int D() {
        return this.version_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"version_", "params_", "keyValue_"});
            case NEW_MUTABLE_INSTANCE:
                return new d();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<d> bVar = PARSER;
                if (bVar == null) {
                    synchronized (d.class) {
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
