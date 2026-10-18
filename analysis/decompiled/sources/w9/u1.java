package w9;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public enum u1 {
    LEFT,
    RIGHT,
    BOTH;


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fd.d f17374h = androidx.lifecycle.o.w(1, new a());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.d f17375i = androidx.lifecycle.o.w(1, new b());

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class a extends rd.o implements qd.a<Boolean> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final Boolean invoke() {
            return Boolean.valueOf(u1.this == u1.RIGHT);
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class b extends rd.o implements qd.a<Boolean> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final Boolean invoke() {
            return Boolean.valueOf(u1.this == u1.LEFT);
        }
    }

    u1() {
    }

    public final boolean b() {
        return ((Boolean) this.f17375i.getValue()).booleanValue();
    }
}
