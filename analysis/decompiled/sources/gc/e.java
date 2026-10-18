package gc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m7.w<e, a> implements q0 {
    public static final int BYTEOFFSET_FIELD_NUMBER = 2;
    private static final e DEFAULT_INSTANCE;
    public static final int FIRMWAREFILEID_FIELD_NUMBER = 1;
    private static volatile x0<e> PARSER = null;
    public static final int SIZE_FIELD_NUMBER = 3;
    private int byteOffset_;
    private int firmwareFileID_;
    private int size_;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<e, a> implements q0 {
        public a() {
            super(e.DEFAULT_INSTANCE);
        }
    }

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        m7.w.w(e.class, eVar);
    }

    public static a E() {
        return DEFAULT_INSTANCE.n();
    }

    public static e F(byte[] bArr) throws m7.z {
        return (e) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(e eVar, int i10) {
        eVar.byteOffset_ = i10;
    }

    public static void y(e eVar, int i10) {
        eVar.firmwareFileID_ = i10;
    }

    public static void z(e eVar, int i10) {
        eVar.size_ = i10;
    }

    public final int B() {
        return this.byteOffset_;
    }

    public final int C() {
        return this.firmwareFileID_;
    }

    public final int D() {
        return this.size_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b", new Object[]{"firmwareFileID_", "byteOffset_", "size_"});
            case NEW_MUTABLE_INSTANCE:
                return new e();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<e> bVar = PARSER;
                if (bVar == null) {
                    synchronized (e.class) {
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
