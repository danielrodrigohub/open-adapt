package a7;

import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;

/* JADX INFO: compiled from: HmacParams.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends x<i, a> implements r0 {
    private static final i DEFAULT_INSTANCE;
    public static final int HASH_FIELD_NUMBER = 1;
    private static volatile y0<i> PARSER = null;
    public static final int TAG_SIZE_FIELD_NUMBER = 2;
    private int hash_;
    private int tagSize_;

    /* JADX INFO: compiled from: HmacParams.java */
    public static final class a extends x.a<i, a> implements r0 {
        public a() {
            super(i.DEFAULT_INSTANCE);
        }
    }

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        x.w(i.class, iVar);
    }

    public static i y() {
        return DEFAULT_INSTANCE;
    }

    public final int A() {
        return this.tagSize_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"hash_", "tagSize_"});
            case NEW_MUTABLE_INSTANCE:
                return new i();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<i> bVar = PARSER;
                if (bVar == null) {
                    synchronized (i.class) {
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

    public final h z() {
        h hVarB = h.b(this.hash_);
        return hVarB == null ? h.UNRECOGNIZED : hVarB;
    }
}
