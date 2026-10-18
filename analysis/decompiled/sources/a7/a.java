package a7;

import b7.a0;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import java.util.Objects;

/* JADX INFO: compiled from: AesCtrHmacStreamingKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends x<a, C0009a> implements r0 {
    private static final a DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile y0<a> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private b7.i keyValue_ = b7.i.f3419i;
    private c params_;
    private int version_;

    /* JADX INFO: renamed from: a7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AesCtrHmacStreamingKey.java */
    public static final class C0009a extends x.a<a, C0009a> implements r0 {
        public C0009a() {
            super(a.DEFAULT_INSTANCE);
        }
    }

    static {
        a aVar = new a();
        DEFAULT_INSTANCE = aVar;
        x.w(a.class, aVar);
    }

    public static void A(a aVar, b7.i iVar) {
        Objects.requireNonNull(aVar);
        aVar.keyValue_ = iVar;
    }

    public static C0009a E() {
        return DEFAULT_INSTANCE.n();
    }

    public static a F(b7.i iVar, b7.p pVar) throws a0 {
        return (a) x.t(DEFAULT_INSTANCE, iVar, pVar);
    }

    public static void y(a aVar) {
        aVar.version_ = 0;
    }

    public static void z(a aVar, c cVar) {
        Objects.requireNonNull(aVar);
        Objects.requireNonNull(cVar);
        aVar.params_ = cVar;
    }

    public final b7.i B() {
        return this.keyValue_;
    }

    public final c C() {
        c cVar = this.params_;
        return cVar == null ? c.z() : cVar;
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
                return new a();
            case NEW_BUILDER:
                return new C0009a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<a> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a.class) {
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
