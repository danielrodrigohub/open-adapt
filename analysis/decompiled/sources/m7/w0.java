package m7;

/* JADX INFO: compiled from: NewInstanceSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u0 f10796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v0 f10797b;

    static {
        u0 u0Var;
        try {
            u0Var = (u0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            u0Var = null;
        }
        f10796a = u0Var;
        f10797b = new v0();
    }
}
