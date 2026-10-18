package a7;

import b7.b1;
import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import b7.z;

/* JADX INFO: compiled from: RegistryConfig.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class q extends x<q, a> implements r0 {
    public static final int CONFIG_NAME_FIELD_NUMBER = 1;
    private static final q DEFAULT_INSTANCE;
    public static final int ENTRY_FIELD_NUMBER = 2;
    private static volatile y0<q> PARSER;
    private String configName_ = "";
    private z.c<m> entry_ = b1.f3369k;

    /* JADX INFO: compiled from: RegistryConfig.java */
    public static final class a extends x.a<q, a> implements r0 {
        public a() {
            super(q.DEFAULT_INSTANCE);
        }
    }

    static {
        q qVar = new q();
        DEFAULT_INSTANCE = qVar;
        x.w(q.class, qVar);
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"configName_", "entry_", m.class});
            case NEW_MUTABLE_INSTANCE:
                return new q();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<q> bVar = PARSER;
                if (bVar == null) {
                    synchronized (q.class) {
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
