package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends m7.w<j, a> implements q0 {
    private static final j DEFAULT_INSTANCE;
    private static volatile x0<j> PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private String text_ = "";

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<j, a> implements q0 {
        public a() {
            super(j.DEFAULT_INSTANCE);
        }

        public final a m(String str) {
            k();
            j.x((j) this.f10785i, str);
            return this;
        }
    }

    static {
        j jVar = new j();
        DEFAULT_INSTANCE = jVar;
        m7.w.w(j.class, jVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static j B(byte[] bArr) throws m7.z {
        return (j) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(j jVar, String str) {
        Objects.requireNonNull(jVar);
        Objects.requireNonNull(str);
        jVar.text_ = str;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"text_"});
            case NEW_MUTABLE_INSTANCE:
                return new j();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<j> bVar = PARSER;
                if (bVar == null) {
                    synchronized (j.class) {
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

    public final String z() {
        return this.text_;
    }
}
