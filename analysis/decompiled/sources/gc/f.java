package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends m7.w<f, a> implements q0 {
    private static final f DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 1;
    private static volatile x0<f> PARSER;
    private int index_;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<f, a> implements q0 {
        public a() {
            super(f.DEFAULT_INSTANCE);
        }

        public final a m(int i10) {
            k();
            f.x((f) this.f10785i, i10);
            return this;
        }
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        m7.w.w(f.class, fVar);
    }

    public static a A() {
        return DEFAULT_INSTANCE.n();
    }

    public static f B(byte[] bArr) throws m7.z {
        return (f) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(f fVar, int i10) {
        fVar.index_ = i10;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"index_"});
            case NEW_MUTABLE_INSTANCE:
                return new f();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<f> bVar = PARSER;
                if (bVar == null) {
                    synchronized (f.class) {
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

    public final int z() {
        return this.index_;
    }
}
