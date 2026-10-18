package m7;

/* JADX INFO: compiled from: MapFieldSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k0 f10700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l0 f10701b;

    static {
        k0 k0Var;
        try {
            k0Var = (k0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            k0Var = null;
        }
        f10700a = k0Var;
        f10701b = new l0();
    }
}
