package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends m7.w<q, a> implements q0 {
    private static final q DEFAULT_INSTANCE;
    private static volatile x0<q> PARSER = null;
    public static final int PUBLICKEY_FIELD_NUMBER = 1;
    private m7.i publicKey_ = m7.i.f10666i;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<q, a> implements q0 {
        public a() {
            super(q.DEFAULT_INSTANCE);
        }
    }

    static {
        q qVar = new q();
        DEFAULT_INSTANCE = qVar;
        m7.w.w(q.class, qVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static q B(byte[] bArr) throws m7.z {
        return (q) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(q qVar, m7.i iVar) {
        Objects.requireNonNull(qVar);
        qVar.publicKey_ = iVar;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"publicKey_"});
            case NEW_MUTABLE_INSTANCE:
                return new q();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<q> bVar = PARSER;
                if (bVar == null) {
                    synchronized (q.class) {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new m7.w.b<>(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                        break;
                    }
                }
                return bVar;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final m7.i z() {
        return this.publicKey_;
    }
}
