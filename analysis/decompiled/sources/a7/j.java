package a7;

import b7.c1;
import b7.r0;
import b7.x;
import b7.y0;
import b7.z;
import java.util.Objects;

/* JADX INFO: compiled from: KeyData.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends x<j, a> implements r0 {
    private static final j DEFAULT_INSTANCE;
    public static final int KEY_MATERIAL_TYPE_FIELD_NUMBER = 3;
    private static volatile y0<j> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int keyMaterialType_;
    private String typeUrl_ = "";
    private b7.i value_ = b7.i.f3419i;

    /* JADX INFO: compiled from: KeyData.java */
    public static final class a extends x.a<j, a> implements r0 {
        public a() {
            super(j.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: KeyData.java */
    public enum b implements z.a {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f471h;

        b(int i10) {
            this.f471h = i10;
        }

        public static b b(int i10) {
            if (i10 == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i10 == 1) {
                return SYMMETRIC;
            }
            if (i10 == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i10 == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i10 != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // b7.z.a
        public final int a() {
            if (this != UNRECOGNIZED) {
                return this.f471h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        j jVar = new j();
        DEFAULT_INSTANCE = jVar;
        x.w(j.class, jVar);
    }

    public static void A(j jVar, b bVar) {
        Objects.requireNonNull(jVar);
        jVar.keyMaterialType_ = bVar.a();
    }

    public static j B() {
        return DEFAULT_INSTANCE;
    }

    public static a F() {
        return DEFAULT_INSTANCE.n();
    }

    public static void y(j jVar, String str) {
        Objects.requireNonNull(jVar);
        Objects.requireNonNull(str);
        jVar.typeUrl_ = str;
    }

    public static void z(j jVar, b7.i iVar) {
        Objects.requireNonNull(jVar);
        Objects.requireNonNull(iVar);
        jVar.value_ = iVar;
    }

    public final b C() {
        b bVarB = b.b(this.keyMaterialType_);
        return bVarB == null ? b.UNRECOGNIZED : bVarB;
    }

    public final String D() {
        return this.typeUrl_;
    }

    public final b7.i E() {
        return this.value_;
    }

    @Override // b7.x
    public final Object o(x.f fVar) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new c1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "keyMaterialType_"});
            case NEW_MUTABLE_INSTANCE:
                return new j();
            case NEW_BUILDER:
                return new a();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                y0<j> bVar = PARSER;
                if (bVar == null) {
                    synchronized (j.class) {
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
