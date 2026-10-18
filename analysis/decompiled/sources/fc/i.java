package fc;

import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends m7.w<i, a> implements q0 {
    private static final i DEFAULT_INSTANCE;
    private static volatile x0<i> PARSER = null;
    public static final int X_FIELD_NUMBER = 1;
    public static final int Y_FIELD_NUMBER = 2;
    public static final int Z_FIELD_NUMBER = 3;
    private int x_;
    private int y_;
    private int z_;

    /* JADX INFO: compiled from: sessions.java */
    public static final class a extends m7.w.a<i, a> implements q0 {
        public a() {
            super(i.DEFAULT_INSTANCE);
        }

        public final a m(int i10) {
            k();
            i.x((i) this.f10785i, i10);
            return this;
        }

        public final a n(int i10) {
            k();
            i.y((i) this.f10785i, i10);
            return this;
        }

        public final a o(int i10) {
            k();
            i.z((i) this.f10785i, i10);
            return this;
        }
    }

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        m7.w.w(i.class, iVar);
    }

    public static i B() {
        return DEFAULT_INSTANCE;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static void x(i iVar, int i10) {
        iVar.x_ = i10;
    }

    public static void y(i iVar, int i10) {
        iVar.y_ = i10;
    }

    public static void z(i iVar, int i10) {
        iVar.z_ = i10;
    }

    public final int C() {
        return this.x_;
    }

    public final int D() {
        return this.y_;
    }

    public final int E() {
        return this.z_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004", new Object[]{"x_", "y_", "z_"});
            case NEW_MUTABLE_INSTANCE:
                return new i();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<i> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i.class) {
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
