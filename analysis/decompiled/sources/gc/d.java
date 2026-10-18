package gc;

import java.util.Objects;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends m7.w<d, a> implements q0 {
    private static final d DEFAULT_INSTANCE;
    public static final int FIRMWAREFILEID_FIELD_NUMBER = 1;
    public static final int HEADER_FIELD_NUMBER = 2;
    private static volatile x0<d> PARSER;
    private int firmwareFileID_;
    private gc.a header_;

    /* JADX INFO: compiled from: firmware.java */
    public static final class a extends m7.w.a<d, a> implements q0 {
        public a() {
            super(d.DEFAULT_INSTANCE);
        }
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        m7.w.w(d.class, dVar);
    }

    public static a C() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(d dVar, int i10) {
        dVar.firmwareFileID_ = i10;
    }

    public static void y(d dVar, gc.a aVar) {
        Objects.requireNonNull(dVar);
        Objects.requireNonNull(aVar);
        dVar.header_ = aVar;
    }

    public final int A() {
        return this.firmwareFileID_;
    }

    public final gc.a B() {
        gc.a aVar = this.header_;
        return aVar == null ? gc.a.z() : aVar;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"firmwareFileID_", "header_"});
            case NEW_MUTABLE_INSTANCE:
                return new d();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<d> bVar = PARSER;
                if (bVar == null) {
                    synchronized (d.class) {
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
