package b7;

/* JADX INFO: compiled from: MapFieldSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l0 f3460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m0 f3461b;

    static {
        l0 l0Var;
        try {
            l0Var = (l0) Class.forName("com.google.crypto.tink.shaded.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            l0Var = null;
        }
        f3460a = l0Var;
        f3461b = new m0();
    }
}
