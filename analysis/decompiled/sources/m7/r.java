package m7;

/* JADX INFO: compiled from: ExtensionSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p<?> f10747a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p<?> f10748b;

    static {
        p<?> pVar;
        try {
            pVar = (p) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            pVar = null;
        }
        f10748b = pVar;
    }
}
