package gc;

import java.util.List;
import java.util.Objects;
import m7.a1;
import m7.b1;
import m7.q0;
import m7.x0;

/* JADX INFO: compiled from: firmware.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends m7.w<a, C0158a> implements q0 {
    private static final a DEFAULT_INSTANCE;
    public static final int IMAGES_FIELD_NUMBER = 1;
    private static volatile x0<a> PARSER;
    private m7.y.d<c> images_ = a1.f10613k;

    /* JADX INFO: renamed from: gc.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: firmware.java */
    public static final class C0158a extends m7.w.a<a, C0158a> implements q0 {
        public C0158a() {
            super(a.DEFAULT_INSTANCE);
        }
    }

    static {
        a aVar = new a();
        DEFAULT_INSTANCE = aVar;
        m7.w.w(a.class, aVar);
    }

    public static C0158a D() {
        return DEFAULT_INSTANCE.n();
    }

    public static a E(byte[] bArr) throws m7.z {
        return (a) m7.w.v(DEFAULT_INSTANCE, bArr);
    }

    public static void x(a aVar, c cVar) {
        Objects.requireNonNull(aVar);
        m7.y.d<c> dVar = aVar.images_;
        if (!dVar.f()) {
            aVar.images_ = m7.w.t(dVar);
        }
        aVar.images_.add(cVar);
    }

    public static a z() {
        return DEFAULT_INSTANCE;
    }

    public final c A(int i10) {
        return this.images_.get(i10);
    }

    public final int B() {
        return this.images_.size();
    }

    public final List<c> C() {
        return this.images_;
    }

    @Override // m7.w
    public final Object o(m7.w.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new b1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"images_", c.class});
            case NEW_MUTABLE_INSTANCE:
                return new a();
            case NEW_BUILDER:
                return new C0158a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                x0<a> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a.class) {
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
