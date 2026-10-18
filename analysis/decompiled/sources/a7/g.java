package a7;

import b7.a0;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import java.util.Objects;

/* JADX INFO: compiled from: EncryptedKeyset.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends x<g, a> implements r0 {
    private static final g DEFAULT_INSTANCE;
    public static final int ENCRYPTED_KEYSET_FIELD_NUMBER = 2;
    public static final int KEYSET_INFO_FIELD_NUMBER = 3;
    private static volatile y0<g> PARSER;
    private b7.i encryptedKeyset_ = b7.i.f3419i;
    private o keysetInfo_;

    /* JADX INFO: compiled from: EncryptedKeyset.java */
    public static final class a extends x.a<g, a> implements r0 {
        public a() {
            super(g.DEFAULT_INSTANCE);
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        x.w(g.class, gVar);
    }

    public static a B() {
        return DEFAULT_INSTANCE.n();
    }

    public static g C(byte[] bArr, b7.p pVar) throws a0 {
        return (g) x.u(DEFAULT_INSTANCE, bArr, pVar);
    }

    public static void y(g gVar, b7.i iVar) {
        Objects.requireNonNull(gVar);
        gVar.encryptedKeyset_ = iVar;
    }

    public static void z(g gVar, o oVar) {
        Objects.requireNonNull(gVar);
        gVar.keysetInfo_ = oVar;
    }

    public final b7.i A() {
        return this.encryptedKeyset_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\t", new Object[]{"encryptedKeyset_", "keysetInfo_"});
            case NEW_MUTABLE_INSTANCE:
                return new g();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<g> bVar = PARSER;
                if (bVar == null) {
                    synchronized (g.class) {
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
