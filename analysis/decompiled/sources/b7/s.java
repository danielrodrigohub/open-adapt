package b7;

/* JADX INFO: compiled from: ExtensionSchemas.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q<?> f3500a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q<?> f3501b;

    static {
        q<?> qVar;
        try {
            qVar = (q) Class.forName("com.google.crypto.tink.shaded.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            qVar = null;
        }
        f3501b = qVar;
    }
}
