package b7;

/* JADX INFO: compiled from: NewInstanceSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v0 f3560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w0 f3561b;

    static {
        v0 v0Var;
        try {
            v0Var = (v0) Class.forName("com.google.crypto.tink.shaded.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            v0Var = null;
        }
        f3560a = v0Var;
        f3561b = new w0();
    }
}
