package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: messages.java */
/* JADX INFO: loaded from: classes.dex */
public final class s extends m7.w<s, a> implements q0 {
    private static final s DEFAULT_INSTANCE;
    public static final int IMAGE_ID_FIELD_NUMBER = 1;
    private static volatile x0<s> PARSER;
    private int imageId_;

    /* JADX INFO: compiled from: messages.java */
    public static final class a extends m7.w.a<s, a> implements q0 {
        public a() {
            super(s.DEFAULT_INSTANCE);
        }

        public final a m(int i10) {
            k();
            s.x((s) this.f10785i, i10);
            return this;
        }
    }

    static {
        s sVar = new s();
        DEFAULT_INSTANCE = sVar;
        m7.w.w(s.class, sVar);
    }

    public static void x(s sVar, int i10) {
        sVar.imageId_ = i10;
    }

    public static a z() {
        return DEFAULT_INSTANCE.n();
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"imageId_"});
            case NEW_MUTABLE_INSTANCE:
                return new s();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<s> bVar = PARSER;
                if (bVar == null) {
                    synchronized (s.class) {
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
}
