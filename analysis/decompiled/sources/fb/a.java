package fb;

/* JADX INFO: compiled from: AdaptBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f7247a = 0;

    /* JADX INFO: renamed from: fb.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptBluetoothAdapter.kt */
    public static final class C0140a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ C0140a f7248a = new C0140a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static volatile b f7249b;

        public final a a() {
            b bVar = f7249b;
            if (bVar == null) {
                synchronized (this) {
                    bVar = f7249b;
                    if (bVar == null) {
                        bVar = new b(v9.t.f16822a.d());
                        f7249b = bVar;
                    }
                }
            }
            return bVar;
        }
    }

    boolean a(String str);

    boolean isEnabled();
}
